FLEX = flex
BISON = bison
CC = gcc
CFLAGS_BISON = -Wno-unused-function
CFLAGS = -Wall

PROGRAMA = dcmat
LEXICO = lexico.l
SINTATICO = sintatico.y

OBJS = expressao.o hash.o grafico.o config.o

$(PROGRAMA): $(OBJS) $(LEXICO) $(SINTATICO)
	$(FLEX) -o lex.yy.c $(LEXICO)
	$(BISON) -o sintatico.tab.c -d $(SINTATICO)
	$(CC) -g *.c $(CFLAGS_BISON) -o $(PROGRAMA) -lm

expressao.o: expressao.c expressao.h
	$(CC) $(CFLAGS) -c expressao.c

hash.o: hash.c hash.h
	$(CC) $(CFLAGS) -c hash.c

grafico.o: grafico.c grafico.h
	$(CC) $(CFLAGS) -c grafico.c

config.o: config.c config.h
	$(CC) $(CFLAGS) -c config.c

clear:
	rm -f sintatico.tab.c
	rm -f lex.yy.c
	rm -f $(PROGRAMA)
	rm -f diff.txt
	rm -f *.o