.PHONY:test,clean,run,y1,y2,y
test:
	bison -d Yacc.y
	gcc -o Yacc Yacc.tab.c
run:
	./Yacc
clean:
	rm -fr *.tab.c *.tab.h Yacc

y1:
	bison -d Yacc1.y
	gcc -o Yacc1 Yacc1.tab.c
	./Yacc1
y2:
	bison -d Yacc2.y
	gcc -o Yacc2 Yacc2.tab.c
	./Yacc2
y:
	bison -d Yacc.y
	gcc -o Yacc Yacc.tab.c
	./Yacc