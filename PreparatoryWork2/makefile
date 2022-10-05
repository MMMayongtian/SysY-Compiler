.PHONY:test,clean

gcc:
# 预处理   test.c → test.i
	gcc test.c -E -o test.i
# 生成arm格式目标代码   test.i → test.S
	arm-linux-gnueabihf-gcc test.i -S -o test.S
test:
	arm-linux-gnueabihf-gcc test.S -o test.out
	qemu-arm ./test.out
clean:
	rm -fr test.out test.i test.S 