`include "defines.v"

// 寄存器堆
module regfile (
    input wire cpu_clk_50M,
    input wire cpu_rst_n,

    input wire [`REG_ADDR_BUS] wa,
    input wire [     `REG_BUS] wd,
    input wire                 we,

    input  wire [`REG_ADDR_BUS] ra1,
    output reg  [     `REG_BUS] rd1,

    input  wire [`REG_ADDR_BUS] ra2,
    output reg  [     `REG_BUS] rd2
);

    // 寄存器数组
    reg [`REG_BUS] regs[0:`REG_NUM-1];

    // 写入
    always @(posedge cpu_clk_50M) begin
        if (cpu_rst_n == `RST_ENABLE) begin
            regs[0]  <= `ZERO_WORD;
            regs[1]  <= `ZERO_WORD;
            regs[2]  <= `ZERO_WORD;
            regs[3]  <= `ZERO_WORD;
            regs[4]  <= 32'h01010101;
            regs[5]  <= `ZERO_WORD;
            regs[6]  <= `ZERO_WORD;
            regs[7]  <= `ZERO_WORD;
            regs[8]  <= `ZERO_WORD;
            regs[9]  <= `ZERO_WORD;
            regs[10] <= `ZERO_WORD;
            regs[11] <= `ZERO_WORD;
            regs[12] <= `ZERO_WORD;
            regs[13] <= `ZERO_WORD;
            regs[14] <= `ZERO_WORD;
            regs[15] <= `ZERO_WORD;
            regs[16] <= `ZERO_WORD;
            regs[17] <= `ZERO_WORD;
            regs[18] <= `ZERO_WORD;
            regs[19] <= `ZERO_WORD;
            regs[20] <= `ZERO_WORD;
            regs[21] <= `ZERO_WORD;
            regs[22] <= `ZERO_WORD;
            regs[23] <= `ZERO_WORD;
            regs[24] <= `ZERO_WORD;
            regs[25] <= `ZERO_WORD;
            regs[26] <= `ZERO_WORD;
            regs[27] <= `ZERO_WORD;
            regs[28] <= `ZERO_WORD;
            regs[29] <= `ZERO_WORD;
            regs[30] <= `ZERO_WORD;
            regs[31] <= `ZERO_WORD;
        end else begin
            if ((we == `WRITE_ENABLE) && (wa != 5'h0)) regs[wa] <= wd;
        end
    end

    // 读口1
    always @(*) begin
        if (cpu_rst_n == `RST_ENABLE) rd1 <= `ZERO_WORD;
        else if (ra1 == `REG_NOP) rd1 <= `ZERO_WORD;
        else if ((we == `WRITE_ENABLE) && (wa == ra1) && (wa != 5'h0)) rd1 <= wd;
        else rd1 <= regs[ra1];
    end

    // 读口2
    always @(*) begin
        if (cpu_rst_n == `RST_ENABLE) rd2 <= `ZERO_WORD;
        else if (ra2 == `REG_NOP) rd2 <= `ZERO_WORD;
        else if ((we == `WRITE_ENABLE) && (wa == ra2) && (wa != 5'h0)) rd2 <= wd;
        else rd2 <= regs[ra2];
    end

endmodule
