// TEMU GUI - 内存查看窗口
// 主要的内存编辑器集成在 main.cpp 的 RenderMemoryView() 中
// 该文件提供额外的内存工具

#include "temu_bridge.h"
#include <imgui.h>
#include <imgui_memory_editor.h>
#include <cstdint>

// LoongArch32 的内存区域定义
#define MEM_REGION_TEXT_START   0x80000000
#define MEM_REGION_DATA_START   0x80010000
#define MEM_REGION_STACK_TOP    0x80800000

// 将虚拟地址转换为物理地址
static inline uint32_t va_to_pa(uint32_t va) {
    return va & 0x7FFFFFFF;  // 清除最高位
}

// 内存监视窗口 (用于追踪特定地址)
static uint32_t watch_addresses[8] = {0};
static int watch_count = 0;

void RenderMemoryWatchWindow() {
    ImGui::Begin("内存监视", nullptr, ImGuiWindowFlags_NoCollapse);
    
    ImGui::Text("监视列表 (最多 8 个地址)");
    ImGui::Separator();
    
    // 添加新监视
    static char new_addr[17] = "";
    ImGui::SetNextItemWidth(120);
    if (ImGui::InputText("##newaddr", new_addr, sizeof(new_addr), 
            ImGuiInputTextFlags_CharsHexadecimal | ImGuiInputTextFlags_EnterReturnsTrue)) {
        if (watch_count < 8) {
            unsigned int addr;
            if (sscanf(new_addr, "%x", &addr) == 1) {
                watch_addresses[watch_count++] = addr;
            }
        }
        new_addr[0] = '\0';
    }
    ImGui::SameLine();
    if (ImGui::Button("添加") && watch_count < 8) {
        unsigned int addr;
        if (sscanf(new_addr, "%x", &addr) == 1) {
            watch_addresses[watch_count++] = addr;
        }
        new_addr[0] = '\0';
    }
    
    ImGui::Separator();
    
    // 显示监视的地址
    for (int i = 0; i < watch_count; i++) {
        ImGui::PushID(i);
        
        uint32_t pa = va_to_pa(watch_addresses[i]);
        uint32_t value = mem_read(pa, 4);
        
        ImGui::Text("0x%08X: 0x%08X (%d)", watch_addresses[i], value, (int32_t)value);
        ImGui::SameLine();
        if (ImGui::SmallButton("X")) {
            // 移除该监视
            for (int j = i; j < watch_count - 1; j++) {
                watch_addresses[j] = watch_addresses[j + 1];
            }
            watch_count--;
            i--;  // 重新检查该索引
        }
        
        ImGui::PopID();
    }
    
    if (watch_count == 0) {
        ImGui::TextDisabled("暂无监视。在上方输入地址以添加。");
    }
    
    ImGui::End();
}

// 栈视图窗口
void RenderStackView() {
    ImGui::Begin("栈视图", nullptr, ImGuiWindowFlags_NoCollapse);
    
    uint32_t sp = cpu.gpr[3]._32;  // $sp 寄存器
    uint32_t fp = cpu.gpr[22]._32; // $fp 寄存器
    
    ImGui::Text("$sp = 0x%08X", sp);
    ImGui::Text("$fp = 0x%08X", fp);
    ImGui::Separator();
    
    ImGui::Text("栈内容 (从 $sp 开始, 16 个字):");
    
    if (ImGui::BeginTable("stack_table", 3, ImGuiTableFlags_Borders | ImGuiTableFlags_RowBg)) {
        ImGui::TableSetupColumn("偏移");
        ImGui::TableSetupColumn("地址");
        ImGui::TableSetupColumn("数值");
        ImGui::TableHeadersRow();
        
        for (int i = 0; i < 16; i++) {
            uint32_t addr = sp + (i * 4);
            uint32_t pa = va_to_pa(addr);
            uint32_t value = mem_read(pa, 4);
            
            ImGui::TableNextRow();
            ImGui::TableSetColumnIndex(0);
            ImGui::Text("+%d", i * 4);
            ImGui::TableSetColumnIndex(1);
            ImGui::Text("0x%08X", addr);
            ImGui::TableSetColumnIndex(2);
            ImGui::Text("0x%08X", value);
        }
        
        ImGui::EndTable();
    }
    
    ImGui::End();
}
