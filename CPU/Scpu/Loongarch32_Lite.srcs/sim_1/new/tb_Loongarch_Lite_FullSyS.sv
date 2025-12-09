module tb_Loongarch32_Lite_FullSyS();
    // 时钟与复位信号
    logic sys_clk = 0;
    logic sys_rst_n = 1;
    initial forever #5 sys_clk = ~sys_clk;
    
    // SoC
    Loongarch32_Lite_FullSyS SoC(
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n)
    );
    
    // CPU调试信号
    logic        cpu_clk, cpu_rst_n;
    logic [31:0] debug_wb_pc;       // 供调试使用的PC值，上板测试时务必删除该信号
    logic        debug_wb_rf_wen;   // 供调试使用的PC值，上板测试时务必删除该信号
    logic [ 4:0] debug_wb_rf_wnum;  // 供调试使用的PC值，上板测试时务必删除该信号
    logic [31:0] debug_wb_rf_wdata;  // 供调试使用的PC值，上板测试时务必删除该信号
    
    assign cpu_clk           = SoC.cpu_clk;
    assign cpu_rst_n         = SoC.cpu_rst_n;
    assign debug_wb_pc       = SoC.debug_wb_pc;      
    assign debug_wb_rf_wen   = SoC.debug_wb_rf_wen;  
    assign debug_wb_rf_wnum  = SoC.debug_wb_rf_wnum; 
    assign debug_wb_rf_wdata = SoC.debug_wb_rf_wdata;
    
    always @(posedge cpu_clk) begin
	   if(debug_wb_rf_wen && debug_wb_rf_wnum!=5'd0) begin
	       $display("--------------------------------------------------------------");
           $display("[%t]ns",$time/1000);
           $display("reference: PC = 0x%8h, wb_rf_wnum = 0x%2h, wb_rf_wdata = 0x%8h",
                      debug_wb_pc, debug_wb_rf_wnum, debug_wb_rf_wdata);
           $display("--------------------------------------------------------------");    
	   end
	end
endmodule
