// 串口接收
module async_receiver (
    input              clk,
    input              RxD,
    output logic       RxD_data_ready,
    input              RxD_clear,
    output logic [7:0] RxD_data
);

    parameter ClkFrequency = 50000000;
    parameter Baud = 9600;

    parameter Oversampling = 8;

    ////////////////////////////////
    logic [3:0] RxD_state = 0;

`ifdef SIMULATION
    logic RxD_bit;
    assign RxD_bit = RxD;
    logic sampleNow = 1'b1;

`else
    logic OversamplingTick;
    BaudTickGen #(ClkFrequency, Baud, Oversampling) tickgen (
        .clk(clk),
        .enable(1'b1),
        .tick(OversamplingTick)
    );

    // 同步接收线
    logic [1:0] RxD_sync = 2'b11;
    always_ff @(posedge clk) if (OversamplingTick) RxD_sync <= {RxD_sync[0], RxD};

    // 简单滤波
    logic [1:0] Filter_cnt = 2'b11;
    logic RxD_bit = 1'b1;

    always_ff @(posedge clk)
        if (OversamplingTick) begin
            if (RxD_sync[1] == 1'b1 && Filter_cnt != 2'b11) Filter_cnt <= Filter_cnt + 1'd1;
            else if (RxD_sync[1] == 1'b0 && Filter_cnt != 2'b00) Filter_cnt <= Filter_cnt - 1'd1;

            if (Filter_cnt == 2'b11) RxD_bit <= 1'b1;
            else if (Filter_cnt == 2'b00) RxD_bit <= 1'b0;
        end

    // 采样点
    function integer log2(input integer v);
        begin
            log2 = 0;
            while (v >> log2) log2 = log2 + 1;
        end
    endfunction
    localparam l2o = log2(Oversampling);
    logic [l2o-2:0] OversamplingCnt = 0;
    always_ff @(posedge clk)
        if (OversamplingTick)
            OversamplingCnt <= (RxD_state == 0) ? 1'd0 : OversamplingCnt + 1'd1;
    logic sampleNow;
    assign sampleNow = OversamplingTick && (OversamplingCnt == Oversampling / 2 - 1);
`endif

    // 串入移位
    always_ff @(posedge clk)
        case (RxD_state)
`ifdef SIMULATION
            4'b0000: if (~RxD_bit) RxD_state <= 4'b1000;
`else
            4'b0000: if (~RxD_bit) RxD_state <= 4'b0001;
`endif
            4'b0001: if (sampleNow) RxD_state <= 4'b1000;
            4'b1000: if (sampleNow) RxD_state <= 4'b1001;
            4'b1001: if (sampleNow) RxD_state <= 4'b1010;
            4'b1010: if (sampleNow) RxD_state <= 4'b1011;
            4'b1011: if (sampleNow) RxD_state <= 4'b1100;
            4'b1100: if (sampleNow) RxD_state <= 4'b1101;
            4'b1101: if (sampleNow) RxD_state <= 4'b1110;
            4'b1110: if (sampleNow) RxD_state <= 4'b1111;
            4'b1111: if (sampleNow) RxD_state <= 4'b0010;
            4'b0010: if (sampleNow) RxD_state <= 4'b0000;
            default: RxD_state <= 4'b0000;
        endcase

    always_ff @(posedge clk) if (sampleNow && RxD_state[3]) RxD_data <= {RxD_bit, RxD_data[7:1]};

    always_ff @(posedge clk) begin
        if (RxD_clear) RxD_data_ready <= 0;
        else RxD_data_ready <= RxD_data_ready | (sampleNow && RxD_state == 4'b0010 && RxD_bit);
    end

endmodule
