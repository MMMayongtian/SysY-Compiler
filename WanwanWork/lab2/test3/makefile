.PHONY:main,clean

gcc:
# 预处理   main.c → main.i
	gcc main.c -E -o main.i
# 生成arm格式目标代码   main.i → main.S
	arm-linux-gnueabihf-gcc main.i -S -o main.S
test:
	arm-linux-gnueabihf-gcc main.S sylib.c -o main.out
	qemu-arm ./main.out
clean:
	rm -fr main.out main.i main.S 