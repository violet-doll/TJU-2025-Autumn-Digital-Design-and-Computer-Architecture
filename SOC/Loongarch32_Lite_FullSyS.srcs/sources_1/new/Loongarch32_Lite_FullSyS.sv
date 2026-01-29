`include "defines.v"

// 片上系统顶层
module Loongarch32_Lite_FullSyS (
    input clk,
    input locked,

    input        rxd,
    output logic txd,

    input        [31:0] sw_1,
    input        [31:0] sw_2,
    output logic [31:0] led,
    output logic [ 3:0] seg_cs,
    output logic [ 7:0] seg_data,
    input        [ 7:0] btn
);

    // 复位
    logic rst_n;
    always_ff @(posedge clk or negedge locked) begin
        if (~locked) rst_n = 1'b0;
        else rst_n = 1'b1;
    end

    // 数码管驱动
    logic [3:0] seg_wdata[0:8];
    x7seg seg_cs_data_gen0 (
        .clk(clk),
        .seg_wdata(seg_wdata),
        .seg_cs(seg_cs),
        .seg_data(seg_data)
    );

    // 通用输入输出寄存器
    logic [31:0] sw_1_ff;
    logic [31:0] led_reg;

    always_ff @(posedge clk or negedge rst_n) begin
        if (~rst_n) sw_1_ff <= 0;
        else sw_1_ff <= sw_1;
    end

    wire is_led_access;
    wire cpu_led_write = data_sram_en & is_led_access & (data_sram_we != 4'b0000);
    always_ff @(posedge clk or negedge rst_n) begin
        if (~rst_n) led_reg <= 32'h0;
        else if (cpu_led_write) led_reg <= data_sram_wdata;
    end

    assign led = led_reg;


    // 数码管寄存器
    logic [31:0] seg_reg_lo;
    logic [31:0] seg_reg_hi;

    always_ff @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            seg_reg_lo <= 32'h0;
            seg_reg_hi <= 32'h0;
        end else if (data_sram_en & (data_sram_we != 4'b0000)) begin
            if (is_seg_lo) seg_reg_lo <= data_sram_wdata;
            if (is_seg_hi) seg_reg_hi <= data_sram_wdata;
        end
    end

    // 处理器接口
    wire [31:0] iaddr;
    wire [31:0] inst;
    wire        data_sram_en;
    wire [ 3:0] data_sram_we;
    wire [31:0] data_sram_addr;
    wire [31:0] data_sram_wdata;
    wire [31:0] data_sram_rdata;

    // 调试
    wire [31:0] debug_wb_pc;
    wire        debug_wb_rf_wen;
    wire [ 4:0] debug_wb_rf_wnum;
    wire [31:0] debug_wb_rf_wdata;

    // 内存映射输入输出译码
    wire        is_uart_data = (data_sram_addr == 32'hbfd003f8);
    wire        is_uart_stat = (data_sram_addr == 32'hbfd003fc);
    wire        is_uart_access = is_uart_data | is_uart_stat;

    assign is_led_access = (data_sram_addr == 32'hbfd00400);
    wire        is_switch_access = (data_sram_addr == 32'hbfd00404);

    wire        is_seg_lo = (data_sram_addr == 32'hbfd00410);
    wire        is_seg_hi = (data_sram_addr == 32'hbfd00414);
    wire        is_seg_access = is_seg_lo | is_seg_hi;
    wire        is_gpio_access = is_led_access | is_switch_access | is_seg_access;

    // 访问判定
    wire        is_rom_access = data_sram_en & (data_sram_addr[31:16] == 16'h8000);
    wire        is_ram_access = data_sram_en & ~is_uart_access & ~is_rom_access & ~is_gpio_access;

    // 串口
    logic [7:0] ext_uart_rx;
    logic [7:0] ext_uart_buffer, ext_uart_tx;
    logic ext_uart_ready, ext_uart_clear, ext_uart_busy;
    logic ext_uart_start, ext_uart_avai;

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

    wire cpu_uart_read = data_sram_en & is_uart_data & (data_sram_we == 4'b0000);
    assign ext_uart_clear = cpu_uart_read & ext_uart_avai;
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

    wire [31:0] uart_status = {30'b0, ext_uart_avai, ~ext_uart_busy};
    wire [31:0] uart_rx_data = {24'b0, ext_uart_buffer};

    // 数据存储器
    wire [31:0] ram_rdata;
    wire [3:0] ram_we = is_ram_access ? data_sram_we : 4'b0000;
    wire [31:0] ram_wdata_swapped = {
        data_sram_wdata[7:0], data_sram_wdata[15:8], data_sram_wdata[23:16], data_sram_wdata[31:24]
    };
    wire [3:0] ram_we_swapped = {ram_we[0], ram_we[1], ram_we[2], ram_we[3]};

    data_ram data_ram0 (
        .a  (data_sram_addr[15:2]),
        .d  (ram_wdata_swapped),
        .clk(clk),
        .we (ram_we_swapped),
        .spo(ram_rdata)
    );


    // 指令存储器
    wire [13:0] rom_addr_idx = is_rom_access ? data_sram_addr[15:2] : iaddr[15:2];
    wire [31:0] rom_out_raw;

    inst_rom inst_rom0 (
        .a  (rom_addr_idx),
        .spo(rom_out_raw)
    );
    assign inst = is_rom_access ? 32'h0 : rom_out_raw;
    wire [31:0] rom_rdata = rom_out_raw;

    // 读数据选择
    wire [31:0] ram_rdata_swapped = {
        ram_rdata[7:0], ram_rdata[15:8], ram_rdata[23:16], ram_rdata[31:24]
    };

    wire [31:0] rom_rdata_swapped = {
        rom_rdata[7:0], rom_rdata[15:8], rom_rdata[23:16], rom_rdata[31:24]
    };

    wire [31:0] switch_rdata = sw_1_ff;

    assign data_sram_rdata = is_uart_data     ? uart_rx_data :
                             is_uart_stat     ? uart_status :
                             is_switch_access ? switch_rdata :
                             is_seg_lo        ? seg_reg_lo :   
                             is_seg_hi        ? seg_reg_hi :
                             is_rom_access    ? rom_rdata_swapped : 
                             ram_rdata_swapped;

    // 处理器实例
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

    // 数码管显示
    assign seg_wdata[0] = seg_reg_lo[3:0];
    assign seg_wdata[1] = seg_reg_lo[7:4];
    assign seg_wdata[2] = seg_reg_lo[11:8];
    assign seg_wdata[3] = seg_reg_lo[15:12];
    assign seg_wdata[4] = seg_reg_lo[19:16];
    assign seg_wdata[5] = seg_reg_lo[23:20];
    assign seg_wdata[6] = seg_reg_lo[27:24];
    assign seg_wdata[7] = seg_reg_lo[31:28];
    assign seg_wdata[8] = seg_reg_hi[3:0];

endmodule
