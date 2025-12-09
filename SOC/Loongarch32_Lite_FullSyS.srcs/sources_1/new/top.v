module top(
    input clk,  // 50Mhz
    input locked,
    
    input                   rxd,                // 串口接收端
    output                  txd,                // 串口发送端
    
    input [31:0]            sw_1,           // 第一组拨码开关
    input [31:0]            sw_2,           // 第二组拨码开关
    output [31:0]            led,            // led灯
    output [3:0]             seg_cs,        // 7段数码管选择信号
    output [7:0]             seg_data,      // 7段数码管数据
    input [7:0]             btn            // 按钮
);

Loongarch32_Lite_FullSyS Loongarch32_Lite_FullSyS0(
    .clk(clk),
    .locked(locked),
    .rxd(rxd),
    .txd(txd),
    .sw_1(sw_1),
    .sw_2(sw_2),
    .led(led),
    .seg_cs(seg_cs),
    .seg_data(seg_data),
    .btn(btn)
);
endmodule