// TEMU GUI Main Entry Point
// Implements SDL2 + OpenGL3 + Dear ImGui initialization and main loop
// QtSpim-style layout with Control Panel, Registers View, Disassembly View, and Memory Editor

#include "temu_bridge.h"

#include <SDL2/SDL.h>
#include <SDL2/SDL_opengl.h>
#include <imgui.h>
#include <imgui_internal.h>  // For DockBuilder API
#include <imgui_impl_sdl2.h>
#include <imgui_impl_opengl3.h>
#include <imgui_memory_editor.h>

#include <cstdio>
#include <cstring>
#include <cstdint>

// ============================================================================
// Global Variables
// ============================================================================

// SDL and OpenGL resources
static SDL_Window* g_window = nullptr;
static SDL_GLContext g_gl_context = nullptr;

// CPU state tracking
CPU_state cpu_prev;  // Previous CPU state for change detection

// Execution control
static bool cpu_running = false;          // Continuous execution mode
static bool single_step_requested = false; // Single step flag
static int instructions_per_frame = 1;     // Speed control (1 - 10000)
static uint64_t instruction_count = 0;     // Total instruction counter

// UI state
static bool show_decimal = true;          // Hex/Decimal toggle for registers

// Memory editor instance
static MemoryEditor mem_editor;
static char mem_addr_input[17] = "";

// Disassembly history buffer
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
static int disasm_head = 0;  // Next write position

// Disassembly history buffer

// Helper Functions
// ============================================================================

// Helper to center text in a table column
static void TableTextCentered(const char* text) {
    float width = ImGui::GetContentRegionAvail().x;
    float text_width = ImGui::CalcTextSize(text).x;
    ImGui::SetCursorPosX(ImGui::GetCursorPosX() + (width - text_width) * 0.5f);
    ImGui::Text("%s", text);
}

// Add entry to disassembly history

// Add entry to disassembly history
static void add_disasm_entry(uint32_t pc, uint32_t hex_code, const char* asm_str) {
    DisasmEntry& entry = disasm_history[disasm_head];
    entry.pc = pc;
    entry.hex_code = hex_code;
    strncpy(entry.assembly, asm_str, sizeof(entry.assembly) - 1);
    entry.assembly[sizeof(entry.assembly) - 1] = '\0';
    entry.valid = true;
    disasm_head = (disasm_head + 1) % DISASM_HISTORY_SIZE;
}

// Memory editor read callback
static ImU8 MemoryReadFn(const ImU8* data, size_t off, void* user_data) {
    (void)data;
    (void)user_data;
    // Map virtual address to physical (similar to CPU addressing)
    uint32_t addr = (uint32_t)off;
    return (ImU8)mem_read(addr, 1);
}

// Memory editor write callback
static void MemoryWriteFn(ImU8* data, size_t off, ImU8 d, void* user_data) {
    (void)data;
    (void)user_data;
    uint32_t addr = (uint32_t)off;
    mem_write(addr, 1, d);
}

// ============================================================================
// GUI Initialization
// ============================================================================

bool init_gui(const char* window_title, int width, int height) {
    // Initialize SDL
    if (SDL_Init(SDL_INIT_VIDEO | SDL_INIT_TIMER) != 0) {
        fprintf(stderr, "Error: SDL_Init failed: %s\n", SDL_GetError());
        return false;
    }

    // Setup OpenGL 3.0 context
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_FLAGS, 0);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_PROFILE_MASK, SDL_GL_CONTEXT_PROFILE_CORE);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MAJOR_VERSION, 3);
    SDL_GL_SetAttribute(SDL_GL_CONTEXT_MINOR_VERSION, 0);

    // Create window with graphics context
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
    SDL_GL_SetSwapInterval(1); // Enable vsync

    // Setup Dear ImGui context
    IMGUI_CHECKVERSION();
    ImGui::CreateContext();
    ImGuiIO& io = ImGui::GetIO();
    io.ConfigFlags |= ImGuiConfigFlags_NavEnableKeyboard;  // Enable Keyboard Controls
    io.ConfigFlags |= ImGuiConfigFlags_DockingEnable;      // Enable Docking

    // Setup Dear ImGui style (QtSpim-inspired Theme)
    ImGui::StyleColorsDark();
    ImGuiStyle& style = ImGui::GetStyle();
    
    // 1. Rounding & Spacing
    style.WindowRounding = 8.0f;
    style.FrameRounding = 4.0f;
    style.ScrollbarRounding = 4.0f;
    style.GrabRounding = 4.0f;
    style.ItemSpacing = ImVec2(8, 6);
    style.FramePadding = ImVec2(6, 4);

    // 2. Colors (Deep Blue-Grey Background, Bright Blue Accents)
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

    // 3. Font Loading (Smart Load)
    const char* font_path = "/usr/share/fonts/truetype/dejavu/DejaVuSansMono.ttf";
    FILE* fp = fopen(font_path, "rb");
    if (fp) {
        fclose(fp);
        // Use larger font size (18.0f) and configure for better rendering
        ImFontConfig font_cfg;
        font_cfg.OversampleH = 5;  // Horizontal oversampling for better quality
        font_cfg.OversampleV = 5;  // Vertical oversampling
        font_cfg.PixelSnapH = true; // Align to pixel grid
        io.Fonts->AddFontFromFileTTF(font_path, 20.0f, &font_cfg);
        printf("Loaded system font: %s (20px, oversampled)\n", font_path);
    } else {
        io.Fonts->AddFontDefault();
        printf("System font not found, using default.\n");
    }

    // Setup Platform/Renderer backends
    ImGui_ImplSDL2_InitForOpenGL(g_window, g_gl_context);
    ImGui_ImplOpenGL3_Init("#version 130");

    // Initialize memory editor
    mem_editor.ReadFn = MemoryReadFn;
    mem_editor.WriteFn = MemoryWriteFn;
    mem_editor.OptShowOptions = true;
    mem_editor.OptShowDataPreview = true;

    // Initialize disassembly history
    memset(disasm_history, 0, sizeof(disasm_history));

    printf("GUI initialized successfully\n");
    printf("  Window: %dx%d\n", width, height);
    printf("  OpenGL Version: %s\n", glGetString(GL_VERSION));
    printf("  ImGui Version: %s\n", IMGUI_VERSION);

    return true;
}

// ============================================================================
// GUI Cleanup
// ============================================================================

void cleanup_gui() {
    // Cleanup ImGui
    ImGui_ImplOpenGL3_Shutdown();
    ImGui_ImplSDL2_Shutdown();
    ImGui::DestroyContext();

    // Cleanup SDL
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
// UI Rendering Functions
// ============================================================================

// Color definitions
static const ImVec4 COLOR_GREEN = ImVec4(0.2f, 0.9f, 0.3f, 1.0f);
static const ImVec4 COLOR_RED = ImVec4(0.9f, 0.3f, 0.2f, 1.0f);
static const ImVec4 COLOR_YELLOW = ImVec4(0.9f, 0.9f, 0.2f, 1.0f);
static const ImVec4 COLOR_BLUE = ImVec4(0.2f, 0.4f, 0.8f, 1.0f);
static const ImVec4 COLOR_WHITE = ImVec4(1.0f, 1.0f, 1.0f, 1.0f);
static const ImVec4 COLOR_GRAY = ImVec4(0.5f, 0.5f, 0.5f, 1.0f);

void RenderControlPanel() {
    ImGui::Begin("Control Panel", nullptr, ImGuiWindowFlags_NoCollapse);

    // ========================================
    // Playback Controls
    // ========================================
    ImGui::Text("Playback:");
    ImGui::SameLine();
    
    // Resume/Pause button with color
    if (cpu_running) {
        // Yellow Pause button
        ImGui::PushStyleColor(ImGuiCol_Button, ImVec4(0.8f, 0.7f, 0.1f, 1.0f));
        ImGui::PushStyleColor(ImGuiCol_ButtonHovered, ImVec4(0.9f, 0.8f, 0.2f, 1.0f));
        ImGui::PushStyleColor(ImGuiCol_ButtonActive, ImVec4(0.7f, 0.6f, 0.1f, 1.0f));
        if (ImGui::Button("[||] Pause", ImVec2(90, 0))) {
            cpu_running = false;
        }
        ImGui::PopStyleColor(3);
    } else {
        // Green Resume button
        ImGui::PushStyleColor(ImGuiCol_Button, ImVec4(0.1f, 0.6f, 0.2f, 1.0f));
        ImGui::PushStyleColor(ImGuiCol_ButtonHovered, ImVec4(0.2f, 0.7f, 0.3f, 1.0f));
        ImGui::PushStyleColor(ImGuiCol_ButtonActive, ImVec4(0.1f, 0.5f, 0.2f, 1.0f));
        bool can_resume = (temu_state != END);
        if (!can_resume) ImGui::BeginDisabled();
        if (ImGui::Button("[>] Resume", ImVec2(120, 0))) {
            cpu_running = true;
        }
        if (!can_resume) ImGui::EndDisabled();
        ImGui::PopStyleColor(3);
    }
    
    ImGui::SameLine();
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
        
        // 1. Call TEMU's restart (reloads code/data, sets PC, inits DDR3)
        restart();
        
        // 2. Zero out all GPRs (except $zero which is handled by restart/init)
        memset(&cpu.gpr, 0, sizeof(cpu.gpr));
        
        // 3. Reset TEMU state
        temu_state = STOP;
        
        // 4. Clear watchpoints
        init_wp_pool();
        
        // 5. Clear disassembly history
        disasm_head = 0;
        memset(disasm_history, 0, sizeof(disasm_history));
        
        // 6. Sync previous CPU state to avoid "changed" highlighting
        cpu_prev = cpu;
        
        printf("System Reset: Memory reloaded, registers zeroed, history cleared.\n");
    }

    ImGui::Separator();

    // ========================================
    // Speed Control
    // ========================================
    ImGui::Text("Speed:");
    ImGui::SameLine();
    ImGui::SetNextItemWidth(200);
    ImGui::SliderInt("##speed", &instructions_per_frame, 1, 10000, "%d IPC");
    ImGui::SameLine();
    ImGui::TextDisabled("(Instructions Per Frame)");

    ImGui::Separator();

    // ========================================
    // Status Display
    // ========================================
    ImGui::Text("Status:");
    ImGui::SameLine();
    
    const char* state_str = "UNKNOWN";
    ImVec4 state_color = COLOR_GRAY;
    switch (temu_state) {
        case STOP: 
            state_str = "STOPPED"; 
            state_color = COLOR_YELLOW;
            break;
        case RUNNING: 
            state_str = "RUNNING"; 
            state_color = COLOR_GREEN;
            break;
        case END: 
            state_str = "ENDED"; 
            state_color = COLOR_RED;
            break;
    }
    ImGui::TextColored(state_color, "%s", state_str);
    
    ImGui::SameLine();
    ImGui::Text("|");
    ImGui::SameLine();
    ImGui::Text("Instructions: %llu", (unsigned long long)instruction_count);
    
    ImGui::SameLine();
    ImGui::Text("|");
    ImGui::SameLine();
    ImGui::Text("PC: 0x%08X", cpu.pc);

    ImGui::Separator();

    // ========================================
    // Current Instruction Display
    // ========================================
    ImGui::Text("Current:");
    ImGui::SameLine();
    ImGui::TextColored(COLOR_BLUE, "%s", assembly[0] ? assembly : "(none)");

    ImGui::End();
}

void RenderRegistersView() {
    ImGui::Begin("Registers", nullptr, ImGuiWindowFlags_NoCollapse);

    // Register descriptions
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

    // Format toggle
    ImGui::Checkbox("Show Decimal", &show_decimal);
    ImGui::SameLine();
    ImGui::TextDisabled("(?)");
    if (ImGui::IsItemHovered()) {
        ImGui::SetTooltip("Toggle between Hexadecimal and Decimal display");
    }
    
    ImGui::Separator();

    // Single-column layout for all 32 registers (better use of vertical space)
    ImGui::BeginChild("RegColumns", ImVec2(0, 0), false);
    
    if (ImGui::BeginTable("registers_table", 2, 
        ImGuiTableFlags_Borders | ImGuiTableFlags_RowBg | ImGuiTableFlags_SizingStretchProp)) {
        
        // Column headers with larger widths
        ImGui::TableSetupColumn("Register", ImGuiTableColumnFlags_WidthStretch | ImGuiTableColumnFlags_NoHeaderLabel, 0.4f);
        ImGui::TableSetupColumn("Value", ImGuiTableColumnFlags_WidthStretch | ImGuiTableColumnFlags_NoHeaderLabel, 0.6f);
        
        // Custom header row
        ImGui::TableNextRow(ImGuiTableRowFlags_Headers);
        for (int column = 0; column < 2; column++) {
            ImGui::TableSetColumnIndex(column);
            TableTextCentered(ImGui::TableGetColumnName(column));
        }

        // Display all 32 registers in a single column
        for (int i = 0; i < 32; i++) {
            ImGui::TableNextRow();
            
            uint32_t val = cpu.gpr[i]._32;
            uint32_t prev = cpu_prev.gpr[i]._32;
            bool changed = (val != prev);
            
            ImVec4 color = COLOR_WHITE;
            if (changed) {
                color = (val > prev) ? COLOR_GREEN : COLOR_RED;
            }
            
            // Register name column
            ImGui::TableSetColumnIndex(0);
            if (changed) ImGui::PushStyleColor(ImGuiCol_Text, color);
            ImGui::Text("%s", regfile[i]);
            if (ImGui::IsItemHovered()) ImGui::SetTooltip("%s", reg_desc[i]);
            if (changed) ImGui::PopStyleColor();
            
            // Value column
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

    // PC register display
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

    ImGui::Text("Instruction History (most recent at bottom)");
    ImGui::Separator();

    // Table with columns: Address, Hex Code, Assembly
    if (ImGui::BeginTable("disasm_table", 3,
        ImGuiTableFlags_Borders | ImGuiTableFlags_RowBg | ImGuiTableFlags_ScrollY,
        ImVec2(0, -ImGui::GetFrameHeightWithSpacing()))) {
        
        ImGui::TableSetupColumn("Address", ImGuiTableColumnFlags_WidthFixed | ImGuiTableColumnFlags_NoHeaderLabel, 160.0f);
        ImGui::TableSetupColumn("Hex Code", ImGuiTableColumnFlags_WidthFixed | ImGuiTableColumnFlags_NoHeaderLabel, 160.0f);
        ImGui::TableSetupColumn("Assembly", ImGuiTableColumnFlags_WidthStretch);
        ImGui::TableSetupScrollFreeze(0, 1);
        
        // Custom header row to allow centering
        ImGui::TableNextRow(ImGuiTableRowFlags_Headers);
        for (int column = 0; column < 3; column++) {
            ImGui::TableSetColumnIndex(column);
            const char* column_name = ImGui::TableGetColumnName(column);
            if (column < 2) { // Center first 2 columns
                TableTextCentered(column_name);
            } else {
                ImGui::TableHeader(column_name);
            }
        }

        // Display history in order (oldest to newest)
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
            
            // Check if this is the current PC (most recent entry is current)
            bool is_current = (displayed == count);
            
            if (is_current) {
                // Highlight current PC row with deep blue background
                ImU32 row_bg = IM_COL32(30, 60, 120, 255);
                ImGui::TableSetBgColor(ImGuiTableBgTarget_RowBg0, row_bg);
            }
            
            // Address column
            ImGui::TableSetColumnIndex(0);
            char addr_buf[16];
            sprintf(addr_buf, "0x%08X", entry.pc);
            TableTextCentered(addr_buf);
            
            // Hex code column
            ImGui::TableSetColumnIndex(1);
            char hex_buf[16];
            sprintf(hex_buf, "0x%08X", entry.hex_code);
            TableTextCentered(hex_buf);
            
            // Assembly column
            ImGui::TableSetColumnIndex(2);
            if (is_current) {
                ImGui::TextColored(COLOR_GREEN, ">>> %s", entry.assembly);
            } else {
                ImGui::TextColored(COLOR_GRAY, "    %s", entry.assembly);
            }
        }

        // Auto-scroll to bottom
        if (ImGui::GetScrollY() >= ImGui::GetScrollMaxY() - 10) {
            ImGui::SetScrollHereY(1.0f);
        }

        ImGui::EndTable();
    }

    // Status bar
    ImGui::Text("Showing %d instructions | Current PC: 0x%08X", 
        instruction_count > 0 ? (instruction_count < DISASM_HISTORY_SIZE ? (int)instruction_count : DISASM_HISTORY_SIZE) : 0,
        cpu.pc);

    ImGui::End();
}

void RenderMemoryView() {
    ImGui::Begin("Memory", nullptr, ImGuiWindowFlags_NoCollapse);

    if (ImGui::BeginTabBar("MemoryTabs")) {
        // Tab 1: Full Memory Editor
        if (ImGui::BeginTabItem("Memory Editor")) {
            // Navigation bar
            if (ImGui::Button("Go to PC")) {
                mem_editor.GotoAddrAndHighlight(cpu.pc & 0x7FFFFFFF, cpu.pc & 0x7FFFFFFF);
            }
            ImGui::SameLine();
            
            if (ImGui::Button("Go to .data")) {
                mem_editor.GotoAddrAndHighlight(0x00010000, 0x00010000);  // Physical address for 0x80010000
            }
            ImGui::SameLine();
            
            if (ImGui::Button("Go to Stack")) {
                uint32_t sp = cpu.gpr[3]._32 & 0x7FFFFFFF;  // $sp register, map to physical
                mem_editor.GotoAddrAndHighlight(sp, sp);
            }
            ImGui::SameLine();
            
            ImGui::SetNextItemWidth(120);
            if (ImGui::InputText("##addr", mem_addr_input, sizeof(mem_addr_input), 
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

            // Memory editor (use hw_mem directly for 128MB range)
            mem_editor.DrawContents(nullptr, HW_MEM_SIZE, 0x00000000);
            
            ImGui::EndTabItem();
        }

        // Tab 2: Data Segment Visualization
        if (ImGui::BeginTabItem("Data Segment")) {
            ImGui::Text("Data Segment View (Starts at 0x80010000)");
            ImGui::Separator();

            if (ImGui::BeginTable("data_seg_table", 4, 
                ImGuiTableFlags_Borders | ImGuiTableFlags_RowBg | ImGuiTableFlags_SizingFixedFit)) {
                
                ImGui::TableSetupColumn("Address", ImGuiTableColumnFlags_WidthFixed | ImGuiTableColumnFlags_NoHeaderLabel, 110.0f);
                ImGui::TableSetupColumn("Hex Value", ImGuiTableColumnFlags_WidthFixed | ImGuiTableColumnFlags_NoHeaderLabel, 110.0f);
                ImGui::TableSetupColumn("Decimal", ImGuiTableColumnFlags_WidthFixed | ImGuiTableColumnFlags_NoHeaderLabel, 110.0f);
                ImGui::TableSetupColumn("ASCII", ImGuiTableColumnFlags_WidthStretch | ImGuiTableColumnFlags_NoHeaderLabel);
                
                // Custom header row
                ImGui::TableNextRow(ImGuiTableRowFlags_Headers);
                for (int column = 0; column < 4; column++) {
                    ImGui::TableSetColumnIndex(column);
                    TableTextCentered(ImGui::TableGetColumnName(column));
                }

                // Display 20 lines from 0x80010000
                // Note: 0x80010000 maps to physical 0x00010000
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
                    // Check if bytes are printable ASCII
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
// Main Loop
// ============================================================================

void main_loop_gui() {
    bool quit = false;
    
    // Initialize cpu_prev with current state
    cpu_prev = cpu;

    printf("Entering main GUI loop...\n");

    // Flag to track if layout has been initialized
    static bool layout_initialized = false;

    while (!quit) {
        // ========================================
        // 1. Event Handling
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
        // 2. Start ImGui Frame
        // ========================================
        ImGui_ImplOpenGL3_NewFrame();
        ImGui_ImplSDL2_NewFrame();
        ImGui::NewFrame();

        // ========================================
        // 3. Create Docking Layout
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
        
        // Initialize default layout on first run
        if (!layout_initialized) {
            layout_initialized = true;
            
            // Clear any existing layout
            ImGui::DockBuilderRemoveNode(dockspace_id);
            ImGui::DockBuilderAddNode(dockspace_id, ImGuiDockNodeFlags_DockSpace);
            ImGui::DockBuilderSetNodeSize(dockspace_id, viewport->WorkSize);
            
            // Split the dockspace into regions (new layout: Registers on full right side)
            ImGuiID dock_main_id = dockspace_id;
            
            // First split: Right side for Registers (35% width, full height)
            ImGuiID dock_id_right = ImGui::DockBuilderSplitNode(dock_main_id, ImGuiDir_Right, 0.25f, nullptr, &dock_main_id);
            
            // Left side split: Top for Control Panel (12% of left area)
            ImGuiID dock_id_top = ImGui::DockBuilderSplitNode(dock_main_id, ImGuiDir_Up, 0.12f, nullptr, &dock_main_id);
            
            // Remaining left area split: Bottom for Memory (30% of remaining)
            ImGuiID dock_id_bottom = ImGui::DockBuilderSplitNode(dock_main_id, ImGuiDir_Down, 0.30f, nullptr, &dock_main_id);
            
            // dock_main_id is now the center-left area for Disassembly
            
            // Dock windows to their designated areas
            ImGui::DockBuilderDockWindow("Control Panel", dock_id_top);
            ImGui::DockBuilderDockWindow("Disassembly", dock_main_id);  // Center-left
            ImGui::DockBuilderDockWindow("Registers", dock_id_right);   // Full right side
            ImGui::DockBuilderDockWindow("Memory", dock_id_bottom);     // Bottom-left
            
            ImGui::DockBuilderFinish(dockspace_id);
        }
        
        ImGui::End();

        // ========================================
        // 4. Render UI Windows
        // ========================================
        RenderControlPanel();
        RenderRegistersView();
        RenderDisassemblyView();
        RenderMemoryView();

        // ========================================
        // 5. CPU Execution (KEY LOGIC)
        // ========================================
        int exec_count = 0;
        
        if (single_step_requested) {
            exec_count = 1;
            single_step_requested = false;
        } else if (cpu_running && temu_state != END) {
            exec_count = instructions_per_frame;
        }

        for (int i = 0; i < exec_count && temu_state != END; i++) {
            // CRITICAL: Save current CPU state before execution
            cpu_prev = cpu;
            
            // Get current instruction hex before execution
            uint32_t current_pc = cpu.pc & 0x7FFFFFFF;
            uint32_t current_hex = mem_read(current_pc, 4);
            
            // Execute one instruction
            cpu_exec(1);
            
            // Add to disassembly history
            add_disasm_entry(cpu_prev.pc, current_hex, assembly);
            
            instruction_count++;
            
            // Check for END state
            if (temu_state == END) {
                cpu_running = false;
                break;
            }
        }

        // ========================================
        // 6. Render and Display
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
// Entry Point for GUI Mode
// ============================================================================

extern "C" int start_gui_mode(int argc, char* argv[]) {
    (void)argc;
    (void)argv;
    
    printf("Starting TEMU in GUI mode...\n");

    // Initialize GUI
    if (!init_gui("TEMU - LoongArch32 Emulator", 1400, 900)) {
        fprintf(stderr, "Failed to initialize GUI\n");
        return 1;
    }

    // Run main loop
    main_loop_gui();

    // Cleanup
    cleanup_gui();

    return 0;
}
