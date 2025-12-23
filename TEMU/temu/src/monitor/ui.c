#include <readline/history.h>
#include <readline/readline.h>
#include <stdlib.h>
#include <string.h>

#include "../include/memory/memory.h"
#include "expr.h"
#include "monitor.h"
#include "temu.h"
#include "watchpoint.h"
void cpu_exec(uint32_t);

void display_reg();

/* We use the `readline' library to provide more flexibility to read from stdin.
 */
char* rl_gets() {
    static char* line_read = NULL;

    if (line_read) {
        free(line_read);
        line_read = NULL;
    }

    line_read = readline("(temu) ");

    if (line_read && *line_read) {
        add_history(line_read);
    }

    return line_read;
}

static int cmd_c(char** args) {
    cpu_exec(-1);
    return 0;
}

static int cmd_q(char** args) { return -1; }

static int cmd_help(char** args);

static int cmd_info(char** args);

static int cmd_x(char** args);

static int cmd_si(char** args);

static int cmd_w(char** args);

static int cmd_d(char** args);

static struct {
    char* name;
    char* description;
    int (*handler)(char**);
} cmd_table[] = {
    {"help", "Display informations about all supported commands", cmd_help},
    {"c", "Continue the execution of the program", cmd_c},
    {"q", "Exit TEMU", cmd_q},
    {"info", "Check information", cmd_info},
    {"x", "Scan memory", cmd_x},
    {"si", "Single step execution", cmd_si},

    /* TODO: Add more commands */
    {"w", "Set watchpoint: w EXPR", cmd_w},
    {"d", "Delete watchpoint: d N", cmd_d},
};

#define NR_CMD (sizeof(cmd_table) / sizeof(cmd_table[0]))

static int cmd_help(char** args) {
    /* extract the first argument */
    char* arg = args[0];
    int i;

    if (arg == NULL) {
        /* no argument given */
        for (i = 0; i < NR_CMD; i++) {
            printf("%s - %s\n", cmd_table[i].name, cmd_table[i].description);
        }
    } else {
        for (i = 0; i < NR_CMD; i++) {
            if (strcmp(arg, cmd_table[i].name) == 0) {
                printf("%s - %s\n", cmd_table[i].name,
                       cmd_table[i].description);
                return 0;
            }
        }
        printf("Unknown command '%s'\n", arg);
    }
    return 0;
}

static int cmd_info(char** args) {
    if (args[0] == NULL) {
        printf("Missing argument.\n");
        return 0;
    } else if (strcmp(args[0], "r") == 0) {
        display_reg();
    } else if (strcmp(args[0], "w") == 0) {
        // todo: watchpoints
        list_watchpoint();
    }
    return 0;
}

static int cmd_x(char** args) {
    if (args[0] == NULL || args[1] == NULL) {
        printf("Missing argument.\n");
        return 0;
    }
    int n;
    if (sscanf(args[0], "%d", &n) != 1 || n <= 0) {
        printf("Invalid count.\n");
        return 0;
    }
    char* expr_str = args[1];
    bool success = false;
    uint32_t addr = expr(expr_str, &success);
    if (!success) {
        printf("Bad expression: %s\n", expr_str);
        return 0;
    }
    for (int i = 0; i < n; i++) {
        uint32_t curr_addr = addr + 4 * i;
        printf("0x%08x: 0x%08x\n", curr_addr, mem_read(curr_addr, 4));
    }
    return 0;
}

static int cmd_si(char** args) {
    int steps = 1;
    if (args[0] != NULL) {
        sscanf(args[0], "%d", &steps);
    }
    cpu_exec(steps);
    return 0;
}

static int cmd_w(char** args){
    if(args[0] == NULL){
        printf("Usage: w EXPR\n");
        return 0;
    }
    WP* wp = new_wp(args[0]);
    if(wp == NULL)
        printf("Set watchpoint failed.\n");
    return 0;
}

static int cmd_d(char** args){
    if(args[0] == NULL){
        printf("Usage: d N\n");
        return 0;
    }
    int no;
    if(sscanf(args[0], "%d", &no) != 1){
        printf("Invalid watchpoint number.\n");
        return 0;
    }
    free_wp(no);
    return 0;
}

void ui_mainloop() {
    while (1) {
        char* str = rl_gets();
        if (str == NULL) {
            continue;
        }

        char* cmd = strtok(str, " ");
        if (cmd == NULL) {
            continue;
        }

        enum { MAX_ARGS = 16 };
        char* arg_list[MAX_ARGS];
        int argc = 0;
        char* token = NULL;
        while (argc < MAX_ARGS - 1 && (token = strtok(NULL, " ")) != NULL) {
            arg_list[argc++] = token;
        }
        arg_list[argc] = NULL;

        int i;
        for (i = 0; i < NR_CMD; i++) {
            if (strcmp(cmd, cmd_table[i].name) == 0) {
                if (cmd_table[i].handler(arg_list) < 0) {
                    return;
                }
                break;
            }
        }

        if (i == NR_CMD) {
            printf("Unknown command '%s'\n", cmd);
        }
    }
}
