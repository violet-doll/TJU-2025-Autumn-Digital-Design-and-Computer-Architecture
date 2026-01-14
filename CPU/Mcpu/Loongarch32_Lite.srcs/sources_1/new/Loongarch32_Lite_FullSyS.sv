module Loongarch32_Lite_FullSyS (
    input sys_clk,
    input sys_rst_n
);

    logic cpu_clk;
    logic cpu_rst_n;
    logic locked;

    // ʱ�ӷ�Ƶ
    clkdiv clocking0 (
        // Clock out ports
        .clk_out(cpu_clk),    // output clk_out
        // Status and control signals
        .resetn (sys_rst_n),  // input resetn
        .locked (locked),     // output locked
        // Clock in ports
        .clk_in (sys_clk)
    );  // input clk_in

    // ��locked�ź�תΪ�󼶵�·�ĸ�λ�ź�rst_n
    always_ff @(posedge cpu_clk or negedge locked) begin
        if (~locked) cpu_rst_n = 1'b0;
        else cpu_rst_n = 1'b1;
    end

    wire [31:0] debug_wb_pc;  // ������ʹ�õ�PCֵ���ϰ����ʱ���ɾ�����ź� 
    wire debug_wb_rf_wen;  // ������ʹ�õ�PCֵ���ϰ����ʱ���ɾ�����ź� 
    wire [ 4:0] debug_wb_rf_wnum;  // ������ʹ�õ�PCֵ���ϰ����ʱ���ɾ�����ź� 
    wire [31:0] debug_wb_rf_wdata;  // ������ʹ�õ�PCֵ���ϰ����ʱ���ɾ�����ź� 

    // ���� data_ram ���ź�
    wire data_sram_en;
    wire [3:0] data_sram_we;
    wire [31:0] data_sram_addr;
    wire [31:0] data_sram_wdata;
    wire [31:0] data_sram_rdata;

    logic [31:0] iaddr;
    logic [31:0] inst;

    Loongarch32_Lite Loongarch32_Lite0 (
        .cpu_clk_50M(cpu_clk),
        .cpu_rst_n  (cpu_rst_n),

        .iaddr(iaddr),
        .inst (inst),

        // ���� Data RAM �ź�
        .data_sram_en(data_sram_en),
        .data_sram_we(data_sram_we),
        .data_sram_addr(data_sram_addr),
        .data_sram_wdata(data_sram_wdata),
        .data_sram_rdata(data_sram_rdata),

        .debug_wb_pc(debug_wb_pc),
        .debug_wb_rf_wen(debug_wb_rf_wen),
        .debug_wb_rf_wnum(debug_wb_rf_wnum),
        .debug_wb_rf_wdata(debug_wb_rf_wdata)
    );

    inst_rom inst_rom0 (
        .a  (iaddr[15:2]),  // input wire [13 : 0] a
        .spo(inst)          // output wire [31 : 0] spo
    );

    // ʵ���� data_ram
    data_ram data_ram0 (
        .a(data_sram_addr[15:2]),  // ȡ��ַ�� [15:2] λ��Ϊ Word ��ַ
        .d(data_sram_wdata),  // д���� input [31:0]
        .clk(cpu_clk),  // ʱ�� input
        .we(data_sram_we),  // дʹ�� input [3:0] 
        .spo(data_sram_rdata)  // ������ output [31:0]
    );

endmodule
