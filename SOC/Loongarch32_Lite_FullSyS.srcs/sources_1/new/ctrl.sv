`include "defines.v"

// 流水线控制
module ctrl (
    input wire cpu_rst_n,

    input wire stallreq_from_id,
    input wire stallreq_from_exe,
    input wire stallreq_from_mem,

    // [0]取指地址 [1]取指/译码 [2]译码/执行 [3]执行/访存 [4]访存/写回
    output reg [5:0] stall
);

    always @(*) begin
        if (cpu_rst_n == `RST_ENABLE) begin
            stall = 6'b000000;
        end else if (stallreq_from_exe == `TRUE_V) begin
            // 执行级多周期
            stall = 6'b111111;
        end else if (stallreq_from_mem == `TRUE_V) begin
            // 访存与指令冲突
            stall = 6'b000111;
        end else if (stallreq_from_id == `TRUE_V) begin
            // 译码请求
            stall = 6'b000111;
        end else begin
            stall = 6'b000000;
        end
    end

endmodule
