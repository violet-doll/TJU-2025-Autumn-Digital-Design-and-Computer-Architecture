# TEMU - LoongArch32 指令集模拟器

TEMU (Tiny EMUlator) 是一个轻量级的 LoongArch32 指令集模拟器。本项目完整实现了 **实验三 Level 2 (LoongArch32)** 的所有功能要求，并提供了 CLI 和 GUI 两种交互模式。

## 🏆 评分标准完成情况

本项目已实验指导书要求的全部得分点（Level 2）：

| 评分项 | 分值 | 完成情况 | 说明 |
| :--- | :---: | :---: | :--- |
| **支持要求的指令** | 35 | ✅ | 完整实现 Level 2 要求的 14 条必做指令 + 3 条随机指令 |
| **基础调试功能** | 15 | ✅ | 支持单步执行(`si`)、打印寄存器(`info r`)、扫描内存(`x`) |
| **表达式求值** | 15 | ✅ | 支持在 `x` 和 `w` 命令中使用复杂表达式解析与求值 |
| **监视点** | 15 | ✅ | 支持设置监视点(`w`)、删除监视点(`d`)，触发条件自动暂停 |
| **Golden Trace** | 15 | ✅ | 支持生成标准格式的指令执行踪迹文件，用于与 CPU 核交叉验证 |
| **图形界面** | 5 | ✅ | 集成 Dear ImGui，可视化展示寄存器与内存状态 |

## 项目特性

### 1. LoongArch32 指令集支持

共实现 **17条** 指令，包含算术、逻辑、移位、访存及分支跳转：

* **必做指令 (14条)**:
    * `add.w`, `addi.w`, `lu12i.w`, `pcaddu12i`
    * `or`, `ori`, `andi`, `xor`
    * `beq`, `bne`
    * `ld.w`, `st.w`, `ld.b`, `st.b`
* **选做指令 (3条 - 各类随机抽取)**:
    * 算术运算: `sltui`
    * 移位运算: `srl.w`
    * 分支转移: `blt`

### 2. 核心功能

* **双模式运行**:
    * **CLI 模式**: 经典的命令行交互式调试器，支持 Readline。
    * **GUI 模式**: 基于 Dear ImGui 的现代化图形界面，实时刷新寄存器和内存视图。
* **高级调试**:
    * 内置表达式求值引擎，支持寄存器引用（如 `$t0`）和十六进制/十进制混合运算。
    * 支持监视点（Watchpoint）池管理，实时监控变量变化。
* **验证机制**:
    * **Golden Trace**: 运行过程中可记录 `PC` 及 `写寄存器` 信息，格式完全符合实验要求。
    * **完整测试**: 包含针对每条指令的独立汇编测试用例。

## 目录结构

```text
TEMU/
├── Makefile                # 主构建脚本
├── temu/                   # 模拟器核心代码
│   ├── include/            # 头文件
│   └── src/
│       ├── cpu/            # CPU 核心 (译码、执行、Golden Trace)
│       ├── memory/         # 内存管理 (物理内存模拟)
│       └── monitor/        # 监控器 (CLI、表达式求值、监视点)
├── gui/                    # GUI 界面适配 (Dear ImGui)
├── loongarch_sc/           # 测试程序集
│   └── src/                # 汇编测试用例 (.S)
├── vendor/                 # 第三方依赖
└── build/                  # 编译产物
```

## 快速开始

### 环境依赖

**系统依赖**:
```bash
# Ubuntu/Debian
sudo apt-get install build-essential libsdl2-dev libgl1-mesa-dev libreadline-dev
```

**交叉编译工具链**:
需要 LoongArch32 交叉编译工具链: `loongarch32r-linux-gnusf-gcc`

**第三方库**:
在 `vendor` 文件夹下需要 clone 以下仓库:
```bash
cd vendor
git clone -b docking https://github.com/ocornut/imgui.git
git clone https://github.com/ocornut/imgui_club.git
cd ..
```

### 使用方法

#### 第一步: 编译测试程序

```bash
cd loongarch_sc
make
cd ..
```

#### 第二步: 运行模拟器

**运行 CLI 模式**:
```bash
make run
```

**运行 GUI 模式**:
```bash
make gui
./build/temu loongarch_sc/build/add_w --gui
```

**常用命令**:
```bash
make help          # 查看帮助
make clean         # 清理构建
make gui           # 仅构建 GUI 版本
```

### CLI 调试命令

| 命令 | 格式 | 使用举例 | 说明 |
|------|------|----------|------|
| 帮助 | `help` | `help` | 打印命令的帮助信息 |
| 继续运行 | `c` | `c` | 继续运行暂停的程序 |
| 退出 | `q` | `q` | 退出TEMU |
| 单步执行 | `si [N]` | `si 10` | 程序单步执行N条指令后暂停,当N没有给出时,缺省为1 |
| 打印程序状态 | `info SUBCMD` | `info r`<br>`info w` | 打印寄存器状态<br>打印监视点状态 |
| 扫描内存 | `x N EXPR` | `x 10 $t0` | 求出表达式EXPR的值,将结果作为起始内存地址,以16进制形式输出连续的N个4字节 |
| 设置监视点 | `w EXPR` | `w $at==0x1010` | 当表达式EXPR的值发生变化时,暂停程序执行 |
| 删除监视点 | `d N` | `d 2` | 删除序号为N的监视点 |

## 测试用例

测试用例位于 `loongarch_sc/src/`,包含所有 17 条指令的测试:

```bash
# 编译所有测试程序
cd loongarch_sc
make
cd ..

# 运行特定测试 (CLI模式)
make run

# 运行特定测试 (GUI模式)
make gui
./build/temu-gui loongarch_sc/build/add_w --gui
```
---