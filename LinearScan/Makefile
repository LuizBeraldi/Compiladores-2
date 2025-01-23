FLEX = flex
BISON = bison
CC = gcc
CFLAGS = 

PROGRAMA = linearscan
LEXICO = lexico.l
SINTATICO = sintatico.y

OBJS = lista.o

$(PROGRAMA): $(OBJS) $(LEXICO) $(SINTATICO) 
	$(FLEX) -o lex.yy.c $(LEXICO)
	$(BISON) -o sintatico.tab.c -d $(SINTATICO) 
	$(CC) -g *.c $(CFLAGS) -o $(PROGRAMA) -lm

list.o: list.c lista.h
	$(CC) -c lista.c $(CFLAGS)

clear:
	rm -f sintatico.tab.c
	rm -f lex.yy.c
	rm -f $(PROGRAMA)
	rm -f *.o