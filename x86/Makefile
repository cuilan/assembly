# Makefile for NASM project

# 可执行文件和源文件的路径
TARGET = bin/hello
SRC_DIR = src
OBJ_DIR = obj
INC_DIR = include

# 编译器和链接器
NASM = nasm
LD = ld

# 编译选项
NASMFLAGS = -f elf64 -I $(INC_DIR)/  # -I 指定包含头文件的目录
LDFLAGS = -m elf_x86_64

# 所有的目标文件
OBJS = $(OBJ_DIR)/main.o $(OBJ_DIR)/utils.o

# 默认构建目标
all: $(TARGET)

# 构建可执行文件
$(TARGET): $(OBJS)
	$(LD) $(LDFLAGS) -o $@ $^

# 编译汇编源文件到目标文件
$(OBJ_DIR)/%.o: $(SRC_DIR)/%.asm
	$(NASM) $(NASMFLAGS) -o $@ $<

# 清理构建文件
clean:
	rm -f $(OBJ_DIR)/*.o $(TARGET)

.PHONY: all clean
