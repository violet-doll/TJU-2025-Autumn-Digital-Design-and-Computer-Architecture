`include "defines.v"

//==============================================================================
// Module: exe_stage
// Description: 执行阶段 - ALU运算、数据前推处理
// Author: TJU Digital Design Course
//==============================================================================
module exe_stage (
    input wire cpu_clk_50M,
    input wire cpu_rst_n,

    // 来自ID/EXE寄存器
    input wire [`ALUTYPE_BUS] exe_alutype_i,
    input wire [`ALUOP_BUS] exe_aluop_i,
    input wire [`REG_BUS] exe_src1_i,
    input wire [`REG_BUS] exe_src2_i,
    input wire [`REG_ADDR_BUS] exe_wa_i,
    input wire exe_wreg_i,
    input wire [`INST_ADDR_BUS] exe_debug_wb_pc,

    // Store数据通路
    input  wire [`REG_BUS] exe_rkd_value_i,
    output wire [`REG_BUS] exe_rkd_value_o,

    // 前推控制信号
    input wire [     1:0] forward_src1,
    input wire [     1:0] forward_src2,
    input wire [`REG_BUS] forward_data_mem,
    input wire [`REG_BUS] forward_data_wb,

    // 送至MEM阶段
    output wire [   `ALUOP_BUS] exe_aluop_o,
    output wire [`REG_ADDR_BUS] exe_wa_o,
    output wire                 exe_wreg_o,
    output wire [     `REG_BUS] exe_wd_o,

    output wire                  stallreq_from_exe,
    output wire [`INST_ADDR_BUS] debug_wb_pc
);

    // Store指令识别
    wire is_store = (exe_aluop_i == `LoongArch32_ST_B) || (exe_aluop_i == `LoongArch32_ST_W);

    assign exe_aluop_o = exe_aluop_i;
    assign exe_wa_o = exe_wa_i;
    assign exe_wreg_o = exe_wreg_i;

    // 指令类型判定
    wire is_mul = (exe_aluop_i == `LoongArch32_MUL_W);
    wire is_mulh = (exe_aluop_i == `LoongArch32_MULH_W);
    wire is_div = (exe_aluop_i == `LoongArch32_DIV_W);
    wire is_mod = (exe_aluop_i == `LoongArch32_MOD_W);
    wire is_div_inst = is_div | is_mod;

    //--------------------------------------------------------------------------
    // Store数据前推
    //--------------------------------------------------------------------------
    assign exe_rkd_value_o = is_store ? (
        (forward_src2 == 2'b01) ? forward_data_mem :
        (forward_src2 == 2'b10) ? forward_data_wb :
        exe_rkd_value_i
    ) : exe_rkd_value_i;

    //--------------------------------------------------------------------------
    // ALU操作数前推
    //--------------------------------------------------------------------------
    wire [`REG_BUS] alu_src1 = 
        (forward_src1 == 2'b01) ? forward_data_mem :
        (forward_src1 == 2'b10) ? forward_data_wb :
        exe_src1_i;

    // Store指令的src2是立即数偏移，不前推
    wire [`REG_BUS] alu_src2 = is_store ? exe_src2_i :
        (forward_src2 == 2'b01) ? forward_data_mem :
        (forward_src2 == 2'b10) ? forward_data_wb :
        exe_src2_i;

    //--------------------------------------------------------------------------
    // ALU运算
    //--------------------------------------------------------------------------
    // 乘法（综合器可映射到DSP）
    wire signed [31:0] mul_src1 = alu_src1;
    wire signed [31:0] mul_src2 = alu_src2;
    wire signed [63:0] mul_res = mul_src1 * mul_src2;
    wire [`REG_BUS] mul_lo_res = mul_res[31:0];
    wire [`REG_BUS] mul_hi_res = mul_res[63:32];

    // 基4 (Radix-4) 除法器 (16周期)
    reg div_busy;
    reg div_done;
    reg [4:0] div_cnt;  // 计数器范围 0-15，只需5位
    reg [63:0] div_temp;  // 高32位为余数R，低32位为剩余被除数
    reg [31:0] div_divisor;
    reg [31:0] div_q_work;  // 累积商
    reg [31:0] div_q_res;
    reg [31:0] div_r_res;
    reg div_sign_q;
    reg div_sign_r;

    // 符号处理输入
    wire dividend_sign = alu_src1[31];
    wire divisor_sign = alu_src2[31];
    wire [31:0] dividend_abs = dividend_sign ? (~alu_src1 + 1'b1) : alu_src1;
    wire [31:0] divisor_abs = divisor_sign ? (~alu_src2 + 1'b1) : alu_src2;
    wire div_zero = (alu_src2 == 32'b0);
    wire div_start = is_div_inst && !div_busy && !div_done;

    // --- Radix-4 核心组合逻辑 ---
    // 预计算除数的倍数 (扩展到34位以防溢出比较)
    wire [33:0] div_x1 = {2'b0, div_divisor};
    wire [33:0] div_x2 = {1'b0, div_divisor, 1'b0};  // x2
    wire [33:0] div_x3 = div_x1 + div_x2;  // x3

    // 移位: 左移2位，取出高位作为当前部分余数(Partial Remainder)
    // div_temp[63:32] 是当前余数，[31:0] 是剩余被除数
    // 移位后，新的部分余数包含原余数移位后的值 + 被除数最高2位
    wire [63:0] div_shift2 = {div_temp[61:0], 2'b0};
    wire [33:0] r_raw = div_shift2[63:32];

    // 并行比较
    wire ge_x3 = (r_raw >= div_x3);
    wire ge_x2 = (r_raw >= div_x2);
    wire ge_x1 = (r_raw >= div_x1);

    // 确定商的当前2位 (Quotient Bits)
    wire [1:0] q_bits = ge_x3 ? 2'b11 : ge_x2 ? 2'b10 : ge_x1 ? 2'b01 : 2'b00;

    // 确定需要减去的倍数
    wire [33:0] sub_val = ge_x3 ? div_x3 : ge_x2 ? div_x2 : ge_x1 ? div_x1 : 34'b0;

    // 计算下一次的余数和整体寄存器状态
    // 新余数 = (部分余数 - 选定倍数)
    wire [31:0] r_next = r_raw[31:0] - sub_val[31:0];

    // 更新 div_temp: 高32位放新余数，低32位是移位后的被除数
    wire [63:0] div_temp_next_r4 = {r_next, div_shift2[31:0]};

    // 更新商寄存器: 左移2位，填入新的2位商
    wire [31:0] div_q_next_r4 = {div_q_work[29:0], q_bits};

    // --- 时序逻辑 ---
    always @(posedge cpu_clk_50M) begin
        if (cpu_rst_n == `RST_ENABLE) begin
            div_busy    <= 1'b0;
            div_done    <= 1'b0;
            div_cnt     <= 5'd0;
            div_temp    <= 64'b0;
            div_divisor <= 32'b0;
            div_q_work  <= 32'b0;
            div_q_res   <= 32'b0;
            div_r_res   <= 32'b0;
            div_sign_q  <= 1'b0;
            div_sign_r  <= 1'b0;
        end else if (div_start) begin
            if (div_zero) begin
                div_busy  <= 1'b0;
                div_done  <= 1'b1;
                div_q_res <= 32'hFFFF_FFFF;
                div_r_res <= alu_src1;
            end else begin
                div_busy    <= 1'b1;
                div_done    <= 1'b0;
                div_cnt     <= 5'd0;
                // 初始化：高32位为0，低32位为被除数绝对值
                div_temp    <= {32'b0, dividend_abs};
                div_divisor <= divisor_abs;
                div_q_work  <= 32'b0;
                div_sign_q  <= dividend_sign ^ divisor_sign;
                div_sign_r  <= dividend_sign;
            end
        end else if (div_busy) begin
            // 核心计算步骤
            div_temp   <= div_temp_next_r4;
            div_q_work <= div_q_next_r4;
            div_cnt    <= div_cnt + 1'b1;

            // 计数到15即完成 (0~15 共16次迭代，每次2位，共32位)
            if (div_cnt == 5'd15) begin
                div_busy <= 1'b0;
                div_done <= 1'b1;
                // 修正结果符号
                div_q_res <= div_sign_q ? (~div_q_next_r4 + 1'b1) : div_q_next_r4;
                // 余数在 div_temp_next_r4 的高32位
                div_r_res <= div_sign_r ? (~div_temp_next_r4[63:32] + 1'b1) : div_temp_next_r4[63:32];
            end
        end else begin
            div_done <= 1'b0;
        end
    end

    assign stallreq_from_exe = is_div_inst && (div_busy || div_start);

    wire [`REG_BUS] adder_res = alu_src1 + alu_src2;

    wire [`REG_BUS] logic_res = 
        (exe_aluop_i == `LoongArch32_ANDI) ? (alu_src1 & alu_src2) :
        (exe_aluop_i == `LoongArch32_OR || exe_aluop_i == `LoongArch32_ORI) ? (alu_src1 | alu_src2) :
        (exe_aluop_i == `LoongArch32_XOR) ? (alu_src1 ^ alu_src2) :
        (exe_aluop_i == `LoongArch32_LU12I_W) ? alu_src2 : `ZERO_WORD;

    wire [`REG_BUS] shift_res = 
        (exe_aluop_i == `LoongArch32_SRL_W) ? (alu_src1 >> alu_src2[4:0]) : 
        (alu_src1 << alu_src2[4:0]);

    wire [`REG_BUS] sltu_res = (alu_src1 < alu_src2) ? 32'b1 : 32'b0;
    wire [`REG_BUS] div_res = is_mod ? div_r_res : div_q_res;

    // 结果选择
    assign exe_wd_o = 
        is_div_inst ? div_res :
        is_mulh ? mul_hi_res :
        is_mul ? mul_lo_res :
        (exe_aluop_i == `LoongArch32_SLTUI) ? sltu_res :
        (exe_alutype_i == `LOGIC) ? logic_res :
        (exe_alutype_i == `SHIFT) ? shift_res :
        adder_res;

    assign debug_wb_pc = exe_debug_wb_pc;

endmodule
