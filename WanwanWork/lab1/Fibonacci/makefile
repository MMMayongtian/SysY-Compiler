.PHONY:pre, lexer, ast-gcc, ast-llvm, cfg, ir-gcc, ir-llvm, asm, obj, exe, antiobj, antiexe,ctoll,lltoe

pre:
	gcc test.c -E -o test.i
    
lexer:
	clang -E -Xclang -dump-tokens test.c
# 生成`test.c.t.original`
ast-gcc:
	gcc -fdump-tree-original-raw test.c

# 生成`test.ll`
ast-llvm:
	clang -E -Xclang -ast-dump test.c

# 会生成多个阶段的文件 (.dot)，可以被 graphviz 可视化，可以直接使用 vscode 插件
# (Graphviz (dot) language support for Visual Studio Code)。
# 此时的可读性还很强。`test.c.011t.cfg.dot`
cfg:
	gcc -O0 -fdump-tree-all-graph test.c

# 此时可读性不好，简要了解各阶段更迭过程即可
ir-gcc:
	gcc -O0 -fdump-rtl-all-graph test.c
    
ir-llvm:
	clang -S -emit-llvm test.c

asm:
	gcc -O0 -o test.S -S -masm=att test.i
    
obj:
	gcc -O0 -c -o test.o test.S
    
antiobj:
	objdump -dump test.o > test-anti-obj.S
	nm test.o > test-nm-obj.txt

exe:
	gcc -O0 -o test test.o

antiexe:
	objdump -d test > test-anti-exe.S
	nm test > test-nm-exe.txt

cleam:
	rm -rf *.cpp.*


clean-all:
	rm -rf *.c.* *.o *.S *.dot *.out *.txt *.ll *.i test
#自加
ctoll:
	clang -emit-llvm -S test.c -o test.ll
lltoe:
	clang test.ll sylib.c -o test