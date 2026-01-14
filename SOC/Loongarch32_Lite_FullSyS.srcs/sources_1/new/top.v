//==============================================================================
// Module: top
// Description: FPGA顶层封装模块
// Author: TJU Digital Design Course
//==============================================================================
module top(
    input clk,          // 50MHz
    input locked,       // PLL锁定信号
    
    input        rxd,   // UART接收
    output       txd,   // UART发送
    
    input  [31:0] sw_1,      // 拨码开关组1
    input  [31:0] sw_2,      // 拨码开关组2
    output [31:0] led,       // LED灯
    output [3:0]  seg_cs,    // 数码管片选
    output [7:0]  seg_data,  // 数码管段码
    input  [7:0]  btn        // 按钮
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