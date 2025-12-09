`include "defines.v"

module id_stage(

    // 从取指阶段获得的PC值
    input  wire [`INST_ADDR_BUS]    id_pc_i,
    input  wire [`INST_ADDR_BUS]    id_debug_wb_pc,  // 供调试使用的PC值，上板测试时务必删除该信号
    
    // 从指令存储器读出的指令字
    input  wire [`INST_BUS     ]    id_inst_i,
    
    // 从通用寄存器堆读出的数据 
    input  wire [`REG_BUS      ]    rd1,
    input  wire [`REG_BUS      ]    rd2,         
    
    // 送至执行阶段的译码信息
    output wire [`ALUTYPE_BUS  ]    id_alutype_o,
    output wire [`ALUOP_BUS    ]    id_aluop_o,
    output wire [`REG_ADDR_BUS ]    id_wa_o,
    output wire                     id_wreg_o,

    // 送至执行阶段的源操作数1、源操作数2
    output wire [`REG_BUS      ]    id_src1_o,
    output wire [`REG_BUS      ]    id_src2_o,
    
    // 送至读通用寄存器堆端口地址
    output wire [`REG_ADDR_BUS ]    ra1,
    output wire [`REG_ADDR_BUS ]    ra2,
    
    output       [`INST_ADDR_BUS] 	debug_wb_pc  // 供调试使用的PC值，上板测试时务必删除该信号
    );
    
    // 根据小端模式组织指令字
    wire [`INST_BUS     ]    inst;
    assign inst = {id_inst_i[7:0], id_inst_i[15:8], id_inst_i[23:16], id_inst_i[31:24]};
    
    // 提取指令字中各个字段的信息
    wire [16:0] op17  = inst[31:15];
    wire [4 :0] rd    = inst[4 : 0];
    wire [4 :0] rj    = inst[9 : 5];
    wire [11:0] imm12 = inst[21:10];
    
    // 涉及立即数判定的信号
    wire        id_immsel;
    wire        id_sext;

    /*-------------------- 第一级译码逻辑：确定当前需要译码的指令 --------------------*/
    // 以 andi.w 指令为例 其余指令需要自行完成
    wire inst_andi  = ~|op17[16:11] & ~(~|op17[16:6]) &  op17[10] &  op17[9] & ~op17[8] &  op17[7];
    
    /*--------------------- 第二级译码逻辑：生成具体控制信号 -------------------------*/
    // 操作类型alutype
    assign id_alutype_o[2] = 1'b0;
    assign id_alutype_o[1] = inst_andi;
    assign id_alutype_o[0] = 1'b0; 
    
    // 内部操作码aluop
    assign id_aluop_o[7]   = 1'b0;
    assign id_aluop_o[6]   = 1'b0;
    assign id_aluop_o[5]   = 1'b0;
    assign id_aluop_o[4]   = inst_andi;
    assign id_aluop_o[3]   = inst_andi;
    assign id_aluop_o[2]   = inst_andi;
    assign id_aluop_o[1]   = 1'b0;
    assign id_aluop_o[0]   = 1'b0;
    
    // 写通用寄存器使能信号
    assign id_wreg_o = inst_andi;
    // 确定第二个操作数来源的信号（寄存器or立即数）
    assign id_immsel = inst_andi;
    // 对立即数进行符号扩展或者零扩展的信号
    assign id_sext   = 1'b0;
    /*------------------------------------------------------------------------------*/

    // 读通用寄存器2个堆端口的地址确认
    assign ra1   = rj;
    assign ra2   = 5'b0;
    
    // 获得待写入目的寄存器的地址
    assign id_wa_o      = rd;
    
    // 获得位移后立即数，如果sext有效则符号拓展，如果sext无效则零拓展
    wire [31:0] imm32;
    assign imm32 = (id_sext  == `TRUE_V) ? ({ {20{imm12[11]} } , imm12}) : ({20'b0 , imm12});

    // 获得源操作数1。如果shift信号有效，则源操作数1为移位位数；否则为从读通用寄存器堆端口1获得的数据
    assign id_src1_o =  rd1;

    // 获得源操作数2。如果immsel信号有效，则源操作数1为立即数；否则为从读通用寄存器堆端口2获得的数据
    assign id_src2_o = (id_immsel == `READ_ENABLE) ? imm32 : rd2;           
    
    assign debug_wb_pc = id_debug_wb_pc;    // 上板测试时务必删除该语句  
    
endmodule
