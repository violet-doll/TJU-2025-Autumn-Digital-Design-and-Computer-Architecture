#include "../include/memory/memory.h"
#include "temu.h"
/* We use the POSIX regex functions to process regular expressions.
 * Type 'man regex' for more information about POSIX regex functions.
 */
#include <regex.h>
#include <stdlib.h>
#include <sys/types.h>

uint32_t isa_reg_str2val(const char* s, bool* success);

enum {
    NOTYPE = 256,
    EQ,     // ==
    NEQ,    // !=
    AND,    // &&
    OR,     // ||
    NOT,    // !
    DEC,    // 十进制
    HEX,    // 十六进制
    REG,    // 寄存器
    DEREF,  // 指针解引用 *
    NEG,    // 负数 -
};

static struct rule {
    char* regex;
    int token_type;
} rules[] = {
    {" +", NOTYPE},  // spaces
    {"\\+", '+'},    // plus
    {"\\-", '-'},    // minus
    {"\\*", '*'},    // multiply
    {"\\/", '/'},    // divide
    {"\\(", '('},    // left parenthesis
    {"\\)", ')'},    // right parenthesis

    {"0[xX][0-9a-fA-F]+", HEX},  // hex
    {"[0-9]+", DEC},             // decimal
    {"\\$[a-zA-Z0-9]+", REG},    // register

    {"==", EQ},      // equal
    {"!=", NEQ},     // not equal
    {"&&", AND},     // logical AND
    {"\\|\\|", OR},  // logical OR
    {"!", NOT},      // logical NOT
};

#define NR_REGEX (sizeof(rules) / sizeof(rules[0]))

static regex_t re[NR_REGEX];

/* Rules are used for many times.
 * Therefore we compile them only once before any usage.
 */
void init_regex() {
    int i;
    char error_msg[128];
    int ret;

    for (i = 0; i < NR_REGEX; i++) {
        ret = regcomp(&re[i], rules[i].regex, REG_EXTENDED);
        if (ret != 0) {
            regerror(ret, &re[i], error_msg, 128);
            Assert(ret == 0, "regex compilation failed: %s\n%s", error_msg,
                   rules[i].regex);
        }
    }
}

typedef struct token {
    int type;
    char str[32];
} Token;

Token tokens[32];
int nr_token;

static bool make_token(char* e) {
    int position = 0;
    int i;
    regmatch_t pmatch;

    nr_token = 0;

    while (e[position] != '\0') {
        /* Try all rules one by one. */
        for (i = 0; i < NR_REGEX; i++) {
            if (regexec(&re[i], e + position, 1, &pmatch, 0) == 0 &&
                pmatch.rm_so == 0) {
                char* substr_start = e + position;
                int substr_len = pmatch.rm_eo;

                Log("match rules[%d] = \"%s\" at position %d with len %d: %.*s",
                    i, rules[i].regex, position, substr_len, substr_len,
                    substr_start);
                position += substr_len;

                /* TODO: Now a new token is recognized with rules[i]. Add codes
                 * to record the token in the array `tokens'. For certain types
                 * of tokens, some extra actions should be performed.
                 */
                tokens[nr_token].type = rules[i].token_type;

                switch (rules[i].token_type) {
                    case DEC:
                    case HEX:
                    case REG:
                        if (substr_len >= 32) {
                            panic("Token is too long!");
                        }
                        strncpy(tokens[nr_token].str, substr_start, substr_len);
                        tokens[nr_token].str[substr_len] = '\0';
                        break;
                    default:
                        break;
                }

                if (rules[i].token_type != NOTYPE) {
                    nr_token++;
                    break;
                }
            }
        }

        if (i == NR_REGEX) {
            printf("no match at position %d\n%s\n%*.s^\n", position, e,
                   position, "");
            return false;
        }
    }

    return true;
}

bool check_parentheses(int p, int q) {
    if (tokens[p].type != '(' || tokens[q].type != ')') {
        return false;
    }

    int n = 0;
    for (int i = p; i <= q; i++) {
        if (tokens[i].type == '(')
            n++;
        else if (tokens[i].type == ')')
            n--;
        if (n < 0) return false;
        if (n == 0 && i < q) return false;
    }

    return n == 0;
}

int get_precedence(int type) {
    switch (type) {
        case OR:
            return 1;
        case AND:
            return 2;
        case EQ:
            return 3;
        case NEQ:
            return 4;
        case '+':
        case '-':
            return 5;
        case '*':
        case '/':
            return 6;
        case NOT:
        case NEG:
        case DEREF:
            return 99;
        default:
            return 0;
    }
}

bool is_binary_operator(int type) {
    return type == '+' || type == '-' || type == '*' || type == '/' ||
           type == EQ || type == NEQ || type == AND || type == OR;
}

int find_dominant_op(int p, int q) {
    int op = -1;
    int n = 0;
    for (int i = q; i >= p; i--) {
        if (tokens[i].type == '(')
            n++;
        else if (tokens[i].type == ')')
            n--;

        if (n != 0) continue;
        if (!is_binary_operator(tokens[i].type)) continue;

        if (op == -1)
            op = i;
        else if (get_precedence(tokens[op].type) >
                 get_precedence(tokens[i].type))
            op = i;
    }

    return op;
}

void print_expr_debug(int start, int end) {
    printf("eval(%d, %d): ", start, end);
    for (int i = start; i <= end; i++) {
        switch (tokens[i].type) {
            case DEC:
            case HEX:
            case REG:
                printf("%s", tokens[i].str);
                break;
            case EQ:
                printf("==");
                break;
            default:
                printf("%c", tokens[i].type);
        }
    }
    printf("\n");
}

uint32_t eval(int start, int end) {
    print_expr_debug(start, end);
    if (start > end) {
        printf("Bad expression\n");
        return -1;
    } else if (start == end) {
        if (tokens[start].type == REG) {
            bool success;
            uint32_t val = isa_reg_str2val(tokens[start].str, &success);
            if (!success) {
                printf("Error: Unknown register '%s'\n", tokens[start].str);
                return 0;
            }
            return val;
        } else {
            return strtol(tokens[start].str, NULL, 0);
        }
    } else if (check_parentheses(start, end) == true) {
        return eval(start + 1, end - 1);
    }

    int op = find_dominant_op(start, end);
    if (op == -1) {
        if (tokens[start].type == NEG) {
            return -eval(start + 1, end);
        } else if (tokens[start].type == NOT) {
            return !eval(start + 1, end);
        } else if (tokens[start].type == DEREF) {
            uint32_t addr = eval(start + 1, end);
            return mem_read(addr, 4);
        } else {
            printf("Bad expression!\n");
            return 0;
        }
    }
    printf("dominant op at %d = %c\n", op, tokens[op].type);

    uint32_t val1 = eval(start, op - 1);
    uint32_t val2 = eval(op + 1, end);

    switch (tokens[op].type) {
        case '+':
            return val1 + val2;
        case '-':
            return val1 - val2;
        case '*':
            return val1 * val2;
        case '/':
            return (val2 != 0) ? (val1 / val2) : 0;
        case EQ:
            return val1 == val2;
        case NEQ:
            return val1 != val2;
        case AND:
            return val1 && val2;
        case OR:
            return val1 || val2;
        default:
            assert(0);
    }
    return -1;
}

bool check_unary_context(int type) {
    return type == '+' || type == '-' || type == '*' || type == '/' ||
           type == '(' || type == EQ || type == NEQ || type == AND ||
           type == OR || type == NOT;
}

uint32_t expr(char* e, bool* success) {
    if (!make_token(e)) {
        *success = false;
        return 0;
    }

    /* TODO: Insert codes to evaluate the expression. */
    for (int i = 0; i < nr_token; i++) {
        if (tokens[i].type == '*' || tokens[i].type == '-') {
            if (i == 0 || check_unary_context(tokens[i - 1].type)) {
                if (tokens[i].type == '*')
                    tokens[i].type = DEREF;
                else
                    tokens[i].type = NEG;
            }
        }
    }
    uint32_t expr_result = eval(0, nr_token - 1);
    *success = true;
    return expr_result;
}
