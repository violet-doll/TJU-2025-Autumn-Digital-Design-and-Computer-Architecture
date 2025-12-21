#include <readline/history.h>
#include <readline/readline.h>
#include <stdlib.h>

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

};

#define NR_CMD (sizeof(cmd_table) / sizeof(cmd_table[0]))

static int cmd_help(char** args) {
    /* extract the first argument */
    char* arg = strtok(NULL, " ");
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
    } else if (strcmp(args[0], "x") == 0) {
        // todo: watchpoints
    }
    return 0;
}

static int cmd_x(char** args) {
    if (args[0] == NULL || args[1] == NULL) {
        printf("Missing argument.\n");
        return 0;
    }
    int n;
    sscanf(args[0], "%d", &n);
    char* expr_str = NULL;
    expr_str = args[1];
    int val;
    bool success;
    val = expr(expr_str, success);
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

void ui_mainloop() {
    while (1) {
        char* str = rl_gets();

        /* extract the first token as the command */
        char* cmd = strtok(str, " ");
        if (cmd == NULL) {
            continue;
        }
        /* treat the remaining string as the arguments,
         * which may need further parsing
         */
        /*
            change to list format
        */
        char* args = cmd + strlen(cmd) + 1;
        char* arg_list[10] = {NULL};  // 1. 初始化数组，确保未使用的位置为 NULL
        int i = 0;
        char* arg = strtok(args, " ");
        while (arg != NULL && i < 10) {  // 2. 防止数组越界
            arg_list[i++] = arg;         // 3. 递增索引 i
            arg = strtok(NULL, " ");
        }

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
