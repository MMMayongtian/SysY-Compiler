.PHONY:gcc,test,ARM,clean

gcc:
# 预处理   mToArm.c → mToArm.i
	gcc mToArm.c -E -o mToArm.i
# 生成arm格式目标代码   mToArm.i → mToArm.S
	arm-linux-gnueabihf-gcc mToArm.i -S -o mToArm.S
test:
	gcc test.c -E -o test.i
	arm-linux-gnueabihf-gcc test.i -S -o test.S

run-example:
	arm-linux-gnueabihf-gcc example.S -o example.out
	qemu-arm ./example.out

run-test:
	arm-linux-gnueabihf-gcc test.S sylib.c -o test.out
	qemu-arm ./test.out

ARM:
	arm-linux-gnueabihf-gcc mToArm.S -o mToArm.out
	qemu-arm ./mToArm.out
clean:
	rm -fr mToArm.out mToArm.i mToArm.S mToArm.o
clean-test:
	rm -fr test.i test.S example.out