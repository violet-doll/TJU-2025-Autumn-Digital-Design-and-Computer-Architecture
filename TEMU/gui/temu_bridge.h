#ifndef TEMU_BRIDGE_H
#define TEMU_BRIDGE_H

// TEMU GUI 的 C/C++ 桥接头文件
// 该头文件为 C++ 代码提供对 C 核心功能的访问

#ifdef __cplusplus
extern "C" {
#endif

// 包含 C 头文件
#include "cpu/reg.h"
#include "monitor/monitor.h"
#include "memory/memory.h"

// CPU 状态访问
// extern CPU_state cpu;  // 已在 cpu/reg.h 中声明
// extern const char* regfile[];  // 已在 cpu/reg.h 中声明

// 当前指令的汇编字符串
extern char assembly[80];

// 完整汇编缓冲区 (包含地址和十六进制)
extern char asm_buf[128];

// 当前指令 (原始十六进制代码)
extern uint32_t instr;

// CPU 执行控制
void cpu_exec(uint32_t n);

// 模拟器状态
// extern int temu_state;  // 已在 monitor/monitor.h 中声明
// 可能的值: STOP, RUNNING, END

// 内存访问
// uint32_t mem_read(uint32_t addr, size_t len);  // 已在 memory/memory.h 中声明
// void mem_write(uint32_t addr, size_t len, uint32_t data);  // 已在 memory/memory.h 中声明

// 内存缓冲区 (如果需要，用于内存编辑器的直接访问)
// extern uint8_t *hw_mem;  // 已在 memory/memory.h 中声明
// HW_MEM_SIZE 定义在 memory/memory.h 中

#ifdef __cplusplus
}

// 仅限 C++ 的声明
// 用于变更追踪的上一个 CPU 状态
extern CPU_state cpu_prev;

#endif

#endif // TEMU_BRIDGE_H
