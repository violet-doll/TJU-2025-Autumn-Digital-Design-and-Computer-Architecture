////////////////////////////////////////////////////////
// RS-232 RX module
// (c) fpga4fun.com & KNJN LLC - 2003 to 2016

// The RS-232 settings are fixed
// RX: 8-bit data, 1 stop, no-parity (the receiver can accept more stop bits of course)

//`define SIMULATION   // in this mode, TX outputs one bit per clock cycle
                       // and RX receives one bit per clock cycle (for fast simulations)

////////////////////////////////////////////////////////
module async_receiver(
	input              clk,
	input              RxD,
	output logic       RxD_data_ready,
	input              RxD_clear,
	output logic [7:0] RxD_data  // data received, valid only (for one clock cycle) when RxD_data_ready is asserted
);

parameter ClkFrequency = 50000000; // 50MHz
parameter Baud = 9600;

parameter Oversampling = 8;  // needs to be a power of 2
// we oversample the RxD line at a fixed rate to capture each RxD data bit at the "right" time
// 8 times oversampling by default, use 16 for higher quality reception

////////////////////////////////
logic [3:0] RxD_state = 0;

`ifdef SIMULATION
logic RxD_bit; assign RxD_bit = RxD;
logic sampleNow = 1'b1;  // receive one bit per clock cycle

`else
logic OversamplingTick;
BaudTickGen #(ClkFrequency, Baud, Oversampling) tickgen(.clk(clk), .enable(1'b1), .tick(OversamplingTick));

// synchronize RxD to our clk domain
logic [1:0] RxD_sync = 2'b11;
always_ff @(posedge clk) if(OversamplingTick) RxD_sync <= {RxD_sync[0], RxD};

// and filter it
logic [1:0] Filter_cnt = 2'b11;
logic RxD_bit = 1'b1;

always_ff @(posedge clk)
if(OversamplingTick)
begin
	if(RxD_sync[1]==1'b1 && Filter_cnt!=2'b11) Filter_cnt <= Filter_cnt + 1'd1;
	else 
	if(RxD_sync[1]==1'b0 && Filter_cnt!=2'b00) Filter_cnt <= Filter_cnt - 1'd1;

	if(Filter_cnt==2'b11) RxD_bit <= 1'b1;
	else
	if(Filter_cnt==2'b00) RxD_bit <= 1'b0;
end

// and decide when is the good time to sample the RxD line
function integer log2(input integer v); begin log2=0; while(v>>log2) log2=log2+1; end endfunction
localparam l2o = log2(Oversampling);
logic [l2o-2:0] OversamplingCnt = 0;
always_ff @(posedge clk) if(OversamplingTick) OversamplingCnt <= (RxD_state==0) ? 1'd0 : OversamplingCnt + 1'd1;
logic sampleNow;assign sampleNow = OversamplingTick && (OversamplingCnt==Oversampling/2-1);
`endif

// now we can accumulate the RxD bits in a shift-register
always_ff @(posedge clk)
case(RxD_state)
	4'b0000: if(~RxD_bit) RxD_state <= `ifdef SIMULATION 4'b1000 `else 4'b0001 `endif;  // start bit found?
	4'b0001: if(sampleNow) RxD_state <= 4'b1000;  // sync start bit to sampleNow
	4'b1000: if(sampleNow) RxD_state <= 4'b1001;  // bit 0
	4'b1001: if(sampleNow) RxD_state <= 4'b1010;  // bit 1
	4'b1010: if(sampleNow) RxD_state <= 4'b1011;  // bit 2
	4'b1011: if(sampleNow) RxD_state <= 4'b1100;  // bit 3
	4'b1100: if(sampleNow) RxD_state <= 4'b1101;  // bit 4
	4'b1101: if(sampleNow) RxD_state <= 4'b1110;  // bit 5
	4'b1110: if(sampleNow) RxD_state <= 4'b1111;  // bit 6
	4'b1111: if(sampleNow) RxD_state <= 4'b0010;  // bit 7
	4'b0010: if(sampleNow) RxD_state <= 4'b0000;  // stop bit
	default: RxD_state <= 4'b0000;
endcase

always_ff @(posedge clk)
if(sampleNow && RxD_state[3]) RxD_data <= {RxD_bit, RxD_data[7:1]};

always_ff @(posedge clk)
begin
	if(RxD_clear)
		RxD_data_ready <= 0;
	else
		RxD_data_ready <= RxD_data_ready | (sampleNow && RxD_state==4'b0010 && RxD_bit);  // make sure a stop bit is received
end

endmodule