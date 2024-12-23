%option noyywrap
%option yylineno

%{

#include "expressao.h"
#include "sintatico.tab.h"
extern YYSTYPE yylval;

int erroSintaxe = 0, tokenErradoLinha, tokenErradoColuna;
char tokenErrado[32] = "";

void tokenErradoFunc() {
    erroSintaxe = 1;
    strcpy(tokenErrado, yytext);
}


%}

%%

\n { return EOL; }

" " { }
"+"                      { yylval.valor = strdup(yytext); return PLUS;             }
"-"                      { yylval.valor = strdup(yytext); return MINUS;            }
"*"                      { yylval.valor = strdup(yytext); return MULTIPLY;         }
"/"                      { yylval.valor = strdup(yytext); return DIVIDE;           }
"^"                      { yylval.valor = strdup(yytext); return POWER;            }
"%"                      { yylval.valor = strdup(yytext); return REMAINDER;        }
"="                      { yylval.valor = strdup(yytext); return ASSIGN;           }
";"                      { yylval.valor = strdup(yytext); return SEMICOLON;        }
","                      { yylval.valor = strdup(yytext); return COMMA;            }
":"                      { yylval.valor = strdup(yytext); return COLON;            }
":="                     { yylval.valor = strdup(yytext); return COLON_ASSIGN;     }
"("                      { yylval.valor = strdup(yytext); return L_PAREN;          }
")"                      { yylval.valor = strdup(yytext); return R_PAREN;          }
"["                      { yylval.valor = strdup(yytext); return L_SQUARE_BRACKET; }
"]"                      { yylval.valor = strdup(yytext); return R_SQUARE_BRACKET; }

"about"                  { yylval.valor = strdup(yytext); return ABOUT;            }
"abs"                    { yylval.valor = strdup(yytext); return ABS;              }
"axis"                   { yylval.valor = strdup(yytext); return AXIS;             }
"connect_dots"           { yylval.valor = strdup(yytext); return CONNECT_DOTS;     }
"cos"                    { yylval.valor = strdup(yytext); return COS;              }
"determinant"            { yylval.valor = strdup(yytext); return DETERMINANT;      }
"erase"                  { yylval.valor = strdup(yytext); return ERASE;            }
"e"|"E"                  { yylval.valor = strdup(yytext); return EULER;            }
"float"                  { yylval.valor = strdup(yytext); return FLOAT;            }
"h_view"                 { yylval.valor = strdup(yytext); return H_VIEW;           }
"integral_steps"         { yylval.valor = strdup(yytext); return INTEGRAL_STEPS;   }
"integrate"              { yylval.valor = strdup(yytext); return INTEGRATE;        }
"linear_system"          { yylval.valor = strdup(yytext); return LINEAR_SYSTEM;    }
"matrix"                 { yylval.valor = strdup(yytext); return MATRIX;           }
"off"                    { yylval.valor = strdup(yytext); return OFF;              }
"on"                     { yylval.valor = strdup(yytext); return ON;               }
("p"|"P")("i"|"I")       { yylval.valor = strdup(yytext); return PI;               }
"plot"                   { yylval.valor = strdup(yytext); return PLOT;             }
"precision"              { yylval.valor = strdup(yytext); return PRECISION;        }
"quit"                   { yylval.valor = strdup(yytext); return QUIT;             }
"reset"                  { yylval.valor = strdup(yytext); return RESET;            }
"rpn"                    { yylval.valor = strdup(yytext); return RPN;              }
"sen"                    { yylval.valor = strdup(yytext); return SEN;              }
"set"                    { yylval.valor = strdup(yytext); return SET;              }
"settings"               { yylval.valor = strdup(yytext); return SETTINGS;         }
"show"                   { yylval.valor = strdup(yytext); return SHOW;             }
"solve"                  { yylval.valor = strdup(yytext); return SOLVE;            }
"sum"                    { yylval.valor = strdup(yytext); return SUM;              }
"symbols"                { yylval.valor = strdup(yytext); return SYMBOLS;          }
"tan"                    { yylval.valor = strdup(yytext); return TAN;              }
"v_view"                 { yylval.valor = strdup(yytext); return V_VIEW;           }

"x"                      { yylval.valor = strdup(yytext); return VAR_X;            }

([a-zA-Z]+[_a-zA-Z0-9]*) { yylval.valor = strdup(yytext); return ID;               }
([0-9]+"."[0-9]+)        { yylval.valor = strdup(yytext); return NUM_FLOAT;        }
[0-9]+                   { yylval.valor = strdup(yytext); return NUM_INT;          }

.                        { printf("\nInvalid Symbol: %s\n\n", yytext);             }

%%