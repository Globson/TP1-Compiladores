all: lex.l 
	flex lex.l 
	gcc lex.yy.c
lex2: lex2.l
	flex lex2.l 
	gcc lex.yy.c
run: a.out
	./a.out