`include "defines.v"

//==============================================================================
// Module: Loongarch32_Lite_FullSyS
// Description: LoongArch32 SoC顶层模块
//              集成CPU核心、指令ROM、数据RAM和UART外设
// Author: TJU Digital Design Course
//==============================================================================
module Loongarch32_Lite_FullSyS (
    input clk,    // 50MHz主时钟
    input locked, // PLL锁定信号

    input        rxd,  // UART接收
    output logic txd,  // UART发送

    input        [31:0] sw_1,      // 拨码开关组1
    input        [31:0] sw_2,      // 拨码开关组2
    output logic [31:0] led,       // LED灯
    output logic [ 3:0] seg_cs,    // 数码管片选
    output logic [ 7:0] seg_data,  // 数码管段码
    input        [ 7:0] btn        // 按钮
);

    //--------------------------------------------------------------------------
    // 复位信号生成
    //--------------------------------------------------------------------------
    logic rst_n;
    always_ff @(posedge clk or negedge locked) begin
        if (~locked) rst_n = 1'b0;
        else rst_n = 1'b1;
    end

    //--------------------------------------------------------------------------
    // 七段数码管驱动
    //--------------------------------------------------------------------------
    logic [3:0] seg_wdata[0:8];
    x7seg seg_cs_data_gen0 (
        .clk(clk),
        .seg_wdata(seg_wdata),
        .seg_cs(seg_cs),
        .seg_data(seg_data)
    );

    // 拨码开关1控制LED灯
    logic [31:0] sw_1_ff;
    always_ff @(posedge clk or negedge rst_n) begin
        if (~rst_n) sw_1_ff <= 0;
        else sw_1_ff <= sw_1;
    end
    assign led = sw_1_ff;

    //--------------------------------------------------------------------------
    // CPU核心接口信号
    //--------------------------------------------------------------------------
    wire  [31:0] iaddr;  // 指令地址
    wire  [31:0] inst;  // 指令数据

    wire         data_sram_en;  // 数据SRAM使能
    wire  [ 3:0] data_sram_we;  // 数据SRAM写使能(字节)
    wire  [31:0] data_sram_addr;  // 数据SRAM地址
    wire  [31:0] data_sram_wdata;  // 数据SRAM写数据
    wire  [31:0] data_sram_rdata;  // 数据SRAM读数据

    // 调试接口
    wire  [31:0] debug_wb_pc;
    wire         debug_wb_rf_wen;
    wire  [ 4:0] debug_wb_rf_wnum;
    wire  [31:0] debug_wb_rf_wdata;

    //--------------------------------------------------------------------------
    // 地址译码 (MMIO)
    //--------------------------------------------------------------------------
    wire         is_uart_data = (data_sram_addr == 32'hbfd003f8);  // UART数据寄存器
    wire         is_uart_stat = (data_sram_addr == 32'hbfd003fc);  // UART状态寄存器
    wire         is_uart_access = is_uart_data | is_uart_stat;
    wire         is_rom_access = data_sram_en & (data_sram_addr[31:16] == 16'h8000);
    wire         is_ram_access = data_sram_en & ~is_uart_access & ~is_rom_access;

    //--------------------------------------------------------------------------
    // UART控制逻辑
    //--------------------------------------------------------------------------
    logic [ 7:0] ext_uart_rx;
    logic [7:0] ext_uart_buffer, ext_uart_tx;
    logic ext_uart_ready, ext_uart_clear, ext_uart_busy;
    logic ext_uart_start, ext_uart_avai;

    // UART接收器
    async_receiver #(
        .ClkFrequency(50000000),
        .Baud(9600)
    ) ext_uart_r (
        .clk(clk),
        .RxD(rxd),
        .RxD_data_ready(ext_uart_ready),
        .RxD_clear(ext_uart_clear),
        .RxD_data(ext_uart_rx)
    );

    // CPU读取UART数据时清除接收标志
    wire cpu_uart_read = data_sram_en & is_uart_data & (data_sram_we == 4'b0000);
    assign ext_uart_clear = cpu_uart_read & ext_uart_avai;

    // 接收数据缓冲
    always_ff @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            ext_uart_buffer <= 8'h0;
            ext_uart_avai   <= 1'b0;
        end else if (ext_uart_ready) begin
            ext_uart_buffer <= ext_uart_rx;
            ext_uart_avai   <= 1'b1;
        end else if (ext_uart_clear) begin
            ext_uart_avai <= 1'b0;
        end
    end

    // CPU写入UART数据时发送
    wire cpu_uart_write = data_sram_en & is_uart_data & (data_sram_we != 4'b0000);
    always_ff @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            ext_uart_tx <= 8'h0;
            ext_uart_start <= 1'b0;
        end else if (cpu_uart_write & ~ext_uart_busy) begin
            ext_uart_tx <= data_sram_wdata[7:0];
            ext_uart_start <= 1'b1;
        end else begin
            ext_uart_start <= 1'b0;
        end
    end

    // UART发送器
    async_transmitter #(
        .ClkFrequency(50000000),
        .Baud(9600)
    ) ext_uart_t (
        .clk(clk),
        .TxD(txd),
        .TxD_busy(ext_uart_busy),
        .TxD_start(ext_uart_start),
        .TxD_data(ext_uart_tx)
    );

    // UART状态寄存器: bit0=TX Ready, bit1=RX Ready
    wire [31:0] uart_status = {30'b0, ext_uart_avai, ~ext_uart_busy};
    wire [31:0] uart_rx_data = {24'b0, ext_uart_buffer};

    //--------------------------------------------------------------------------
    // 数据RAM
    //--------------------------------------------------------------------------
    wire [31:0] ram_rdata;
    wire [3:0] ram_we = is_ram_access ? data_sram_we : 4'b0000;

    // 字节序转换(大小端交换)
    wire [31:0] ram_wdata_swapped = {
        data_sram_wdata[7:0], data_sram_wdata[15:8], data_sram_wdata[23:16], data_sram_wdata[31:24]
    };
    wire [3:0] ram_we_swapped = {ram_we[0], ram_we[1], ram_we[2], ram_we[3]};

    data_ram data_ram0 (
        .a  (data_sram_addr[13:2]),
        .d  (ram_wdata_swapped),
        .clk(clk),
        .we (ram_we_swapped),
        .spo(ram_rdata)
    );

    //--------------------------------------------------------------------------
    // 指令ROM (双端口)
    //--------------------------------------------------------------------------
    wire [31:0] rom_rdata;
    inst_rom inst_rom0 (
        // 取指端口
        .a(iaddr[13:2]),
        .spo(inst),
        // 数据访问端口
        .dpra(data_sram_addr[13:2]),
        .dpo(rom_rdata),
        // 写端口禁用
        .clk(clk),
        .we(1'b0),
        .d(32'b0)
    );

    //--------------------------------------------------------------------------
    // 数据读取MUX (含字节序转换)
    //--------------------------------------------------------------------------
    wire [31:0] ram_rdata_swapped = {
        ram_rdata[7:0], ram_rdata[15:8], ram_rdata[23:16], ram_rdata[31:24]
    };
    wire [31:0] rom_rdata_swapped = {
        rom_rdata[7:0], rom_rdata[15:8], rom_rdata[23:16], rom_rdata[31:24]
    };

    assign data_sram_rdata = is_uart_data  ? uart_rx_data : 
                             is_uart_stat  ? uart_status : 
                             is_rom_access ? rom_rdata_swapped :
                             ram_rdata_swapped;

    //--------------------------------------------------------------------------
    // CPU核心实例化
    //--------------------------------------------------------------------------
    Loongarch32_Lite cpu0 (
        .cpu_clk_50M(clk),
        .cpu_rst_n(rst_n),
        .iaddr(iaddr),
        .inst(inst),
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

    //--------------------------------------------------------------------------
    // 数码管显示
    //--------------------------------------------------------------------------
    // 数码管0-1: UART接收数据
    assign seg_wdata[0] = ext_uart_buffer[3:0];
    assign seg_wdata[1] = ext_uart_buffer[7:4];

    // 数码管2-6: 拨码开关2
    logic [31:0] sw_2_ff;
    always_ff @(posedge clk or negedge rst_n) begin
        if (~rst_n) sw_2_ff <= 0;
        else sw_2_ff <= sw_2;
    end
    assign seg_wdata[2] = sw_2_ff[3:0];
    assign seg_wdata[3] = sw_2_ff[7:4];
    assign seg_wdata[4] = sw_2_ff[11:8];
    assign seg_wdata[5] = sw_2_ff[15:12];
    assign seg_wdata[6] = sw_2_ff[19:16];

    // 数码管7-8: 按钮状态
    logic [7:0] btn_ff;
    always_ff @(posedge clk or negedge rst_n) begin
        if (~rst_n) btn_ff <= 0;
        else btn_ff <= btn;
    end
    assign seg_wdata[7] = btn_ff[3:0];
    assign seg_wdata[8] = btn_ff[7:4];

endmodule
