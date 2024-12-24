%option noyywrap
%option yylineno

%{
#include "ast.h"
#include "sintatico.tab.h"
extern YYSTYPE yylval;

int yycolumn = 1;

void addUniao(int tipo){
    yylval.token.valor = strdup(yytext);
    yylval.token.tipo = tipo;
    yylval.token.linha = yylineno;
    yylval.token.coluna = yycolumn;
    yycolumn += yyleng;
}

%}

%%

<<EOF>> { return MyEOF; }
"AST -->" { }

"GLOBAL"        { addUniao(GLOBAL); return GLOBAL;                              }
"VARIABLE"      { addUniao(VARIABLE); return VARIABLE;                          }
"CONSTANT"      { addUniao(CONSTANT); return CONSTANT;                          }
"PARAMETER"     { addUniao(PARAMETER); return PARAMETER;                        }
"VALUE"         { addUniao(VALUE); return VALUE;                                }
"RETURN_TYPE"   { addUniao(RETURN_TYPE); return RETURN_TYPE;                    }
"TYPE"          { addUniao(TYPE); return TYPE;                                  }
"void"          { addUniao(VOID); return VOID;                                  }
"int"           { addUniao(INT); return INT;                                    }
"char"          { addUniao(CHAR); return CHAR;                                  }
"FUNCTION"      { addUniao(FUNCTION); return FUNCTION;                          }
"END_FUNCTION"  { addUniao(END_FUNCTION); return END_FUNCTION;                  }
"RETURN"        { addUniao(RETURN); return RETURN;                              }
"DO_WHILE"      { addUniao(DO_WHILE); return DO_WHILE;                          }
"WHILE"         { addUniao(WHILE); return WHILE;                                }
"FOR"           { addUniao(FOR); return FOR;                                    }
"IF"            { addUniao(IF); return IF;                                      }
"PRINTF"        { addUniao(PRINTF); return PRINTF;                              }
"SCANF"         { addUniao(SCANF); return SCANF;                                }
"EXIT"          { addUniao(EXIT); return EXIT;                                  }
"+"             { addUniao(PLUS); return PLUS;                                  }
"-"             { addUniao(MINUS); return MINUS;                                }
"*"             { addUniao(MULTIPLY); return MULTIPLY;                          }
"/"             { addUniao(DIVIDE); return DIVIDE;                              }
"%"             { addUniao(REMAINDER); return REMAINDER;                        }
"++"            { addUniao(INC); return INC;                                    }
"--"            { addUniao(DEC); return DEC;                                    }
"&"             { addUniao(BITWISE_AND); return BITWISE_AND;                    }
"|"             { addUniao(BITWISE_OR); return BITWISE_OR;                      }
"~"             { addUniao(BITWISE_NOT); return BITWISE_NOT;                    }
"^"             { addUniao(BITWISE_XOR); return BITWISE_XOR;                    }
"!"             { addUniao(NOT); return NOT;                                    }
"&&"            { addUniao(LOGICAL_AND); return LOGICAL_AND;                    }
"||"            { addUniao(LOGICAL_OR); return LOGICAL_OR;                      }
"=="            { addUniao(EQUAL); return EQUAL;                                }
"!="            { addUniao(NOT_EQUAL); return NOT_EQUAL;                        }
"<"             { addUniao(LESS_THAN); return LESS_THAN;                        }
">"             { addUniao(GREATER_THAN); return GREATER_THAN;                  }
"<="            { addUniao(LESS_EQUAL); return LESS_EQUAL;                      }
">="            { addUniao(GREATER_EQUAL); return GREATER_EQUAL;                }
">>"            { addUniao(R_SHIFT); return R_SHIFT;                            }
"<<"            { addUniao(L_SHIFT); return L_SHIFT;                            }
"="             { addUniao(ASSIGN); return ASSIGN;                              }
"+="            { addUniao(ADD_ASSIGN); return ADD_ASSIGN;                      }
"-="            { addUniao(MINUS_ASSIGN); return MINUS_ASSIGN;                  }
";"             { addUniao(SEMICOLON); return SEMICOLON;                        }
","             { addUniao(COMMA); return COMMA;                                }
":"             { addUniao(COLON); return COLON;                                }
"("             { addUniao(L_PAREN); return L_PAREN;                            }
")"             { addUniao(R_PAREN); return R_PAREN;                            }
"["             { addUniao(L_SQUARE_BRACKET); return L_SQUARE_BRACKET;          }
"]"             { addUniao(R_SQUARE_BRACKET); return R_SQUARE_BRACKET;          }
"?"             { addUniao(TERNARY_CONDITIONAL); return TERNARY_CONDITIONAL;    }

\"([^\\\"]|\\.)*\"  { addUniao(STRING); return STRING;  }
" "                 { yycolumn += yyleng;               }
\n                  { yycolumn = 1;                     }
\t                  { yycolumn += 4;                    }

(_*[a-zA-Z][a-zA-Z0-9_]*)   { addUniao(ID); return ID;                  }
"'"(\\.|[^\\']){1}"'"       { addUniao(CHARACTER); return CHARACTER;    }
[0-9]+                      { addUniao(NUM_INT); return NUM_INT;        }

. { printf("Erro '%s' [%d][%d] \n", yytext, yylineno, yycolumn); }

%%