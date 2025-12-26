#ifndef __MONITOR_H__
#define __MONITOR_H__

#define TRACE_FORMAT "%08x    %02d    %08x\n"

enum { STOP, RUNNING, END };
extern int temu_state;

extern FILE* trace_fp;  // 用于生成 Golden Trace

#endif
