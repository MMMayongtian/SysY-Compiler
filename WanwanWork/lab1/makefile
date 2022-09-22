.PHONY:pre, lexer, ast-gcc, ast-llvm, cfg, ir-gcc, ir-llvm, asm, obj, exe, antiobj, antiexe

pre:
	gcc main.cpp -E -o main.i
    
lexer:
	clang -E -Xclang -dump-tokens main.cpp
# 生成`main.c.t.original`
ast-gcc:
	gcc -fdump-tree-original-raw main.cpp

# 生成`main.ll`
ast-llvm:
	clang -E -Xclang -ast-dump main.cpp

# 会生成多个阶段的文件 (.dot)，可以被 graphviz 可视化，可以直接使用 vscode 插件
# (Graphviz (dot) language support for Visual Studio Code)。
# 此时的可读性还很强。`main.c.011t.cfg.dot`
cfg:
	gcc -O0 -fdump-tree-all-graph main.cpp

# 此时可读性不好，简要了解各阶段更迭过程即可
ir-gcc:
	gcc -O0 -fdump-rtl-all-graph main.cpp
    
ir-llvm:
	clang -S -emit-llvm main.cpp

asm:
	gcc -O0 -o main.S -S -masm=att main.i
    
obj:
	gcc -O0 -c -o main.o main.S
    
antiobj:
	objdump -dump main.o > main-anti-obj.S
	nm main.o > main-nm-obj.txt

exe:
	gcc -O0 -o main main.o

antiexe:
	objdump -d main > main-anti-exe.S
	nm main > main-nm-exe.txt

cleam:
	rm -rf *.cpp.*

clean-all:
	rm -rf *.cpp.* *.o *.S *.dot *.out *.txt *.ll *.i main