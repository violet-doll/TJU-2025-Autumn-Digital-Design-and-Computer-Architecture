`include "defines.v"

// 执行阶段
module exe_stage (
    input wire cpu_clk_50M,
    input wire cpu_rst_n,

    // 来自译码/执行
    input wire [`ALUTYPE_BUS] exe_alutype_i,
    input wire [`ALUOP_BUS] exe_aluop_i,
    input wire [`REG_BUS] exe_src1_i,
    input wire [`REG_BUS] exe_src2_i,
    input wire [`REG_ADDR_BUS] exe_wa_i,
    input wire exe_wreg_i,
    input wire [`INST_ADDR_BUS] exe_debug_wb_pc,

    // 存储数据
    input  wire [`REG_BUS] exe_rkd_value_i,
    output wire [`REG_BUS] exe_rkd_value_o,

    // 前推
    input wire [     1:0] forward_src1,
    input wire [     1:0] forward_src2,
    input wire [`REG_BUS] forward_data_mem,
    input wire [`REG_BUS] forward_data_wb,

    // 送至访存
    output wire [   `ALUOP_BUS] exe_aluop_o,
    output wire [`REG_ADDR_BUS] exe_wa_o,
    output wire                 exe_wreg_o,
    output wire [     `REG_BUS] exe_wd_o,

    output wire                  stallreq_from_exe,
    output wire [`INST_ADDR_BUS] debug_wb_pc
);

    // 存储指令识别
    wire is_store = (exe_aluop_i == `LoongArch32_ST_B) || (exe_aluop_i == `LoongArch32_ST_W);

    assign exe_aluop_o = exe_aluop_i;
    assign exe_wa_o = exe_wa_i;
    assign exe_wreg_o = exe_wreg_i;

    // 指令类型
    wire is_mul = (exe_aluop_i == `LoongArch32_MUL_W);
    wire is_mulh = (exe_aluop_i == `LoongArch32_MULH_W);
    wire is_div = (exe_aluop_i == `LoongArch32_DIV_W);
    wire is_mod = (exe_aluop_i == `LoongArch32_MOD_W);
    wire is_div_inst = is_div | is_mod;

    // 存储数据前推
    assign exe_rkd_value_o = is_store ? (
        (forward_src2 == 2'b01) ? forward_data_mem :
        (forward_src2 == 2'b10) ? forward_data_wb :
        exe_rkd_value_i
    ) : exe_rkd_value_i;

    // 运算前推
    wire [`REG_BUS] alu_src1 = 
        (forward_src1 == 2'b01) ? forward_data_mem :
        (forward_src1 == 2'b10) ? forward_data_wb :
        exe_src1_i;

    // 存储的第二操作数不前推
    wire [`REG_BUS] alu_src2 = is_store ? exe_src2_i :
        (forward_src2 == 2'b01) ? forward_data_mem :
        (forward_src2 == 2'b10) ? forward_data_wb :
        exe_src2_i;

    // 运算
    wire signed [31:0] mul_src1 = alu_src1;
    wire signed [31:0] mul_src2 = alu_src2;
    wire signed [63:0] mul_res = mul_src1 * mul_src2;
    wire [`REG_BUS] mul_lo_res = mul_res[31:0];
    wire [`REG_BUS] mul_hi_res = mul_res[63:32];

    // 基4除法器
    reg div_busy;
    reg div_done;
    reg [4:0] div_cnt;
    reg [63:0] div_temp;
    reg [31:0] div_divisor;
    reg [31:0] div_q_work;
    reg [31:0] div_q_res;
    reg [31:0] div_r_res;
    reg div_sign_q;
    reg div_sign_r;

    // 符号处理
    wire dividend_sign = alu_src1[31];
    wire divisor_sign = alu_src2[31];
    wire [31:0] dividend_abs = dividend_sign ? (~alu_src1 + 1'b1) : alu_src1;
    wire [31:0] divisor_abs = divisor_sign ? (~alu_src2 + 1'b1) : alu_src2;
    wire div_zero = (alu_src2 == 32'b0);
    wire div_start = is_div_inst && !div_busy && !div_done;

    // 基4组合逻辑
    wire [33:0] div_x1 = {2'b0, div_divisor};
    wire [33:0] div_x2 = {1'b0, div_divisor, 1'b0};
    wire [33:0] div_x3 = div_x1 + div_x2;

    // 左移 2 位
    wire [63:0] div_shift2 = {div_temp[61:0], 2'b0};
    wire [33:0] r_raw = div_shift2[63:32];

    // 比较
    wire ge_x3 = (r_raw >= div_x3);
    wire ge_x2 = (r_raw >= div_x2);
    wire ge_x1 = (r_raw >= div_x1);

    // 商位
    wire [1:0] q_bits = ge_x3 ? 2'b11 : ge_x2 ? 2'b10 : ge_x1 ? 2'b01 : 2'b00;

    // 减数选择
    wire [33:0] sub_val = ge_x3 ? div_x3 : ge_x2 ? div_x2 : ge_x1 ? div_x1 : 34'b0;

    // 余数更新
    wire [31:0] r_next = r_raw[31:0] - sub_val[31:0];

    // 更新余数寄存器
    wire [63:0] div_temp_next_r4 = {r_next, div_shift2[31:0]};

    // 更新商寄存器
    wire [31:0] div_q_next_r4 = {div_q_work[29:0], q_bits};

    // 时序逻辑
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
                // 初始化
                div_temp    <= {32'b0, dividend_abs};
                div_divisor <= divisor_abs;
                div_q_work  <= 32'b0;
                div_sign_q  <= dividend_sign ^ divisor_sign;
                div_sign_r  <= dividend_sign;
            end
        end else if (div_busy) begin
            // 迭代
            div_temp   <= div_temp_next_r4;
            div_q_work <= div_q_next_r4;
            div_cnt    <= div_cnt + 1'b1;

            // 完成
            if (div_cnt == 5'd15) begin
                div_busy <= 1'b0;
                div_done <= 1'b1;
                // 符号修正
                div_q_res <= div_sign_q ? (~div_q_next_r4 + 1'b1) : div_q_next_r4;
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
