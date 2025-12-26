// TEMU GUI - CPU 寄存器窗口
// 该文件包含额外的 CPU 寄存器可视化功能
// 主要的寄存器显示位于 main.cpp 的 RenderRegistersView() 中

#include "temu_bridge.h"
#include <imgui.h>

// 寄存器分组显示
// 分组: 参数 (a0-a7), 临时 (t0-t8), 保存 (s0-s8), 特殊 (zero, ra, tp, sp, fp, x)

void RenderCPUWindow_Advanced() {
    ImGui::Begin("寄存器分组", nullptr, ImGuiWindowFlags_NoCollapse);
    
    // 参数分组 (a0-a7: 索引 4-11)
    if (ImGui::CollapsingHeader("参数 (a0-a7)", ImGuiTreeNodeFlags_DefaultOpen)) {
        for (int i = 4; i <= 11; i++) {
            ImGui::Text("$%s: 0x%08X", regfile[i], cpu.gpr[i]._32);
        }
    }
    
    // 临时分组 (t0-t8: 索引 12-20)
    if (ImGui::CollapsingHeader("临时 (t0-t8)", ImGuiTreeNodeFlags_DefaultOpen)) {
        for (int i = 12; i <= 20; i++) {
            ImGui::Text("$%s: 0x%08X", regfile[i], cpu.gpr[i]._32);
        }
    }
    
    // 保存分组 (s0-s8: 索引 23-31)
    if (ImGui::CollapsingHeader("保存 (s0-s8)")) {
        for (int i = 23; i <= 31; i++) {
            ImGui::Text("$%s: 0x%08X", regfile[i], cpu.gpr[i]._32);
        }
    }
    
    // 特殊寄存器
    if (ImGui::CollapsingHeader("Special")) {
        ImGui::Text("$zero: 0x%08X", cpu.gpr[0]._32);
        ImGui::Text("$ra:   0x%08X", cpu.gpr[1]._32);
        ImGui::Text("$tp:   0x%08X", cpu.gpr[2]._32);
        ImGui::Text("$sp:   0x%08X", cpu.gpr[3]._32);
        ImGui::Text("$fp:   0x%08X", cpu.gpr[22]._32);
        ImGui::Text("$x:    0x%08X", cpu.gpr[21]._32);
    }
    
    ImGui::End();
}
