`include "defines.v"

//==============================================================================
// Module: branch_predictor
// Description: Direct-mapped BTB+BHT branch predictor (64 entries)
// Author: TJU Digital Design Course
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
    input wire [`INST_ADDR_BUS] update_target_i
);

    localparam ENTRY_NUM = 64;
    localparam INDEX_WIDTH = 6;
    localparam TAG_WIDTH = 24;

    // 存储数组
    reg valid[0:ENTRY_NUM-1];
    reg [TAG_WIDTH-1:0] tag[0:ENTRY_NUM-1];
    reg [`INST_ADDR_BUS] target[0:ENTRY_NUM-1];
    reg [1:0] counter[0:ENTRY_NUM-1];

    // 读索引/Tag
    wire [INDEX_WIDTH-1:0] rd_index = pc_i[7:2];
    wire [TAG_WIDTH-1:0] rd_tag = pc_i[31:8];

    // 写索引/Tag
    wire [INDEX_WIDTH-1:0] wr_index = update_pc_i[7:2];
    wire [TAG_WIDTH-1:0] wr_tag = update_pc_i[31:8];

    // 检测读写冲突：同一周期IF读、ID写同一Entry
    wire rw_conflict = update_en_i && (rd_index == wr_index);
    wire rw_tag_match = (rd_tag == wr_tag);

    // 如果发生读写冲突，bypass新写入的值
    wire hit_from_table = valid[rd_index] && (tag[rd_index] == rd_tag);
    wire hit_from_bypass = rw_conflict && rw_tag_match && update_taken_i;

    assign hit_o = hit_from_bypass ? 1'b1 : hit_from_table;
    assign target_o = (rw_conflict && rw_tag_match && update_taken_i) ? 
                      update_target_i : target[rd_index];

    // Bypass计数器值：如果冲突，需要根据更新方向调整
    wire [1:0] counter_from_table = counter[rd_index];
    wire [1:0] counter_bypassed = 
        (hit_from_table && update_taken_i && counter_from_table != 2'b11) ? (counter_from_table + 1'b1) :
        (hit_from_table && !update_taken_i && counter_from_table != 2'b00) ? (counter_from_table - 1'b1) :
        (!hit_from_table && update_taken_i) ? 2'b10 :
        counter_from_table;

    wire [1:0] counter_final = (rw_conflict && rw_tag_match) ? counter_bypassed : counter_from_table;
    assign pred_taken_o = hit_o && counter_final[1];


    integer i;
    always @(posedge cpu_clk_50M) begin
        if (cpu_rst_n == `RST_ENABLE) begin
            for (i = 0; i < ENTRY_NUM; i = i + 1) begin
                valid[i]   <= 1'b0;
                tag[i]     <= {TAG_WIDTH{1'b0}};
                target[i]  <= `ZERO_WORD;
                counter[i] <= 2'b00;
            end
        end else if (update_en_i) begin
            if (valid[wr_index] && (tag[wr_index] == wr_tag)) begin
                if (update_taken_i) begin
                    if (counter[wr_index] != 2'b11) begin
                        counter[wr_index] <= counter[wr_index] + 1'b1;
                    end
                    target[wr_index] <= update_target_i;
                end else begin
                    if (counter[wr_index] != 2'b00) begin
                        counter[wr_index] <= counter[wr_index] - 1'b1;
                    end
                end
            end else if (update_taken_i) begin
                valid[wr_index]   <= 1'b1;
                tag[wr_index]     <= wr_tag;
                target[wr_index]  <= update_target_i;
                counter[wr_index] <= 2'b10;
            end
        end
    end

endmodule
