module top(
    input   clk,
    input   locked,
    input   rxd,
    output  txd
    );
    Loongarch32_Lite_FullSyS Loongarch32_Lite_FullSyS0(
        .clk(clk),
        .locked(locked),
        .rxd(rxd),
        .txd(txd)
    );
endmodule
