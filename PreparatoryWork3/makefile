.PHONY:test,clean
test:
	bison -d Yacc.y
	gcc -o Yacc Yacc.tab.c
run:
	./Yacc
clean:
	rm -fr *.tab.c *.tab.h Yacc