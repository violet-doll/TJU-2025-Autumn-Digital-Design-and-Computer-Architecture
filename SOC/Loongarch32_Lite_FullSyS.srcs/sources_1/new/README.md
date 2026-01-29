# LoongArch32 五级流水线

## 关键模块（按功能）
- CPU核心顶层：Loongarch32_Lite.sv
- SoC顶层与外设集成：Loongarch32_Lite_FullSyS.sv
- 顶层封装：top.v
- 五级流水线阶段：if_stage.sv、id_stage.sv、exe_stage.sv、mem_stage.sv、wb_stage.sv
- 流水线寄存器：ifid_reg.sv、idexe_reg.sv、exemem_reg.sv、memwb_reg.sv
- 冒险处理：forwarding_unit.sv、ctrl.sv
- 分支预测：branch_predictor.sv（BTB+2-bit BHT，64项）
- 寄存器堆：regfile.sv（含WB→ID旁路）
- 外设与显示：async_receiver.sv、async_transmitter.sv、BaudTickGen.sv、x7seg.sv
- 全局宏定义：defines.v

## 五级流水线设计
- IF（取指）：PC更新优先级为“预测修正 > 预测跳转 > 顺序PC+4”，并输出预测结果。
- ID（译码）：完成指令译码、寄存器读取、立即数生成；分支在ID阶段提前比较并生成目标地址，带前推；产生误预测冲刷与重定向PC。
- EXE（执行）：ALU 运算与乘除法支持，除法/取模为多周期（约32周期）并请求流水线暂停；支持对ALU与Store数据的前推。
- MEM（访存）：支持字节/字访问的 Load/Store，按地址低两位处理字节对齐与符号扩展。
- WB（写回）：将结果写回寄存器堆，并提供调试接口信号。

## 已支持指令（核心子集）
- 算术与逻辑：add.w、addi.w、and/andi、or/ori、xor、sltui、srl.w
- 乘除法：mul.w、mulh.w、div.w、mod.w
- 访存：ld.b、ld.w、st.b、st.w
- 分支与PC相关：beq、bne、blt、lu12i.w、pcaddu12i

## 冒险与控制策略
- 数据前推：MEM/WB→EXE 前推，Store 数据通路支持前推。
- Load-Use 暂停：ID检测到EXE阶段为Load且存在寄存器相关时暂停PC/IF/ID。
- 多周期运算暂停：DIV/MOD执行期间冻结全流水线以保持EXE状态。
- ROM结构冲突暂停：MEM访问ROM地址时暂停前级避免资源冲突。

## 分支预测与恢复
- 预测器：直接映射 BTB + 2位饱和计数器 BHT（64项）。
- 更新：ID阶段分支可正确判断时训练预测器；发生误预测时冲刷流水线并重定向PC。

## 存储与外设映射
- PC 初始地址：0x8000_0000
- 指令ROM：0x8000_0000 区域（单端口ROM，IF/MEM仲裁）
- 数据RAM：除ROM/UART/GPIO之外的访问
- UART：
  - 数据寄存器：0xBFD0_03F8
  - 状态寄存器：0xBFD0_03FC（bit0=TX Ready, bit1=RX Ready）
- GPIO：
  - LED：0xBFD0_0400（可写）
  - 拨码开关：0xBFD0_0404（可读）

## 备注
- 指令与数据字节序在ROM/RAM接口处进行转换，以匹配实验环境的小端数据布局。
- UART默认 50MHz/9600 波特率。