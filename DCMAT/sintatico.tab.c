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

#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdbool.h>
#include "expressao.h"
#include "hash.h"
#include "config.h"
#include "grafico.h"

extern int yychar;
extern int yylex();
void yyerror(void *s);

float **minhaMat = NULL, **minhaMatAux = NULL;
int ehRpn = 0, ehPlot = 0, temFuncao = 0, temGrafico = 0, linhaMat = 0, colunaMat = 1, auxColunaMat = 1, linhaVolta = 0;
void **minhaHT = NULL;
Configs *cfg = NULL;
Expressao *minhaFuncao = NULL;

void plotarGrafico(Expressao *expressao);
float gaussDeterminante(float **a, int linha);
float *gaussSistemaLinear(float **m, int linha);
void aluno();


#line 98 "sintatico.tab.c"

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
  YYSYMBOL_PLUS = 3,                       /* PLUS  */
  YYSYMBOL_MINUS = 4,                      /* MINUS  */
  YYSYMBOL_MULTIPLY = 5,                   /* MULTIPLY  */
  YYSYMBOL_DIVIDE = 6,                     /* DIVIDE  */
  YYSYMBOL_POWER = 7,                      /* POWER  */
  YYSYMBOL_REMAINDER = 8,                  /* REMAINDER  */
  YYSYMBOL_ASSIGN = 9,                     /* ASSIGN  */
  YYSYMBOL_SEMICOLON = 10,                 /* SEMICOLON  */
  YYSYMBOL_COMMA = 11,                     /* COMMA  */
  YYSYMBOL_COLON = 12,                     /* COLON  */
  YYSYMBOL_COLON_ASSIGN = 13,              /* COLON_ASSIGN  */
  YYSYMBOL_L_PAREN = 14,                   /* L_PAREN  */
  YYSYMBOL_R_PAREN = 15,                   /* R_PAREN  */
  YYSYMBOL_L_SQUARE_BRACKET = 16,          /* L_SQUARE_BRACKET  */
  YYSYMBOL_R_SQUARE_BRACKET = 17,          /* R_SQUARE_BRACKET  */
  YYSYMBOL_ABOUT = 18,                     /* ABOUT  */
  YYSYMBOL_ABS = 19,                       /* ABS  */
  YYSYMBOL_AXIS = 20,                      /* AXIS  */
  YYSYMBOL_CONNECT_DOTS = 21,              /* CONNECT_DOTS  */
  YYSYMBOL_COS = 22,                       /* COS  */
  YYSYMBOL_DETERMINANT = 23,               /* DETERMINANT  */
  YYSYMBOL_ERASE = 24,                     /* ERASE  */
  YYSYMBOL_EULER = 25,                     /* EULER  */
  YYSYMBOL_FLOAT = 26,                     /* FLOAT  */
  YYSYMBOL_H_VIEW = 27,                    /* H_VIEW  */
  YYSYMBOL_INTEGRAL_STEPS = 28,            /* INTEGRAL_STEPS  */
  YYSYMBOL_INTEGRATE = 29,                 /* INTEGRATE  */
  YYSYMBOL_LINEAR_SYSTEM = 30,             /* LINEAR_SYSTEM  */
  YYSYMBOL_MATRIX = 31,                    /* MATRIX  */
  YYSYMBOL_OFF = 32,                       /* OFF  */
  YYSYMBOL_ON = 33,                        /* ON  */
  YYSYMBOL_PI = 34,                        /* PI  */
  YYSYMBOL_PLOT = 35,                      /* PLOT  */
  YYSYMBOL_PRECISION = 36,                 /* PRECISION  */
  YYSYMBOL_QUIT = 37,                      /* QUIT  */
  YYSYMBOL_RESET = 38,                     /* RESET  */
  YYSYMBOL_RPN = 39,                       /* RPN  */
  YYSYMBOL_SEN = 40,                       /* SEN  */
  YYSYMBOL_SET = 41,                       /* SET  */
  YYSYMBOL_SETTINGS = 42,                  /* SETTINGS  */
  YYSYMBOL_SHOW = 43,                      /* SHOW  */
  YYSYMBOL_SOLVE = 44,                     /* SOLVE  */
  YYSYMBOL_SUM = 45,                       /* SUM  */
  YYSYMBOL_SYMBOLS = 46,                   /* SYMBOLS  */
  YYSYMBOL_TAN = 47,                       /* TAN  */
  YYSYMBOL_V_VIEW = 48,                    /* V_VIEW  */
  YYSYMBOL_VAR_X = 49,                     /* VAR_X  */
  YYSYMBOL_ID = 50,                        /* ID  */
  YYSYMBOL_NUM_INT = 51,                   /* NUM_INT  */
  YYSYMBOL_NUM_FLOAT = 52,                 /* NUM_FLOAT  */
  YYSYMBOL_EOL = 53,                       /* EOL  */
  YYSYMBOL_YYACCEPT = 54,                  /* $accept  */
  YYSYMBOL_S = 55,                         /* S  */
  YYSYMBOL_Comandos = 56,                  /* Comandos  */
  YYSYMBOL_Token_Rpn = 57,                 /* Token_Rpn  */
  YYSYMBOL_Token_Matrix = 58,              /* Token_Matrix  */
  YYSYMBOL_TK_ID = 59,                     /* TK_ID  */
  YYSYMBOL_Repet_Matrix = 60,              /* Repet_Matrix  */
  YYSYMBOL_Repet_Dimen = 61,               /* Repet_Dimen  */
  YYSYMBOL_Funcao = 62,                    /* Funcao  */
  YYSYMBOL_OpUna = 63,                     /* OpUna  */
  YYSYMBOL_OpMult = 64,                    /* OpMult  */
  YYSYMBOL_Expressao = 65,                 /* Expressao  */
  YYSYMBOL_ExpAdd = 66,                    /* ExpAdd  */
  YYSYMBOL_ExpMul = 67,                    /* ExpMul  */
  YYSYMBOL_ExpUna = 68,                    /* ExpUna  */
  YYSYMBOL_ExpPri = 69                     /* ExpPri  */
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
#define YYFINAL  66
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   229

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  54
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  16
/* YYNRULES -- Number of rules.  */
#define YYNRULES  64
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  171

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   308


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
      45,    46,    47,    48,    49,    50,    51,    52,    53
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,   102,   102,   106,   127,   132,   135,   138,   148,   158,
     161,   164,   173,   183,   186,   189,   193,   201,   230,   250,
     266,   270,   283,   302,   305,   323,   340,   355,   370,   374,
     382,   385,   388,   393,   398,   406,   419,   426,   431,   435,
     439,   447,   455,   462,   470,   473,   477,   480,   483,   486,
     490,   498,   501,   513,   516,   532,   535,   547,   555,   564,
     571,   578,   585,   592,   595
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
  "\"end of file\"", "error", "\"invalid token\"", "PLUS", "MINUS",
  "MULTIPLY", "DIVIDE", "POWER", "REMAINDER", "ASSIGN", "SEMICOLON",
  "COMMA", "COLON", "COLON_ASSIGN", "L_PAREN", "R_PAREN",
  "L_SQUARE_BRACKET", "R_SQUARE_BRACKET", "ABOUT", "ABS", "AXIS",
  "CONNECT_DOTS", "COS", "DETERMINANT", "ERASE", "EULER", "FLOAT",
  "H_VIEW", "INTEGRAL_STEPS", "INTEGRATE", "LINEAR_SYSTEM", "MATRIX",
  "OFF", "ON", "PI", "PLOT", "PRECISION", "QUIT", "RESET", "RPN", "SEN",
  "SET", "SETTINGS", "SHOW", "SOLVE", "SUM", "SYMBOLS", "TAN", "V_VIEW",
  "VAR_X", "ID", "NUM_INT", "NUM_FLOAT", "EOL", "$accept", "S", "Comandos",
  "Token_Rpn", "Token_Matrix", "TK_ID", "Repet_Matrix", "Repet_Dimen",
  "Funcao", "OpUna", "OpMult", "Expressao", "ExpAdd", "ExpMul", "ExpUna",
  "ExpPri", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-137)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-1)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     121,  -137,  -137,   172,    -5,    -7,     5,  -137,    10,  -137,
    -137,    41,  -137,   -15,    22,    30,   -11,   -28,   -19,    32,
      35,  -137,    44,  -137,  -137,  -137,    56,    18,   172,    49,
     172,  -137,    48,    21,    76,   173,  -137,  -137,  -137,    19,
    -137,   172,   172,   172,  -137,   172,    67,  -137,   172,    87,
     100,    51,    47,   172,   172,   172,    79,    80,    82,    98,
     107,    88,   172,   172,  -137,    62,  -137,  -137,    25,   110,
     118,  -137,  -137,   172,  -137,  -137,  -137,  -137,   172,  -137,
      57,    60,   135,    90,  -137,   103,   139,   141,   143,   144,
     109,   172,   151,   157,   165,  -137,  -137,  -137,  -137,  -137,
     134,   112,   159,   166,   174,   175,   167,   172,   170,   173,
    -137,  -137,  -137,   172,   178,  -137,  -137,  -137,  -137,  -137,
     179,   180,   182,   172,  -137,   172,   172,  -137,  -137,  -137,
    -137,  -137,   172,   118,   184,   185,  -137,  -137,  -137,  -137,
     183,   188,   187,   118,  -137,   186,   190,   172,  -137,  -137,
     172,   191,   172,   193,   119,   189,   184,   118,  -137,   194,
     172,   192,   196,  -137,   133,   195,   184,   200,  -137,  -137,
    -137
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       0,    44,    45,     0,     0,     0,     0,    62,     0,    34,
      61,     0,    32,     0,     0,     0,     0,     0,     0,     0,
       0,    58,    57,    59,    60,     4,     0,     0,     0,     0,
       0,    64,     0,     0,    50,    51,    53,    55,    57,     0,
      23,     0,     0,     0,    11,     0,     0,    33,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    26,     0,     1,     2,     0,     0,
      37,    56,     3,     0,    46,    47,    49,    48,     0,    63,
       0,     0,     0,     0,     6,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    20,     5,    28,    21,    22,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    52,
      54,    43,    41,     0,     0,    40,    10,     9,    31,    30,
       0,     0,     0,     0,    16,     0,     0,    42,    27,    35,
      24,    15,     0,    37,    39,     0,    12,    13,    14,    29,
       0,     0,     0,    37,    36,     0,     0,     0,     7,     8,
       0,     0,     0,     0,     0,     0,    39,    37,    25,     0,
       0,     0,     0,    17,     0,     0,    39,     0,    19,    38,
      18
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -137,  -137,  -137,  -137,  -137,  -137,  -131,  -136,  -137,   -33,
    -137,   -22,    -3,   128,   136,   197
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,    26,    27,    28,    29,    30,   108,   146,    31,    32,
      78,    33,    34,    35,    36,    37
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_uint8 yytable[] =
{
      39,    73,   144,    56,    59,    40,    73,    41,    70,    49,
      50,    60,   151,    51,    57,    52,    53,    54,    58,    42,
     161,    82,     1,     2,    43,    68,   162,    46,     1,     2,
     169,    92,    93,    94,    79,    73,    47,    55,    80,    81,
     105,   102,    83,   104,    48,    85,    61,    73,    73,    62,
      73,    44,    73,    63,    64,    45,    66,    65,    69,   101,
       1,     2,     3,     1,     2,     1,     2,     5,    73,   122,
       6,    67,   111,     7,    72,   112,     3,    84,   103,     1,
       2,     5,    10,    91,     6,   133,    90,     7,    15,    95,
      96,   135,    97,     1,     2,    20,    10,    21,    38,    23,
      24,   140,    15,   141,   142,   114,     1,     2,    98,    20,
     143,    21,    38,    23,    24,     1,     2,    99,   115,    86,
      87,    73,     1,     2,     1,     2,   106,   127,   155,   107,
     157,    73,    88,    89,   159,     3,     1,     2,   100,     4,
       5,   120,   121,     6,   154,   126,     7,   113,   167,   116,
       8,   117,     9,   118,   119,    10,    11,   164,    12,    13,
      14,    15,    16,   123,    17,    18,    19,   124,    20,   128,
      21,    22,    23,    24,    25,     1,     2,   125,    74,    75,
      76,    77,   129,   132,   130,   131,     3,   134,   136,   137,
     138,     5,   139,   148,     6,   145,   147,     7,   149,   150,
     160,   109,   152,   158,   163,   168,    10,   153,   156,   165,
     170,     0,    15,   166,   110,     0,     0,     0,     0,    20,
       0,    21,    38,    23,    24,     0,     0,     0,     0,    71
};

static const yytype_int16 yycheck[] =
{
       3,    34,   133,    31,    23,    10,    39,    14,    30,    20,
      21,    30,   143,    24,    42,    26,    27,    28,    46,    14,
     156,    43,     3,     4,    14,    28,   157,    42,     3,     4,
     166,    53,    54,    55,    15,    68,    14,    48,    41,    42,
      15,    63,    45,    65,    14,    48,    14,    80,    81,    14,
      83,    10,    85,     9,    10,    14,     0,    13,     9,    62,
       3,     4,    14,     3,     4,     3,     4,    19,   101,    91,
      22,    53,    15,    25,    53,    15,    14,    10,    16,     3,
       4,    19,    34,    36,    22,   107,    35,    25,    40,    10,
      10,   113,    10,     3,     4,    47,    34,    49,    50,    51,
      52,   123,    40,   125,   126,    15,     3,     4,    10,    47,
     132,    49,    50,    51,    52,     3,     4,    10,    15,    32,
      33,   154,     3,     4,     3,     4,    16,    15,   150,    11,
     152,   164,    32,    33,    15,    14,     3,     4,    50,    18,
      19,    32,    33,    22,   147,    11,    25,    12,    15,    10,
      29,    10,    31,    10,    10,    34,    35,   160,    37,    38,
      39,    40,    41,    12,    43,    44,    45,    10,    47,    10,
      49,    50,    51,    52,    53,     3,     4,    12,     5,     6,
       7,     8,    16,    16,    10,    10,    14,    17,    10,    10,
      10,    19,    10,    10,    22,    11,    11,    25,    10,    12,
      11,    73,    16,    10,    10,    10,    34,    17,    17,    17,
      10,    -1,    40,    17,    78,    -1,    -1,    -1,    -1,    47,
      -1,    49,    50,    51,    52,    -1,    -1,    -1,    -1,    32
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,     3,     4,    14,    18,    19,    22,    25,    29,    31,
      34,    35,    37,    38,    39,    40,    41,    43,    44,    45,
      47,    49,    50,    51,    52,    53,    55,    56,    57,    58,
      59,    62,    63,    65,    66,    67,    68,    69,    50,    66,
      10,    14,    14,    14,    10,    14,    42,    14,    14,    20,
      21,    24,    26,    27,    28,    48,    31,    42,    46,    23,
      30,    14,    14,     9,    10,    13,     0,    53,    66,     9,
      65,    69,    53,    63,     5,     6,     7,     8,    64,    15,
      66,    66,    65,    66,    10,    66,    32,    33,    32,    33,
      35,    36,    65,    65,    65,    10,    10,    10,    10,    10,
      50,    66,    65,    16,    65,    15,    16,    11,    60,    67,
      68,    15,    15,    12,    15,    15,    10,    10,    10,    10,
      32,    33,    65,    12,    10,    12,    11,    15,    10,    16,
      10,    10,    16,    65,    17,    65,    10,    10,    10,    10,
      65,    65,    65,    65,    60,    11,    61,    11,    10,    10,
      12,    60,    16,    17,    66,    65,    17,    65,    10,    15,
      11,    61,    60,    10,    66,    17,    17,    15,    10,    61,
      10
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    54,    55,    55,    55,    56,    56,    56,    56,    56,
      56,    56,    56,    56,    56,    56,    56,    56,    56,    56,
      56,    56,    56,    56,    56,    56,    56,    56,    56,    56,
      56,    56,    56,    57,    58,    59,    60,    60,    61,    61,
      62,    62,    62,    62,    63,    63,    64,    64,    64,    64,
      65,    66,    66,    67,    67,    68,    68,    69,    69,    69,
      69,    69,    69,    69,    69
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     2,     2,     1,     3,     3,     6,     6,     4,
       4,     2,     5,     5,     5,     4,     4,     9,    11,    10,
       3,     3,     3,     2,     4,     7,     2,     4,     3,     5,
       4,     4,     1,     2,     1,     4,     3,     0,     6,     0,
       4,     4,     4,     4,     1,     1,     1,     1,     1,     1,
       1,     1,     3,     1,     3,     1,     2,     1,     1,     1,
       1,     1,     1,     3,     1
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
  case 2: /* S: Comandos EOL  */
#line 102 "sintatico.y"
               {
    printf(">"); 
    return 0; 
}
#line 1273 "sintatico.tab.c"
    break;

  case 3: /* S: Expressao EOL  */
#line 106 "sintatico.y"
                   {
        if(!temFuncao){
            if((yyvsp[-1].resultado)){
                if((yyvsp[-1].resultado)->tipo == MATRIX){
                    mostrarMatriz((yyvsp[-1].resultado)->matriz, (yyvsp[-1].resultado)->linha, (yyvsp[-1].resultado)->coluna, cfg->fp);
                }else if((yyvsp[-1].resultado)->tipo == NUM_INT || (yyvsp[-1].resultado)->tipo == NUM_FLOAT){
                    printf("\n%.*f\n\n", cfg->fp, (yyvsp[-1].resultado)->r_float);
                }else{
                    printf("\nERROR: Invalid Expression\n\n");
                }
            }else{
                printf("\n\n");
            }
        }else{
            temFuncao = 0;
            printf("\nThe x variable cannot be present on expressions.\n\n");
        }

        printf(">");
        return 0;   
    }
#line 1299 "sintatico.tab.c"
    break;

  case 4: /* S: EOL  */
#line 127 "sintatico.y"
         {
        printf(">");
        return 0;
    }
#line 1308 "sintatico.tab.c"
    break;

  case 5: /* Comandos: SHOW SETTINGS SEMICOLON  */
#line 132 "sintatico.y"
                                 {
    mostrarConfig(cfg);
}
#line 1316 "sintatico.tab.c"
    break;

  case 6: /* Comandos: RESET SETTINGS SEMICOLON  */
#line 135 "sintatico.y"
                               {
        resetarConfig(cfg);
    }
#line 1324 "sintatico.tab.c"
    break;

  case 7: /* Comandos: SET H_VIEW Expressao COLON Expressao SEMICOLON  */
#line 138 "sintatico.y"
                                                    {
        if((yyvsp[-3].resultado)->r_float < (yyvsp[-1].resultado)->r_float){
            cfg->hv_lo = (yyvsp[-3].resultado)->r_float;
            cfg->hv_hi = (yyvsp[-1].resultado)->r_float;
            desabilitarEixos(cfg->vv_lo, cfg->vv_hi, cfg->hv_lo, cfg->hv_hi);
        }else{
            printf("\nERROR: h_view_lo must be less than h_view_hi\n\n");
            return 0;
        }
    }
#line 1339 "sintatico.tab.c"
    break;

  case 8: /* Comandos: SET V_VIEW Expressao COLON Expressao SEMICOLON  */
#line 148 "sintatico.y"
                                                    {
        if((yyvsp[-3].resultado)->r_float < (yyvsp[-1].resultado)->r_float){
            cfg->vv_lo = (yyvsp[-3].resultado)->r_float;
            cfg->vv_hi = (yyvsp[-1].resultado)->r_float;
            desabilitarEixos(cfg->vv_lo, cfg->vv_hi, cfg->hv_lo, cfg->hv_hi);
        }else{
            printf("\nERROR: v_view_lo must be less than v_view_hi\n\n");
            return 0;
        }
    }
#line 1354 "sintatico.tab.c"
    break;

  case 9: /* Comandos: SET AXIS ON SEMICOLON  */
#line 158 "sintatico.y"
                           {
        cfg->desEixos = true;
    }
#line 1362 "sintatico.tab.c"
    break;

  case 10: /* Comandos: SET AXIS OFF SEMICOLON  */
#line 161 "sintatico.y"
                            {
        cfg->desEixos = false;
    }
#line 1370 "sintatico.tab.c"
    break;

  case 11: /* Comandos: PLOT SEMICOLON  */
#line 164 "sintatico.y"
                    {
        if(!minhaFuncao || !temGrafico){
            printf("\nNo Function defined!\n\n");
            return 0;
        }
        plotarGrafico(minhaFuncao);
        temGrafico = 1;
        temFuncao = 0;
    }
#line 1384 "sintatico.tab.c"
    break;

  case 12: /* Comandos: PLOT L_PAREN ExpAdd R_PAREN SEMICOLON  */
#line 173 "sintatico.y"
                                           {
        if(!(yyvsp[-2].expressao)){
            printf("\n\n");
            return 0;
        }
        minhaFuncao = (yyvsp[-2].expressao);
        temGrafico = 1;
        temFuncao = 0;
        plotarGrafico(minhaFuncao);
    }
#line 1399 "sintatico.tab.c"
    break;

  case 13: /* Comandos: SET ERASE PLOT OFF SEMICOLON  */
#line 183 "sintatico.y"
                                  {
        cfg->excluirPlot = false;
    }
#line 1407 "sintatico.tab.c"
    break;

  case 14: /* Comandos: SET ERASE PLOT ON SEMICOLON  */
#line 186 "sintatico.y"
                                 {
        cfg->excluirPlot = true;
    }
#line 1415 "sintatico.tab.c"
    break;

  case 15: /* Comandos: Token_Rpn ExpAdd R_PAREN SEMICOLON  */
#line 189 "sintatico.y"
                                        {
        ehRpn = 0;
        printf("\n\n");
    }
#line 1424 "sintatico.tab.c"
    break;

  case 16: /* Comandos: SET INTEGRAL_STEPS Expressao SEMICOLON  */
#line 193 "sintatico.y"
                                            {
        if((int) (yyvsp[-1].resultado)->r_float >= 1){
            cfg->isv = (int) (yyvsp[-1].resultado)->r_float;
        }else{
            printf("\nERROR: integral_steps must be a positive non-zero integer\n\n");
            return 0;
        }
    }
#line 1437 "sintatico.tab.c"
    break;

  case 17: /* Comandos: INTEGRATE L_PAREN Expressao COLON Expressao COMMA ExpAdd R_PAREN SEMICOLON  */
#line 201 "sintatico.y"
                                                                                {
        if(!(yyvsp[-6].resultado) || !(yyvsp[-4].resultado)){
            printf("\n\n");
            return 0;
        }

        if((yyvsp[-6].resultado)->r_float <= (yyvsp[-4].resultado)->r_float){
            float integral = 0, passo = ((yyvsp[-4].resultado)->r_float - (yyvsp[-6].resultado)->r_float) / cfg->isv;
            ExpressaoResultado *integrando = NULL;
            
            NoHash *xVar = getIdentificadorNo(minhaHT, "x");
            xVar->valorId = (yyvsp[-6].resultado)->r_float;

            for(int i = 0; i < cfg->isv; i++){
                integrando = avaliarExpressao((yyvsp[-2].expressao), minhaHT);
                if (!integrando) {
                    printf("\n\n");
                    return 0;
                }
                integral += integrando->r_float;
                xVar->valorId += passo;
            }
            integral *= passo;
            printf("\n%.*f\n\n", cfg->fp, integral);
        }else{
            printf("\nERROR: lower limit must be smaller than upper limit\n\n");
            return 0;
        }
    }
#line 1471 "sintatico.tab.c"
    break;

  case 18: /* Comandos: SUM L_PAREN ID COMMA Expressao COLON Expressao COMMA ExpAdd R_PAREN SEMICOLON  */
#line 230 "sintatico.y"
                                                                                   {
        float soma = 0;
        inserirHash(minhaHT, (yyvsp[-8].valor), (yyvsp[-6].resultado)->r_float, NUM_FLOAT);
        ExpressaoResultado *termo = NULL;
        
        NoHash *no = getIdentificadorNo(minhaHT, (yyvsp[-8].valor));

        for(int i = (int) no->valorId; i <= (int) (yyvsp[-4].resultado)->r_float; i++){
            termo = avaliarExpressao((yyvsp[-2].expressao), minhaHT);
            if(!termo){
                printf("\n\n");
                removerNo(minhaHT, (yyvsp[-8].valor));
                return 0;
            }
            soma += termo->r_float;
            no->valorId++;
        }
        printf("\n%.*f\n\n", cfg->fp, soma);
        removerNo(minhaHT, (yyvsp[-8].valor));
    }
#line 1496 "sintatico.tab.c"
    break;

  case 19: /* Comandos: Token_Matrix ASSIGN L_SQUARE_BRACKET L_SQUARE_BRACKET Expressao Repet_Matrix R_SQUARE_BRACKET Repet_Dimen R_SQUARE_BRACKET SEMICOLON  */
#line 250 "sintatico.y"
                                                                                                                                          {
        if(auxColunaMat > colunaMat){
            colunaMat = auxColunaMat; 
        }
        if(linhaMat > TAM_MAX_MAT || colunaMat > TAM_MAX_MAT){
            printf("\nERROR: Matrix limits out of boundaries.\n\n");
            return 0;
        }
 
        minhaMat[0][colunaMat-1] = (yyvsp[-5].resultado)->r_float;

        NoHash *no = getIdentificadorNo(minhaHT, "matrix");
        no->linhaMatriz = linhaMat;
        no->colunaMatriz = colunaMat;
        fixMatriz(minhaMat, linhaMat, colunaMat);
    }
#line 1517 "sintatico.tab.c"
    break;

  case 20: /* Comandos: SHOW MATRIX SEMICOLON  */
#line 266 "sintatico.y"
                           {
        NoHash *no = getIdentificadorNo(minhaHT, "matrix");
        mostrarMatriz(minhaMat, no->linhaMatriz, no->colunaMatriz, cfg->fp); 
    }
#line 1526 "sintatico.tab.c"
    break;

  case 21: /* Comandos: SOLVE DETERMINANT SEMICOLON  */
#line 270 "sintatico.y"
                                 {
        if(!minhaMat){
            printf("\nNo Matrix defined!\n\n");
            return 0;
        }
        NoHash *no = getIdentificadorNo(minhaHT, "matrix");
        if(no->linhaMatriz != no->colunaMatriz){
            printf("\nMatrix format incorrect!\n\n");
            return 0;
        }
        float det = gaussDeterminante(minhaMat, no->linhaMatriz);
        printf("\n%.*f\n\n", cfg->fp, det);
    }
#line 1544 "sintatico.tab.c"
    break;

  case 22: /* Comandos: SOLVE LINEAR_SYSTEM SEMICOLON  */
#line 283 "sintatico.y"
                                   {
        if (!minhaMat) {
            printf("\nNo Matrix defined!\n\n");
            return 0;
        }
        NoHash *no = getIdentificadorNo(minhaHT, "matrix");
        if(no->colunaMatriz != no->linhaMatriz + 1){
            printf("\nMatrix format incorrect!\n\n");
            return 0;
        }
        float *x = gaussSistemaLinear(minhaMat, linhaMat);
        if(x){
            printf("\nMatrix x:\n");
            for(int i = 0; i < linhaMat; i++){
                printf("\n%.*f ", cfg->fp, x[i]);
            }
            printf("\n\n");
        }
    }
#line 1568 "sintatico.tab.c"
    break;

  case 23: /* Comandos: ABOUT SEMICOLON  */
#line 302 "sintatico.y"
                     {
        aluno();
    }
#line 1576 "sintatico.tab.c"
    break;

  case 24: /* Comandos: ID COLON_ASSIGN Expressao SEMICOLON  */
#line 305 "sintatico.y"
                                         {
        if((yyvsp[-1].resultado)){
            if((yyvsp[-1].resultado)->tipo != MATRIX){
                inserirHash(minhaHT, (yyvsp[-3].valor), (yyvsp[-1].resultado)->r_float, NUM_FLOAT);
                printf("\n%.*f\n\n", cfg->fp, (yyvsp[-1].resultado)->r_float);
            }else{
                mostrarMatriz((yyvsp[-1].resultado)->matriz, (yyvsp[-1].resultado)->linha, (yyvsp[-1].resultado)->coluna, cfg->fp);
                inserirHash(minhaHT, (yyvsp[-3].valor), 0, MATRIX);
                NoHash *no = getIdentificadorNo(minhaHT, (yyvsp[-3].valor));
                no->matriz = (yyvsp[-1].resultado)->matriz;
                no->linhaMatriz = (yyvsp[-1].resultado)->linha;
                no->colunaMatriz = (yyvsp[-1].resultado)->coluna;
            }
        }else{
            printf("\n\n");
        }
        return 0;
    }
#line 1599 "sintatico.tab.c"
    break;

  case 25: /* Comandos: TK_ID Expressao Repet_Matrix R_SQUARE_BRACKET Repet_Dimen R_SQUARE_BRACKET SEMICOLON  */
#line 323 "sintatico.y"
                                                                                          {
        if(auxColunaMat > colunaMat){
            colunaMat = auxColunaMat; 
        }
        if(linhaMat > TAM_MAX_MAT || colunaMat > TAM_MAX_MAT){
            printf("\nERROR: Matrix limits out of boundaries.\n\n");
            return 0;
        }
        minhaMat[0][colunaMat-1] = (yyvsp[-5].resultado)->r_float;

        NoHash *no = getIdentificadorNo(minhaHT, (yyvsp[-6].valor));
        no->linhaMatriz = linhaMat;
        no->colunaMatriz = colunaMat;
        fixMatriz(minhaMat, linhaMat, colunaMat);
        mostrarMatriz(minhaMat, no->linhaMatriz, no->colunaMatriz, cfg->fp);
        minhaMat = minhaMatAux;
    }
#line 1621 "sintatico.tab.c"
    break;

  case 26: /* Comandos: ID SEMICOLON  */
#line 340 "sintatico.y"
                  {
        NoHash *no = getIdentificadorNo(minhaHT, (yyvsp[-1].valor));
        if(!no){
            printf("\nUndefined symbol\n\n");
            return 0;
        }

        if(no->tipoVar == MATRIX){
            mostrarMatriz(no->matriz, no->linhaMatriz, no->colunaMatriz, cfg->fp);
        }else if(no->tipoVar == NUM_FLOAT || no->tipoVar == NUM_INT){
            printf("\n%s = %.*f\n\n", no->varId, cfg->fp, no->valorId);
        }

        return 0;
    }
#line 1641 "sintatico.tab.c"
    break;

  case 27: /* Comandos: ID ASSIGN Expressao SEMICOLON  */
#line 355 "sintatico.y"
                                   {
        NoHash *no = getIdentificadorNo(minhaHT, (yyvsp[-3].valor));
        if(!no){
            printf("\nUndefined symbol [%s]\n\n", (yyvsp[-3].valor));
            return 0;
        }

        if(no->tipoVar == MATRIX){
            mostrarMatriz(no->matriz, no->linhaMatriz, no->colunaMatriz, cfg->fp);
        }else if(no->tipoVar == NUM_FLOAT || no->tipoVar == NUM_INT){
            printf("\n%s = %.*f\n\n", no->varId, cfg->fp, no->valorId);
        }

        return 0;
    }
#line 1661 "sintatico.tab.c"
    break;

  case 28: /* Comandos: SHOW SYMBOLS SEMICOLON  */
#line 370 "sintatico.y"
                            {
        mostrarSimbolos(minhaHT);
        return 0;
    }
#line 1670 "sintatico.tab.c"
    break;

  case 29: /* Comandos: SET FLOAT PRECISION Expressao SEMICOLON  */
#line 374 "sintatico.y"
                                             {
        if((int) (yyvsp[-1].resultado)->r_float < 0 || (int) (yyvsp[-1].resultado)->r_float > 8){
            printf("\nERROR: float_precision must be from 0 to 8\n\n");
            return 0;
        } 
        cfg->fp = (int) (yyvsp[-1].resultado)->r_float; 
        return 0;
    }
#line 1683 "sintatico.tab.c"
    break;

  case 30: /* Comandos: SET CONNECT_DOTS ON SEMICOLON  */
#line 382 "sintatico.y"
                                   {
        cfg->cdop = true;
    }
#line 1691 "sintatico.tab.c"
    break;

  case 31: /* Comandos: SET CONNECT_DOTS OFF SEMICOLON  */
#line 385 "sintatico.y"
                                    {
        cfg->cdop = false;
    }
#line 1699 "sintatico.tab.c"
    break;

  case 32: /* Comandos: QUIT  */
#line 388 "sintatico.y"
          {
        freeHash(minhaHT);
        return QUIT;
    }
#line 1708 "sintatico.tab.c"
    break;

  case 33: /* Token_Rpn: RPN L_PAREN  */
#line 393 "sintatico.y"
                      {
        printf("\nExpression in RPN format:\n\n");
        ehRpn = 1;
    }
#line 1717 "sintatico.tab.c"
    break;

  case 34: /* Token_Matrix: MATRIX  */
#line 398 "sintatico.y"
                    { 
        freeMatriz(minhaMat); 
        minhaMat = criarMatriz(); 
        auxColunaMat = 1;
        linhaMat = 0;
        colunaMat = 1;
    }
#line 1729 "sintatico.tab.c"
    break;

  case 35: /* TK_ID: ID COLON_ASSIGN L_SQUARE_BRACKET L_SQUARE_BRACKET  */
#line 406 "sintatico.y"
                                                        {
        minhaMatAux = minhaMat;
        float **matriz = criarMatriz();
        inserirHash(minhaHT, (yyvsp[-3].valor), 0, MATRIX);
        NoHash *no = getIdentificadorNo(minhaHT, (yyvsp[-3].valor));
        no->matriz = matriz;
        auxColunaMat = 1;
        linhaMat = 0;
        colunaMat = 1;
        minhaMat = matriz;
        (yyval.valor) = (yyvsp[-3].valor);
    }
#line 1746 "sintatico.tab.c"
    break;

  case 36: /* Repet_Matrix: COMMA Expressao Repet_Matrix  */
#line 419 "sintatico.y"
                                          {
        auxColunaMat++;
        if(auxColunaMat > colunaMat){
            colunaMat = auxColunaMat; 
        }
        minhaMat[linhaMat-1][auxColunaMat-2] = (yyvsp[-1].resultado)->r_float;
    }
#line 1758 "sintatico.tab.c"
    break;

  case 37: /* Repet_Matrix: %empty  */
#line 426 "sintatico.y"
      {
        linhaMat++;
        auxColunaMat = 1;
    }
#line 1767 "sintatico.tab.c"
    break;

  case 38: /* Repet_Dimen: COMMA L_SQUARE_BRACKET Expressao Repet_Matrix R_SQUARE_BRACKET Repet_Dimen  */
#line 431 "sintatico.y"
                                                                                       {
        minhaMat[linhaVolta][colunaMat-1] = (yyvsp[-3].resultado)->r_float;
        linhaVolta--;
    }
#line 1776 "sintatico.tab.c"
    break;

  case 39: /* Repet_Dimen: %empty  */
#line 435 "sintatico.y"
      {
        linhaVolta = linhaMat - 1;
    }
#line 1784 "sintatico.tab.c"
    break;

  case 40: /* Funcao: SEN L_PAREN ExpAdd R_PAREN  */
#line 439 "sintatico.y"
                                  {
        if(ehRpn){
            printf("SEN ");
        }
    
        Funcao *funcao = criarFuncao(SEN, (yyvsp[-1].expressao));
        (yyval.funcao) = funcao;
    }
#line 1797 "sintatico.tab.c"
    break;

  case 41: /* Funcao: COS L_PAREN ExpAdd R_PAREN  */
#line 447 "sintatico.y"
                                {
        if(ehRpn){
            printf("COS ");
        }

        Funcao *funcao = criarFuncao(COS, (yyvsp[-1].expressao));
        (yyval.funcao) = funcao;
    }
#line 1810 "sintatico.tab.c"
    break;

  case 42: /* Funcao: TAN L_PAREN ExpAdd R_PAREN  */
#line 455 "sintatico.y"
                                {
        if(ehRpn){
            printf("TAN ");
        }
        Funcao *funcao = criarFuncao(TAN, (yyvsp[-1].expressao));
        (yyval.funcao) = funcao;
    }
#line 1822 "sintatico.tab.c"
    break;

  case 43: /* Funcao: ABS L_PAREN ExpAdd R_PAREN  */
#line 462 "sintatico.y"
                                {
        if(ehRpn){
            printf("ABS ");
        }
        Funcao *funcao = criarFuncao(ABS, (yyvsp[-1].expressao));
        (yyval.funcao) = funcao;
    }
#line 1834 "sintatico.tab.c"
    break;

  case 44: /* OpUna: PLUS  */
#line 470 "sintatico.y"
           {
    (yyval.op) = PLUS;
}
#line 1842 "sintatico.tab.c"
    break;

  case 45: /* OpUna: MINUS  */
#line 473 "sintatico.y"
           {
        (yyval.op) = MINUS;
    }
#line 1850 "sintatico.tab.c"
    break;

  case 46: /* OpMult: MULTIPLY  */
#line 477 "sintatico.y"
                {
    (yyval.op) = MULTIPLY;
}
#line 1858 "sintatico.tab.c"
    break;

  case 47: /* OpMult: DIVIDE  */
#line 480 "sintatico.y"
            {
        (yyval.op) = DIVIDE;
    }
#line 1866 "sintatico.tab.c"
    break;

  case 48: /* OpMult: REMAINDER  */
#line 483 "sintatico.y"
               {
        (yyval.op) = REMAINDER;
    }
#line 1874 "sintatico.tab.c"
    break;

  case 49: /* OpMult: POWER  */
#line 486 "sintatico.y"
           {
        (yyval.op) = POWER;
    }
#line 1882 "sintatico.tab.c"
    break;

  case 50: /* Expressao: ExpAdd  */
#line 490 "sintatico.y"
                 {
        ExpressaoResultado *resultado = avaliarExpressao((yyvsp[0].expressao), minhaHT); 
        if(temFuncao){
            minhaFuncao = (yyvsp[0].expressao);
        }
        (yyval.resultado) = resultado;
    }
#line 1894 "sintatico.tab.c"
    break;

  case 51: /* ExpAdd: ExpMul  */
#line 498 "sintatico.y"
              {
    (yyval.expressao) = (yyvsp[0].expressao);
}
#line 1902 "sintatico.tab.c"
    break;

  case 52: /* ExpAdd: ExpAdd OpUna ExpMul  */
#line 501 "sintatico.y"
                         {
        if(ehRpn){
            if((yyvsp[-1].op) == MINUS){
                printf("- ");
            }else if((yyvsp[-1].op) == PLUS){
                printf("+ ");
            }
        }
        Expressao *expressao = criarExpressao(ADITIVA, (yyvsp[-1].op), NULL, (yyvsp[-2].expressao), (yyvsp[0].expressao));
        (yyval.expressao) = expressao;
    }
#line 1918 "sintatico.tab.c"
    break;

  case 53: /* ExpMul: ExpUna  */
#line 513 "sintatico.y"
              {
    (yyval.expressao) = (yyvsp[0].expressao);
}
#line 1926 "sintatico.tab.c"
    break;

  case 54: /* ExpMul: ExpMul OpMult ExpUna  */
#line 516 "sintatico.y"
                          {
        if(ehRpn){
            if((yyvsp[-1].op) == POWER){
                printf("^ ");
            }else if((yyvsp[-1].op) == MULTIPLY){
                printf("* ");
            }else if((yyvsp[-1].op) == REMAINDER){
                printf("%% ");
            }else if((yyvsp[-1].op) == DIVIDE){
                printf("/ ");
            }
        }
        Expressao *expr = criarExpressao(MULTIPLICATIVA, (yyvsp[-1].op), NULL, (yyvsp[-2].expressao), (yyvsp[0].expressao));
        (yyval.expressao) = expr;
    }
#line 1946 "sintatico.tab.c"
    break;

  case 55: /* ExpUna: ExpPri  */
#line 532 "sintatico.y"
              {
    (yyval.expressao) = (yyvsp[0].expressao);
}
#line 1954 "sintatico.tab.c"
    break;

  case 56: /* ExpUna: OpUna ExpPri  */
#line 535 "sintatico.y"
                  {
        if(ehRpn){
            if((yyvsp[-1].op) == MINUS){
                printf("- ");
            }else if((yyvsp[-1].op) == PLUS){
                printf("+ ");
            }
        }
        Expressao *expressao = criarExpressao(UNARIA, (yyvsp[-1].op), NULL, (yyvsp[0].expressao), NULL);
        (yyval.expressao) = expressao;
    }
#line 1970 "sintatico.tab.c"
    break;

  case 57: /* ExpPri: ID  */
#line 547 "sintatico.y"
          {
        if(ehRpn){
            printf("%s ", (yyvsp[0].valor));
        }
        Expressao *expressao = criarExpressao(PRIMARIA, ID, (yyvsp[0].valor), NULL, NULL);
        (yyval.expressao) = expressao;
        temFuncao = 0;
    }
#line 1983 "sintatico.tab.c"
    break;

  case 58: /* ExpPri: VAR_X  */
#line 555 "sintatico.y"
           {
        if(ehRpn){
            printf("x ");
        }
        Expressao *expressao = criarExpressao(PRIMARIA, VAR_X, "x", NULL, NULL);
        temFuncao = 1;
        (yyval.expressao) = expressao;
        temFuncao = 0;
    }
#line 1997 "sintatico.tab.c"
    break;

  case 59: /* ExpPri: NUM_INT  */
#line 564 "sintatico.y"
             {
        if(ehRpn){
            printf("%.*f ", cfg->fp, atof((yyvsp[0].valor)));
        }
        Expressao *expressao = criarExpressao(PRIMARIA, NUM_INT, (yyvsp[0].valor), NULL, NULL);
        (yyval.expressao) = expressao;
    }
#line 2009 "sintatico.tab.c"
    break;

  case 60: /* ExpPri: NUM_FLOAT  */
#line 571 "sintatico.y"
                {
        if(ehRpn){
            printf("%.*f ", cfg->fp, atof((yyvsp[0].valor)));
        }
        Expressao *expressao = criarExpressao(PRIMARIA, NUM_FLOAT, (yyvsp[0].valor), NULL, NULL);
        (yyval.expressao) = expressao;
    }
#line 2021 "sintatico.tab.c"
    break;

  case 61: /* ExpPri: PI  */
#line 578 "sintatico.y"
        {
        if(ehRpn){
            printf("%.*f ", cfg->fp, 3.14159265);
        }
        Expressao *expressao = criarExpressao(PRIMARIA, NUM_FLOAT, "3.14159265", NULL, NULL);
        (yyval.expressao) = expressao;
    }
#line 2033 "sintatico.tab.c"
    break;

  case 62: /* ExpPri: EULER  */
#line 585 "sintatico.y"
           {
        if(ehRpn){
            printf("%.*f ", cfg->fp, 2.71828182);
        }
        Expressao *expressao = criarExpressao(PRIMARIA, NUM_FLOAT, "2.71828182", NULL, NULL);
        (yyval.expressao) = expressao;
    }
#line 2045 "sintatico.tab.c"
    break;

  case 63: /* ExpPri: L_PAREN ExpAdd R_PAREN  */
#line 592 "sintatico.y"
                            {
        (yyval.expressao) = (yyvsp[-1].expressao);
    }
#line 2053 "sintatico.tab.c"
    break;

  case 64: /* ExpPri: Funcao  */
#line 595 "sintatico.y"
            {
        Expressao *expressao = criarExpressao(PRIMARIA, FUNCTION, NULL, NULL, NULL);
        expressao->funcao = (yyvsp[0].funcao);
        (yyval.expressao) = expressao;
    }
#line 2063 "sintatico.tab.c"
    break;


#line 2067 "sintatico.tab.c"

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

#line 601 "sintatico.y"


void yyerror(void *s){
    if(yychar == EOL){
        printf("\nSYNTAX ERROR: Incomplete Command\n\n>");
        return;
    }
    if(yychar != 0){
        printf("\nSYNTAX ERROR: [%s]\n\n", yylval.valor);
    }
}

void plotarGrafico(Expressao *expressao){
    if(cfg->excluirPlot){
        desabilitarEixos(cfg->vv_lo, cfg->vv_hi, cfg->hv_lo, cfg->hv_hi);
    }
    float passoX = (cfg->hv_hi - cfg->hv_lo) / (float) (TAM_EIXO_X + 1);

    NoHash *xVar = getIdentificadorNo(minhaHT, "x");
    xVar->valorId = cfg->hv_lo;

    ehPlot = 1;
    ExpressaoResultado *resultado = NULL;
    for(int i = 0; i < TAM_EIXO_X + 1; i++){
        resultado = avaliarExpressao(expressao, minhaHT);
        if(!resultado){
            printf("\n\n");
            return;
        }
        float xValor = xVar->valorId, yValor = resultado->r_float;
        inserirPonto(i, xValor, yValor, cfg->hv_lo, cfg->hv_hi, cfg->vv_lo, cfg->vv_hi);
        xVar->valorId += passoX;
    }
    ehPlot = 0;
    if(resultado){
        desenharEixos(cfg->desEixos);
    }
}

void swap(float *a, float *b){
    float aux = *a;
    *a = *b;
    *b = aux;
}

float gaussDeterminante(float **a, int linha){
    int i, j, j1, j2;
    float determinante = 1, temp[linha][linha];

    for(i = 0; i < linha; i++){
        for(j = 0; j < linha; j++){
            temp[i][j] = a[i][j];
        }
    }

    for(j = 0; j < linha; j++){
        if(temp[j][j] == 0){
            for(i = j + 1; i < linha; i++){
                if(temp[i][j] != 0){
                    break;
                }
            }

            if(i == linha){
                return 0;
            }

            for(j1 = j; j1 < linha; j1++){
                swap(&temp[j][j1], &temp[i][j1]);
            }
            determinante *= -1;
        }

        determinante *= temp[j][j];

        for(i = j + 1; i < linha; i++){
            for(j1 = linha - 1; j1 >= j; j1--){
                temp[i][j1] -= temp[j][j1] * temp[i][j] / temp[j][j];
            }
        }
    }
    return determinante;
}

float *gaussSistemaLinear(float **m, int linha){
    float a[linha][linha + 1];
    for(int i = 0; i < linha; i++){
        for(int j = 0; j < linha + 1; j++){
            a[i][j] = m[i][j];
        }
    }

    for(int i = 0; i < linha - 1; i++){
        for(int j = i + 1; j < linha; j++){
            if(a[i][i] == 0){
                for(int k = i + 1; k < linha; k++){
                    if(a[k][i] != 0){
                        for(int l = i; l < linha; l++){
                            swap(&a[i][l], &a[k][l]);
                        }
                        break;
                    }
                }
            }

            float pivo = a[i][i], m = a[j][i] / pivo;
            for(int k = 0; k < linha + 1; k++){
                a[j][k] = a[j][k] - m * a[i][k];
            }
        }
    }

    for(int i = 0; i < linha; i++){
        int j;
        for(j = 0; j < linha; j++){
            if(a[i][j] != 0){
                break;
            }
        }

        if(j == linha && a[i][linha] == 0){
            printf("\nSPI - The Linear System has infinitely many solutions\n\n");
            return NULL;
        }else if (j == linha && a[i][linha] != 0){
            printf("\nSI - The Linear System has no solution\n\n");
            return NULL;
        }
    }

    float *x = calloc(linha, sizeof(float));
    for(int i = linha - 1; i >= 0; i--){
        x[i] = a[i][linha];
        for(int j = i + 1; j < linha; j++){
            x[i] = x[i] - a[i][j] * x[j];
        }
        x[i] = x[i] / a[i][i];
    }
    return x;
}

void aluno(){
    printf("\n+-------------------------------------------------------+\n");
    printf("|                                                       |\n");
    printf("|             Luiz Henrique Botega Beraldi              |\n");
    printf("|                     202200560378                      |\n");
    printf("|                                                       |\n");
    printf("+-------------------------------------------------------+\n\n");
}   

int main(int argc, char *argv[]){
    minhaHT = criarHash();
    cfg = criarConfig();
    habilitarEixos(cfg->vv_lo, cfg->vv_hi, cfg->hv_lo, cfg->hv_hi);

    printf(">");

    while(true){
        if(yyparse() == QUIT || yychar == 0){
            break;
        }
    }
    return 0;
}
