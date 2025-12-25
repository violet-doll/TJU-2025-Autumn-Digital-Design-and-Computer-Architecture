#include "all-instr.h"
#include "helper.h"

typedef void (*op_fun)(uint32_t);
static make_helper(_2byte_esc);
static make_helper(_group_0A);

Operands ops_decoded;
uint32_t instr;

#define make_group(                                                         \
    name, item0, item1, item2, item3, item4, item5, item6, item7, item8,    \
    item9, item10, item11, item12, item13, item14, item15, item16, item17,  \
    item18, item19, item20, item21, item22, item23, item24, item25, item26, \
    item27, item28, item29, item30, item31, item32, item33, item34, item35, \
    item36, item37, item38, item39, item40, item41, item42, item43, item44, \
    item45, item46, item47, item48, item49, item50, item51, item52, item53, \
    item54, item55, item56, item57, item58, item59, item60, item61, item62, \
    item63, item64, item65, item66, item67, item68, item69, item70, item71, \
    item72, item73, item74, item75, item76, item77, item78, item79, item80, \
    item81, item82, item83, item84, item85, item86, item87, item88, item89, \
    item90, item91, item92, item93, item94, item95, item96, item97, item98, \
    item99, item100, item101, item102, item103, item104, item105, item106,  \
    item107, item108, item109, item110, item111, item112, item113, item114, \
    item115, item116, item117, item118, item119, item120, item121, item122, \
    item123, item124, item125, item126, item127)                            \
    static op_fun concat(opcode_table_, name)[128] = {                      \
        /* 0x00 */ item0,   item1,   item2,   item3,                        \
        /* 0x04 */ item4,   item5,   item6,   item7,                        \
        /* 0x08 */ item8,   item9,   item10,  item11,                       \
        /* 0x0c */ item12,  item13,  item14,  item15,                       \
        /* 0x10 */ item16,  item17,  item18,  item19,                       \
        /* 0x14 */ item20,  item21,  item22,  item23,                       \
        /* 0x18 */ item24,  item25,  item26,  item27,                       \
        /* 0x1c */ item28,  item29,  item30,  item31,                       \
        /* 0x20 */ item32,  item33,  item34,  item35,                       \
        /* 0x24 */ item36,  item37,  item38,  item39,                       \
        /* 0x28 */ item40,  item41,  item42,  item43,                       \
        /* 0x2c */ item44,  item45,  item46,  item47,                       \
        /* 0x30 */ item48,  item49,  item50,  item51,                       \
        /* 0x34 */ item52,  item53,  item54,  item55,                       \
        /* 0x38 */ item56,  item57,  item58,  item59,                       \
        /* 0x3c */ item60,  item61,  item62,  item63,                       \
        /* 0x40 */ item64,  item65,  item66,  item67,                       \
        /* 0x44 */ item68,  item69,  item70,  item71,                       \
        /* 0x48 */ item72,  item73,  item74,  item75,                       \
        /* 0x4c */ item76,  item77,  item78,  item79,                       \
        /* 0x50 */ item80,  item81,  item82,  item83,                       \
        /* 0x54 */ item84,  item85,  item86,  item87,                       \
        /* 0x58 */ item88,  item89,  item90,  item91,                       \
        /* 0x5c */ item92,  item93,  item94,  item95,                       \
        /* 0x60 */ item96,  item97,  item98,  item99,                       \
        /* 0x64 */ item100, item101, item102, item103,                      \
        /* 0x68 */ item104, item105, item106, item107,                      \
        /* 0x6c */ item108, item109, item110, item111,                      \
        /* 0x70 */ item112, item113, item114, item115,                      \
        /* 0x74 */ item116, item117, item118, item119,                      \
        /* 0x78 */ item120, item121, item122, item123,                      \
        /* 0x7c */ item124, item125, item126, item127};                     \
    static make_helper(name) {                                              \
        ops_decoded.opcode3 = (instr << 10) >> 25;                          \
        return concat(opcode_table_, name)[ops_decoded.opcode3](pc);        \
    }

// 前 6 位为 0A(00 1010) 时，新增查找表
// 共四条指令：st.b，st.w，ld.b，ld.w
op_fun group_0A_table[16] = {
    /* 0x0 */ ld_b, inv, ld_w, inv,
    /* 0x4 */ st_b, inv, inv,  inv,
    /* 0x8 */ inv,  inv, inv,  inv,
    /* 0xC */ inv,  inv, inv,  inv};

// 前 10 位都为 0，来到 3R 指令
make_group(_group1_3R, inv, inv, inv, inv, /* 0x00  */
           inv, inv, inv, inv,             /* 0x04  */
           inv, inv, inv, inv,             /* 0x08  */
           inv, inv, inv, inv,             /* 0x0c  */
           inv, inv, inv, inv,             /* 0x10  */
           inv, inv, inv, inv,             /* 0x14  */
           inv, inv, inv, inv,             /* 0x18  */
           inv, inv, inv, inv,             /* 0x1c  */
           add_w, inv, inv, inv,           /* 0x20  */
           inv, inv, inv, inv,             /* 0x24  */
           inv, inv, or, inv,              /* 0x28  */
           inv, inv, inv, srl_w,           /* 0x2c  */
           inv, inv, inv, inv,             /* 0x30  */
           inv, inv, inv, inv,             /* 0x34  */
           inv, inv, inv, inv,             /* 0x38  */
           inv, inv, inv, inv,             /* 0x3c  */
           inv, inv, inv, inv,             /* 0x40  */
           inv, inv, inv, inv,             /* 0x44  */
           inv, inv, inv, inv,             /* 0x48  */
           inv, inv, inv, inv,             /* 0x4c  */
           inv, inv, inv, inv,             /* 0x50  */
           inv, inv, inv, inv,             /* 0x54  */
           inv, inv, inv, inv,             /* 0x58  */
           inv, inv, inv, inv,             /* 0x5c  */
           inv, inv, inv, inv,             /* 0x60  */
           inv, inv, inv, inv,             /* 0x64  */
           inv, inv, inv, inv,             /* 0x68  */
           inv, inv, inv, inv,             /* 0x6c  */
           inv, inv, inv, inv,             /* 0x70  */
           inv, inv, inv, inv,             /* 0x74  */
           inv, inv, inv, inv,             /* 0x78  */
           inv, inv, inv, inv)             /* 0x7c  */

    /* TODO: Add more instructions!!! */

    // 根据指令前 6 位执行对应的指令函数
    op_fun opcode_table[64] = {
        /* 0x00 */ _2byte_esc, inv,     inv,       inv,
        /* 0x04 */ inv,        lu12i_w, inv,       pcaddu12i,
        /* 0x08 */ inv,        inv,     _group_0A, inv,
        /* 0x0c */ inv,        inv,     inv,       inv,
        /* 0x10 */ inv,        inv,     inv,       inv,
        /* 0x14 */ inv,        inv,     beq,       inv,
        /* 0x18 */ inv,        inv,     inv,       inv,
        /* 0x1c */ inv,        inv,     inv,       inv,
        /* 0x20 */ temu_trap,  inv,     inv,       inv,
        /* 0x24 */ inv,        inv,     inv,       inv,
        /* 0x28 */ inv,        inv,     inv,       inv,
        /* 0x2c */ inv,        inv,     inv,       inv,
        /* 0x30 */ inv,        inv,     inv,       inv,
        /* 0x34 */ inv,        inv,     inv,       inv,
        /* 0x38 */ inv,        inv,     inv,       inv,
        /* 0x3c */ inv,        inv,     inv,       inv};

// 前 6 位为 0，来到拓展指令表查看 25 ~ 22 位
op_fun _2byte_opcode_table[16] = {
    /* 0x00 */ _group1_3R, inv,  inv,    inv,
    /* 0x04 */ inv,        inv,  inv,    inv,
    /* 0x08 */ inv,        inv,  addi_w, inv,
    /* 0x0c */ inv,        andi, ori,    inv};

make_helper(exec) {
    instr = instr_fetch(pc, 4);
    ops_decoded.opcode1 = instr >> 26;
    opcode_table[ops_decoded.opcode1](pc);
}

static make_helper(_2byte_esc) {
    ops_decoded.opcode2 = ((instr << 6) & 0xF0000000) >> 28;
    _2byte_opcode_table[ops_decoded.opcode2](pc);
}

static make_helper(_group_0A) {
    ops_decoded.opcode2 = (instr >> 22) & 0xF;
    group_0A_table[ops_decoded.opcode2](pc);
}