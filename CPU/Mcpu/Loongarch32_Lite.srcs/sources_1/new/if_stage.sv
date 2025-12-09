`include "defines.v"

module if_stage (
    input 					       cpu_clk_50M,
    input 					       cpu_rst_n,
    
    output logic [`INST_ADDR_BUS]  pc,
    output 	     [`INST_ADDR_BUS]  iaddr,
    output       [`INST_ADDR_BUS]  debug_wb_pc // 供调试使用的PC值，上板测试时务必删除该信号
    );
  
    wire [`INST_ADDR_BUS] pc_next; 
    assign pc_next = pc + 4;           

    always @(posedge cpu_clk_50M) begin
        if (~cpu_rst_n) begin
            pc <= `PC_INIT;                   // 复位时 PC 处于初始值
        end
        else begin
            pc <= pc_next;                    // 指令存储器使能后，PC值每时钟周期加4 	
        end
    end
    
    assign iaddr = (~cpu_rst_n) ? `PC_INIT : pc_next;    // 获得访问指令存储器的地址
    
    assign debug_wb_pc = pc;   // 上板测试时务必删除该语句
    
endmodule