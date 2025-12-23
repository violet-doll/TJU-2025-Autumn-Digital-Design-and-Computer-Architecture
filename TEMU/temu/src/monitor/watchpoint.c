#include "watchpoint.h"
#include "expr.h"

#define NR_WP 32

static WP wp_pool[NR_WP];
static WP *head, *free_;

void init_wp_pool() {
	int i;
	for(i = 0; i < NR_WP; i ++) {
		wp_pool[i].NO = i;
		wp_pool[i].next = &wp_pool[i + 1];
	}
	wp_pool[NR_WP - 1].next = NULL;

	head = NULL;
	free_ = wp_pool;
}

/* TODO: Implement the functionality of watchpoint */

WP* new_wp(char* e){
	if(free_ == NULL){
		printf("Error: No free watchpoints available.\n");
		return NULL;
	}
	
	WP* wp = free_;
	bool success;
	uint32_t val = expr(e, &success);

	if(!success){
		printf("Error: Expression evaluation failed for '%s'.Watchpoint NOT created.\n", e);
		return NULL;
	}

	free_ = free_->next;
	wp->next = head;
	head = wp;

	strcpy(wp->expr, e);
	wp->old_val = val;

	printf("Watchpoint %d: %s\n", wp->NO, wp->expr);
	return wp;
}

void free_wp(int no){
	WP* p = head;
	WP* prev = NULL;
	
	while(p != NULL){
		if(p->NO == no)
			break;
		prev = p;
		p = p->next;
	}
	if(p == NULL){
		printf("Error: Watchpoint %d not found.\n", no);
		return;
	}

	if(prev == NULL)
		head = p->next;
	else
		prev->next = p->next;
	
	p->next = free_;
	free_ = p;
	printf("Watchpoint %d deleted.\n", no);
}

void list_watchpoint(){
	if(head == NULL){
		printf("No watchpoints.\n");
		return;
	}
	
	printf("Num\tType\t\tWhat\n");
	WP*p = head;
	while(p != NULL){
		printf("%d\thw watchpoint\t%s\n", p->NO, p->expr);
		p = p->next;
	}
}

bool check_watchpoints(){
	WP* p=head;
	bool changed = false;

	while(p != NULL){
		bool success;
		uint32_t new_val = expr(p->expr, &success);
		if(new_val != p->old_val){
			printf("Hardware watchpoint %d: %s\n", p->NO, p->expr);
            printf("Old value = %d (0x%x)\n", p->old_val, p->old_val);
            printf("New value = %d (0x%x)\n", new_val, new_val);
            p->old_val = new_val;
            changed = true;
		}
		p = p->next;
	}
	return changed;
}