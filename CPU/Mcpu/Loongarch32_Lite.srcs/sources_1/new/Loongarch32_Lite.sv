`include "defines.v"

module Loongarch32_Lite(
    input  wire                  cpu_clk_50M,
    input  wire                  cpu_rst_n,
    
    // inst_rom
    output wire [`INST_ADDR_BUS] iaddr,
    input  wire [`INST_BUS]      inst,
    
    output wire [`INST_ADDR_BUS]  debug_wb_pc,       // 供调试使用的PC值，上板测试时务必删除该信号
    output wire                   debug_wb_rf_wen,   // 供调试使用的PC值，上板测试时务必删除该信号
    output wire [`REG_ADDR_BUS  ] debug_wb_rf_wnum,  // 供调试使用的PC值，上板测试时务必删除该信号
    output wire [`WORD_BUS      ] debug_wb_rf_wdata  // 供调试使用的PC值，上板测试时务必删除该信号
    );
    
    
    wire [`WORD_BUS      ] pc;
     
    // 连接IF/ID模块与译码阶段ID模块的变量
    wire [`WORD_BUS      ] id_pc_i;
    wire [`INST_BUS      ] id_inst_i;
    
    // 连接ID模块与通用寄存器Regfile模块的变量;
    wire [`REG_ADDR_BUS  ] ra1;
    wire [`REG_BUS       ] rd1;
    wire [`REG_ADDR_BUS  ] ra2;
    wire [`REG_BUS       ] rd2;
    
    // 连接ID/EXE模块与执行阶段EXE模块的变量
    wire [`ALUOP_BUS     ] id_aluop_o;
    wire [`ALUTYPE_BUS   ] id_alutype_o;
    wire [`REG_BUS 	     ] id_src1_o;
    wire [`REG_BUS 	     ] id_src2_o;
    wire 				   id_wreg_o;
    wire [`REG_ADDR_BUS  ] id_wa_o;
    wire [`ALUOP_BUS     ] exe_aluop_i;
    wire [`ALUTYPE_BUS   ] exe_alutype_i;
    wire [`REG_BUS 	     ] exe_src1_i;
    wire [`REG_BUS 	     ] exe_src2_i;
    wire 				   exe_wreg_i;
    wire [`REG_ADDR_BUS  ] exe_wa_i;
    
    // 连接EXE/MEM模块与访存阶段MEM模块的变量
    wire [`ALUOP_BUS     ] exe_aluop_o;
    wire 				   exe_wreg_o;
    wire [`REG_ADDR_BUS  ] exe_wa_o;
    wire [`REG_BUS 	     ] exe_wd_o;
    wire [`ALUOP_BUS     ] mem_aluop_i;
    wire 				   mem_wreg_i;
    wire [`REG_ADDR_BUS  ] mem_wa_i;
    wire [`REG_BUS 	     ] mem_wd_i;
    
    // 连接MEM/WB模块与写回阶段WB模块的变量
    wire 				   mem_wreg_o;
    wire [`REG_ADDR_BUS  ] mem_wa_o;
    wire [`REG_BUS 	     ] mem_dreg_o;
    wire 				   wb_wreg_i;
    wire [`REG_ADDR_BUS  ] wb_wa_i;
    wire [`REG_BUS       ] wb_dreg_i;
    
    // 连接WB模块与通用寄存器Regfile模块的变量
    wire 				   wb_wreg_o;
    wire [`REG_ADDR_BUS  ] wb_wa_o;
    wire [`REG_BUS       ] wb_wd_o;
    
    wire [`INST_ADDR_BUS]  if_debug_wb_pc;         // 上板测试时务必删除该信号
    wire [`INST_ADDR_BUS]  id_debug_wb_pc_i;       // 上板测试时务必删除该信号
    wire [`INST_ADDR_BUS]  id_debug_wb_pc_o;       // 上板测试时务必删除该信号
    wire [`INST_ADDR_BUS]  exe_debug_wb_pc_i;      // 上板测试时务必删除该信号
    wire [`INST_ADDR_BUS]  exe_debug_wb_pc_o;      // 上板测试时务必删除该信号
    wire [`INST_ADDR_BUS]  mem_debug_wb_pc_i;      // 上板测试时务必删除该信号
    wire [`INST_ADDR_BUS]  mem_debug_wb_pc_o;      // 上板测试时务必删除该信号
    wire [`INST_ADDR_BUS]   wb_debug_wb_pc_i;      // 上板测试时务必删除该信号

    if_stage if_stage0(.cpu_clk_50M(cpu_clk_50M), .cpu_rst_n(cpu_rst_n),
        .pc(pc), .iaddr(iaddr), .debug_wb_pc(if_debug_wb_pc)
    );
    
    ifid_reg ifid_reg0(.cpu_clk_50M(cpu_clk_50M), .cpu_rst_n(cpu_rst_n),
        .inst(inst), .if_pc(pc), .if_debug_wb_pc(if_debug_wb_pc),
        .id_inst(id_inst_i), .id_pc(id_pc_i), .id_debug_wb_pc(id_debug_wb_pc_i)
    );

    id_stage id_stage0(.id_pc_i(id_pc_i), 
        .id_inst_i(id_inst_i),
        .id_debug_wb_pc(id_debug_wb_pc_i),
        .rd1(rd1), .rd2(rd2), 	  
        .ra1(ra1), .ra2(ra2), 
        .id_aluop_o(id_aluop_o), .id_alutype_o(id_alutype_o),
        .id_src1_o(id_src1_o), .id_src2_o(id_src2_o),
        .id_wa_o(id_wa_o), .id_wreg_o(id_wreg_o),
        .debug_wb_pc(id_debug_wb_pc_o)
    );
    
    regfile regfile0(.cpu_clk_50M(cpu_clk_50M), .cpu_rst_n(cpu_rst_n),
        .we(wb_wreg_o), .wa(wb_wa_o), .wd(wb_wd_o),
        .ra1(ra1), .rd1(rd1),
        .ra2(ra2), .rd2(rd2)
    );
    
    idexe_reg idexe_reg0(.cpu_clk_50M(cpu_clk_50M), .cpu_rst_n(cpu_rst_n), 
        .id_alutype(id_alutype_o), .id_aluop(id_aluop_o),
        .id_src1(id_src1_o), .id_src2(id_src2_o),
        .id_wa(id_wa_o), .id_wreg(id_wreg_o),
        .id_debug_wb_pc(id_debug_wb_pc_o),
        .exe_alutype(exe_alutype_i), .exe_aluop(exe_aluop_i),
        .exe_src1(exe_src1_i), .exe_src2(exe_src2_i), 
        .exe_wa(exe_wa_i), .exe_wreg(exe_wreg_i),
        .exe_debug_wb_pc(exe_debug_wb_pc_i)
    );
    
    exe_stage exe_stage0(
        .exe_alutype_i(exe_alutype_i), .exe_aluop_i(exe_aluop_i),
        .exe_src1_i(exe_src1_i), .exe_src2_i(exe_src2_i),
        .exe_wa_i(exe_wa_i), .exe_wreg_i(exe_wreg_i),
        .exe_debug_wb_pc(exe_debug_wb_pc_i),
        .exe_aluop_o(exe_aluop_o),
        .exe_wa_o(exe_wa_o), .exe_wreg_o(exe_wreg_o), .exe_wd_o(exe_wd_o),
        .debug_wb_pc(exe_debug_wb_pc_o)
    );
        
    exemem_reg exemem_reg0(.cpu_clk_50M(cpu_clk_50M), .cpu_rst_n(cpu_rst_n),
        .exe_aluop(exe_aluop_o),
        .exe_wa(exe_wa_o), .exe_wreg(exe_wreg_o), .exe_wd(exe_wd_o),
        .exe_debug_wb_pc(exe_debug_wb_pc_o),
        .mem_aluop(mem_aluop_i),
        .mem_wa(mem_wa_i), .mem_wreg(mem_wreg_i), .mem_wd(mem_wd_i),
        .mem_debug_wb_pc(mem_debug_wb_pc_i)
    );

    mem_stage mem_stage0(.mem_aluop_i(mem_aluop_i),
        .mem_wa_i(mem_wa_i), .mem_wreg_i(mem_wreg_i), .mem_wd_i(mem_wd_i),
        .mem_debug_wb_pc(mem_debug_wb_pc_i),
        .mem_wa_o(mem_wa_o), .mem_wreg_o(mem_wreg_o), .mem_dreg_o(mem_dreg_o),
        .debug_wb_pc(mem_debug_wb_pc_o)
    );
    	
    memwb_reg memwb_reg0(.cpu_clk_50M(cpu_clk_50M), .cpu_rst_n(cpu_rst_n),
        .mem_wa(mem_wa_o), .mem_wreg(mem_wreg_o), .mem_dreg(mem_dreg_o),
        .mem_debug_wb_pc(mem_debug_wb_pc_o),
        .wb_wa(wb_wa_i), .wb_wreg(wb_wreg_i), .wb_dreg(wb_dreg_i),
        .wb_debug_wb_pc(wb_debug_wb_pc_i)
    );

    wb_stage wb_stage0(
        .wb_wa_i(wb_wa_i), .wb_wreg_i(wb_wreg_i), .wb_dreg_i(wb_dreg_i), 
        .wb_debug_wb_pc(wb_debug_wb_pc_i),
        .wb_wa_o(wb_wa_o), .wb_wreg_o(wb_wreg_o), .wb_wd_o(wb_wd_o),
        .debug_wb_pc(debug_wb_pc),       
        .debug_wb_rf_wen(debug_wb_rf_wen),   
        .debug_wb_rf_wnum(debug_wb_rf_wnum),  
        .debug_wb_rf_wdata(debug_wb_rf_wdata)  
    );

endmodule
