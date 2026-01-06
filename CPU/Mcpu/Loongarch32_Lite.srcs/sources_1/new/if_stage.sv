`include "defines.v"

module if_stage (
    input cpu_clk_50M,
    input cpu_rst_n,

    // 来自 EXE 的分支转移信号
    input wire branch_taken_i,
    input wire [`INST_ADDR_BUS] branch_target_i,

    output logic [`INST_ADDR_BUS] pc,
    output [`INST_ADDR_BUS] iaddr,
    output [`INST_ADDR_BUS] debug_wb_pc
);
    wire [`INST_ADDR_BUS] pc_next;

    // 如果发生分支转移，PC = target，否则 PC = PC + 4
    assign pc_next = branch_taken_i ? branch_target_i : (pc + 4);

    always @(posedge cpu_clk_50M) begin
        if (~cpu_rst_n) pc <= `PC_INIT;
        else pc <= pc_next;
    end

    assign iaddr = (~cpu_rst_n) ? `PC_INIT : pc;

    assign debug_wb_pc = pc;  // 上板测试时务必删除该语句

endmodule
