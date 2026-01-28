`include "defines.v"

//==============================================================================
// Module: ctrl
// Description: 流水线控制模块 - 生成暂停信号
// Author: TJU Digital Design Course
//==============================================================================
module ctrl (
    input wire cpu_rst_n,

    input wire stallreq_from_id,  // ID阶段暂停请求 (Load-Use冒险)
    input wire stallreq_from_mem, // MEM阶段ROM冲突暂停请求

    // 暂停信号: [0]PC [1]IF/ID [2]ID/EXE [3]EXE/MEM [4]MEM/WB [5]预留
    output reg [5:0] stall
);

    always @(*) begin
        if (cpu_rst_n == `RST_ENABLE) begin
            stall = 6'b000000;
        end else if (stallreq_from_mem == `TRUE_V) begin
            // MEM阶段ROM冲突: 冻结PC/IF/ID (让MEM完成ROM访问)
            stall = 6'b000011;
        end else if (stallreq_from_id == `TRUE_V) begin
            // ID阶段请求: 冻结PC/IF/ID
            stall = 6'b000111;
        end else begin
            stall = 6'b000000;
        end
    end

endmodule
