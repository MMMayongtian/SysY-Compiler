.PHONY:pre, lexer, ast-gcc, ast-llvm, cfg, ir-gcc, ir-llvm, asm, obj, exe, antiobj, antiexe

pre:
	gcc toComplie.c -E -o toComplie.i
    
lexer:
	clang -E -Xclang -dump-tokens toComplie.c

# 生成`toComplie.c.t.original`
ast-gcc:
	gcc -fdump-tree-original-raw toComplie.c

# 生成`toComplie.ll`
ast-llvm:
	clang -E -Xclang -ast-dump toComplie.c

# 会生成多个阶段的文件 (.dot)，可以被 graphviz 可视化，可以直接使用 vscode 插件
# (Graphviz (dot) language support for Visual Studio Code)。
# 此时的可读性还很强。`toComplie.c.011t.cfg.dot`
cfg:
	gcc -O0 -fdump-tree-all-graph toComplie.c

# 此时可读性不好，简要了解各阶段更迭过程即可
ir-gcc:
	gcc -O0 -fdump-rtl-all-graph toComplie.c
    
ir-llvm:
	clang -S -emit-llvm toComplie.c

asm:
	gcc -O0 -o toComplie.S -S -masm=att toComplie.i
    
obj:
	gcc -O0 -c -o toComplie.o toComplie.S
    
antiobj:
	objdump -d toComplie.o > toComplie-anti-obj.S
	nm toComplie.o > toComplie-nm-obj.txt

exe:
	gcc -O0 -o toComplie toComplie.o

antiexe:
	objdump -d toComplie > toComplie-anti-exe.S
	nm toComplie > toComplie-nm-exe.txt

cleam:
	rm -rf *.c.*

clean-all:
	rm -rf *.c.* *.o *.S *.dot *.out *.txt *.ll *.i toComplie