// 顶层封装
module top(
    input clk,
    input locked,
    
    input        rxd,
    output       txd,
    
    input  [31:0] sw_1,
    input  [31:0] sw_2,
    output [31:0] led,
    output [3:0]  seg_cs,
    output [7:0]  seg_data,
    input  [7:0]  btn
);

    Loongarch32_Lite_FullSyS Loongarch32_Lite_FullSyS0 (
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