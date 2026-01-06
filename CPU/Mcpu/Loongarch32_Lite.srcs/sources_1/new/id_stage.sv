`include "defines.v"

module id_stage (

    // 来自取指阶段的PC值
    input wire [`INST_ADDR_BUS] id_pc_i,
    input wire [`INST_ADDR_BUS] id_debug_wb_pc, // 供调试使用的PC值

    // 从指令存储器获得的指令
    input wire [`INST_BUS] id_inst_i,

    // 从通用寄存器堆读出的数据
    input wire [`REG_BUS] rd1,
    input wire [`REG_BUS] rd2,

    // ID 阶段前推输入（用于分支比较）
    input wire                 exe_wreg_i,  // EXE 阶段写使能
    input wire [`REG_ADDR_BUS] exe_wa_i,    // EXE 阶段写地址
    input wire [     `REG_BUS] exe_wd_i,    // EXE 阶段写数据
    input wire                 mem_wreg_i,  // MEM 阶段写使能
    input wire [`REG_ADDR_BUS] mem_wa_i,    // MEM 阶段写地址
    input wire [     `REG_BUS] mem_wd_i,    // MEM 阶段写数据

    // 送至执行阶段的操作数
    output wire [ `ALUTYPE_BUS] id_alutype_o,
    output wire [   `ALUOP_BUS] id_aluop_o,
    output wire [`REG_ADDR_BUS] id_wa_o,
    output wire                 id_wreg_o,

    // 送至执行阶段的操作数1和操作数2
    output wire [`REG_BUS] id_src1_o,
    output wire [`REG_BUS] id_src2_o,

    // 用于分支或Store指令的存储数据或偏移量
    output wire [`REG_BUS] id_rkd_value_o,

    // 送至通用寄存器堆的读地址
    output wire [`REG_ADDR_BUS] ra1,
    output wire [`REG_ADDR_BUS] ra2,

    // ID 阶段分支输出
    output wire                  id_branch_taken_o,
    output wire [`INST_ADDR_BUS] id_branch_target_o,

    output [`INST_ADDR_BUS] debug_wb_pc
);

    // 指令小端序转换为大端序
    wire [`INST_BUS] inst;
    assign inst = {id_inst_i[7:0], id_inst_i[15:8], id_inst_i[23:16], id_inst_i[31:24]};

    // 从指令中提取操作码和操作数
    wire [16:0] op17 = inst[31:15];  // 用于3R-type
    wire [9:0] op10 = inst[31:22];  // 用于2RI12-type
    wire [6:0] op7 = inst[31:25];  // 用于I20-type
    wire [5:0] op6 = inst[31:26];  // 用于B-type

    wire [4:0] rd = inst[4:0];
    wire [4:0] rj = inst[9:5];
    wire [4:0] rk = inst[14:10];  // 3R-type指令的第三个寄存器

    wire [11:0] imm12 = inst[21:10];  // I12 立即数
    wire [15:0] imm16 = inst[25:10];  // B16 立即数
    wire [19:0] imm20 = inst[24:5];  // I20 立即数

    /*-------------------- 指令译码：判断具体是哪一条指令 --------------------*/
    // I12-type (2RI12)

    // 000000 1 0 1 0
    wire inst_addiw = (op10 == 10'b0000001010);

    // 000000 1 1 0 1
    wire inst_andi  = (op10 == 10'b0000001101);

    // 000000 1 1 1 0
    wire inst_ori   = (op10 == 10'b0000001110);

    // 000000 1 0 0 1
    wire inst_sltui = (op10 == 10'b0000001001);

    // 001010 0 0 0 0
    wire inst_ld_b  = (op10 == 10'b0010100000);

    // 001010 0 0 1 0
    wire inst_ld_w  = (op10 == 10'b0010100010);

    // 001010 0 1 0 0
    wire inst_st_b  = (op10 == 10'b0010100100);

    // 001010 0 1 1 0
    wire inst_st_w  = (op10 == 10'b0010100110);

    // 3R-type
    wire inst_add_w = (op17 == 17'h00020);
    wire inst_or    = (op17 == 17'h0002A);
    wire inst_xor   = (op17 == 17'h0002B);
    wire inst_srl_w = (op17 == 17'h0002F);

    // B-type (2RI16)
    wire inst_beq   = (op6 == 6'h16);
    wire inst_bne   = (op6 == 6'h17);
    wire inst_blt   = (op6 == 6'h18);

    // I20-type
    wire inst_lu12i_w    = (op7 == 7'h0A);
    wire inst_pcaddu12i  = (op7 == 7'h0E);

    /*--------------------- 产生具体的ALU操作码信号 -------------------------*/
    // 根据指令生成aluop
    assign id_aluop_o = inst_add_w ? `LoongArch32_ADD_W :
        inst_addiw ? `LoongArch32_ADDI_W :
        inst_ld_b ? `LoongArch32_LD_B : 
        inst_ld_w ? `LoongArch32_LD_W : 
        inst_st_b ? `LoongArch32_ST_B : 
        inst_st_w ? `LoongArch32_ST_W : 
        inst_andi  ? `LoongArch32_ANDI :
        inst_or ? `LoongArch32_OR :
        inst_ori ? `LoongArch32_ORI  :
        inst_xor   ? `LoongArch32_XOR :
        inst_sltui ? `LoongArch32_SLTUI : 
        inst_srl_w ? `LoongArch32_SRL_W :
        inst_lu12i_w ? `LoongArch32_LU12I_W :
        inst_pcaddu12i ? `LoongArch32_PCADDU12I :
        inst_beq   ? `LoongArch32_BEQ :
        inst_bne   ? `LoongArch32_BNE :
        inst_blt   ? `LoongArch32_BLT : `LoongArch32_SLL;

    assign id_alutype_o = (inst_andi | inst_ori | inst_or | inst_xor | inst_lu12i_w) ?
        `LOGIC : (inst_srl_w | 1'b0) ? `SHIFT : `ARITH;

    // 写寄存器使能 (Store 和 Branch 不写寄存器)
    assign id_wreg_o = !(inst_st_b | inst_st_w | inst_beq | inst_bne | inst_blt);

    // 立即数选择信号：是否需要零扩展 or 符号扩展
    assign id_immsel = inst_andi | inst_addiw;

    // 符号扩展控制信号，用于符号扩展立即数
    assign id_sext = inst_addiw;
    /*------------------------------------------------------------------------------*/

    // 送至通用寄存器堆的读地址1和2
    // ra1 总是读 rj
    assign ra1 = rj;

    // ra2 根据指令类型选择
    // 3R -> rk
    // Store (st.w) -> rd (存储数据)
    // Branch (beq) -> rd (比较数据)
    assign ra2 = (inst_add_w | inst_or | inst_xor | inst_srl_w) ? rk :
                 (inst_st_b | inst_st_w | inst_beq | inst_bne | inst_blt) ? rd : 5'b0;

    // --- 立即数扩展 ---
    wire [31:0] imm_s12 = {{20{imm12[11]}}, imm12};
    wire [31:0] imm_u12 = {20'b0, imm12};
    wire [31:0] imm_s20 = {imm20, 12'b0};

    // 根据位宽选择符号扩展还是零扩展，当sext有效时符号扩展，当sext无效时零扩展
    wire [31:0] imm32;
    assign imm32 = (id_sext == `TRUE_V) ? ({{20{imm12[11]}}, imm12}) : ({20'b0, imm12});

    // --- 操作数选择 ---
    // src1
    assign id_src1_o = (inst_pcaddu12i) ? id_pc_i : rd1;

    // src2
    assign id_src2_o = 
        (inst_add_w | inst_or | inst_xor | inst_srl_w | inst_beq | inst_bne | inst_blt) ? rd2 :
        (inst_andi | inst_ori) ? imm_u12 : // 按照教材要求，以及LA32文档，andi/ori使用零扩展
        (inst_lu12i_w | inst_pcaddu12i) ? imm_s20 : imm_s12;  // addi.w, ld, st, sltui 使用符号扩展

    // 生成 Branch Offset
    wire [31:0] imm_b16 = {{14{imm16[15]}}, imm16, 2'b0};
    // 复用通道：Branch指令传 offset，其他情况如 Store指令传 rd2
    assign id_rkd_value_o = (inst_beq | inst_bne | inst_blt) ? imm_b16 : rd2;

    // 写目的寄存器地址，总是rd
    assign id_wa_o = rd;

    assign debug_wb_pc = id_debug_wb_pc;

    /*------------------------------------------------------------------------------
     *  ID 阶段分支判断（提前分支计算，减少分支惩罚从 2 周期降为 1 周期）
     *------------------------------------------------------------------------------*/

    // 分支比较需要用到的源操作数（需要前推）
    // 前推优先级：EXE > MEM > 原始值
    wire [`REG_BUS] branch_src1 = 
        (exe_wreg_i && (exe_wa_i != `REG_NOP) && (exe_wa_i == ra1)) ? exe_wd_i :
        (mem_wreg_i && (mem_wa_i != `REG_NOP) && (mem_wa_i == ra1)) ? mem_wd_i :
        rd1;

    wire [`REG_BUS] branch_src2 = 
        (exe_wreg_i && (exe_wa_i != `REG_NOP) && (exe_wa_i == ra2)) ? exe_wd_i :
        (mem_wreg_i && (mem_wa_i != `REG_NOP) && (mem_wa_i == ra2)) ? mem_wd_i :
        rd2;

    // 分支比较结果
    wire rs_eq_rd = (branch_src1 == branch_src2);
    wire rs_lt_rd = ($signed(branch_src1) < $signed(branch_src2));  // 有符号比较

    // 是否为分支指令
    wire is_branch = inst_beq | inst_bne | inst_blt;

    // 分支目标地址 = PC + offset
    wire [31:0] branch_target = id_pc_i + imm_b16;

    // 分支判断结果
    assign id_branch_taken_o = is_branch && (
        (inst_beq && rs_eq_rd) ||
        (inst_bne && !rs_eq_rd) ||
        (inst_blt && rs_lt_rd)
    );

    assign id_branch_target_o = id_branch_taken_o ? branch_target : `ZERO_WORD;

endmodule

