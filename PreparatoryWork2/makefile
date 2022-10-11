.PHONY:gcc,test,arm,clean

gcc:
# 预处理   mToArm.c → mToArm.i
	gcc mToArm.c -E -o mToArm.i
# 生成arm格式目标代码   mToArm.i → mToArm.S
	arm-linux-gnueabihf-gcc mToArm.i -S -o mToArm.S
test:
	gcc test.c -E -o test.i
	arm-linux-gnueabihf-gcc test.i -S -o test.S

run-example:
	arm-linux-gnueabihf-gcc example.S sylib.c -o example.out
	qemu-arm ./example.out

run-test:
	arm-linux-gnueabihf-gcc test.S sylib.c -o test.out
	qemu-arm ./test.out

arm:
	arm-linux-gnueabihf-gcc arm_assembly.S sylib.c -o arm_assembly.out
	qemu-arm ./arm_assembly.out
clean:
	rm -fr arm_assembly.out test.i test.out example.out