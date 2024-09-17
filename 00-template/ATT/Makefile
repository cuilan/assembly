BINARY="test"
VERSION=1.0.0
BUILD=`date +%FT%T%z`

default: build

# as 编译 ld 链接
build: 
	@as exit.s -o exit.o
	@ld exit.o -o exit

run:
	@exit

# otool 查看 Mach-O 可执行文件
view:
	@otool -v -t exit

test:

clean:
	@rm -rf exit.o
	@rm -rf exit

.PHONY: default build run view test clean