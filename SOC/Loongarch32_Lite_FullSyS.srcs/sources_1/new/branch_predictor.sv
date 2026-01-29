`include "defines.v"

//==============================================================================
// Module: branch_predictor
// Description: BTB + BHT + RAS (Return Address Stack)
// Modified: Added RAS support for function return prediction
//==============================================================================
module branch_predictor (
    input wire cpu_clk_50M,
    input wire cpu_rst_n,

    // 读取端口 (IF阶段)
    input  wire [`INST_ADDR_BUS] pc_i,
    output wire                  hit_o,
    output wire                  pred_taken_o,
    output wire [`INST_ADDR_BUS] target_o,

    // 更新端口 (ID阶段)
    input wire                  update_en_i,
    input wire [`INST_ADDR_BUS] update_pc_i,
    input wire                  update_taken_i,
    input wire [`INST_ADDR_BUS] update_target_i,

    // [New] RAS 控制信号 (来自 ID)
    input wire update_is_call_i,  // 是函数调用 (PUSH)
    input wire update_is_ret_i    // 是函数返回 (POP)
);
    localparam ENTRY_NUM = 64;
    localparam INDEX_WIDTH = 6;
    localparam TAG_WIDTH = 24;

    // 存储数组
    reg valid[0:ENTRY_NUM-1];
    reg [TAG_WIDTH-1:0] tag[0:ENTRY_NUM-1];
    reg [`INST_ADDR_BUS] target[0:ENTRY_NUM-1];
    reg [1:0] counter[0:ENTRY_NUM-1];

    // [New] 记录该指令是否为 Return 类型
    reg is_ret_table[0:ENTRY_NUM-1];

    // [New] RAS 硬件栈定义 (8层环形栈)
    reg [`INST_ADDR_BUS] ras_stack[0:7];
    reg [2:0] ras_ptr;  // 栈顶指针

    // 读索引/Tag
    wire [INDEX_WIDTH-1:0] rd_index = pc_i[7:2];
    wire [TAG_WIDTH-1:0] rd_tag = pc_i[31:8];

    // 写索引/Tag
    wire [INDEX_WIDTH-1:0] wr_index = update_pc_i[7:2];
    wire [TAG_WIDTH-1:0] wr_tag = update_pc_i[31:8];

    // 检测读写冲突
    wire rw_conflict = update_en_i && (rd_index == wr_index);
    wire rw_tag_match = (rd_tag == wr_tag);

    wire hit_from_table = valid[rd_index] && (tag[rd_index] == rd_tag);
    wire hit_from_bypass = rw_conflict && rw_tag_match && update_taken_i;

    assign hit_o = hit_from_bypass ? 1'b1 : hit_from_table;

    // [New] RAS 预测逻辑
    // 如果表项标记为 Return 指令，则优先使用 RAS 栈顶作为目标
    // 注意：ras_ptr 指向下一个空位，所以栈顶是 ras_ptr - 1
    wire entry_is_ret = is_ret_table[rd_index];
    wire [`INST_ADDR_BUS] ras_top_target = ras_stack[ras_ptr-3'd1];

    // 旁路逻辑也需要考虑 is_ret (若ID正在写入一个RET指令)
    wire use_ras = (hit_from_bypass && update_is_ret_i) || (hit_from_table && entry_is_ret);

    assign target_o = use_ras ? ras_top_target : 
                      (hit_from_bypass ? update_target_i : target[rd_index]);

    // BHT 计数器旁路逻辑 (保持原样)
    wire [1:0] counter_from_table = counter[rd_index];
    wire [1:0] counter_bypassed = 
        (hit_from_table && update_taken_i && counter_from_table != 2'b11) ? (counter_from_table + 1'b1) :
        (hit_from_table && !update_taken_i && counter_from_table != 2'b00) ? (counter_from_table - 1'b1) :
        (!hit_from_table && update_taken_i) ? 2'b10 : counter_from_table;

    wire [1:0] counter_final = (rw_conflict && rw_tag_match) ? counter_bypassed : counter_from_table;
    assign pred_taken_o = hit_o && counter_final[1];

    integer i;
    always @(posedge cpu_clk_50M) begin
        if (cpu_rst_n == `RST_ENABLE) begin
            ras_ptr <= 3'b0;
            for (i = 0; i < ENTRY_NUM; i = i + 1) begin
                valid[i]        <= 1'b0;
                tag[i]          <= {TAG_WIDTH{1'b0}};
                target[i]       <= `ZERO_WORD;
                counter[i]      <= 2'b00;
                is_ret_table[i] <= 1'b0;  // 复位 is_ret 表
            end
        end else begin
            // [New] RAS 栈维护 (在 ID 阶段更新)
            if (update_en_i && update_taken_i) begin
                if (update_is_call_i) begin
                    ras_stack[ras_ptr] <= update_pc_i + 32'd4;  // PUSH PC+4
                    ras_ptr <= ras_ptr + 3'd1;
                end else if (update_is_ret_i) begin
                    ras_ptr <= ras_ptr - 3'd1;  // POP
                end
            end

            // BTB 更新逻辑
            if (update_en_i) begin
                if (valid[wr_index] && (tag[wr_index] == wr_tag)) begin
                    // 命中：更新计数器
                    if (update_taken_i) begin
                        if (counter[wr_index] != 2'b11)
                            counter[wr_index] <= counter[wr_index] + 1'b1;
                        target[wr_index] <= update_target_i;
                        is_ret_table[wr_index] <= update_is_ret_i;  // 更新 Return 标记
                    end else begin
                        if (counter[wr_index] != 2'b00)
                            counter[wr_index] <= counter[wr_index] - 1'b1;
                    end
                end else if (update_taken_i) begin
                    // 未命中且跳转：建立新表项
                    valid[wr_index]        <= 1'b1;
                    tag[wr_index]          <= wr_tag;
                    target[wr_index]       <= update_target_i;
                    counter[wr_index]      <= 2'b10;
                    is_ret_table[wr_index] <= update_is_ret_i;  // 记录 Return 标记
                end
            end
        end
    end

endmodule
