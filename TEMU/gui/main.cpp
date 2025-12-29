// TEMU GUI 主入口点
// 实现 SDL2 + OpenGL3 + Dear ImGui 初始化和主循环
// 采用 QtSpim 风格布局，包含控制面板、寄存器视图、反汇编视图和内存编辑器

#include "temu_bridge.h"

#include <SDL2/SDL.h>
#include <SDL2/SDL_opengl.h>
#include <imgui.h>
#include <imgui_internal.h> 
#include <imgui_impl_sdl2.h>
#include <imgui_impl_opengl3.h>
#include <imgui_memory_editor.h>

#include <cstdio>
#include <cstring>
#include <cstdint>

// ============================================================================
// 全局变量
// ============================================================================

// SDL 和 OpenGL 资源
static SDL_Window* g_window = nullptr;
static SDL_GLContext g_gl_context = nullptr;

// CPU 状态跟踪
CPU_state cpu_prev;  // 用于检测变化的先前 CPU 状态

// 执行控制
static bool cpu_running = false;          // 连续执行模式
static bool single_step_requested = false; // 单步执行标志
static float instructions_per_frame = 0.5f; // 速度控制 (0.1 - 100)
static uint64_t instruction_count = 0;     // 总指令计数器

// UI 状态
static bool show_decimal = true;          // 寄存器十六进制/十进制切换

// 内存编辑器实例
static MemoryEditor mem_editor;
static char mem_addr_input[17] = "";

// 反汇编历史缓冲区
extern "C" void restart();
extern "C" void init_wp_pool();

#define DISASM_HISTORY_SIZE 32
struct DisasmEntry {
    uint32_t pc;
    uint32_t hex_code;
    char assembly[80];
    bool valid;
};
static DisasmEntry disasm_history[DISASM_HISTORY_SIZE];
static int disasm_head = 0;  // 下一个写入位置

// 反汇编历史缓冲区

// 辅助函数
// ============================================================================

// 在表格列中居中文本
static void TableTextCentered(const char* text) {
    float width = ImGui::GetContentRegionAvail().x;
    float text_width = ImGui::CalcTextSize(text).x;
    ImGui::SetCursorPosX(ImGui::GetCursorPosX() + (width - text_width) * 0.5f);
    ImGui::Text("%s", text);
}

// 向反汇编历史添加条目
static void add_disasm_entry(uint32_t pc, uint32_t hex_code, const char* asm_str) {
    DisasmEntry& entry = disasm_history[disasm_head];
    entry.pc = pc;
    entry.hex_code = hex_code;
    strncpy(entry.assembly, asm_str, sizeof(entry.assembly) - 1);
    entry.assembly[sizeof(entry.assembly) - 1] = '\0';
    entry.valid = true;
    disasm_head = (disasm_head + 1) % DISASM_HISTORY_SIZE;
}

// 内存编辑器读取回调
static ImU8 MemoryReadFn(const ImU8* data, size_t off, void* user_data) {
    (void)data;
    (void)user_data;
    // 将虚拟地址映射到物理地址（类似于 CPU 寻址）
    uint32_t addr = (uint32_t)off;
    return (ImU8)mem_read(addr, 1);
}

// 内存编辑器写入回调
static void MemoryWriteFn(ImU8* data, size_t off, ImU8 d, void* user_data) {
    (void)data;
    (void)user_data;
    uint32_t addr = (uint32_t)off;
    mem_write(addr, 1, d);
}

// ============================================================================
// GUI 初始化
// ============================================================================

bool init_gui(const char* window_title, int width, int height) {
    // 初始化 SDL
    if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_TIMER) != 0) {
        fprintf(stderr, "Error: SDL_Init failed: %s\n", SDL_GetError());
        return false;
    }

    // 设置 OpenGL 3.0 上下文
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_FLAGS, 0);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_CORE);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 0);

    // 创建带有图形上下文的窗口
    SDL_GL_SetAttribute(SDL_GL_DOUBLEBUFFER, 1);
    SDL_GL_SetAttribute(SDL_GL_DEPTH_SIZE, 24);
    SDL_GL_SetAttribute(SDL_GL_STENCIL_SIZE, 8);

    SDL_WindowFlags window_flags = (SDL_WindowFlags)(
        SDL_WINDOW_OPENGL | 
        SDL_WINDOW_RESIZABLE | 
        SDL_WINDOW_ALLOW_HIGHDPI
    );

    g_window = SDL_CreateWindow(
        window_title,
        SDL_WINDOWPOS_CENTERED,
        SDL_WINDOWPOS_CENTERED,
        width,
        height,
        window_flags
    );

    if (g_window == nullptr) {
        fprintf(stderr, "Error: SDL_CreateWindow failed: %s\n", SDL_GetError());
        return false;
    }

    g_gl_context = SDL_GL_CreateContext(g_window);
    if (g_gl_context == nullptr) {
        fprintf(stderr, "Error: SDL_GL_CreateContext failed: %s\n", SDL_GetError());
        return false;
    }

    SDL_GL_MakeCurrent(g_window, g_gl_context);
    SDL_GL_SetSwapInterval(1); // 启用垂直同步

    // 设置 Dear ImGui 上下文
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO();
    io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard;  // 启用键盘控制
    io.ConfigFlags |= ImGuiConfigFlags_DockingEnable;      // 启用停靠

    // 设置 Dear ImGui 样式
    ImGui::StyleColorsDark();
    ImGuiStyle& style = ImGui::GetStyle();
    
    // 1. 圆角和间距
    style.WindowRounding = 8.0f;
    style.FrameRounding = 4.0f;
    style.ScrollbarRounding = 4.0f;
    style.GrabRounding = 4.0f;
    style.ItemSpacing = ImVec2(8, 6);
    style.FramePadding = ImVec2(6, 4);

    // 2. 颜色（深蓝灰色背景，亮蓝色强调色）
    ImVec4* colors = style.Colors;
    colors[ImGuiCol_WindowBg] = ImVec4(0.15f, 0.16f, 0.21f, 1.00f);
    colors[ImGuiCol_TitleBg] = ImVec4(0.10f, 0.11f, 0.14f, 1.00f);
    colors[ImGuiCol_TitleBgActive] = ImVec4(0.20f, 0.35f, 0.55f, 1.00f);
    colors[ImGuiCol_Button] = ImVec4(0.25f, 0.40f, 0.65f, 1.00f);
    colors[ImGuiCol_ButtonHovered] = ImVec4(0.35f, 0.50f, 0.75f, 1.00f);
    colors[ImGuiCol_ButtonActive] = ImVec4(0.15f, 0.30f, 0.55f, 1.00f);
    colors[ImGuiCol_Header] = ImVec4(0.25f, 0.40f, 0.65f, 0.50f);
    colors[ImGuiCol_HeaderHovered] = ImVec4(0.35f, 0.50f, 0.75f, 0.50f);
    colors[ImGuiCol_HeaderActive] = ImVec4(0.15f, 0.30f, 0.55f, 0.50f);

    // 3. 字体加载
    const char* font_path = "/usr/share/fonts/truetype/dejavu/DejaVuSansMono.ttf";
    FILE* fp = fopen(font_path, "rb");
    if (fp) {
        fclose(fp);

        ImFontConfig font_cfg;
        font_cfg.OversampleH = 4;  
        font_cfg.OversampleV = 4;  
        font_cfg.PixelSnapH = false; 
        font_cfg.RasterizerMultiply = 1.2f;  
        
        io.Fonts->AddFontFromFileTTF(font_path, 22.0f, &font_cfg);
        
        printf("Loaded system font: %s (22px, 4x4 oversampling, optimized)\n", font_path);
    } else {
        io.Fonts->AddFontDefault();
        printf("System font not found, using default.\n");
    }

    // 设置平台/渲染器后端
    ImGui_ImplSDL2_InitForOpenGL(g_window, g_gl_context);
    ImGui_ImplOpenGL3_Init("#version 130");

    // 初始化内存编辑器
    mem_editor.ReadFn = MemoryReadFn;
    mem_editor.WriteFn = MemoryWriteFn;
    mem_editor.OptShowOptions = true;
    mem_editor.OptShowDataPreview = true;

    // 初始化反汇编历史
    memset(disasm_history, 0, sizeof(disasm_history));

    printf("GUI initialized successfully\n");
    printf("  Window: %dx%d\n", width, height);
    printf("  OpenGL Version: %s\n", glGetString(GL_VERSION));
    printf("  ImGui Version: %s\n", IMGUI_VERSION);

    return true;
}

// ============================================================================
// GUI 清理
// ============================================================================

void cleanup_gui() {
    // 清理 ImGui
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplSDL2_Shutdown();
    ImGui::DestroyContext();

    // 清理 SDL
    if (g_gl_context) {
        SDL_GL_DeleteContext(g_gl_context);
        g_gl_context = nullptr;
    }

    if (g_window) {
        SDL_DestroyWindow(g_window);
        g_window = nullptr;
    }

    SDL_Quit();

    printf("GUI cleanup complete\n");
}

// ============================================================================
// UI 渲染函数
// ============================================================================

// 颜色定义
static const ImVec4 COLOR_GREEN = ImVec4(0.2f, 0.9f, 0.3f, 1.0f);
static const ImVec4 COLOR_RED = ImVec4(0.9f, 0.3f, 0.2f, 1.0f);
static const ImVec4 COLOR_YELLOW = ImVec4(0.9f, 0.9f, 0.2f, 1.0f);
static const ImVec4 COLOR_BLUE = ImVec4(0.2f, 0.4f, 0.8f, 1.0f);
static const ImVec4 COLOR_WHITE = ImVec4(1.0f, 1.0f, 1.0f, 1.0f);
static const ImVec4 COLOR_GRAY = ImVec4(0.5f, 0.5f, 0.5f, 1.0f);

void RenderControlPanel() {
    ImGui::Begin("Control Panel", nullptr, ImGuiWindowFlags_NoCollapse);

    // ========================================
    // 播放控制
    // ========================================
    ImGui::Text("Playback:");
    ImGui::SameLine();
    
    // 带颜色的继续/暂停按钮
    if (cpu_running) {
        // 黄色暂停按钮
        ImGui::PushStyleColor(ImGuiCol_Button, ImVec4(0.8f, 0.7f, 0.1f, 1.0f));
        ImGui::PushStyleColor(ImGuiCol_ButtonHovered, ImVec4(0.9f, 0.8f, 0.2f, 1.0f));
        ImGui::PushStyleColor(ImGuiCol_ButtonActive, ImVec4(0.7f, 0.6f, 0.1f, 1.0f));
        if (ImGui::Button("[||] Pause", ImVec2(140, 0))) {
            cpu_running = false;
        }
        ImGui::PopStyleColor(3);
    } else {
        // 绿色继续按钮
        ImGui::PushStyleColor(ImGuiCol_Button, ImVec4(0.1f, 0.6f, 0.2f, 1.0f));
        ImGui::PushStyleColor(ImGuiCol_ButtonHovered, ImVec4(0.2f, 0.7f, 0.3f, 1.0f));
        ImGui::PushStyleColor(ImGuiCol_ButtonActive, ImVec4(0.1f, 0.5f, 0.2f, 1.0f));
        bool can_resume = (temu_state != END);
        if (!can_resume) ImGui::BeginDisabled();
        if (ImGui::Button("[>] Resume", ImVec2(140, 30))) {
            cpu_running = true;
        }
        if (!can_resume) ImGui::EndDisabled();
        ImGui::PopStyleColor(3);
    }
    
    ImGui::SameLine();
    if (ImGui::Button("[->] Step", ImVec2(120, 0))) {
        single_step_requested = true;
        cpu_running = false;
    }
    
    ImGui::SameLine();
    if (ImGui::Button("Reset", ImVec2(120, 0))) {
        cpu_running = false;
        single_step_requested = false;
        instruction_count = 0;
        
        // 1. 调用 TEMU 的重启（重新加载代码/数据，设置 PC，初始化 DDR3）
        restart();
        
        // 2. 将所有通用寄存器清零（$zero 除外，它由重启/初始化处理）
        memset(&cpu.gpr, 0, sizeof(cpu.gpr));
        
        // 3. 重置 TEMU 状态
        temu_state = STOP;
        
        // 4. 清除观察点
        init_wp_pool();
        
        // 5. 清除反汇编历史
        disasm_head = 0;
        memset(disasm_history, 0, sizeof(disasm_history));
        
        // 6. 同步先前的 CPU 状态以避免“已更改”高亮显示
        cpu_prev = cpu;
        
        printf("System Reset: Memory reloaded, registers zeroed, history cleared.\n");
    }

    ImGui::Separator();

    // ========================================
    // 速度控制
    // ========================================
    ImGui::Text("Speed:");
    ImGui::SameLine();
    ImGui::SetNextItemWidth(250);
    // 对数滑块，以便在低速时获得更好的控制
    ImGui::SliderFloat("##speed", &instructions_per_frame, 0.1f, 100.0f, "%.1f IPC", ImGuiSliderFlags_Logarithmic);
    ImGui::SameLine();
    ImGui::TextDisabled("(?)");
    if (ImGui::IsItemHovered()) {
        ImGui::SetTooltip("每帧指令数\n越低 = 越慢（更容易观察）\n越高 = 越快");
    }

    ImGui::End();
}

void RenderRegistersView() {
    ImGui::Begin("Registers", nullptr, ImGuiWindowFlags_NoCollapse);

    // 寄存器描述
    static const char* reg_desc[32] = {
        "Constant 0", "Return Address", "Thread Pointer", "Stack Pointer",
        "Argument 0", "Argument 1", "Argument 2", "Argument 3",
        "Argument 4", "Argument 5", "Argument 6", "Argument 7",
        "Temporary 0", "Temporary 1", "Temporary 2", "Temporary 3",
        "Temporary 4", "Temporary 5", "Temporary 6", "Temporary 7",
        "Temporary 8", "Reserved", "Frame Pointer", "Saved 0",
        "Saved 1", "Saved 2", "Saved 3", "Saved 4",
        "Saved 5", "Saved 6", "Saved 7", "Saved 8"
    };

    // 格式切换
    ImGui::Checkbox("Show Decimal", &show_decimal);
    ImGui::SameLine();
    ImGui::TextDisabled("(?)");
    if (ImGui::IsItemHovered()) {
        ImGui::SetTooltip("在十六进制和十进制显示之间切换");
    }
    
    ImGui::Separator();

    // 所有 32 个寄存器的单列布局
    ImGui::BeginChild("RegColumns", ImVec2(0, 0), false);
    
    if (ImGui::BeginTable("registers_table", 2, 
        ImGuiTableFlags_Borders | ImGuiTableFlags_RowBg | ImGuiTableFlags_SizingStretchProp)) {
        
        ImGui::TableSetupColumn("Register", ImGuiTableColumnFlags_WidthStretch, 0.4f);
        ImGui::TableSetupColumn("Value", ImGuiTableColumnFlags_WidthStretch, 0.6f);
        
        ImGui::TableNextRow(ImGuiTableRowFlags_Headers);
        for (int column = 0; column < 2; column++) {
            ImGui::TableSetColumnIndex(column);
            TableTextCentered(ImGui::TableGetColumnName(column));
        }

        // 在单列中显示所有 32 个寄存器
        for (int i = 0; i < 32; i++) {
            ImGui::TableNextRow();
            
            uint32_t val = cpu.gpr[i]._32;
            uint32_t prev = cpu_prev.gpr[i]._32;
            bool changed = (val != prev);
            
            ImVec4 color = COLOR_WHITE;
            if (changed) {
                color = (val > prev) ? COLOR_GREEN : COLOR_RED;
            }
            
            // 寄存器名称列
            ImGui::TableSetColumnIndex(0);
            if (changed) ImGui::PushStyleColor(ImGuiCol_Text, color);
            TableTextCentered(regfile[i]);
            if (ImGui::IsItemHovered()) ImGui::SetTooltip("%s", reg_desc[i]);
            if (changed) ImGui::PopStyleColor();
            
            // 值列
            ImGui::TableSetColumnIndex(1);
            if (changed) ImGui::PushStyleColor(ImGuiCol_Text, color);
            char val_buf[32];
            if (show_decimal) {
                sprintf(val_buf, "%d", (int32_t)val);
            } else {
                sprintf(val_buf, "0x%08X", val);
            }
            TableTextCentered(val_buf);
            if (changed) ImGui::PopStyleColor();
        }

        ImGui::EndTable();
    }
    
    ImGui::EndChild();

    // PC 寄存器显示
    ImGui::Separator();
    bool pc_changed = (cpu.pc != cpu_prev.pc);
    ImVec4 pc_color = pc_changed ? COLOR_GREEN : COLOR_WHITE;
    ImGui::Text("PC:");
    ImGui::SameLine();
    ImGui::TextColored(pc_color, "0x%08X", cpu.pc);
    if (pc_changed) {
        ImGui::SameLine();
        ImGui::TextColored(COLOR_GRAY, "(prev: 0x%08X)", cpu_prev.pc);
    }

    ImGui::End();
}

void RenderDisassemblyView() {
    ImGui::Begin("Disassembly", nullptr, ImGuiWindowFlags_NoCollapse);

    ImGui::Text("Instruction History");
    ImGui::Separator();

    // 包含地址、十六进制代码、汇编指令列的表格
    
    if (ImGui::BeginTable("disasm_table", 3,
        ImGuiTableFlags_Borders | ImGuiTableFlags_RowBg | ImGuiTableFlags_ScrollY,
        ImVec2(0, -ImGui::GetFrameHeightWithSpacing()))) {
        
        ImGui::TableSetupColumn("Address", ImGuiTableColumnFlags_WidthFixed, 300.0f);
        ImGui::TableSetupColumn("Hex Code", ImGuiTableColumnFlags_WidthFixed, 300.0f);
        ImGui::TableSetupColumn("Assembly", ImGuiTableColumnFlags_WidthStretch );
        ImGui::TableSetupScrollFreeze(0, 1);
        
        // 自定义标题行以允许居中
        ImGui::TableNextRow(ImGuiTableRowFlags_Headers);
        for (int column = 0; column < 3; column++) {
            ImGui::TableSetColumnIndex(column);
            const char* column_name = ImGui::TableGetColumnName(column);
            TableTextCentered(column_name);
        }

        int count = 0;
        for (int i = 0; i < DISASM_HISTORY_SIZE; i++) {
            int idx = (disasm_head + i) % DISASM_HISTORY_SIZE;
            if (!disasm_history[idx].valid) continue;
            count++;
        }

        int displayed = 0;
        for (int i = 0; i < DISASM_HISTORY_SIZE; i++) {
            int idx = (disasm_head + i) % DISASM_HISTORY_SIZE;
            DisasmEntry& entry = disasm_history[idx];
            if (!entry.valid) continue;
            
            displayed++;
            ImGui::TableNextRow();
            
            // 检查这是否是当前 PC
            bool is_current = (displayed == count);
            
            if (is_current) {
                // 用深蓝色背景突出显示当前 PC 行
                ImU32 row_bg = IM_COL32(30, 60, 120, 255);
                ImGui::TableSetBgColor(ImGuiTableBgTarget_RowBg0, row_bg);
            }
            
            // 地址列
            ImGui::TableSetColumnIndex(0);
            char addr_buf[16];
            sprintf(addr_buf, "0x%08X", entry.pc);
            TableTextCentered(addr_buf);
            
            // 十六进制代码列
            ImGui::TableSetColumnIndex(1);
            char hex_buf[16];
            sprintf(hex_buf, "0x%08X", entry.hex_code);
            TableTextCentered(hex_buf);
            
            // 汇编指令列
            ImGui::TableSetColumnIndex(2);
            ImVec4 color = is_current ? COLOR_GREEN : COLOR_GRAY;
            
            // 显示前缀
            ImGui::TextColored(color, is_current ? ">>> " : "    ");
            ImGui::SameLine(0, 0);
            
            // 打印对齐的汇编指令
            float start_x = ImGui::GetCursorPosX();

            const float tab_stops[] = { 0.0f, -400.0f, -250.0f, -100.0f }; 
            
            const char* p = entry.assembly;
            int field_idx = 0;
            while (*p && field_idx < 4) {
                const char* end = strchr(p, '\t');
                int len = end ? (end - p) : (int)strlen(p);
            
                // 设置每个字段的起始位置
                if (field_idx > 0) {
                    ImGui::SameLine(start_x + tab_stops[field_idx]);
                }
                
                if (len > 0) {
                    char field[64];
                    if (len > 63) len = 63;
                    memcpy(field, p, len);
                    field[len] = '\0';
                    ImGui::TextColored(color, "%s", field);
                }
                
                if (!end) break;
                p = end + 1;
                field_idx++;
            }
        }

        // 自动滚动到底部
        if (ImGui::GetScrollY() >= ImGui::GetScrollMaxY() - 10) {
            ImGui::SetScrollHereY(1.0f);
        }

        ImGui::EndTable();
    }
    
    // 恢复字体缩放
    ImGui::SetWindowFontScale(1.0f);

    // 状态栏
    ImGui::Text("Showing %d instructions | Current PC: 0x%08X", 
        instruction_count > 0 ? (instruction_count < DISASM_HISTORY_SIZE ? (int)instruction_count : DISASM_HISTORY_SIZE) : 0,
        cpu.pc);

    ImGui::End();
}

void RenderMemoryView() {
    ImGui::Begin("Memory", nullptr, ImGuiWindowFlags_NoCollapse);

    if (ImGui::BeginTabBar("MemoryTabs")) {
        // 标签页 1：完整内存编辑器
        if (ImGui::BeginTabItem("Memory Editor")) {
            // 导航栏
            if (ImGui::Button("Go to PC")) {
                mem_editor.GotoAddrAndHighlight(cpu.pc & 0x7FFFFFFF, cpu.pc & 0x7FFFFFFF);
            }
            ImGui::SameLine();
            
            if (ImGui::Button("Go to .data")) {
                mem_editor.GotoAddrAndHighlight(0x00010000, 0x00010000);  // 0x80010000 的物理地址
            }
            ImGui::SameLine();
            
            if (ImGui::Button("Go to Stack")) {
                uint32_t sp = cpu.gpr[3]._32 & 0x7FFFFFFF; 
                mem_editor.GotoAddrAndHighlight(sp, sp);
            }
            ImGui::SameLine();
            
            ImGui::SetNextItemWidth(120);
            if (ImGui::InputText("##goto_addr", mem_addr_input, sizeof(mem_addr_input), 
                ImGuiInputTextFlags_CharsHexadecimal | ImGuiInputTextFlags_EnterReturnsTrue)) {
                unsigned int addr = 0;
                if (sscanf(mem_addr_input, "%x", &addr) == 1) {
                    mem_editor.GotoAddrAndHighlight(addr & 0x7FFFFFFF, addr & 0x7FFFFFFF);
                }
                mem_addr_input[0] = '\0';
            }
            ImGui::SameLine();
            ImGui::TextDisabled("(Enter address in hex)");

            ImGui::Separator();

            // 内存编辑器
            mem_editor.DrawContents(nullptr, HW_MEM_SIZE, 0x00000000);
            
            ImGui::EndTabItem();
        }

        // 标签页 2：数据段可视化
        if (ImGui::BeginTabItem("Data Segment")) {
            ImGui::Text("Data Segment View (Starts at 0x80010000)");
            ImGui::Separator();

            if (ImGui::BeginTable("data_seg_table", 4, 
                ImGuiTableFlags_Borders | ImGuiTableFlags_RowBg | ImGuiTableFlags_SizingFixedFit)) {
                
                ImGui::TableSetupColumn("Address", ImGuiTableColumnFlags_WidthFixed, 110.0f);
                ImGui::TableSetupColumn("Hex Value", ImGuiTableColumnFlags_WidthFixed, 110.0f);
                ImGui::TableSetupColumn("Decimal", ImGuiTableColumnFlags_WidthFixed, 110.0f);
                ImGui::TableSetupColumn("ASCII", ImGuiTableColumnFlags_WidthStretch);
                
                // 自定义标题行
                ImGui::TableNextRow(ImGuiTableRowFlags_Headers);
                for (int column = 0; column < 4; column++) {
                    ImGui::TableSetColumnIndex(column);
                    TableTextCentered(ImGui::TableGetColumnName(column));
                }

                // 显示从 0x80010000 开始的 20 行
                // 注意：0x80010000 映射到物理地址 0x00010000
                uint32_t start_addr = 0x00010000;
                for (int i = 0; i < 20; i++) {
                    uint32_t addr = start_addr + (i * 4);
                    uint32_t val = mem_read(addr, 4);
                    
                    ImGui::TableNextRow();
                    
                    ImGui::TableSetColumnIndex(0);
                    char addr_buf[16];
                    sprintf(addr_buf, "0x%08X", 0x80000000 | addr);
                    TableTextCentered(addr_buf);
                    
                    ImGui::TableSetColumnIndex(1);
                    char val_hex_buf[16];
                    sprintf(val_hex_buf, "0x%08X", val);
                    TableTextCentered(val_hex_buf);
                    
                    ImGui::TableSetColumnIndex(2);
                    char val_dec_buf[16];
                    sprintf(val_dec_buf, "%d", (int32_t)val);
                    TableTextCentered(val_dec_buf);
                    
                    ImGui::TableSetColumnIndex(3);
                    // 检查字节是否为可打印的 ASCII
                    char ascii_str[5];
                    for (int j = 0; j < 4; j++) {
                        char c = (char)((val >> (j * 8)) & 0xFF);
                        ascii_str[j] = (c >= 32 && c <= 126) ? c : '.';
                    }
                    ascii_str[4] = '\0';
                    TableTextCentered(ascii_str);
                }
                
                ImGui::EndTable();
            }
            
            ImGui::EndTabItem();
        }

        ImGui::EndTabBar();
    }

    ImGui::End();
}

// ============================================================================
// 主循环
// ============================================================================

void main_loop_gui() {
    bool quit = false;
    
    // 使用当前状态初始化 cpu_prev
    cpu_prev = cpu;

    printf("Entering main GUI loop...\n");

    // 用于跟踪布局是否已初始化的标志
    static bool layout_initialized = false;

    while (!quit) {
        // ========================================
        // 1. 事件处理
        // ========================================
        SDL_Event event;
        while (SDL_PollEvent(&event)) {
            ImGui_ImplSDL2_ProcessEvent(&event);
            
            if (event.type == SDL_QUIT) {
                quit = true;
            }
            
            if (event.type == SDL_WINDOWEVENT && 
                event.window.event == SDL_WINDOWEVENT_CLOSE && 
                event.window.windowID == SDL_GetWindowID(g_window)) {
                quit = true;
            }
        }

        // ========================================
        // 2. 开始 ImGui 帧
        // ========================================
        ImGui_ImplOpenGL3_NewFrame();
        ImGui_ImplSDL2_NewFrame();
        ImGui::NewFrame();

        // ========================================
        // 3. 创建停靠布局
        // ========================================
        ImGuiViewport* viewport = ImGui::GetMainViewport();
        ImGui::SetNextWindowPos(viewport->WorkPos);
        ImGui::SetNextWindowSize(viewport->WorkSize);
        ImGui::SetNextWindowViewport(viewport->ID);
        
        ImGuiWindowFlags host_window_flags = 
            ImGuiWindowFlags_NoTitleBar | 
            ImGuiWindowFlags_NoCollapse | 
            ImGuiWindowFlags_NoResize | 
            ImGuiWindowFlags_NoMove |
            ImGuiWindowFlags_NoBringToFrontOnFocus | 
            ImGuiWindowFlags_NoNavFocus |
            ImGuiWindowFlags_NoBackground;
        
        ImGui::PushStyleVar(ImGuiStyleVar_WindowRounding, 0.0f);
        ImGui::PushStyleVar(ImGuiStyleVar_WindowBorderSize, 0.0f);
        ImGui::PushStyleVar(ImGuiStyleVar_WindowPadding, ImVec2(0.0f, 0.0f));
        
        ImGui::Begin("DockSpaceHost", nullptr, host_window_flags);
        ImGui::PopStyleVar(3);
        
        ImGuiID dockspace_id = ImGui::GetID("MyDockSpace");
        ImGui::DockSpace(dockspace_id, ImVec2(0.0f, 0.0f), ImGuiDockNodeFlags_PassthruCentralNode);
        
        // 首次运行时初始化默认布局
        if (!layout_initialized) {
            layout_initialized = true;
            
            // 清除任何现有布局
            ImGui::DockBuilderRemoveNode(dockspace_id);
            ImGui::DockBuilderAddNode(dockspace_id, ImGuiDockNodeFlags_DockSpace);
            ImGui::DockBuilderSetNodeSize(dockspace_id, viewport->WorkSize);
            
            // 将停靠空间划分为区域
            ImGuiID dock_main_id = dockspace_id;
            
            // 第一次划分：右侧用于寄存器
            ImGuiID dock_id_right = ImGui::DockBuilderSplitNode(dock_main_id, ImGuiDir_Right, 0.25f, nullptr, &dock_main_id);
            
            // 左侧划分：顶部用于控制面板
            ImGuiID dock_id_top = ImGui::DockBuilderSplitNode(dock_main_id, ImGuiDir_Up, 0.10f, nullptr, &dock_main_id);
            
            // 剩余左侧区域划分：底部用于内存
            ImGuiID dock_id_bottom = ImGui::DockBuilderSplitNode(dock_main_id, ImGuiDir_Down, 0.45f, nullptr, &dock_main_id);
            
            // dock_main_id 现在是用于反汇编的左中区域
            
            // 将窗口停靠到指定区域
            ImGui::DockBuilderDockWindow("Control Panel", dock_id_top);
            ImGui::DockBuilderDockWindow("Disassembly", dock_main_id);  // 左中
            ImGui::DockBuilderDockWindow("Registers", dock_id_right);   // 右侧全高
            ImGui::DockBuilderDockWindow("Memory", dock_id_bottom);     // 左下
            
            ImGui::DockBuilderFinish(dockspace_id);
        }
        
        ImGui::End();

        // ========================================
        // 4. 渲染 UI 窗口
        // ========================================
        RenderControlPanel();
        RenderRegistersView();
        RenderDisassemblyView();
        RenderMemoryView();

        // ========================================
        // 5. CPU 执行
        // ========================================
        int exec_count = 0;
        
        if (single_step_requested) {
            exec_count = 1;
            single_step_requested = false;
        } else if (cpu_running && temu_state != END) {
            exec_count = (int)instructions_per_frame;
            // 概率性地处理每帧的小数指令
            float fraction = instructions_per_frame - exec_count;
            if (fraction > 0.0f) {
                static float accumulator = 0.0f;
                accumulator += fraction;
                if (accumulator >= 1.0f) {
                    exec_count++;
                    accumulator -= 1.0f;
                }
            }
        }

        for (int i = 0; i < exec_count && temu_state != END; i++) {
            // 关键：执行前保存当前 CPU 状态
            cpu_prev = cpu;
            
            // 执行前获取当前指令的十六进制代码
            uint32_t current_pc = cpu.pc & 0x7FFFFFFF;
            uint32_t current_hex = mem_read(current_pc, 4);
            
            // 执行一条指令
            cpu_exec(1);
            
            // 添加到反汇编历史记录
            add_disasm_entry(cpu_prev.pc, current_hex, assembly);
            
            instruction_count++;
            
            // 检查是否达到结束状态
            if (temu_state == END) {
                cpu_running = false;
                break;
            }
        }

        // ========================================
        // 6. 渲染和显示
        // ========================================
        ImGui::Render();
        
        glViewport(0, 0, (int)ImGui::GetIO().DisplaySize.x, (int)ImGui::GetIO().DisplaySize.y);
        glClearColor(0.1f, 0.1f, 0.12f, 1.00f);
        glClear(GL_COLOR_BUFFER_BIT);
        
        ImGui_ImplOpenGL3_RenderDrawData(ImGui::GetDrawData());
        
        SDL_GL_SwapWindow(g_window);
    }

    printf("Exiting main GUI loop...\n");
}

// ============================================================================
// GUI 模式的入口点
// ============================================================================

extern "C" int start_gui_mode(int argc, char* argv[]) {
    (void)argc;
    (void)argv;
    
    printf("Starting TEMU in GUI mode...\n");

    // 初始化 GUI
    if (!init_gui("TEMU - LoongArch32 Emulator", 2000, 1200)) {
        fprintf(stderr, "Failed to initialize GUI\n");
        return 1;
    }

    // 运行主循环
    main_loop_gui();

    // 清理
    cleanup_gui();

    return 0;
}
