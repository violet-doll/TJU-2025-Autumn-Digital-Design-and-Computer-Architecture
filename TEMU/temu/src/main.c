
#include <string.h>

void init_monitor(int, char *[]);
void restart();
void ui_mainloop();

// GUI 模式入口点 (定义在 gui/main.cpp)
extern int start_gui_mode(int argc, char* argv[]);

int main(int argc, char *argv[]) {
	// 检查 GUI 模式标志
	int gui_mode = 0;
	int new_argc = argc;
	
	for (int i = 1; i < argc; i++) {
		if (strcmp(argv[i], "--gui") == 0) {
			gui_mode = 1;
			// 将剩余参数左移以移除 --gui
			for (int j = i; j < argc - 1; j++) {
				argv[j] = argv[j + 1];
			}
			new_argc--;
			break;
		}
	}

	/* 初始化 monitor */
	init_monitor(new_argc, argv);

	/* 初始化虚拟计算机系统 */
	restart();

	if (gui_mode) {
		/* 启动 GUI 模式 */
		return start_gui_mode(new_argc, argv);
	} else {
		/* 接收用户命令 (CLI 模式) */
		ui_mainloop();
	}

	return 0;
}
