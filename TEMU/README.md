# TEMU - LoongArch32 指令集模拟器

TEMU (Tiny EMUlator) 是一个轻量级的 LoongArch32 指令集模拟器,支持 CLI 和 GUI 两种运行模式。

## 项目特性

### 已实现指令 (17条)

**必做指令 (14条)**:
- 3R型 (1条): `add.w`
- I12型 (7条): `addi.w`, `ld.w`, `st.w`, `ld.b`, `st.b`, `ori`, `andi`
- I20型 (2条): `lu12i.w`, `pcaddu12i`
- B型 (2条): `beq`, `bne`
- 其他 (2条): `or`, `xor`

**选做指令 (3条)**:
- `sltui` (I12型)
- `srl.w` (3R型)
- `blt` (B型)

### 运行模式

- 🖥️ **CLI 模式**: 命令行交互式调试器
- 🎨 **GUI 模式**: 基于 Dear ImGui 的图形界面
- 🧪 **完整测试**: 每条指令都有独立测试用例

## 目录结构

```
TEMU/
├── Makefile                # 主构建脚本
├── temu/                   # 模拟器源代码
│   ├── include/            # 头文件
│   └── src/                # 源代码
│       ├── cpu/            # CPU 实现 (指令解码、执行)
│       ├── memory/         # 内存管理
│       └── monitor/        # 调试监控器
├── gui/                    # GUI 界面 (Dear ImGui)
├── loongarch_sc/           # 测试程序
│   └── src/                # 测试用例 (.S 汇编文件)
├── vendor/                 # 第三方库 (imgui)
└── build/                  # 构建输出
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
./build/temu-gui loongarch_sc/build/add_w --gui
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
| 帮助* | `help` | `help` | 打印命令的帮助信息 |
| 继续运行* | `c` | `c` | 继续运行暂停的程序 |
| 退出* | `q` | `q` | 退出TEMU |
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

## 架构说明

- **CPU 模块**: 指令解码、执行、调度
- **内存模块**: 统一内存空间管理
- **监控器模块**: CLI 调试接口
- **GUI 模块**: 图形界面 (寄存器视图、内存编辑器、控制面板)

---