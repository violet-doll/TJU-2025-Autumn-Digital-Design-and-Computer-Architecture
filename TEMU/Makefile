include loongarch_sc/src/Makefile.testcase

.PHONY: run clean clean-temu loongarch_sc gui run-gui

# ========================================
# Directory Configuration
# ========================================
ifndef INCLUDE_DIR
INCLUDE_DIR := ./temu/include
endif
ifndef SRC_DIR
SRC_DIR := ./temu/src
endif
ifndef BUILD_DIR
BUILD_DIR := build
endif
OBJ_DIR := $(BUILD_DIR)/obj
ifndef GUI_DIR
GUI_DIR := ./gui
endif
ifndef VENDOR_DIR
VENDOR_DIR := ./vendor
endif

DEBUG := false

# ========================================
# Compiler Configuration
# ========================================
CC := gcc
CXX := g++
LD := g++

# ========================================
# C Compilation Flags
# ========================================
CFLAGS := -I$(INCLUDE_DIR) \
          -I$(INCLUDE_DIR)/cpu \
          -I$(INCLUDE_DIR)/memory \
          -I$(INCLUDE_DIR)/monitor \
          -Wall -Werror

# ========================================
# C++ Compilation Flags
# ========================================
CXXFLAGS := -std=c++11 \
            -I$(INCLUDE_DIR) \
            -I$(INCLUDE_DIR)/cpu \
            -I$(INCLUDE_DIR)/memory \
            -I$(INCLUDE_DIR)/monitor \
            -I$(VENDOR_DIR)/imgui \
            -I$(VENDOR_DIR)/imgui/backends \
            -I$(VENDOR_DIR)/imgui_club/imgui_memory_editor \
            $(shell pkg-config --cflags sdl2) \
            -Wall -Wformat

# ========================================
# Linker Flags
# ========================================
LDFLAGS := -lreadline

# GUI-specific linker flags (SDL2 + OpenGL3)
GUI_LDFLAGS := $(shell pkg-config --libs sdl2) -lGL -ldl -lpthread

# ========================================
# Source Files - C (TEMU Core)
# ========================================
C_SRCS := $(wildcard $(SRC_DIR)/*.c) \
          $(wildcard $(SRC_DIR)/memory/*.c) \
          $(wildcard $(SRC_DIR)/cpu/*.c) \
          $(wildcard $(SRC_DIR)/monitor/*.c)

# ========================================
# Source Files - C++ (Dear ImGui + GUI)
# ========================================
IMGUI_DIR := $(VENDOR_DIR)/imgui
IMGUI_SRCS := $(IMGUI_DIR)/imgui.cpp \
              $(IMGUI_DIR)/imgui_demo.cpp \
              $(IMGUI_DIR)/imgui_draw.cpp \
              $(IMGUI_DIR)/imgui_tables.cpp \
              $(IMGUI_DIR)/imgui_widgets.cpp \
              $(IMGUI_DIR)/backends/imgui_impl_sdl2.cpp \
              $(IMGUI_DIR)/backends/imgui_impl_opengl3.cpp

GUI_SRCS := $(wildcard $(GUI_DIR)/*.cpp)

CXX_SRCS := $(IMGUI_SRCS) $(GUI_SRCS)

# ========================================
# Object Files
# ========================================
C_OBJS := $(patsubst %.c, $(OBJ_DIR)/%.o, $(C_SRCS))
CXX_OBJS := $(patsubst %.cpp, $(OBJ_DIR)/%.o, $(CXX_SRCS))

ALL_OBJS := $(C_OBJS) $(CXX_OBJS)

# ========================================
# Targets
# ========================================
TEMU_TARGET := temu
GUI_TARGET := temu-gui

# ========================================
# Debug Configuration
# ========================================
ifeq ($(DEBUG), true)
CFLAGS += -g
CXXFLAGS += -g
endif

# ========================================
# Export Variables
# ========================================
export INCLUDE_DIR
export SRC_DIR
export BUILD_DIR

SC_DIR := ./loongarch_sc

# ========================================
# Build Rules
# ========================================

.PHONY: all
all:
	$(MAKE) clean
	$(MAKE) $(BUILD_DIR)/$(TEMU_TARGET)

# Main version (TEMU with optional GUI support)
$(BUILD_DIR)/$(TEMU_TARGET): $(ALL_OBJS)
	@mkdir -p $(BUILD_DIR)
	$(LD) -o $@ $(ALL_OBJS) $(LDFLAGS) $(GUI_LDFLAGS)

# GUI version (TEMU with Dear ImGui)
gui: $(BUILD_DIR)/$(GUI_TARGET)

$(BUILD_DIR)/$(GUI_TARGET): $(ALL_OBJS)
	@echo "Linking GUI executable..."
	@mkdir -p $(BUILD_DIR)
	$(LD) -o $@ $(ALL_OBJS) $(LDFLAGS) $(GUI_LDFLAGS)
	@echo "Build complete: $(BUILD_DIR)/$(GUI_TARGET)"

# ========================================
# Compilation Rules for C Files
# ========================================
$(OBJ_DIR)/%.o: %.c
	@mkdir -p $(dir $@)
	@echo "Compiling C: $<"
	$(CC) $(CFLAGS) -c $< -o $@

# ========================================
# Compilation Rules for C++ Files
# ========================================
$(OBJ_DIR)/%.o: %.cpp
	@mkdir -p $(dir $@)
	@echo "Compiling C++: $<"
	$(CXX) $(CXXFLAGS) -c $< -o $@

# ========================================
# LoongArch SC Testcases
# ========================================
loongarch_sc:
	$(MAKE) -C $(SC_DIR)

# ========================================
# Run Targets
# ========================================
run: loongarch_sc $(BUILD_DIR)/$(TEMU_TARGET)
	@./$(BUILD_DIR)/$(TEMU_TARGET) $(USER_PROGRAM)

run-gui: loongarch_sc gui
	@./$(BUILD_DIR)/$(GUI_TARGET) $(USER_PROGRAM)

# ========================================
# Clean Targets
# ========================================
clean-temu:
	rm -f -r $(BUILD_DIR)

clean:
	rm -f -r $(BUILD_DIR)
	$(MAKE) -C $(SC_DIR) clean
	rm -f log.txt trace.txt
	rm -f *.bin

# ========================================
# Help Target
# ========================================
.PHONY: help
help:
	@echo "TEMU Build System"
	@echo "================="
	@echo "Targets:"
	@echo "  all         - Build CLI version (default)"
	@echo "  gui         - Build GUI version with Dear ImGui"
	@echo "  run         - Run CLI version"
	@echo "  run-gui     - Run GUI version"
	@echo "  clean       - Clean all build artifacts"
	@echo "  clean-temu  - Clean only TEMU build artifacts"
	@echo "  help        - Show this help message"
	@echo ""
	@echo "Examples:"
	@echo "  make gui                              - Build GUI version"
	@echo "  make run-gui USER_PROGRAM=test.bin    - Run GUI with test program"
	@echo "  make DEBUG=true gui                   - Build GUI with debug symbols"
