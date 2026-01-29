// 串口发送

module async_transmitter (
    input              clk,
    input              TxD_start,
    input        [7:0] TxD_data,
    output logic       TxD,
    output logic       TxD_busy
);

    parameter ClkFrequency = 50000000;
    parameter Baud = 9600;

    ////////////////////////////////
`ifdef SIMULATION
    logic BitTick = 1'b1;
`else
    logic BitTick;
    BaudTickGen #(ClkFrequency, Baud) tickgen (
        .clk(clk),
        .enable(TxD_busy),
        .tick(BitTick)
    );
`endif

    logic [3:0] TxD_state = 0;
    logic TxD_ready;
    assign TxD_ready = (TxD_state == 0);
    assign TxD_busy  = ~TxD_ready;

    logic [7:0] TxD_shift = 0;
    always @(posedge clk) begin
        if (TxD_ready & TxD_start) TxD_shift <= TxD_data;
        else if (TxD_state[3] & BitTick) TxD_shift <= (TxD_shift >> 1);

        case (TxD_state)
            4'b0000: if (TxD_start) TxD_state <= 4'b0100;
            4'b0100: if (BitTick) TxD_state <= 4'b1000;
            4'b1000: if (BitTick) TxD_state <= 4'b1001;
            4'b1001: if (BitTick) TxD_state <= 4'b1010;
            4'b1010: if (BitTick) TxD_state <= 4'b1011;
            4'b1011: if (BitTick) TxD_state <= 4'b1100;
            4'b1100: if (BitTick) TxD_state <= 4'b1101;
            4'b1101: if (BitTick) TxD_state <= 4'b1110;
            4'b1110: if (BitTick) TxD_state <= 4'b1111;
            4'b1111: if (BitTick) TxD_state <= 4'b0010;
            4'b0010: if (BitTick) TxD_state <= 4'b0000;
            default: if (BitTick) TxD_state <= 4'b0000;
        endcase
    end

    assign TxD = (TxD_state < 4) | (TxD_state[3] & TxD_shift[0]);
endmodule
