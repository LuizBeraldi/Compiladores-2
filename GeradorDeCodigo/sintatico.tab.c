/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison implementation for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30802

/* Bison version string.  */
#define YYBISON_VERSION "3.8.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 1 "sintatico.y"

#include "asm.h"
#include "ast.h"

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "hash.h"

extern int yylex();
void yyerror(void *s);

int isFuncOrArray = -1;
int pointerCount = 0;
int paramCount = 0;

void **globalHash = NULL;
void **currentHash = NULL;

Funcao *functionList = NULL;

Programa *AST = NULL;


#line 96 "sintatico.tab.c"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

#include "sintatico.tab.h"
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_MyEOF = 3,                      /* MyEOF  */
  YYSYMBOL_GLOBAL = 4,                     /* GLOBAL  */
  YYSYMBOL_VARIABLE = 5,                   /* VARIABLE  */
  YYSYMBOL_CONSTANT = 6,                   /* CONSTANT  */
  YYSYMBOL_PARAMETER = 7,                  /* PARAMETER  */
  YYSYMBOL_VALUE = 8,                      /* VALUE  */
  YYSYMBOL_RETURN_TYPE = 9,                /* RETURN_TYPE  */
  YYSYMBOL_TYPE = 10,                      /* TYPE  */
  YYSYMBOL_VOID = 11,                      /* VOID  */
  YYSYMBOL_INT = 12,                       /* INT  */
  YYSYMBOL_CHAR = 13,                      /* CHAR  */
  YYSYMBOL_FUNCTION = 14,                  /* FUNCTION  */
  YYSYMBOL_END_FUNCTION = 15,              /* END_FUNCTION  */
  YYSYMBOL_RETURN = 16,                    /* RETURN  */
  YYSYMBOL_DO_WHILE = 17,                  /* DO_WHILE  */
  YYSYMBOL_WHILE = 18,                     /* WHILE  */
  YYSYMBOL_FOR = 19,                       /* FOR  */
  YYSYMBOL_IF = 20,                        /* IF  */
  YYSYMBOL_PRINTF = 21,                    /* PRINTF  */
  YYSYMBOL_SCANF = 22,                     /* SCANF  */
  YYSYMBOL_EXIT = 23,                      /* EXIT  */
  YYSYMBOL_PLUS = 24,                      /* PLUS  */
  YYSYMBOL_MINUS = 25,                     /* MINUS  */
  YYSYMBOL_MULTIPLY = 26,                  /* MULTIPLY  */
  YYSYMBOL_DIVIDE = 27,                    /* DIVIDE  */
  YYSYMBOL_REMAINDER = 28,                 /* REMAINDER  */
  YYSYMBOL_INC = 29,                       /* INC  */
  YYSYMBOL_DEC = 30,                       /* DEC  */
  YYSYMBOL_ADD_ASSIGN = 31,                /* ADD_ASSIGN  */
  YYSYMBOL_MINUS_ASSIGN = 32,              /* MINUS_ASSIGN  */
  YYSYMBOL_ASSIGN = 33,                    /* ASSIGN  */
  YYSYMBOL_EQUAL = 34,                     /* EQUAL  */
  YYSYMBOL_NOT_EQUAL = 35,                 /* NOT_EQUAL  */
  YYSYMBOL_LESS_THAN = 36,                 /* LESS_THAN  */
  YYSYMBOL_LESS_EQUAL = 37,                /* LESS_EQUAL  */
  YYSYMBOL_GREATER_THAN = 38,              /* GREATER_THAN  */
  YYSYMBOL_GREATER_EQUAL = 39,             /* GREATER_EQUAL  */
  YYSYMBOL_BITWISE_AND = 40,               /* BITWISE_AND  */
  YYSYMBOL_BITWISE_OR = 41,                /* BITWISE_OR  */
  YYSYMBOL_BITWISE_XOR = 42,               /* BITWISE_XOR  */
  YYSYMBOL_BITWISE_NOT = 43,               /* BITWISE_NOT  */
  YYSYMBOL_LOGICAL_AND = 44,               /* LOGICAL_AND  */
  YYSYMBOL_LOGICAL_OR = 45,                /* LOGICAL_OR  */
  YYSYMBOL_NOT = 46,                       /* NOT  */
  YYSYMBOL_TERNARY_CONDITIONAL = 47,       /* TERNARY_CONDITIONAL  */
  YYSYMBOL_COLON = 48,                     /* COLON  */
  YYSYMBOL_R_SHIFT = 49,                   /* R_SHIFT  */
  YYSYMBOL_L_SHIFT = 50,                   /* L_SHIFT  */
  YYSYMBOL_L_PAREN = 51,                   /* L_PAREN  */
  YYSYMBOL_R_PAREN = 52,                   /* R_PAREN  */
  YYSYMBOL_L_SQUARE_BRACKET = 53,          /* L_SQUARE_BRACKET  */
  YYSYMBOL_R_SQUARE_BRACKET = 54,          /* R_SQUARE_BRACKET  */
  YYSYMBOL_COMMA = 55,                     /* COMMA  */
  YYSYMBOL_SEMICOLON = 56,                 /* SEMICOLON  */
  YYSYMBOL_NUM_INT = 57,                   /* NUM_INT  */
  YYSYMBOL_STRING = 58,                    /* STRING  */
  YYSYMBOL_CHARACTER = 59,                 /* CHARACTER  */
  YYSYMBOL_ID = 60,                        /* ID  */
  YYSYMBOL_YYACCEPT = 61,                  /* $accept  */
  YYSYMBOL_AstParse = 62,                  /* AstParse  */
  YYSYMBOL_Declaracoes = 63,               /* Declaracoes  */
  YYSYMBOL_DeclaraDefine = 64,             /* DeclaraDefine  */
  YYSYMBOL_Sinal = 65,                     /* Sinal  */
  YYSYMBOL_DeclaraVarGlobal = 66,          /* DeclaraVarGlobal  */
  YYSYMBOL_67_1 = 67,                      /* $@1  */
  YYSYMBOL_DeclaraFuncao = 68,             /* DeclaraFuncao  */
  YYSYMBOL_69_2 = 69,                      /* $@2  */
  YYSYMBOL_70_3 = 70,                      /* $@3  */
  YYSYMBOL_71_4 = 71,                      /* $@4  */
  YYSYMBOL_ArrayCheck = 72,                /* ArrayCheck  */
  YYSYMBOL_Expression = 73,                /* Expression  */
  YYSYMBOL_BinaryExpr = 74,                /* BinaryExpr  */
  YYSYMBOL_TernaryExpr = 75,               /* TernaryExpr  */
  YYSYMBOL_UnaryExpr = 76,                 /* UnaryExpr  */
  YYSYMBOL_Ops = 77,                       /* Ops  */
  YYSYMBOL_Primaria = 78,                  /* Primaria  */
  YYSYMBOL_PosFixa = 79,                   /* PosFixa  */
  YYSYMBOL_ArrayCall = 80,                 /* ArrayCall  */
  YYSYMBOL_FunctionCall = 81,              /* FunctionCall  */
  YYSYMBOL_ParamExpression = 82,           /* ParamExpression  */
  YYSYMBOL_VarType = 83,                   /* VarType  */
  YYSYMBOL_Parameters = 84,                /* Parameters  */
  YYSYMBOL_85_5 = 85,                      /* $@5  */
  YYSYMBOL_DeclaracoesLocais = 86,         /* DeclaracoesLocais  */
  YYSYMBOL_87_6 = 87,                      /* $@6  */
  YYSYMBOL_Pointers = 88,                  /* Pointers  */
  YYSYMBOL_ListaComandos = 89,             /* ListaComandos  */
  YYSYMBOL_Comandos = 90,                  /* Comandos  */
  YYSYMBOL_AuxElse = 91,                   /* AuxElse  */
  YYSYMBOL_AuxPrint = 92,                  /* AuxPrint  */
  YYSYMBOL_AuxReturn = 93,                 /* AuxReturn  */
  YYSYMBOL_SemicolonDeSchrodinger = 94     /* SemicolonDeSchrodinger  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;




#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_uint8 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
#if defined __GNUC__ && ! defined __ICC && 406 <= __GNUC__ * 100 + __GNUC_MINOR__
# if __GNUC__ * 100 + __GNUC_MINOR__ < 407
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")
# else
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# endif
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if !defined yyoverflow

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* !defined yyoverflow */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  12
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   401

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  61
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  34
/* YYNRULES -- Number of rules.  */
#define YYNRULES  96
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  218

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   315


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,   129,   129,   136,   137,   138,   139,   141,   153,   154,
     155,   157,   157,   168,   168,   168,   168,   187,   192,   194,
     195,   196,   197,   198,   200,   205,   211,   216,   221,   227,
     228,   229,   230,   231,   232,   233,   234,   235,   236,   237,
     238,   239,   240,   241,   242,   243,   244,   245,   246,   247,
     248,   249,   250,   251,   253,   258,   289,   294,   309,   310,
     311,   313,   318,   322,   326,   330,   332,   333,   334,   336,
     336,   353,   355,   355,   364,   366,   367,   369,   377,   379,
     383,   387,   391,   395,   399,   403,   407,   411,   415,   417,
     418,   420,   424,   426,   427,   429,   430
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if YYDEBUG || 0
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "MyEOF", "GLOBAL",
  "VARIABLE", "CONSTANT", "PARAMETER", "VALUE", "RETURN_TYPE", "TYPE",
  "VOID", "INT", "CHAR", "FUNCTION", "END_FUNCTION", "RETURN", "DO_WHILE",
  "WHILE", "FOR", "IF", "PRINTF", "SCANF", "EXIT", "PLUS", "MINUS",
  "MULTIPLY", "DIVIDE", "REMAINDER", "INC", "DEC", "ADD_ASSIGN",
  "MINUS_ASSIGN", "ASSIGN", "EQUAL", "NOT_EQUAL", "LESS_THAN",
  "LESS_EQUAL", "GREATER_THAN", "GREATER_EQUAL", "BITWISE_AND",
  "BITWISE_OR", "BITWISE_XOR", "BITWISE_NOT", "LOGICAL_AND", "LOGICAL_OR",
  "NOT", "TERNARY_CONDITIONAL", "COLON", "R_SHIFT", "L_SHIFT", "L_PAREN",
  "R_PAREN", "L_SQUARE_BRACKET", "R_SQUARE_BRACKET", "COMMA", "SEMICOLON",
  "NUM_INT", "STRING", "CHARACTER", "ID", "$accept", "AstParse",
  "Declaracoes", "DeclaraDefine", "Sinal", "DeclaraVarGlobal", "$@1",
  "DeclaraFuncao", "$@2", "$@3", "$@4", "ArrayCheck", "Expression",
  "BinaryExpr", "TernaryExpr", "UnaryExpr", "Ops", "Primaria", "PosFixa",
  "ArrayCall", "FunctionCall", "ParamExpression", "VarType", "Parameters",
  "$@5", "DeclaracoesLocais", "$@6", "Pointers", "ListaComandos",
  "Comandos", "AuxElse", "AuxPrint", "AuxReturn", "SemicolonDeSchrodinger", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-127)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-89)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
       2,    16,   -25,   -21,    28,    27,     2,     2,     2,   -16,
     -27,   -26,  -127,  -127,  -127,  -127,  -127,   -24,    29,  -127,
      25,   -10,    30,    -8,   -14,    -7,     6,  -127,  -127,   -15,
       6,  -127,  -127,  -127,  -127,  -127,  -127,    17,    17,    17,
      -9,  -127,  -127,   -12,  -127,    39,    -6,    -1,    44,    -9,
      -3,     4,   185,  -127,    40,    -2,     3,     5,     9,    11,
      12,    13,    14,    15,  -127,  -127,  -127,  -127,  -127,  -127,
    -127,  -127,  -127,  -127,  -127,  -127,  -127,  -127,  -127,  -127,
    -127,  -127,  -127,  -127,  -127,  -127,  -127,    18,  -127,  -127,
     304,  -127,  -127,  -127,   -31,    19,  -127,  -127,  -127,    20,
    -127,  -127,    46,    19,    22,    57,   341,   230,   341,   341,
     341,    21,    26,   341,   341,   341,   267,    24,   304,   341,
    -127,  -127,  -127,  -127,   230,   341,  -127,   185,     6,    32,
    -127,    31,    23,    34,    35,    36,    37,    38,    49,    41,
     304,    -4,   304,  -127,  -127,    33,  -127,   -43,  -127,  -127,
       6,   230,   341,   230,   341,   230,   341,    50,    58,   230,
     341,  -127,  -127,  -127,  -127,  -127,   341,    17,  -127,  -127,
      51,    52,    53,    54,    37,    19,    59,  -127,    62,    61,
      -9,    17,    19,    19,   341,   230,    70,  -127,   230,     8,
     341,  -127,    39,    -9,   230,   230,    72,  -127,    19,  -127,
      78,  -127,  -127,    44,  -127,  -127,   230,   230,    81,  -127,
      82,  -127,    19,    19,   230,   230,  -127,  -127
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       6,     0,     0,     0,     0,     0,     6,     6,     6,     0,
       0,     0,     1,     2,     3,     4,     5,     0,     0,    13,
       0,     0,     0,     0,    10,     0,     0,     8,     9,     0,
       0,    68,    66,    67,    11,     7,    14,    76,    76,    76,
      18,    15,    75,     0,    12,    71,     0,     0,    74,    18,
       0,     0,    78,    17,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    29,    30,    31,    32,    33,    50,
      51,    48,    49,    47,    39,    40,    41,    42,    43,    44,
      34,    35,    36,    53,    37,    38,    52,     0,    45,    46,
      65,    54,    56,    55,    60,    96,    19,    20,    21,     0,
      22,    23,     0,    96,     0,     0,    94,    88,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    65,     0,
      57,    58,    59,    95,    88,     0,    16,    78,     0,     0,
      93,     0,     0,     0,     0,     0,    92,     0,     0,     0,
      65,     0,    65,    63,    62,     0,    87,     0,    77,    69,
       0,    88,     0,    88,     0,    88,     0,     0,     0,    88,
       0,    64,    27,    28,    61,    26,     0,    76,    72,    85,
       0,     0,     0,    90,    92,    96,     0,    86,     0,     0,
      18,    76,    96,    96,     0,    88,     0,    91,    88,     0,
       0,    24,    71,    18,    88,    88,     0,    89,    96,    83,
       0,    25,    70,    74,    80,    81,    88,    88,     0,    73,
       0,    79,    96,    96,    88,    88,    84,    82
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int8 yypgoto[] =
{
    -127,  -127,     7,  -127,  -127,  -127,  -127,  -127,  -127,  -127,
    -127,   -49,    10,  -127,  -127,  -127,  -127,  -127,  -127,  -127,
     -22,  -111,   -29,  -119,  -127,  -126,  -127,   -35,   -41,  -100,
    -127,   -69,  -127,  -101
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,     4,     5,     6,    29,     7,    37,     8,    22,    38,
      45,    44,    95,    96,    97,    98,    99,   100,   120,   121,
     101,   117,    34,    48,   167,    52,   181,    40,   102,   103,
     186,   157,   131,   124
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      53,    36,   127,    41,    42,   143,     1,   132,     2,   165,
      27,    28,   166,    14,    15,    16,     3,    31,    32,    33,
     118,     9,   119,    10,   146,   162,   163,    11,    12,   161,
      13,   143,    17,    18,    19,    23,    20,    21,    24,    25,
      26,    30,    35,    39,    43,    46,    47,    50,    49,    51,
     104,   169,    55,   171,   106,   173,   107,    54,   105,   177,
     108,   126,   109,   110,   111,   112,   113,   129,   200,   114,
     128,   125,   122,   202,   188,   123,   144,   209,   152,   136,
     150,   194,   195,   151,   137,   197,   148,   164,   199,   153,
     154,   155,   156,   158,   204,   205,   160,   207,   176,   149,
     116,   159,   175,   182,   183,   187,   210,   211,   184,   185,
     189,   214,   215,   191,   216,   217,   130,   190,   133,   134,
     135,   168,   198,   138,   139,   140,   142,   206,   142,   145,
     208,   192,   180,   212,   213,   147,     0,     0,     0,     0,
       0,     0,     0,     0,   203,     0,   193,     0,     0,     0,
     142,     0,   142,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   170,     0,   172,     0,   174,     0,     0,     0,
     178,     0,     0,     0,     0,     0,   179,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   196,     0,     0,     0,     0,     0,
     201,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    80,    81,    82,    83,    84,
      85,    86,    87,     0,    88,    89,    90,     0,     0,     0,
       0,   -88,    91,    92,    93,    94,    56,    57,    58,    59,
      60,    61,    62,    63,    64,    65,    66,    67,    68,    69,
      70,    71,    72,    73,    74,    75,    76,    77,    78,    79,
      80,    81,    82,    83,    84,    85,    86,    87,     0,    88,
      89,    90,     0,     0,     0,     0,     0,    91,    92,    93,
      94,    64,    65,    66,    67,    68,    69,    70,    71,    72,
      73,    74,    75,    76,    77,    78,    79,    80,    81,    82,
      83,    84,    85,    86,    87,     0,    88,    89,    90,   141,
       0,     0,   115,     0,    91,    92,    93,    94,    64,    65,
      66,    67,    68,    69,    70,    71,    72,    73,    74,    75,
      76,    77,    78,    79,    80,    81,    82,    83,    84,    85,
      86,    87,     0,    88,    89,    90,     0,     0,     0,   115,
       0,    91,    92,    93,    94,    64,    65,    66,    67,    68,
      69,    70,    71,    72,    73,    74,    75,    76,    77,    78,
      79,    80,    81,    82,    83,    84,    85,    86,    87,     0,
      88,    89,    90,     0,     0,     0,     0,     0,    91,    92,
      93,    94
};

static const yytype_int16 yycheck[] =
{
      49,    30,   103,    38,    39,   116,     4,   107,     6,    52,
      24,    25,    55,     6,     7,     8,    14,    11,    12,    13,
      51,     5,    53,    48,   124,    29,    30,    48,     0,   140,
       3,   142,    48,    60,    60,    10,    60,     8,    48,     9,
      48,    48,    57,    26,    53,    57,     7,    48,    54,     5,
      10,   151,    48,   153,    51,   155,    51,    60,    60,   159,
      51,    15,    51,    51,    51,    51,    51,    10,    60,    51,
      48,    51,    94,   192,   175,    56,    52,   203,    55,    58,
      48,   182,   183,    52,    58,   185,   127,    54,   188,    55,
      55,    55,    55,    55,   194,   195,    55,   198,    40,   128,
      90,    52,    52,    52,    52,   174,   206,   207,    55,    55,
      51,   212,   213,    52,   214,   215,   106,    55,   108,   109,
     110,   150,    52,   113,   114,   115,   116,    55,   118,   119,
      52,   180,   167,    52,    52,   125,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   193,    -1,   181,    -1,    -1,    -1,
     140,    -1,   142,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,   152,    -1,   154,    -1,   156,    -1,    -1,    -1,
     160,    -1,    -1,    -1,    -1,    -1,   166,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,   184,    -1,    -1,    -1,    -1,    -1,
     190,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    -1,    49,    50,    51,    -1,    -1,    -1,
      -1,    56,    57,    58,    59,    60,    16,    17,    18,    19,
      20,    21,    22,    23,    24,    25,    26,    27,    28,    29,
      30,    31,    32,    33,    34,    35,    36,    37,    38,    39,
      40,    41,    42,    43,    44,    45,    46,    47,    -1,    49,
      50,    51,    -1,    -1,    -1,    -1,    -1,    57,    58,    59,
      60,    24,    25,    26,    27,    28,    29,    30,    31,    32,
      33,    34,    35,    36,    37,    38,    39,    40,    41,    42,
      43,    44,    45,    46,    47,    -1,    49,    50,    51,    52,
      -1,    -1,    55,    -1,    57,    58,    59,    60,    24,    25,
      26,    27,    28,    29,    30,    31,    32,    33,    34,    35,
      36,    37,    38,    39,    40,    41,    42,    43,    44,    45,
      46,    47,    -1,    49,    50,    51,    -1,    -1,    -1,    55,
      -1,    57,    58,    59,    60,    24,    25,    26,    27,    28,
      29,    30,    31,    32,    33,    34,    35,    36,    37,    38,
      39,    40,    41,    42,    43,    44,    45,    46,    47,    -1,
      49,    50,    51,    -1,    -1,    -1,    -1,    -1,    57,    58,
      59,    60
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,     4,     6,    14,    62,    63,    64,    66,    68,     5,
      48,    48,     0,     3,    63,    63,    63,    48,    60,    60,
      60,     8,    69,    10,    48,     9,    48,    24,    25,    65,
      48,    11,    12,    13,    83,    57,    83,    67,    70,    26,
      88,    88,    88,    53,    72,    71,    57,     7,    84,    54,
      48,     5,    86,    72,    60,    48,    16,    17,    18,    19,
      20,    21,    22,    23,    24,    25,    26,    27,    28,    29,
      30,    31,    32,    33,    34,    35,    36,    37,    38,    39,
      40,    41,    42,    43,    44,    45,    46,    47,    49,    50,
      51,    57,    58,    59,    60,    73,    74,    75,    76,    77,
      78,    81,    89,    90,    10,    60,    51,    51,    51,    51,
      51,    51,    51,    51,    51,    55,    73,    82,    51,    53,
      79,    80,    81,    56,    94,    51,    15,    94,    48,    10,
      73,    93,    90,    73,    73,    73,    58,    58,    73,    73,
      73,    52,    73,    82,    52,    73,    90,    73,    89,    83,
      48,    52,    55,    55,    55,    55,    55,    92,    55,    52,
      55,    82,    29,    30,    54,    52,    55,    85,    83,    90,
      73,    90,    73,    90,    73,    52,    40,    90,    73,    73,
      88,    87,    52,    52,    55,    55,    91,    92,    94,    51,
      55,    52,    72,    88,    94,    94,    73,    90,    52,    90,
      60,    73,    84,    72,    90,    90,    55,    94,    52,    86,
      90,    90,    52,    52,    94,    94,    90,    90
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    61,    62,    63,    63,    63,    63,    64,    65,    65,
      65,    67,    66,    69,    70,    71,    68,    72,    72,    73,
      73,    73,    73,    73,    74,    75,    76,    76,    76,    77,
      77,    77,    77,    77,    77,    77,    77,    77,    77,    77,
      77,    77,    77,    77,    77,    77,    77,    77,    77,    77,
      77,    77,    77,    77,    78,    78,    78,    78,    79,    79,
      79,    80,    81,    82,    82,    82,    83,    83,    83,    85,
      84,    84,    87,    86,    86,    88,    88,    89,    89,    90,
      90,    90,    90,    90,    90,    90,    90,    90,    90,    91,
      91,    92,    92,    93,    93,    94,    94
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     2,     2,     2,     2,     0,     7,     1,     1,
       0,     0,    10,     0,     0,     0,    14,     4,     0,     1,
       1,     1,     1,     1,     6,     7,     4,     4,     4,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     2,     1,     1,
       0,     3,     3,     2,     3,     0,     1,     1,     1,     0,
      10,     0,     0,    10,     0,     2,     0,     3,     0,     9,
       8,     8,    12,     7,    11,     5,     5,     3,     0,     2,
       0,     3,     0,     1,     0,     1,     0
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYNOMEM         goto yyexhaustedlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)




# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  if (!yyvaluep)
    return;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  yy_symbol_value_print (yyo, yykind, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)]);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif






/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep)
{
  YY_USE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */

  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    YYNOMEM;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        YYNOMEM;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          YYNOMEM;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */


  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      goto yyerrlab1;
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2: /* AstParse: Declaracoes MyEOF  */
#line 129 "sintatico.y"
                            {
        Programa *ast = criarPrograma(globalHash, functionList, NULL);
        Funcao *aux = functionList;
        AST = ast;
        return 0;
    }
#line 1365 "sintatico.tab.c"
    break;

  case 3: /* Declaracoes: DeclaraDefine Declaracoes  */
#line 136 "sintatico.y"
                                       { }
#line 1371 "sintatico.tab.c"
    break;

  case 4: /* Declaracoes: DeclaraVarGlobal Declaracoes  */
#line 137 "sintatico.y"
                                   { }
#line 1377 "sintatico.tab.c"
    break;

  case 5: /* Declaracoes: DeclaraFuncao Declaracoes  */
#line 138 "sintatico.y"
                                { }
#line 1383 "sintatico.tab.c"
    break;

  case 6: /* Declaracoes: %empty  */
#line 139 "sintatico.y"
      { }
#line 1389 "sintatico.tab.c"
    break;

  case 7: /* DeclaraDefine: CONSTANT COLON ID VALUE COLON Sinal NUM_INT  */
#line 141 "sintatico.y"
                                                           {
        int valor = atoi((yyvsp[0].token).valor);
        if ((yyvsp[-1].sinalAux) == MINUS) {
            valor *= -1;
        }
        void *node = insertHash(globalHash, (yyvsp[-4].token).valor, INT, 0);
        setKind(node, VAR);
        setIsConstant(node);
        setAssign(node, valor); 
        setDefinicaoVariavelInt((yyvsp[-4].token).valor, valor);
    }
#line 1405 "sintatico.tab.c"
    break;

  case 8: /* Sinal: PLUS  */
#line 153 "sintatico.y"
             { (yyval.sinalAux) = PLUS; }
#line 1411 "sintatico.tab.c"
    break;

  case 9: /* Sinal: MINUS  */
#line 154 "sintatico.y"
            { (yyval.sinalAux) = MINUS; }
#line 1417 "sintatico.tab.c"
    break;

  case 10: /* Sinal: %empty  */
#line 155 "sintatico.y"
      { (yyval.sinalAux) = PLUS; }
#line 1423 "sintatico.tab.c"
    break;

  case 11: /* $@1: %empty  */
#line 157 "sintatico.y"
                                                              { pointerCount = 0; }
#line 1429 "sintatico.tab.c"
    break;

  case 12: /* DeclaraVarGlobal: GLOBAL VARIABLE COLON ID TYPE COLON VarType $@1 Pointers ArrayCheck  */
#line 157 "sintatico.y"
                                                                                                        {
        void *node = insertHash(globalHash, (yyvsp[-6].token).valor, (yyvsp[-3].token).type, pointerCount);
        if (!(yyvsp[0].dim)) {
            setKind(node, VAR);
        } else {
            setKind(node, VECTOR);
        }
        setDimensions(node, (yyvsp[0].dim));
        setIsGlobal(node);
    }
#line 1444 "sintatico.tab.c"
    break;

  case 13: /* $@2: %empty  */
#line 168 "sintatico.y"
                                 { currentHash = createHash(); }
#line 1450 "sintatico.tab.c"
    break;

  case 14: /* $@3: %empty  */
#line 168 "sintatico.y"
                                                                                           { pointerCount = 0; }
#line 1456 "sintatico.tab.c"
    break;

  case 15: /* $@4: %empty  */
#line 168 "sintatico.y"
                                                                                                                          { paramCount = 0; }
#line 1462 "sintatico.tab.c"
    break;

  case 16: /* DeclaraFuncao: FUNCTION COLON ID $@2 RETURN_TYPE COLON VarType $@3 Pointers $@4 Parameters DeclaracoesLocais ListaComandos END_FUNCTION  */
#line 168 "sintatico.y"
                                                                                                                                                                                                      {
        Funcao *func = criarFuncao(currentHash, (yyvsp[-7].token).type, pointerCount, (yyvsp[-11].token).valor, (yyvsp[-1].cmd), NULL);
        if (functionList) {
            Funcao *aux = functionList;
            while (aux->prox) {
                aux = aux->prox;
            }
            aux->prox = func;
        } else {
            functionList = func;
        }
        
        void *node = insertHash(globalHash, (yyvsp[-11].token).valor, (yyvsp[-7].token).type, pointerCount);
        setKind(node, FUNCTION);
        setQntdParams(node, paramCount);
        setParam(node, (yyvsp[-3].param));
        currentHash = NULL;
    }
#line 1485 "sintatico.tab.c"
    break;

  case 17: /* ArrayCheck: L_SQUARE_BRACKET NUM_INT R_SQUARE_BRACKET ArrayCheck  */
#line 187 "sintatico.y"
                                                                 {
        Dimensao *dim = criarDimensao(atoi((yyvsp[-2].token).valor));
        dim->prox = (yyvsp[0].dim);
        (yyval.dim) = dim;
    }
#line 1495 "sintatico.tab.c"
    break;

  case 18: /* ArrayCheck: %empty  */
#line 192 "sintatico.y"
      { (yyval.dim) = NULL; }
#line 1501 "sintatico.tab.c"
    break;

  case 19: /* Expression: BinaryExpr  */
#line 194 "sintatico.y"
                       { (yyval.expr) = (yyvsp[0].expr); }
#line 1507 "sintatico.tab.c"
    break;

  case 20: /* Expression: TernaryExpr  */
#line 195 "sintatico.y"
                  { (yyval.expr) = (yyvsp[0].expr); }
#line 1513 "sintatico.tab.c"
    break;

  case 21: /* Expression: UnaryExpr  */
#line 196 "sintatico.y"
                { (yyval.expr) = (yyvsp[0].expr); }
#line 1519 "sintatico.tab.c"
    break;

  case 22: /* Expression: Primaria  */
#line 197 "sintatico.y"
               { (yyval.expr) = (yyvsp[0].expr); }
#line 1525 "sintatico.tab.c"
    break;

  case 23: /* Expression: FunctionCall  */
#line 198 "sintatico.y"
                   { (yyval.expr) = (yyvsp[0].param); }
#line 1531 "sintatico.tab.c"
    break;

  case 24: /* BinaryExpr: Ops L_PAREN Expression COMMA Expression R_PAREN  */
#line 200 "sintatico.y"
                                                            {
        Expressao *bop = criarExpressao(BOP, (yyvsp[-5].token).type, (yyvsp[-3].expr), (yyvsp[-1].expr));
        (yyval.expr) = bop;
    }
#line 1540 "sintatico.tab.c"
    break;

  case 25: /* TernaryExpr: TERNARY_CONDITIONAL L_PAREN Expression COMMA Expression COMMA Expression  */
#line 205 "sintatico.y"
                                                                                      {
        Expressao *ternary = criarExpressao(TERNARY, TERNARY_CONDITIONAL, (yyvsp[-2].expr), (yyvsp[0].expr));
        ternary->condicaoTernaria = (yyvsp[-4].expr);
        (yyval.expr) = ternary;
    }
#line 1550 "sintatico.tab.c"
    break;

  case 26: /* UnaryExpr: Ops L_PAREN Expression R_PAREN  */
#line 211 "sintatico.y"
                                          {
        Expressao *uop = criarExpressao(UOP, (yyvsp[-3].token).type, (yyvsp[-1].expr), NULL);
        uop->preOuPos = 1;
        (yyval.expr) = uop;
    }
#line 1560 "sintatico.tab.c"
    break;

  case 27: /* UnaryExpr: L_PAREN Expression R_PAREN INC  */
#line 216 "sintatico.y"
                                     {
        Expressao *uop = criarExpressao(UOP, INC, (yyvsp[-2].expr), NULL);
        uop->preOuPos = 2;
        (yyval.expr) = uop;
    }
#line 1570 "sintatico.tab.c"
    break;

  case 28: /* UnaryExpr: L_PAREN Expression R_PAREN DEC  */
#line 221 "sintatico.y"
                                     {
        Expressao *uop = criarExpressao(UOP, DEC, (yyvsp[-2].expr), NULL);
        uop->preOuPos = 2;
        (yyval.expr) = uop;
    }
#line 1580 "sintatico.tab.c"
    break;

  case 29: /* Ops: PLUS  */
#line 227 "sintatico.y"
          { (yyval.token) = yylval.token; }
#line 1586 "sintatico.tab.c"
    break;

  case 30: /* Ops: MINUS  */
#line 228 "sintatico.y"
            { (yyval.token) = yylval.token; }
#line 1592 "sintatico.tab.c"
    break;

  case 31: /* Ops: MULTIPLY  */
#line 229 "sintatico.y"
               { (yyval.token) = yylval.token; }
#line 1598 "sintatico.tab.c"
    break;

  case 32: /* Ops: DIVIDE  */
#line 230 "sintatico.y"
             { (yyval.token) = yylval.token; }
#line 1604 "sintatico.tab.c"
    break;

  case 33: /* Ops: REMAINDER  */
#line 231 "sintatico.y"
                { (yyval.token) = yylval.token; }
#line 1610 "sintatico.tab.c"
    break;

  case 34: /* Ops: BITWISE_AND  */
#line 232 "sintatico.y"
                  { (yyval.token) = yylval.token; }
#line 1616 "sintatico.tab.c"
    break;

  case 35: /* Ops: BITWISE_OR  */
#line 233 "sintatico.y"
                 { (yyval.token) = yylval.token; }
#line 1622 "sintatico.tab.c"
    break;

  case 36: /* Ops: BITWISE_XOR  */
#line 234 "sintatico.y"
                  { (yyval.token) = yylval.token; }
#line 1628 "sintatico.tab.c"
    break;

  case 37: /* Ops: LOGICAL_AND  */
#line 235 "sintatico.y"
                  { (yyval.token) = yylval.token; }
#line 1634 "sintatico.tab.c"
    break;

  case 38: /* Ops: LOGICAL_OR  */
#line 236 "sintatico.y"
                 { (yyval.token) = yylval.token; }
#line 1640 "sintatico.tab.c"
    break;

  case 39: /* Ops: EQUAL  */
#line 237 "sintatico.y"
            { (yyval.token) = yylval.token; }
#line 1646 "sintatico.tab.c"
    break;

  case 40: /* Ops: NOT_EQUAL  */
#line 238 "sintatico.y"
                { (yyval.token) = yylval.token; }
#line 1652 "sintatico.tab.c"
    break;

  case 41: /* Ops: LESS_THAN  */
#line 239 "sintatico.y"
                { (yyval.token) = yylval.token; }
#line 1658 "sintatico.tab.c"
    break;

  case 42: /* Ops: LESS_EQUAL  */
#line 240 "sintatico.y"
                 { (yyval.token) = yylval.token; }
#line 1664 "sintatico.tab.c"
    break;

  case 43: /* Ops: GREATER_THAN  */
#line 241 "sintatico.y"
                   { (yyval.token) = yylval.token; }
#line 1670 "sintatico.tab.c"
    break;

  case 44: /* Ops: GREATER_EQUAL  */
#line 242 "sintatico.y"
                    { (yyval.token) = yylval.token; }
#line 1676 "sintatico.tab.c"
    break;

  case 45: /* Ops: R_SHIFT  */
#line 243 "sintatico.y"
              { (yyval.token) = yylval.token; }
#line 1682 "sintatico.tab.c"
    break;

  case 46: /* Ops: L_SHIFT  */
#line 244 "sintatico.y"
              { (yyval.token) = yylval.token; }
#line 1688 "sintatico.tab.c"
    break;

  case 47: /* Ops: ASSIGN  */
#line 245 "sintatico.y"
             { (yyval.token) = yylval.token; }
#line 1694 "sintatico.tab.c"
    break;

  case 48: /* Ops: ADD_ASSIGN  */
#line 246 "sintatico.y"
                 { (yyval.token) = yylval.token; }
#line 1700 "sintatico.tab.c"
    break;

  case 49: /* Ops: MINUS_ASSIGN  */
#line 247 "sintatico.y"
                   { (yyval.token) = yylval.token; }
#line 1706 "sintatico.tab.c"
    break;

  case 50: /* Ops: INC  */
#line 248 "sintatico.y"
          { (yyval.token) = yylval.token; }
#line 1712 "sintatico.tab.c"
    break;

  case 51: /* Ops: DEC  */
#line 249 "sintatico.y"
          { (yyval.token) = yylval.token; }
#line 1718 "sintatico.tab.c"
    break;

  case 52: /* Ops: NOT  */
#line 250 "sintatico.y"
          { (yyval.token) = yylval.token; }
#line 1724 "sintatico.tab.c"
    break;

  case 53: /* Ops: BITWISE_NOT  */
#line 251 "sintatico.y"
                  { (yyval.token) = yylval.token; }
#line 1730 "sintatico.tab.c"
    break;

  case 54: /* Primaria: NUM_INT  */
#line 253 "sintatico.y"
                  {
        Expressao *expr = criarExpressao(PRIMARIA, INT, NULL, NULL);
        expr->atribuicao = atoi((yyvsp[0].token).valor);
        (yyval.expr) = expr;
    }
#line 1740 "sintatico.tab.c"
    break;

  case 55: /* Primaria: CHARACTER  */
#line 258 "sintatico.y"
                {
        Expressao *expr = criarExpressao(PRIMARIA, CHAR, NULL, NULL);
        if ((yyvsp[0].token).valor[1] == '\\') {
            switch ((yyvsp[0].token).valor[2]) {
                case 'n':
                    expr->atribuicao = '\n';
                    break;
                case 't':
                    expr->atribuicao = '\t';
                    break;
                case 'r':
                    expr->atribuicao = '\r';
                    break;
                case '0':
                    expr->atribuicao = '\0';
                    break;
                case '\\':
                    expr->atribuicao = '\\';
                    break;
                case '\'':
                    expr->atribuicao = '\'';
                    break;
                case '\"':
                    expr->atribuicao = '\"';
                    break;
            }
        } else {
            expr->atribuicao = (yyvsp[0].token).valor[1];
        }
        (yyval.expr) = expr;
    }
#line 1776 "sintatico.tab.c"
    break;

  case 56: /* Primaria: STRING  */
#line 289 "sintatico.y"
             {
        Expressao *expr = criarExpressao(PRIMARIA, STRING, NULL, NULL);
        strcpy(expr->string, (yyvsp[0].token).valor);
        (yyval.expr) = expr;
    }
#line 1786 "sintatico.tab.c"
    break;

  case 57: /* Primaria: ID PosFixa  */
#line 294 "sintatico.y"
                 {
        Expressao *expr = criarExpressao(PRIMARIA, ID, NULL, NULL);
        strcpy(expr->identificador, (yyvsp[-1].token).valor);
        if (isFuncOrArray == 1) {
            expr->tipo = ARRAY_CALL;
            setDimensaoExpressao(expr, ((Dimensao*)(yyvsp[0].posfixa)));
        
        } else if (isFuncOrArray == 2) {
            expr->tipo = FUNCTION_CALL;
            expr->param = (ExpParam*)(yyvsp[0].posfixa);
        }
        isFuncOrArray = -1;
        (yyval.expr) = expr;
    }
#line 1805 "sintatico.tab.c"
    break;

  case 58: /* PosFixa: ArrayCall  */
#line 309 "sintatico.y"
                   { isFuncOrArray = 1; (yyval.posfixa) = (yyvsp[0].dim); }
#line 1811 "sintatico.tab.c"
    break;

  case 59: /* PosFixa: FunctionCall  */
#line 310 "sintatico.y"
                   { isFuncOrArray = 2; (yyval.posfixa) = (yyvsp[0].param); }
#line 1817 "sintatico.tab.c"
    break;

  case 60: /* PosFixa: %empty  */
#line 311 "sintatico.y"
      { isFuncOrArray = 0; (yyval.posfixa) = NULL; }
#line 1823 "sintatico.tab.c"
    break;

  case 61: /* ArrayCall: L_SQUARE_BRACKET Expression R_SQUARE_BRACKET  */
#line 313 "sintatico.y"
                                                        {
        Dimensao *dim = criarDimensaoExpressao((yyvsp[-1].expr));
        (yyval.dim) = dim;
    }
#line 1832 "sintatico.tab.c"
    break;

  case 62: /* FunctionCall: L_PAREN ParamExpression R_PAREN  */
#line 318 "sintatico.y"
                                              {
        (yyval.param) = (yyvsp[-1].param);
    }
#line 1840 "sintatico.tab.c"
    break;

  case 63: /* ParamExpression: Expression ParamExpression  */
#line 322 "sintatico.y"
                                            {
        ExpParam *aux = criarExpressaoParametro((yyvsp[-1].expr), (yyvsp[0].param));
        (yyval.param) = aux;
    }
#line 1849 "sintatico.tab.c"
    break;

  case 64: /* ParamExpression: COMMA Expression ParamExpression  */
#line 326 "sintatico.y"
                                       {
        ExpParam *aux = criarExpressaoParametro((yyvsp[-1].expr), (yyvsp[0].param));
        (yyval.param) = aux;
    }
#line 1858 "sintatico.tab.c"
    break;

  case 65: /* ParamExpression: %empty  */
#line 330 "sintatico.y"
      { (yyval.param) = NULL; }
#line 1864 "sintatico.tab.c"
    break;

  case 66: /* VarType: INT  */
#line 332 "sintatico.y"
             { (yyval.token) = yylval.token; }
#line 1870 "sintatico.tab.c"
    break;

  case 67: /* VarType: CHAR  */
#line 333 "sintatico.y"
           { (yyval.token) = yylval.token; }
#line 1876 "sintatico.tab.c"
    break;

  case 68: /* VarType: VOID  */
#line 334 "sintatico.y"
           { (yyval.token) = yylval.token; }
#line 1882 "sintatico.tab.c"
    break;

  case 69: /* $@5: %empty  */
#line 336 "sintatico.y"
                                                  { pointerCount = 0; }
#line 1888 "sintatico.tab.c"
    break;

  case 70: /* Parameters: PARAMETER COLON ID TYPE COLON VarType $@5 Pointers ArrayCheck Parameters  */
#line 336 "sintatico.y"
                                                                                                       {
        void *node = insertHash(currentHash, (yyvsp[-7].token).valor, (yyvsp[-4].token).type, pointerCount);
        paramCount++;
        setQntdParams(node, paramCount);
        setSRegisterInHash(node, paramCount-1);
        Param *param = createParam((yyvsp[-4].token).type, (yyvsp[-7].token).valor, pointerCount, (yyvsp[0].param));
        if (!(yyvsp[-1].dim)) {
            setKind(node, VAR);
            param->tipoParam = VAR;
        } else {
            setKind(node, VECTOR);
            param->tipoParam = VECTOR;
        }
        setDimensions(node, (yyvsp[-1].dim));
        param->prox = (yyvsp[0].param);
        (yyval.param) = param;
    }
#line 1910 "sintatico.tab.c"
    break;

  case 71: /* Parameters: %empty  */
#line 353 "sintatico.y"
      { (yyval.param) = NULL; }
#line 1916 "sintatico.tab.c"
    break;

  case 72: /* $@6: %empty  */
#line 355 "sintatico.y"
                                                        { pointerCount = 0; }
#line 1922 "sintatico.tab.c"
    break;

  case 73: /* DeclaracoesLocais: VARIABLE COLON ID TYPE COLON VarType $@6 Pointers ArrayCheck DeclaracoesLocais  */
#line 355 "sintatico.y"
                                                                                                                    {
        void *node = insertHash(currentHash, (yyvsp[-7].token).valor, (yyvsp[-4].token).type, pointerCount);
        if (!(yyvsp[-1].dim)) {
            setKind(node, VAR);
        } else {
            setKind(node, VECTOR);
        }
        setDimensions(node, (yyvsp[-1].dim));
    }
#line 1936 "sintatico.tab.c"
    break;

  case 74: /* DeclaracoesLocais: %empty  */
#line 364 "sintatico.y"
      { }
#line 1942 "sintatico.tab.c"
    break;

  case 75: /* Pointers: MULTIPLY Pointers  */
#line 366 "sintatico.y"
                            { pointerCount++; }
#line 1948 "sintatico.tab.c"
    break;

  case 76: /* Pointers: %empty  */
#line 367 "sintatico.y"
      { }
#line 1954 "sintatico.tab.c"
    break;

  case 77: /* ListaComandos: Comandos SemicolonDeSchrodinger ListaComandos  */
#line 369 "sintatico.y"
                                                             {       
        Comando *cmd = (yyvsp[-2].cmd);
        while (cmd->prox != NULL) {
            cmd = cmd->prox;
        }
        cmd->prox = (yyvsp[0].cmd);
        (yyval.cmd) = (yyvsp[-2].cmd);
    }
#line 1967 "sintatico.tab.c"
    break;

  case 78: /* ListaComandos: %empty  */
#line 377 "sintatico.y"
      { (yyval.cmd) = NULL; }
#line 1973 "sintatico.tab.c"
    break;

  case 79: /* Comandos: IF L_PAREN Expression COMMA Comandos AuxElse R_PAREN SemicolonDeSchrodinger Comandos  */
#line 379 "sintatico.y"
                                                                                               {
        Comando *cmd = criarSe((yyvsp[-6].expr), (yyvsp[-4].cmd), (yyvsp[-3].cmd), (yyvsp[0].cmd));
        (yyval.cmd) = cmd;
    }
#line 1982 "sintatico.tab.c"
    break;

  case 80: /* Comandos: DO_WHILE L_PAREN Comandos COMMA Expression R_PAREN SemicolonDeSchrodinger Comandos  */
#line 383 "sintatico.y"
                                                                                         {
        Comando *cmd = criarFaçaEnquanto((yyvsp[-3].expr), (yyvsp[-5].cmd), (yyvsp[0].cmd));
        (yyval.cmd) = cmd;
    }
#line 1991 "sintatico.tab.c"
    break;

  case 81: /* Comandos: WHILE L_PAREN Expression COMMA Comandos R_PAREN SemicolonDeSchrodinger Comandos  */
#line 387 "sintatico.y"
                                                                                      {
        Comando *cmd = criarEnquanto((yyvsp[-5].expr), (yyvsp[-3].cmd), (yyvsp[0].cmd));
        (yyval.cmd) = cmd;
    }
#line 2000 "sintatico.tab.c"
    break;

  case 82: /* Comandos: FOR L_PAREN Expression COMMA Expression COMMA Expression COMMA Comandos R_PAREN SemicolonDeSchrodinger Comandos  */
#line 391 "sintatico.y"
                                                                                                                      {
        Comando *cmd = criarPara((yyvsp[-9].expr), (yyvsp[-7].expr), (yyvsp[-5].expr), (yyvsp[-3].cmd), (yyvsp[0].cmd));
        (yyval.cmd) = cmd;
    }
#line 2009 "sintatico.tab.c"
    break;

  case 83: /* Comandos: PRINTF L_PAREN STRING AuxPrint R_PAREN SemicolonDeSchrodinger Comandos  */
#line 395 "sintatico.y"
                                                                             {
        Comando *cmd = criarImprimir((yyvsp[-4].token).valor, (yyvsp[-3].expr), (yyvsp[0].cmd));
        (yyval.cmd) = cmd;
    }
#line 2018 "sintatico.tab.c"
    break;

  case 84: /* Comandos: SCANF L_PAREN STRING COMMA BITWISE_AND L_PAREN ID R_PAREN R_PAREN SemicolonDeSchrodinger Comandos  */
#line 399 "sintatico.y"
                                                                                                        {
        Comando *cmd = criarScan((yyvsp[-8].token).valor, (yyvsp[-4].token).valor, (yyvsp[0].cmd));
        (yyval.cmd) = cmd;
    }
#line 2027 "sintatico.tab.c"
    break;

  case 85: /* Comandos: RETURN L_PAREN AuxReturn R_PAREN Comandos  */
#line 403 "sintatico.y"
                                                {
        Comando *cmd = criarReturn((yyvsp[-2].expr), (yyvsp[0].cmd));
        (yyval.cmd) = cmd;
    }
#line 2036 "sintatico.tab.c"
    break;

  case 86: /* Comandos: EXIT L_PAREN Expression R_PAREN Comandos  */
#line 407 "sintatico.y"
                                               {
        Comando *cmd = criarExit((yyvsp[-2].expr), (yyvsp[0].cmd));
        (yyval.cmd) = cmd;
    }
#line 2045 "sintatico.tab.c"
    break;

  case 87: /* Comandos: Expression SemicolonDeSchrodinger Comandos  */
#line 411 "sintatico.y"
                                                 {
        Comando *cmd = criarComandoExpressao((yyvsp[-2].expr), (yyvsp[0].cmd));
        (yyval.cmd) = cmd;
    }
#line 2054 "sintatico.tab.c"
    break;

  case 88: /* Comandos: %empty  */
#line 415 "sintatico.y"
      { (yyval.cmd) = NULL; }
#line 2060 "sintatico.tab.c"
    break;

  case 89: /* AuxElse: COMMA Comandos  */
#line 417 "sintatico.y"
                        { (yyval.cmd) = (yyvsp[0].cmd); }
#line 2066 "sintatico.tab.c"
    break;

  case 90: /* AuxElse: %empty  */
#line 418 "sintatico.y"
      { (yyval.cmd) = NULL; }
#line 2072 "sintatico.tab.c"
    break;

  case 91: /* AuxPrint: COMMA Expression AuxPrint  */
#line 420 "sintatico.y"
                                    {
        (yyvsp[-1].expr)->proxExpr = (yyvsp[0].expr);
        (yyval.expr) = (yyvsp[-1].expr);
    }
#line 2081 "sintatico.tab.c"
    break;

  case 92: /* AuxPrint: %empty  */
#line 424 "sintatico.y"
      { (yyval.expr) = NULL; }
#line 2087 "sintatico.tab.c"
    break;

  case 93: /* AuxReturn: Expression  */
#line 426 "sintatico.y"
                      { (yyval.expr) = (yyvsp[0].expr); }
#line 2093 "sintatico.tab.c"
    break;

  case 94: /* AuxReturn: %empty  */
#line 427 "sintatico.y"
      { (yyval.expr) = NULL; }
#line 2099 "sintatico.tab.c"
    break;

  case 95: /* SemicolonDeSchrodinger: SEMICOLON  */
#line 429 "sintatico.y"
                                  { }
#line 2105 "sintatico.tab.c"
    break;

  case 96: /* SemicolonDeSchrodinger: %empty  */
#line 430 "sintatico.y"
      { }
#line 2111 "sintatico.tab.c"
    break;


#line 2115 "sintatico.tab.c"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      yyerror (YY_("syntax error"));
    }

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;
  ++yynerrs;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  YY_ACCESSING_SYMBOL (yystate), yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturnlab;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturnlab;


/*-----------------------------------------------------------.
| yyexhaustedlab -- YYNOMEM (memory exhaustion) comes here.  |
`-----------------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturnlab;


/*----------------------------------------------------------.
| yyreturnlab -- parsing is finished, clean up and return.  |
`----------------------------------------------------------*/
yyreturnlab:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif

  return yyresult;
}

#line 432 "sintatico.y"


void yyerror(void *s) {
    printf("Erro na gramatica %d [ %s ]:%d:%d \n", yychar, yylval.token.valor, yylval.token.line, yylval.token.col);
}

int main(int argc, char *argv[]) {
    globalHash = createHash();
    yyparse();

    if (AST) {
        Programa *ast = (Programa*)AST;
        traverseAST(ast);
        imprimirExit();
    } else {
        printf("AST NULL\n");
        exit(1);
    }
    return 0;
}
