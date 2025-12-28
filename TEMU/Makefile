include loongarch_sc/src/Makefile.testcase

.PHONY: all run gui clean help

# ========================================
# Directory Configuration
# ========================================
INCLUDE_DIR := ./temu/include
SRC_DIR     := ./temu/src
BUILD_DIR   := build
OBJ_DIR     := $(BUILD_DIR)/obj
GUI_DIR     := ./gui
VENDOR_DIR  := ./vendor
SC_DIR      := ./loongarch_sc

# ========================================
# Compiler Configuration
# ========================================
CC  := gcc
CXX := g++
LD  := g++

# ========================================
# Compilation Flags
# ========================================
INCLUDES := -I$(INCLUDE_DIR) \
            -I$(INCLUDE_DIR)/cpu \
            -I$(INCLUDE_DIR)/memory \
            -I$(INCLUDE_DIR)/monitor

CFLAGS := $(INCLUDES) -Wall -Werror

CXXFLAGS := -std=c++11 $(INCLUDES) \
            -I$(VENDOR_DIR)/imgui \
            -I$(VENDOR_DIR)/imgui/backends \
            -I$(VENDOR_DIR)/imgui_club/imgui_memory_editor \
            $(shell pkg-config --cflags sdl2) \
            -Wall -Wformat

LDFLAGS := -lreadline $(shell pkg-config --libs sdl2) -lGL -ldl -lpthread

# Debug mode
ifeq ($(DEBUG), true)
CFLAGS += -g
CXXFLAGS += -g
endif

# ========================================
# Source Files
# ========================================
# C sources (TEMU core)
C_SRCS := $(wildcard $(SRC_DIR)/*.c) \
          $(wildcard $(SRC_DIR)/memory/*.c) \
          $(wildcard $(SRC_DIR)/cpu/*.c) \
          $(wildcard $(SRC_DIR)/monitor/*.c)

# C++ sources (ImGui + GUI)
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
C_OBJS   := $(patsubst %.c, $(OBJ_DIR)/%.o, $(C_SRCS))
CXX_OBJS := $(patsubst %.cpp, $(OBJ_DIR)/%.o, $(CXX_SRCS))
ALL_OBJS := $(C_OBJS) $(CXX_OBJS)

# ========================================
# Targets
# ========================================
TEMU_TARGET := $(BUILD_DIR)/temu

# Default target
all:
	$(MAKE) clean
	$(MAKE) $(TEMU_TARGET)

# Build TEMU (with GUI support)
$(TEMU_TARGET): $(ALL_OBJS)
	@mkdir -p $(BUILD_DIR)
	$(LD) -o $@ $(ALL_OBJS) $(LDFLAGS)

# Alias for building
gui: $(TEMU_TARGET)

# ========================================
# Compilation Rules
# ========================================
$(OBJ_DIR)/%.o: %.c
	@mkdir -p $(dir $@)
	@echo "Compiling C: $<"
	$(CC) $(CFLAGS) -c $< -o $@

$(OBJ_DIR)/%.o: %.cpp
	@mkdir -p $(dir $@)
	@echo "Compiling C++: $<"
	$(CXX) $(CXXFLAGS) -c $< -o $@

# ========================================
# Run Targets
# ========================================
run: $(TEMU_TARGET)
	@./$(TEMU_TARGET) $(USER_PROGRAM)

# ========================================
# Clean Targets
# ========================================
clean:
	rm -rf $(BUILD_DIR)
	$(MAKE) -C $(SC_DIR) clean
	rm -f log.txt trace.txt *.bin

# ========================================
# Help Target
# ========================================
help:
	@echo "TEMU Build System"
	@echo "================="
	@echo "Targets:"
	@echo "  all     - Clean and build TEMU"
	@echo "  gui     - Build TEMU (same as all)"
	@echo "  run     - Run TEMU with USER_PROGRAM"
	@echo "  clean   - Clean all build artifacts"
	@echo "  help    - Show this help message"
	@echo ""
	@echo "Examples:"
	@echo "  make gui                           - Build TEMU"
	@echo "  make run USER_PROGRAM=test.bin     - Run with test program"
	@echo "  make DEBUG=true                    - Build with debug symbols"
	@echo ""
	@echo "Usage workflow:"
	@echo "  1. cd loongarch_sc && make && cd .."
	@echo "  2. make gui"
	@echo "  3. ./build/temu loongarch_sc/build/add_w --gui"
