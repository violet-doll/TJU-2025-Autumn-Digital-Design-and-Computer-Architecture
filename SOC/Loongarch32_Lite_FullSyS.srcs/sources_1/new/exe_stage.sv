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

    // 除法状态机（试商法，32周期）
    reg div_busy;
    reg div_done;
    reg [5:0] div_cnt;
    reg [63:0] div_temp;
    reg [31:0] div_divisor;
    reg [31:0] div_q_work;
    reg [31:0] div_q_res;
    reg [31:0] div_r_res;
    reg div_sign_q;
    reg div_sign_r;

    wire dividend_sign = alu_src1[31];
    wire divisor_sign = alu_src2[31];
    wire [31:0] dividend_abs = dividend_sign ? (~alu_src1 + 1'b1) : alu_src1;
    wire [31:0] divisor_abs = divisor_sign ? (~alu_src2 + 1'b1) : alu_src2;
    wire div_zero = (alu_src2 == 32'b0);

    wire div_start = is_div_inst && !div_busy && !div_done;

    wire [63:0] div_temp_shift = {div_temp[62:0], 1'b0};
    wire div_ge = (div_temp_shift[63:32] >= div_divisor);
    wire [63:0] div_temp_next  = div_ge ? {div_temp_shift[63:32] - div_divisor, div_temp_shift[31:0]} : div_temp_shift;
    wire [31:0] div_q_next = {div_q_work[30:0], div_ge};

    always @(posedge cpu_clk_50M) begin
        if (cpu_rst_n == `RST_ENABLE) begin
            div_busy    <= 1'b0;
            div_done    <= 1'b0;
            div_cnt     <= 6'd0;
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
                div_q_res <= 32'hFFFF_FFFF;  // 按约定除0返回全1
                div_r_res <= alu_src1;
            end else begin
                div_busy    <= 1'b1;
                div_done    <= 1'b0;
                div_cnt     <= 6'd0;
                div_temp    <= {32'b0, dividend_abs};
                div_divisor <= divisor_abs;
                div_q_work  <= 32'b0;
                div_sign_q  <= dividend_sign ^ divisor_sign;
                div_sign_r  <= dividend_sign;
            end
        end else if (div_busy) begin
            div_temp   <= div_temp_next;
            div_q_work <= div_q_next;
            div_cnt    <= div_cnt + 1'b1;
            if (div_cnt == 6'd31) begin
                div_busy  <= 1'b0;
                div_done  <= 1'b1;
                div_q_res <= div_sign_q ? (~div_q_next + 1'b1) : div_q_next;
                div_r_res <= div_sign_r ? (~div_temp_next[63:32] + 1'b1) : div_temp_next[63:32];
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
