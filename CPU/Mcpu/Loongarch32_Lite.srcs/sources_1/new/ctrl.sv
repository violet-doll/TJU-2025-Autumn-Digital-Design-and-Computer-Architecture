`include "defines.v"

// 流水线控制模块 - 生成暂停信号
module ctrl (
    input wire cpu_rst_n,

    // 来自各阶段的暂停请求
    input wire stallreq_from_id,  // ID阶段暂停请求（Load-Use检测）
    input wire stallreq_from_exe, // EXE阶段暂停请求（预留）

    // 暂停信号输出
    // stall[0] - PC 暂停
    // stall[1] - IF/ID 暂停
    // stall[2] - ID/EXE 暂停
    // stall[3] - EXE/MEM 暂停
    // stall[4] - MEM/WB 暂停
    // stall[5] - 预留
    output reg [5:0] stall
);

    always @(*) begin
        if (cpu_rst_n == `RST_ENABLE) begin
            stall = 6'b000000;
        end else if (stallreq_from_exe == `TRUE_V) begin
            // EXE阶段请求暂停：冻结 PC, IF, ID, EXE
            stall = 6'b001111;
        end else if (stallreq_from_id == `TRUE_V) begin
            // ID阶段请求暂停（Load-Use）：冻结 PC, IF, ID
            stall = 6'b000111;
        end else begin
            stall = 6'b000000;
        end
    end

endmodule
