`include "defines.v"

module regfile (
    input wire cpu_clk_50M,
    input wire cpu_rst_n,

    // 写端口
    input wire [`REG_ADDR_BUS] wa,
    input wire [     `REG_BUS] wd,
    input wire                 we,

    // 读端口1
    input  wire [`REG_ADDR_BUS] ra1,
    output reg  [     `REG_BUS] rd1,

    // 读端口2
    input  wire [`REG_ADDR_BUS] ra2,
    output reg  [     `REG_BUS] rd2
);

    // 定义32个32位寄存器
    reg [`REG_BUS] regs[0:`REG_NUM-1];

    always @(posedge cpu_clk_50M) begin
        if (cpu_rst_n == `RST_ENABLE) begin
            regs[0] <= `ZERO_WORD;
            regs[1] <= `ZERO_WORD;
            regs[2] <= `ZERO_WORD;
            regs[3] <= `ZERO_WORD;
            regs[ 4] <= 32'h01010101;    // 注意：寄存器4的初值应该是0x00000000，此处设置非零初值，是因为仅有R-型指令无法将寄存器初值改为0。后续可以通过I-型指令恢复为初值为0的寄存器
            regs[5] <= `ZERO_WORD;
            regs[6] <= `ZERO_WORD;
            regs[7] <= `ZERO_WORD;
            regs[8] <= `ZERO_WORD;
            regs[9] <= `ZERO_WORD;
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

    // 读端口1的读操作
    // ra1是读地址，wa是写地址，we是写使能，wd是要写入的数据
    // 添加 WB-ID 旁路：如果读地址等于写地址且写使能有效，直接前推写数据
    always @(*) begin
        if (cpu_rst_n == `RST_ENABLE) rd1 <= `ZERO_WORD;
        else if (ra1 == `REG_NOP) rd1 <= `ZERO_WORD;
        else if ((we == `WRITE_ENABLE) && (wa == ra1) && (wa != 5'h0)) rd1 <= wd;  // WB-ID 旁路
        else rd1 <= regs[ra1];
    end

    // 读端口2的读操作
    // ra2是读地址，wa是写地址，we是写使能，wd是要写入的数据
    // 添加 WB-ID 旁路：如果读地址等于写地址且写使能有效，直接前推写数据
    always @(*) begin
        if (cpu_rst_n == `RST_ENABLE) rd2 <= `ZERO_WORD;
        else if (ra2 == `REG_NOP) rd2 <= `ZERO_WORD;
        else if ((we == `WRITE_ENABLE) && (wa == ra2) && (wa != 5'h0)) rd2 <= wd;  // WB-ID 旁路
        else rd2 <= regs[ra2];
    end

endmodule

