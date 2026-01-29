`include "defines.v"

// 译码阶段
module id_stage (
    // 来自取指/译码
    input wire [`INST_ADDR_BUS] id_pc_i,
    input wire [`INST_ADDR_BUS] id_debug_wb_pc,
    input wire [`INST_BUS] id_inst_i,
    input wire id_pred_taken_i,
    input wire [`INST_ADDR_BUS] id_pred_target_i,
    input wire id_hold_i,

    // 寄存器数据
    input wire [`REG_BUS] rd1,
    input wire [`REG_BUS] rd2,

    // 分支前推
    input wire                 exe_wreg_i,
    input wire [`REG_ADDR_BUS] exe_wa_i,
    input wire [     `REG_BUS] exe_wd_i,
    input wire [   `ALUOP_BUS] exe_aluop_i,
    input wire                 mem_wreg_i,
    input wire [`REG_ADDR_BUS] mem_wa_i,
    input wire [     `REG_BUS] mem_wd_i,

    // 执行级控制
    output wire [ `ALUTYPE_BUS] id_alutype_o,
    output wire [   `ALUOP_BUS] id_aluop_o,
    output wire [`REG_ADDR_BUS] id_wa_o,
    output wire                 id_wreg_o,

    // 执行级操作数
    output wire [`REG_BUS] id_src1_o,
    output wire [`REG_BUS] id_src2_o,
    output wire [`REG_BUS] id_rkd_value_o,

    // 寄存器读地址
    output wire [`REG_ADDR_BUS] ra1,
    output wire [`REG_ADDR_BUS] ra2,

    // 分支输出
    output wire                  id_branch_taken_o,
    output wire [`INST_ADDR_BUS] id_branch_target_o,

    // 预测校验
    output wire                  id_flush_o,
    output wire [`INST_ADDR_BUS] id_redirect_pc_o,

    // 分支预测更新
    output wire                  bp_update_en_o,
    output wire [`INST_ADDR_BUS] bp_update_pc_o,
    output wire                  bp_update_taken_o,
    output wire [`INST_ADDR_BUS] bp_update_target_o,

    // 加载相关冒险
    output wire stallreq_from_id,

    output [`INST_ADDR_BUS] debug_wb_pc,

    // 返回栈更新
    output wire bp_update_is_call_o,
    output wire bp_update_is_ret_o
);
    // 指令字节序转换
    wire [`INST_BUS] inst;
    assign inst = {id_inst_i[7:0], id_inst_i[15:8], id_inst_i[23:16], id_inst_i[31:24]};

    // 字段提取
    wire [16:0] op17 = inst[31:15];
    wire [9:0]  op10 = inst[31:22];
    wire [6:0]  op7  = inst[31:25];
    wire [5:0]  op6  = inst[31:26];

    wire [4:0]  rd   = inst[4:0];
    wire [4:0]  rj   = inst[9:5];
    wire [4:0]  rk   = inst[14:10];
    wire [11:0] imm12 = inst[21:10];
    wire [15:0] imm16 = inst[25:10];
    wire [19:0] imm20 = inst[24:5];

    // 指令译码
    wire inst_addiw = (op10 == 10'b0000001010);
    wire inst_andi  = (op10 == 10'b0000001101);
    wire inst_ori   = (op10 == 10'b0000001110);
    wire inst_sltui = (op10 == 10'b0000001001);
    wire inst_ld_b  = (op10 == 10'b0010100000);
    wire inst_ld_w  = (op10 == 10'b0010100010);
    wire inst_st_b  = (op10 == 10'b0010100100);
    wire inst_st_w  = (op10 == 10'b0010100110);
    wire inst_add_w = (op17 == 17'h00020);
    wire inst_mul_w = (op17 == 17'h00038);
    wire inst_mulh_w = (op17 == 17'h00039);
    wire inst_div_w = (op17 == 17'h00040);
    wire inst_mod_w = (op17 == 17'h00041);
    wire inst_or    = (op17 == 17'h0002A);
    wire inst_xor   = (op17 == 17'h0002B);
    wire inst_srl_w = (op17 == 17'h0002F);

    wire inst_beq = (op6 == 6'h16);
    wire inst_bne = (op6 == 6'h17);
    wire inst_blt = (op6 == 6'h18);

    // 跳转/链接
    wire inst_bl   = (op6 == 6'h15); // 010101
    wire inst_jirl = (op6 == 6'h13); // 010011

    wire inst_lu12i_w   = (op7 == 7'h0A);
    wire inst_pcaddu12i = (op7 == 7'h0E);

    // 调用/返回识别
    wire is_call_inst = inst_bl || (inst_jirl && (rd == 5'd1));
    wire is_ret_inst  = inst_jirl && (rd == 5'd0) && (rj == 5'd1);

    // 运算控制
    assign id_aluop_o = inst_add_w     ? `LoongArch32_ADD_W :
                        inst_addiw     ? `LoongArch32_ADDI_W :
                        inst_mul_w     ? `LoongArch32_MUL_W :
                        inst_mulh_w    ? `LoongArch32_MULH_W :
                        inst_div_w     ? `LoongArch32_DIV_W :
                        inst_mod_w     ? `LoongArch32_MOD_W :
                        inst_ld_b      ? `LoongArch32_LD_B : 
                        inst_ld_w      ? `LoongArch32_LD_W : 
                        inst_st_b      ? `LoongArch32_ST_B : 
                        inst_st_w      ? `LoongArch32_ST_W : 
                        inst_andi      ? `LoongArch32_ANDI :
                        inst_or        ? `LoongArch32_OR :
                        inst_ori       ? `LoongArch32_ORI :
                        inst_xor       ? `LoongArch32_XOR :
                        inst_sltui     ? `LoongArch32_SLTUI : 
                        inst_srl_w     ? `LoongArch32_SRL_W :
                        inst_lu12i_w   ? `LoongArch32_LU12I_W :
                        inst_pcaddu12i ? `LoongArch32_PCADDU12I :
                        inst_beq       ? `LoongArch32_BEQ :
                        inst_bne       ? `LoongArch32_BNE :
                        inst_blt       ? `LoongArch32_BLT :
        // 跳转复用加法
        (inst_bl | inst_jirl) ? `LoongArch32_ADD_W : `LoongArch32_SLL;

    assign id_alutype_o = (inst_andi | inst_ori | inst_or | inst_xor | inst_lu12i_w) ? `LOGIC : 
                          (inst_srl_w | 1'b0) ? `SHIFT : `ARITH;

    // 写回使能
    assign id_wreg_o = !(inst_st_b | inst_st_w | inst_beq | inst_bne | inst_blt);

    // 立即数控制
    assign id_immsel = inst_andi | inst_addiw;
    assign id_sext = inst_addiw;

    // 读地址
    assign ra1 = rj;
    assign ra2 = (inst_add_w | inst_mul_w | inst_mulh_w | inst_div_w | inst_mod_w | inst_or | inst_xor | inst_srl_w) ? rk :
                 (inst_st_b | inst_st_w | inst_beq | inst_bne | inst_blt) ? rd : 5'b0;

    // 立即数扩展
    wire [31:0] imm_s12 = {{20{imm12[11]}}, imm12};
    wire [31:0] imm_u12 = {20'b0, imm12};
    wire [31:0] imm_s20 = {imm20, 12'b0};

    // 链接偏移
    wire [25:0] offs26 = {inst[9:0], inst[25:10]};
    wire [31:0] imm_bl_offset = {{4{offs26[25]}}, offs26, 2'b0};

    // 间接跳转偏移
    wire [31:0] imm_jirl_offset = {{14{imm16[15]}}, imm16, 2'b0};

    wire [31:0] imm32;
    assign imm32 = (id_sext == `TRUE_V) ? imm_s12 : imm_u12;

    // 操作数选择
    assign id_src1_o = (inst_pcaddu12i | inst_bl | inst_jirl) ? id_pc_i : rd1;

    assign id_src2_o = 
        (inst_add_w | inst_mul_w | inst_mulh_w | inst_div_w | inst_mod_w | inst_or | inst_xor | inst_srl_w | inst_beq | inst_bne | inst_blt) ? rd2 :
        (inst_andi | inst_ori) ? imm_u12 :
        (inst_lu12i_w | inst_pcaddu12i) ? imm_s20 : 
        (inst_bl | inst_jirl) ? 32'd4 :
        imm_s12;

    // 分支偏移/存储数据
    wire [31:0] imm_b16 = {{14{imm16[15]}}, imm16, 2'b0};
    assign id_rkd_value_o = (inst_beq | inst_bne | inst_blt) ? imm_b16 : rd2;

    // 写回目的寄存器
    assign id_wa_o = inst_bl ? 5'd1 : rd;

    assign debug_wb_pc = id_debug_wb_pc;

    // 加载相关冒险
    wire exe_is_load = (exe_aluop_i == `LoongArch32_LD_B) || (exe_aluop_i == `LoongArch32_LD_W);

    // 源寄存器使用
    wire id_uses_src1 = !(inst_lu12i_w | inst_pcaddu12i | inst_bl);
    wire id_uses_src2 = (ra2 != 5'd0);

    assign stallreq_from_id = exe_is_load && (exe_wa_i != 5'd0) && (
        (id_uses_src1 && (ra1 == exe_wa_i)) || 
        (id_uses_src2 && (ra2 == exe_wa_i))
    );

    // 分支判断
    wire [`REG_BUS] branch_src1 = 
        (exe_wreg_i && !exe_is_load && (exe_wa_i != `REG_NOP) && (exe_wa_i == ra1)) ? exe_wd_i :
        (mem_wreg_i && (mem_wa_i != `REG_NOP) && (mem_wa_i == ra1)) ? mem_wd_i :
        rd1;

    wire [`REG_BUS] branch_src2 = 
        (exe_wreg_i && !exe_is_load && (exe_wa_i != `REG_NOP) && (exe_wa_i == ra2)) ? exe_wd_i :
        (mem_wreg_i && (mem_wa_i != `REG_NOP) && (mem_wa_i == ra2)) ? mem_wd_i :
        rd2;

    // 条件比较
    wire rs_eq_rd = (branch_src1 == branch_src2);
    wire rs_lt_rd = ($signed(branch_src1) < $signed(branch_src2));

    // 分支指令识别
    wire is_branch = inst_beq | inst_bne | inst_blt | inst_bl | inst_jirl;

    // 分支目标
    wire [31:0] branch_target = inst_jirl ? (branch_src1 + imm_jirl_offset) :
    inst_bl ? (id_pc_i + imm_bl_offset) :
    (id_pc_i + imm_b16);

    // 解析使能
    wire branch_resolve_en = ~id_hold_i;

    // 分支相关冒险
    wire branch_has_load_dep = exe_is_load && is_branch && 
        (((exe_wa_i == ra1) && (ra1 != 5'd0) && id_uses_src1) ||
    ((exe_wa_i == ra2) && (ra2 != 5'd0) && id_uses_src2));

    // 分支成立
    assign id_branch_taken_o = branch_resolve_en && is_branch && !branch_has_load_dep && (
        (inst_beq && rs_eq_rd) ||     
        (inst_bne && !rs_eq_rd) || 
        (inst_blt && rs_lt_rd) ||  
        inst_bl || inst_jirl 
        );

    assign id_branch_target_o = id_branch_taken_o ? branch_target : `ZERO_WORD;

    // 预测校验
    wire pred_taken = id_pred_taken_i;
    wire real_taken = id_branch_taken_o;
    wire pred_target_match = (id_pred_target_i == branch_target);

    wire mispredict_taken = real_taken && !pred_taken;
    wire mispredict_not_taken = !real_taken && pred_taken;
    wire mispredict_target = real_taken && pred_taken && !pred_target_match;

    assign id_flush_o = branch_resolve_en && !branch_has_load_dep && 
                        (mispredict_taken | mispredict_not_taken | mispredict_target);

    assign id_redirect_pc_o = branch_resolve_en ? (
                              mispredict_taken  ? branch_target :
                              mispredict_target ? branch_target :
                              mispredict_not_taken ? (id_pc_i + 4) : `ZERO_WORD) : `ZERO_WORD;

    // 分支预测更新
    assign bp_update_en_o = branch_resolve_en && is_branch && !branch_has_load_dep;
    assign bp_update_pc_o = id_pc_i;
    assign bp_update_taken_o = real_taken;
    assign bp_update_target_o = branch_target;

    assign bp_update_is_call_o = bp_update_en_o && is_call_inst;
    assign bp_update_is_ret_o = bp_update_en_o && is_ret_inst;

endmodule
