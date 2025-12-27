#include "3r-type.h"
#include "b-type.h"
#include "i12-type.h"
#include "i20-type.h"
#include "special.h"

void add_w(uint32_t pc);
void addi_w(uint32_t pc);
void andi(uint32_t pc);

void or (uint32_t pc);

void srl_w(uint32_t pc);

void beq(uint32_t pc);

void lu12i_w(uint32_t pc);
void pcaaddu12i(uint32_t pc);

void st_b(uint32_t pc);
void ld_b(uint32_t pc);
void ld_w(uint32_t pc);

void xor(uint32_t pc);
void bne(uint32_t pc);
void blt(uint32_t pc);
void st_w(uint32_t pc);
void sltui(uint32_t pc);