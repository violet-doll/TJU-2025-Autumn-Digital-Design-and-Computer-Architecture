#ifndef __WATCHPOINT_H__
#define __WATCHPOINT_H__

#include "common.h"

typedef struct watchpoint {
	int NO;
	struct watchpoint *next;

	/* TODO: Add more members if necessary */
	char expr[128];
	uint32_t old_val;

} WP;

WP* new_wp(char* e);
void free_wp(int no);
void list_watchpoint();
bool check_watchpoints();

#endif
