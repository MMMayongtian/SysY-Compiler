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

/* "%code top" blocks.  */
#line 1 "src/parser.y"

    #include <iostream>
    #include <assert.h>
    #include "parser.h"
    #include <cstring>
    #include <stack>
    extern Ast ast;

    int yylex();
    int yyerror(char const*);
    ArrayType* arrayType;
    int arrayIndex;
    int* arrayValue;
    Type* dtype;
    std::stack<InitValueListExpr*> stk;
    std::stack<StmtNode*> whileStk;
    InitValueListExpr* top;
    int leftCnt = 0;
    int paramNo = 0;
    #include <iostream>

#line 90 "src/parser.cpp"




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

#include "parser.h"
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_ID = 3,                         /* ID  */
  YYSYMBOL_INTEGER = 4,                    /* INTEGER  */
  YYSYMBOL_FLOATING = 5,                   /* FLOATING  */
  YYSYMBOL_IF = 6,                         /* IF  */
  YYSYMBOL_ELSE = 7,                       /* ELSE  */
  YYSYMBOL_WHILE = 8,                      /* WHILE  */
  YYSYMBOL_INT = 9,                        /* INT  */
  YYSYMBOL_VOID = 10,                      /* VOID  */
  YYSYMBOL_FLOAT = 11,                     /* FLOAT  */
  YYSYMBOL_LPAREN = 12,                    /* LPAREN  */
  YYSYMBOL_RPAREN = 13,                    /* RPAREN  */
  YYSYMBOL_LBRACE = 14,                    /* LBRACE  */
  YYSYMBOL_RBRACE = 15,                    /* RBRACE  */
  YYSYMBOL_SEMICOLON = 16,                 /* SEMICOLON  */
  YYSYMBOL_LBRACKET = 17,                  /* LBRACKET  */
  YYSYMBOL_RBRACKET = 18,                  /* RBRACKET  */
  YYSYMBOL_COMMA = 19,                     /* COMMA  */
  YYSYMBOL_ADD = 20,                       /* ADD  */
  YYSYMBOL_SUB = 21,                       /* SUB  */
  YYSYMBOL_MUL = 22,                       /* MUL  */
  YYSYMBOL_DIV = 23,                       /* DIV  */
  YYSYMBOL_MOD = 24,                       /* MOD  */
  YYSYMBOL_OR = 25,                        /* OR  */
  YYSYMBOL_AND = 26,                       /* AND  */
  YYSYMBOL_LESS = 27,                      /* LESS  */
  YYSYMBOL_LESSEQUAL = 28,                 /* LESSEQUAL  */
  YYSYMBOL_GREATER = 29,                   /* GREATER  */
  YYSYMBOL_GREATEREQUAL = 30,              /* GREATEREQUAL  */
  YYSYMBOL_ASSIGN = 31,                    /* ASSIGN  */
  YYSYMBOL_EQUAL = 32,                     /* EQUAL  */
  YYSYMBOL_NOTEQUAL = 33,                  /* NOTEQUAL  */
  YYSYMBOL_NOT = 34,                       /* NOT  */
  YYSYMBOL_CONST = 35,                     /* CONST  */
  YYSYMBOL_RETURN = 36,                    /* RETURN  */
  YYSYMBOL_CONTINUE = 37,                  /* CONTINUE  */
  YYSYMBOL_BREAK = 38,                     /* BREAK  */
  YYSYMBOL_THEN = 39,                      /* THEN  */
  YYSYMBOL_YYACCEPT = 40,                  /* $accept  */
  YYSYMBOL_Program = 41,                   /* Program  */
  YYSYMBOL_Stmts = 42,                     /* Stmts  */
  YYSYMBOL_Stmt = 43,                      /* Stmt  */
  YYSYMBOL_BlockStmt = 44,                 /* BlockStmt  */
  YYSYMBOL_45_1 = 45,                      /* $@1  */
  YYSYMBOL_BlankStmt = 46,                 /* BlankStmt  */
  YYSYMBOL_AssignStmt = 47,                /* AssignStmt  */
  YYSYMBOL_ExprStmt = 48,                  /* ExprStmt  */
  YYSYMBOL_IfStmt = 49,                    /* IfStmt  */
  YYSYMBOL_WhileStmt = 50,                 /* WhileStmt  */
  YYSYMBOL_51_2 = 51,                      /* @2  */
  YYSYMBOL_BreakStmt = 52,                 /* BreakStmt  */
  YYSYMBOL_ContinueStmt = 53,              /* ContinueStmt  */
  YYSYMBOL_ReturnStmt = 54,                /* ReturnStmt  */
  YYSYMBOL_Cond = 55,                      /* Cond  */
  YYSYMBOL_LOrExp = 56,                    /* LOrExp  */
  YYSYMBOL_LAndExp = 57,                   /* LAndExp  */
  YYSYMBOL_EqExp = 58,                     /* EqExp  */
  YYSYMBOL_RelExp = 59,                    /* RelExp  */
  YYSYMBOL_Exp = 60,                       /* Exp  */
  YYSYMBOL_ConstExp = 61,                  /* ConstExp  */
  YYSYMBOL_AddExp = 62,                    /* AddExp  */
  YYSYMBOL_MulExp = 63,                    /* MulExp  */
  YYSYMBOL_UnaryExp = 64,                  /* UnaryExp  */
  YYSYMBOL_PrimaryExp = 65,                /* PrimaryExp  */
  YYSYMBOL_LVal = 66,                      /* LVal  */
  YYSYMBOL_Type = 67,                      /* Type  */
  YYSYMBOL_FuncRParams = 68,               /* FuncRParams  */
  YYSYMBOL_DeclStmt = 69,                  /* DeclStmt  */
  YYSYMBOL_VarDefList = 70,                /* VarDefList  */
  YYSYMBOL_ConstDefList = 71,              /* ConstDefList  */
  YYSYMBOL_VarDef = 72,                    /* VarDef  */
  YYSYMBOL_73_3 = 73,                      /* @3  */
  YYSYMBOL_ConstDef = 74,                  /* ConstDef  */
  YYSYMBOL_75_4 = 75,                      /* @4  */
  YYSYMBOL_Array = 76,                     /* Array  */
  YYSYMBOL_ArrayInit = 77,                 /* ArrayInit  */
  YYSYMBOL_78_5 = 78,                      /* @5  */
  YYSYMBOL_ConstArrayInit = 79,            /* ConstArrayInit  */
  YYSYMBOL_80_6 = 80,                      /* @6  */
  YYSYMBOL_ArrayInitLIst = 81,             /* ArrayInitLIst  */
  YYSYMBOL_ConstArrayInitLIst = 82,        /* ConstArrayInitLIst  */
  YYSYMBOL_FuncDef = 83,                   /* FuncDef  */
  YYSYMBOL_84_7 = 84,                      /* $@7  */
  YYSYMBOL_85_8 = 85,                      /* @8  */
  YYSYMBOL_OptFuncFParams = 86,            /* OptFuncFParams  */
  YYSYMBOL_FuncFParams = 87,               /* FuncFParams  */
  YYSYMBOL_FuncFParam = 88,                /* FuncFParam  */
  YYSYMBOL_FuncArrayIndices = 89           /* FuncArrayIndices  */
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
#define YYFINAL  57
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   246

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  40
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  50
/* YYNRULES -- Number of rules.  */
#define YYNRULES  107
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  180

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   294


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
      35,    36,    37,    38,    39
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,    62,    62,    67,    68,    73,    74,    75,    76,    77,
      78,    79,    80,    81,    82,    83,    86,    89,    89,   100,
     105,   111,   117,   120,   125,   125,   138,   143,   148,   151,
     157,   160,   161,   167,   168,   174,   175,   179,   185,   188,
     192,   196,   200,   207,   210,   213,   214,   218,   224,   225,
     229,   233,   239,   240,   243,   246,   247,   251,   257,   260,
     263,   267,   273,   277,   283,   287,   291,   297,   298,   304,
     305,   308,   312,   315,   319,   322,   328,   335,   356,   356,
     384,   392,   392,   424,   427,   434,   463,   491,   491,   530,
     559,   587,   587,   638,   641,   646,   649,   655,   659,   655,
     682,   683,   685,   689,   694,   703,   726,   729
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
  "\"end of file\"", "error", "\"invalid token\"", "ID", "INTEGER",
  "FLOATING", "IF", "ELSE", "WHILE", "INT", "VOID", "FLOAT", "LPAREN",
  "RPAREN", "LBRACE", "RBRACE", "SEMICOLON", "LBRACKET", "RBRACKET",
  "COMMA", "ADD", "SUB", "MUL", "DIV", "MOD", "OR", "AND", "LESS",
  "LESSEQUAL", "GREATER", "GREATEREQUAL", "ASSIGN", "EQUAL", "NOTEQUAL",
  "NOT", "CONST", "RETURN", "CONTINUE", "BREAK", "THEN", "$accept",
  "Program", "Stmts", "Stmt", "BlockStmt", "$@1", "BlankStmt",
  "AssignStmt", "ExprStmt", "IfStmt", "WhileStmt", "@2", "BreakStmt",
  "ContinueStmt", "ReturnStmt", "Cond", "LOrExp", "LAndExp", "EqExp",
  "RelExp", "Exp", "ConstExp", "AddExp", "MulExp", "UnaryExp",
  "PrimaryExp", "LVal", "Type", "FuncRParams", "DeclStmt", "VarDefList",
  "ConstDefList", "VarDef", "@3", "ConstDef", "@4", "Array", "ArrayInit",
  "@5", "ConstArrayInit", "@6", "ArrayInitLIst", "ConstArrayInitLIst",
  "FuncDef", "$@7", "@8", "OptFuncFParams", "FuncFParams", "FuncFParam",
  "FuncArrayIndices", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-145)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-98)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     193,     8,  -145,  -145,    10,    36,  -145,  -145,  -145,   212,
       4,  -145,   212,   212,   212,    92,    12,    52,   103,    64,
     193,  -145,  -145,  -145,  -145,  -145,  -145,  -145,  -145,  -145,
    -145,   104,    37,    83,  -145,  -145,    90,   119,  -145,  -145,
      31,   212,   106,   212,   212,   115,  -145,  -145,   193,  -145,
    -145,  -145,   122,  -145,   118,  -145,  -145,  -145,  -145,  -145,
     212,   212,   212,   212,   212,   212,     6,    61,  -145,  -145,
    -145,    34,   113,    37,   212,   124,   110,   114,    56,    66,
      37,   125,  -145,   157,    -4,    81,  -145,  -145,    83,    83,
    -145,  -145,  -145,   126,   212,     9,   131,  -145,   141,  -145,
     212,  -145,   129,   193,   212,   212,   212,   212,   212,   212,
     212,   212,  -145,  -145,   212,    24,  -145,   122,  -145,  -145,
    -145,    92,    28,  -145,  -145,  -145,   143,   114,    56,    66,
      66,    37,    37,    37,    37,   193,  -145,  -145,  -145,    78,
     145,   138,   133,  -145,   193,  -145,   112,   139,  -145,  -145,
     136,  -145,    92,  -145,   140,  -145,  -145,  -145,    78,   152,
     158,   142,  -145,  -145,   112,  -145,    35,  -145,   212,  -145,
    -145,    48,  -145,    78,   156,  -145,   112,  -145,  -145,  -145
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_int8 yydefact[] =
{
       0,    62,    60,    61,     0,     0,    64,    65,    66,     0,
      17,    19,     0,     0,     0,     0,     0,     0,     0,     0,
       2,     3,     5,     6,     7,     8,     9,    10,    11,    12,
      13,     0,    43,    45,    48,    52,    59,     0,    14,    15,
       0,     0,    63,     0,     0,     0,    59,    16,     0,    55,
      56,    57,     0,    28,     0,    27,    26,     1,     4,    21,
       0,     0,     0,     0,     0,     0,    75,     0,    72,    54,
      67,     0,     0,    44,     0,     0,    30,    31,    33,    35,
      38,     0,    58,     0,     0,     0,    74,    29,    46,    47,
      49,    50,    51,     0,     0,    77,     0,    69,     0,    53,
       0,    83,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    24,    18,     0,     0,    70,     0,    20,    76,
      78,   101,    75,    71,    68,    84,    22,    32,    34,    36,
      37,    39,    40,    41,    42,     0,    80,    81,    73,     0,
       0,     0,   100,   103,     0,    25,     0,    87,    85,    79,
     104,    98,     0,    23,    91,    89,    82,    86,     0,     0,
     105,     0,   102,    90,     0,    93,     0,   106,     0,    99,
      95,     0,    88,     0,     0,    92,     0,    94,   107,    96
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -145,  -145,   109,   -17,    -3,  -145,  -145,  -145,  -145,  -145,
    -145,  -145,  -145,  -145,  -145,   132,  -145,    75,    76,     7,
      -9,   -36,   -35,    49,    -2,  -145,     1,   -13,  -145,  -145,
    -145,  -145,    82,  -145,    65,  -145,     3,  -144,  -145,  -134,
    -145,  -145,  -145,  -145,  -145,  -145,  -145,  -145,    32,  -145
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,    19,    20,    21,    22,    48,    23,    24,    25,    26,
      27,   135,    28,    29,    30,    75,    76,    77,    78,    79,
      31,   155,    32,    33,    34,    35,    46,    37,    71,    38,
      67,    85,    68,   139,    86,   146,    95,   149,   158,   156,
     164,   166,   171,    39,    96,   161,   141,   142,   143,   160
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      45,    36,    52,    58,    42,    72,    73,    54,    80,    80,
      49,    50,    51,    41,   165,     1,     2,     3,   -97,    47,
      40,    36,    43,    41,     9,    41,    74,   114,    53,   177,
     170,    70,    12,    13,     1,     2,     3,    94,   102,    73,
     120,    74,   179,     9,    69,    41,    14,    99,    44,    36,
     172,    12,    13,   100,   173,   137,    93,    60,    61,    94,
      90,    91,    92,   175,    57,    14,    58,   176,    55,    80,
      80,    80,    80,   131,   132,   133,   134,    97,   136,    73,
      98,     1,     2,     3,    36,   119,   126,   115,   106,   107,
       9,   124,   147,   108,   109,   110,   111,   116,    12,    13,
     117,     6,     7,     8,    36,    62,    63,    64,   140,    88,
      89,    73,    14,   129,   130,     1,     2,     3,   145,    56,
      59,    65,    66,    74,     9,    84,   154,   153,    82,    73,
     148,   101,    12,    13,    87,   104,    36,   103,   112,   140,
     105,    73,   118,   121,   122,    36,    14,   125,   150,   148,
     144,   151,   152,   159,   157,   163,    10,    83,   169,   174,
       1,     2,     3,     4,   148,     5,     6,     7,     8,     9,
     167,    10,   113,    11,   178,   168,    81,    12,    13,   127,
     123,   128,   138,     0,   162,     0,     0,     0,     0,     0,
       0,    14,    15,    16,    17,    18,     1,     2,     3,     4,
       0,     5,     6,     7,     8,     9,     0,    10,     0,    11,
       0,     0,     0,    12,    13,     1,     2,     3,     0,     0,
       0,     0,     0,     0,     9,     0,     0,    14,    15,    16,
      17,    18,    12,    13,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    14
};

static const yytype_int16 yycheck[] =
{
       9,     0,    15,    20,     1,    41,    41,    16,    43,    44,
      12,    13,    14,    17,   158,     3,     4,     5,    12,    15,
      12,    20,    12,    17,    12,    17,    17,    31,    16,   173,
     164,    40,    20,    21,     3,     4,     5,    31,    74,    74,
      31,    17,   176,    12,    13,    17,    34,    13,    12,    48,
      15,    20,    21,    19,    19,    31,    65,    20,    21,    31,
      62,    63,    64,    15,     0,    34,    83,    19,    16,   104,
     105,   106,   107,   108,   109,   110,   111,    16,   114,   114,
      19,     3,     4,     5,    83,    94,   103,    84,    32,    33,
      12,   100,    14,    27,    28,    29,    30,    16,    20,    21,
      19,     9,    10,    11,   103,    22,    23,    24,   121,    60,
      61,   146,    34,   106,   107,     3,     4,     5,   135,    16,
      16,    31,     3,    17,    12,     3,    14,   144,    13,   164,
     139,    18,    20,    21,    16,    25,   135,    13,    13,   152,
      26,   176,    16,    12,     3,   144,    34,    18,     3,   158,
       7,    13,    19,    17,    15,    15,    14,    48,   161,   168,
       3,     4,     5,     6,   173,     8,     9,    10,    11,    12,
      18,    14,    15,    16,    18,    17,    44,    20,    21,   104,
      98,   105,   117,    -1,   152,    -1,    -1,    -1,    -1,    -1,
      -1,    34,    35,    36,    37,    38,     3,     4,     5,     6,
      -1,     8,     9,    10,    11,    12,    -1,    14,    -1,    16,
      -1,    -1,    -1,    20,    21,     3,     4,     5,    -1,    -1,
      -1,    -1,    -1,    -1,    12,    -1,    -1,    34,    35,    36,
      37,    38,    20,    21,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    34
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,     3,     4,     5,     6,     8,     9,    10,    11,    12,
      14,    16,    20,    21,    34,    35,    36,    37,    38,    41,
      42,    43,    44,    46,    47,    48,    49,    50,    52,    53,
      54,    60,    62,    63,    64,    65,    66,    67,    69,    83,
      12,    17,    76,    12,    12,    60,    66,    15,    45,    64,
      64,    64,    67,    16,    60,    16,    16,     0,    43,    16,
      20,    21,    22,    23,    24,    31,     3,    70,    72,    13,
      60,    68,    61,    62,    17,    55,    56,    57,    58,    59,
      62,    55,    13,    42,     3,    71,    74,    16,    63,    63,
      64,    64,    64,    60,    31,    76,    84,    16,    19,    13,
      19,    18,    61,    13,    25,    26,    32,    33,    27,    28,
      29,    30,    13,    15,    31,    76,    16,    19,    16,    60,
      31,    12,     3,    72,    60,    18,    43,    57,    58,    59,
      59,    62,    62,    62,    62,    51,    61,    31,    74,    73,
      67,    86,    87,    88,     7,    43,    75,    14,    60,    77,
       3,    13,    19,    43,    14,    61,    79,    15,    78,    17,
      89,    85,    88,    15,    80,    77,    81,    18,    17,    44,
      79,    82,    15,    19,    60,    15,    19,    77,    18,    79
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    40,    41,    42,    42,    43,    43,    43,    43,    43,
      43,    43,    43,    43,    43,    43,    44,    45,    44,    46,
      47,    48,    49,    49,    51,    50,    52,    53,    54,    54,
      55,    56,    56,    57,    57,    58,    58,    58,    59,    59,
      59,    59,    59,    60,    61,    62,    62,    62,    63,    63,
      63,    63,    64,    64,    64,    64,    64,    64,    65,    65,
      65,    65,    66,    66,    67,    67,    67,    68,    68,    69,
      69,    70,    70,    71,    71,    72,    72,    72,    73,    72,
      74,    75,    74,    76,    76,    77,    77,    78,    77,    79,
      79,    80,    79,    81,    81,    82,    82,    84,    85,    83,
      86,    86,    87,    87,    88,    88,    89,    89
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     1,     2,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     1,     2,     0,     4,     1,
       4,     2,     5,     7,     0,     6,     2,     2,     2,     3,
       1,     1,     3,     1,     3,     1,     3,     3,     1,     3,
       3,     3,     3,     1,     1,     1,     3,     3,     1,     3,
       3,     3,     1,     4,     3,     2,     2,     2,     3,     1,
       1,     1,     1,     2,     1,     1,     1,     1,     3,     3,
       4,     3,     1,     3,     1,     1,     3,     2,     0,     5,
       3,     0,     5,     3,     4,     1,     2,     0,     4,     1,
       2,     0,     4,     1,     3,     1,     3,     0,     0,     8,
       1,     0,     3,     1,     2,     3,     2,     4
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
  case 2: /* Program: Stmts  */
#line 62 "src/parser.y"
            {
        ast.setRoot((yyvsp[0].stmttype));
    }
#line 1311 "src/parser.cpp"
    break;

  case 3: /* Stmts: Stmt  */
#line 67 "src/parser.y"
           {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1317 "src/parser.cpp"
    break;

  case 4: /* Stmts: Stmts Stmt  */
#line 68 "src/parser.y"
                {
        (yyval.stmttype) = new SeqNode((yyvsp[-1].stmttype), (yyvsp[0].stmttype));
    }
#line 1325 "src/parser.cpp"
    break;

  case 5: /* Stmt: BlockStmt  */
#line 73 "src/parser.y"
                {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1331 "src/parser.cpp"
    break;

  case 6: /* Stmt: BlankStmt  */
#line 74 "src/parser.y"
                {(yyval.stmttype) = (yyvsp[0].stmttype);}
#line 1337 "src/parser.cpp"
    break;

  case 7: /* Stmt: AssignStmt  */
#line 75 "src/parser.y"
                 {(yyval.stmttype)=(yyvsp[0].stmttype);}
#line 1343 "src/parser.cpp"
    break;

  case 8: /* Stmt: ExprStmt  */
#line 76 "src/parser.y"
               {(yyval.stmttype) = (yyvsp[0].stmttype);}
#line 1349 "src/parser.cpp"
    break;

  case 9: /* Stmt: IfStmt  */
#line 77 "src/parser.y"
             {(yyval.stmttype) = (yyvsp[0].stmttype);}
#line 1355 "src/parser.cpp"
    break;

  case 10: /* Stmt: WhileStmt  */
#line 78 "src/parser.y"
                {(yyval.stmttype) = (yyvsp[0].stmttype);}
#line 1361 "src/parser.cpp"
    break;

  case 11: /* Stmt: BreakStmt  */
#line 79 "src/parser.y"
                { (yyval.stmttype)=(yyvsp[0].stmttype); }
#line 1367 "src/parser.cpp"
    break;

  case 12: /* Stmt: ContinueStmt  */
#line 80 "src/parser.y"
                   { (yyval.stmttype)=(yyvsp[0].stmttype); }
#line 1373 "src/parser.cpp"
    break;

  case 13: /* Stmt: ReturnStmt  */
#line 81 "src/parser.y"
                 {(yyval.stmttype) = (yyvsp[0].stmttype);}
#line 1379 "src/parser.cpp"
    break;

  case 14: /* Stmt: DeclStmt  */
#line 82 "src/parser.y"
               {(yyval.stmttype) = (yyvsp[0].stmttype);}
#line 1385 "src/parser.cpp"
    break;

  case 15: /* Stmt: FuncDef  */
#line 83 "src/parser.y"
              {(yyval.stmttype) = (yyvsp[0].stmttype);}
#line 1391 "src/parser.cpp"
    break;

  case 16: /* BlockStmt: LBRACE RBRACE  */
#line 86 "src/parser.y"
                    {
        (yyval.stmttype) = new CompoundStmt();
    }
#line 1399 "src/parser.cpp"
    break;

  case 17: /* $@1: %empty  */
#line 89 "src/parser.y"
             {
        identifiers = new SymbolTable(identifiers);
    }
#line 1407 "src/parser.cpp"
    break;

  case 18: /* BlockStmt: LBRACE $@1 Stmts RBRACE  */
#line 92 "src/parser.y"
                   {
        (yyval.stmttype) = new CompoundStmt((yyvsp[-1].stmttype));
        SymbolTable* temp = identifiers;
        identifiers = identifiers->getPrev();
        delete temp;
    }
#line 1418 "src/parser.cpp"
    break;

  case 19: /* BlankStmt: SEMICOLON  */
#line 100 "src/parser.y"
                {
        (yyval.stmttype) = new BlankStmt();
    }
#line 1426 "src/parser.cpp"
    break;

  case 20: /* AssignStmt: LVal ASSIGN Exp SEMICOLON  */
#line 105 "src/parser.y"
                                {
        (yyval.stmttype) = new AssignStmt((yyvsp[-3].exprtype), (yyvsp[-1].exprtype));
    }
#line 1434 "src/parser.cpp"
    break;

  case 21: /* ExprStmt: Exp SEMICOLON  */
#line 111 "src/parser.y"
                    {
        (yyval.stmttype) = new ExprStmt((yyvsp[-1].exprtype));
    }
#line 1442 "src/parser.cpp"
    break;

  case 22: /* IfStmt: IF LPAREN Cond RPAREN Stmt  */
#line 117 "src/parser.y"
                                            {
        (yyval.stmttype) = new IfStmt((yyvsp[-2].exprtype), (yyvsp[0].stmttype));
    }
#line 1450 "src/parser.cpp"
    break;

  case 23: /* IfStmt: IF LPAREN Cond RPAREN Stmt ELSE Stmt  */
#line 120 "src/parser.y"
                                           {
        (yyval.stmttype) = new IfElseStmt((yyvsp[-4].exprtype), (yyvsp[-2].stmttype), (yyvsp[0].stmttype));
    }
#line 1458 "src/parser.cpp"
    break;

  case 24: /* @2: %empty  */
#line 125 "src/parser.y"
                               {
        WhileStmt *whileNode = new WhileStmt((yyvsp[-1].exprtype));
        (yyval.stmttype) = whileNode;
        whileStk.push(whileNode);
    }
#line 1468 "src/parser.cpp"
    break;

  case 25: /* WhileStmt: WHILE LPAREN Cond RPAREN @2 Stmt  */
#line 130 "src/parser.y"
         {
        StmtNode *whileNode = (yyvsp[-1].stmttype); 
        ((WhileStmt*)whileNode)->setStmt((yyvsp[0].stmttype));
        (yyval.stmttype)=whileNode;
        whileStk.pop();
    }
#line 1479 "src/parser.cpp"
    break;

  case 26: /* BreakStmt: BREAK SEMICOLON  */
#line 138 "src/parser.y"
                      {
        (yyval.stmttype) = new BreakStmt(whileStk.top());
    }
#line 1487 "src/parser.cpp"
    break;

  case 27: /* ContinueStmt: CONTINUE SEMICOLON  */
#line 143 "src/parser.y"
                         {
        (yyval.stmttype) = new ContinueStmt(whileStk.top());
    }
#line 1495 "src/parser.cpp"
    break;

  case 28: /* ReturnStmt: RETURN SEMICOLON  */
#line 148 "src/parser.y"
                       {
        (yyval.stmttype) = new ReturnStmt();
    }
#line 1503 "src/parser.cpp"
    break;

  case 29: /* ReturnStmt: RETURN Exp SEMICOLON  */
#line 151 "src/parser.y"
                           {
        (yyval.stmttype) = new ReturnStmt((yyvsp[-1].exprtype));
    }
#line 1511 "src/parser.cpp"
    break;

  case 30: /* Cond: LOrExp  */
#line 157 "src/parser.y"
           {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 1517 "src/parser.cpp"
    break;

  case 31: /* LOrExp: LAndExp  */
#line 160 "src/parser.y"
              {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 1523 "src/parser.cpp"
    break;

  case 32: /* LOrExp: LOrExp OR LAndExp  */
#line 161 "src/parser.y"
                        {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::OR, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1532 "src/parser.cpp"
    break;

  case 33: /* LAndExp: EqExp  */
#line 167 "src/parser.y"
            {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 1538 "src/parser.cpp"
    break;

  case 34: /* LAndExp: LAndExp AND EqExp  */
#line 168 "src/parser.y"
                        {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::AND, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1547 "src/parser.cpp"
    break;

  case 35: /* EqExp: RelExp  */
#line 174 "src/parser.y"
             {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 1553 "src/parser.cpp"
    break;

  case 36: /* EqExp: EqExp EQUAL RelExp  */
#line 175 "src/parser.y"
                         {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::EQUAL, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1562 "src/parser.cpp"
    break;

  case 37: /* EqExp: EqExp NOTEQUAL RelExp  */
#line 179 "src/parser.y"
                            {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::NOTEQUAL, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1571 "src/parser.cpp"
    break;

  case 38: /* RelExp: AddExp  */
#line 185 "src/parser.y"
             {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1579 "src/parser.cpp"
    break;

  case 39: /* RelExp: RelExp LESS AddExp  */
#line 188 "src/parser.y"
                         {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::LESS, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1588 "src/parser.cpp"
    break;

  case 40: /* RelExp: RelExp LESSEQUAL AddExp  */
#line 192 "src/parser.y"
                              {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::LESSEQUAL, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1597 "src/parser.cpp"
    break;

  case 41: /* RelExp: RelExp GREATER AddExp  */
#line 196 "src/parser.y"
                            {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::GREATER, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1606 "src/parser.cpp"
    break;

  case 42: /* RelExp: RelExp GREATEREQUAL AddExp  */
#line 200 "src/parser.y"
                                 {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::GREATEREQUAL, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1615 "src/parser.cpp"
    break;

  case 43: /* Exp: AddExp  */
#line 207 "src/parser.y"
           {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 1621 "src/parser.cpp"
    break;

  case 44: /* ConstExp: AddExp  */
#line 210 "src/parser.y"
             {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 1627 "src/parser.cpp"
    break;

  case 45: /* AddExp: MulExp  */
#line 213 "src/parser.y"
             {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 1633 "src/parser.cpp"
    break;

  case 46: /* AddExp: AddExp ADD MulExp  */
#line 214 "src/parser.y"
                        {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::ADD, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1642 "src/parser.cpp"
    break;

  case 47: /* AddExp: AddExp SUB MulExp  */
#line 218 "src/parser.y"
                        {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::SUB, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1651 "src/parser.cpp"
    break;

  case 48: /* MulExp: UnaryExp  */
#line 224 "src/parser.y"
               {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 1657 "src/parser.cpp"
    break;

  case 49: /* MulExp: MulExp MUL UnaryExp  */
#line 225 "src/parser.y"
                          {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::MUL, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1666 "src/parser.cpp"
    break;

  case 50: /* MulExp: MulExp DIV UnaryExp  */
#line 229 "src/parser.y"
                          {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::DIV, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1675 "src/parser.cpp"
    break;

  case 51: /* MulExp: MulExp MOD UnaryExp  */
#line 233 "src/parser.y"
                          {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new BinaryExpr(se, BinaryExpr::MOD, (yyvsp[-2].exprtype), (yyvsp[0].exprtype));
    }
#line 1684 "src/parser.cpp"
    break;

  case 52: /* UnaryExp: PrimaryExp  */
#line 239 "src/parser.y"
                 {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 1690 "src/parser.cpp"
    break;

  case 53: /* UnaryExp: ID LPAREN FuncRParams RPAREN  */
#line 240 "src/parser.y"
                                   {
        (yyval.exprtype) = new CallExpr(identifiers->lookup((yyvsp[-3].strtype)), (yyvsp[-1].exprtype));
    }
#line 1698 "src/parser.cpp"
    break;

  case 54: /* UnaryExp: ID LPAREN RPAREN  */
#line 243 "src/parser.y"
                       {
        (yyval.exprtype) = new CallExpr(identifiers->lookup((yyvsp[-2].strtype)));
    }
#line 1706 "src/parser.cpp"
    break;

  case 55: /* UnaryExp: ADD UnaryExp  */
#line 246 "src/parser.y"
                   {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 1712 "src/parser.cpp"
    break;

  case 56: /* UnaryExp: SUB UnaryExp  */
#line 247 "src/parser.y"
                   {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::intType, SymbolTable::getLabel());
        (yyval.exprtype) = new UnaryExpr(se, UnaryExpr::SUB, (yyvsp[0].exprtype));
    }
#line 1721 "src/parser.cpp"
    break;

  case 57: /* UnaryExp: NOT UnaryExp  */
#line 251 "src/parser.y"
                   {
        SymbolEntry* se = new TemporarySymbolEntry(TypeSystem::boolType, SymbolTable::getLabel());
        (yyval.exprtype) = new UnaryExpr(se, UnaryExpr::NOT, (yyvsp[0].exprtype));
    }
#line 1730 "src/parser.cpp"
    break;

  case 58: /* PrimaryExp: LPAREN Exp RPAREN  */
#line 257 "src/parser.y"
                        {
        (yyval.exprtype) = (yyvsp[-1].exprtype);
    }
#line 1738 "src/parser.cpp"
    break;

  case 59: /* PrimaryExp: LVal  */
#line 260 "src/parser.y"
           {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 1746 "src/parser.cpp"
    break;

  case 60: /* PrimaryExp: INTEGER  */
#line 263 "src/parser.y"
              {
        SymbolEntry* se = new ConstantSymbolEntry(TypeSystem::intType, (yyvsp[0].itype));
        (yyval.exprtype) = new Constant(se);
    }
#line 1755 "src/parser.cpp"
    break;

  case 61: /* PrimaryExp: FLOATING  */
#line 267 "src/parser.y"
               {
        SymbolEntry* se = new ConstantSymbolEntry(TypeSystem::intType, (yyvsp[0].ftype));
        (yyval.exprtype) = new Constant(se);
    }
#line 1764 "src/parser.cpp"
    break;

  case 62: /* LVal: ID  */
#line 273 "src/parser.y"
         {
        (yyval.exprtype) = new Id(identifiers->lookup((yyvsp[0].strtype)));
        delete [](yyvsp[0].strtype);
    }
#line 1773 "src/parser.cpp"
    break;

  case 63: /* LVal: ID Array  */
#line 277 "src/parser.y"
              {
        (yyval.exprtype) = new Id(identifiers->lookup((yyvsp[-1].strtype)), (yyvsp[0].exprtype));
        delete [](yyvsp[-1].strtype);
    }
#line 1782 "src/parser.cpp"
    break;

  case 64: /* Type: INT  */
#line 283 "src/parser.y"
          {
        dtype = TypeSystem::intType;
        (yyval.type) = dtype;
    }
#line 1791 "src/parser.cpp"
    break;

  case 65: /* Type: VOID  */
#line 287 "src/parser.y"
           {
        dtype = TypeSystem::voidType;
        (yyval.type) = dtype;
    }
#line 1800 "src/parser.cpp"
    break;

  case 66: /* Type: FLOAT  */
#line 291 "src/parser.y"
            {
        //dtype = TypeSystem::floatType;
        (yyval.type) = dtype;
    }
#line 1809 "src/parser.cpp"
    break;

  case 67: /* FuncRParams: Exp  */
#line 297 "src/parser.y"
          {(yyval.exprtype) = (yyvsp[0].exprtype);}
#line 1815 "src/parser.cpp"
    break;

  case 68: /* FuncRParams: FuncRParams COMMA Exp  */
#line 298 "src/parser.y"
                            {
        (yyval.exprtype) = (yyvsp[-2].exprtype);
        (yyval.exprtype)->setNext((yyvsp[0].exprtype));
    }
#line 1824 "src/parser.cpp"
    break;

  case 69: /* DeclStmt: Type VarDefList SEMICOLON  */
#line 304 "src/parser.y"
                                {(yyval.stmttype) = (yyvsp[-1].stmttype);}
#line 1830 "src/parser.cpp"
    break;

  case 70: /* DeclStmt: CONST Type ConstDefList SEMICOLON  */
#line 305 "src/parser.y"
                                        {(yyval.stmttype) = (yyvsp[-1].stmttype);}
#line 1836 "src/parser.cpp"
    break;

  case 71: /* VarDefList: VarDefList COMMA VarDef  */
#line 308 "src/parser.y"
                              {
        (yyvsp[-2].stmttype)->setNext((yyvsp[0].stmttype));
        (yyval.stmttype) = (yyvsp[-2].stmttype);
    }
#line 1845 "src/parser.cpp"
    break;

  case 72: /* VarDefList: VarDef  */
#line 312 "src/parser.y"
             {(yyval.stmttype) = (yyvsp[0].stmttype);}
#line 1851 "src/parser.cpp"
    break;

  case 73: /* ConstDefList: ConstDefList COMMA ConstDef  */
#line 315 "src/parser.y"
                                  {
        (yyvsp[-2].stmttype)->setNext((yyvsp[0].stmttype));
        (yyval.stmttype) = (yyvsp[-2].stmttype);
    }
#line 1860 "src/parser.cpp"
    break;

  case 74: /* ConstDefList: ConstDef  */
#line 319 "src/parser.y"
               {(yyval.stmttype) = (yyvsp[0].stmttype);}
#line 1866 "src/parser.cpp"
    break;

  case 75: /* VarDef: ID  */
#line 322 "src/parser.y"
         {
        SymbolEntry* se = new IdentifierSymbolEntry(TypeSystem::intType, (yyvsp[0].strtype), identifiers->getLevel());
        identifiers->install((yyvsp[0].strtype), se);
        (yyval.stmttype) = new DeclStmt(new Id(se));
        delete [](yyvsp[0].strtype);
    }
#line 1877 "src/parser.cpp"
    break;

  case 76: /* VarDef: ID ASSIGN Exp  */
#line 328 "src/parser.y"
                    {
        IdentifierSymbolEntry* se = new IdentifierSymbolEntry(TypeSystem::intType, (yyvsp[-2].strtype), identifiers->getLevel());
        se->setValue((yyvsp[0].exprtype)->getValue());
        identifiers->install((yyvsp[-2].strtype), se);
        (yyval.stmttype) = new DeclStmt(new Id(se), (yyvsp[0].exprtype));
        delete [](yyvsp[-2].strtype);
    }
#line 1889 "src/parser.cpp"
    break;

  case 77: /* VarDef: ID Array  */
#line 335 "src/parser.y"
               {
        std::vector<int> arrayDim; // 用于存储数组维度
        ExprNode* arrayDecl = (yyvsp[0].exprtype);  // 数组索引[4][3][5] 存储顺序 4->3->5
        while (arrayDecl) { // 需要从最低维度开始 往高维生成ArrayType 5->3->4 
            arrayDim.push_back(arrayDecl->getValue());
            arrayDecl = (ExprNode*)(arrayDecl->getNext());
        }
        //从最低维开始 生成ArrayType  ....ArrayType[ArrayType[IntType]]....
        ArrayType* tempType = new ArrayType(dtype, arrayDim.back());
        arrayDim.pop_back();
        while (!arrayDim.empty()) {
            tempType = new ArrayType(tempType, arrayDim.back());
            arrayDim.pop_back();
        }
        IdentifierSymbolEntry* se = new IdentifierSymbolEntry(tempType, (yyvsp[-1].strtype), identifiers->getLevel());
        int *p = new int[tempType->getSize()];
        se->setArrayValue(p);
        identifiers->install((yyvsp[-1].strtype), se);
        (yyval.stmttype) = new DeclStmt(new Id(se));
        delete [](yyvsp[-1].strtype);
    }
#line 1915 "src/parser.cpp"
    break;

  case 78: /* @3: %empty  */
#line 356 "src/parser.y"
                      {
        std::vector<int> arrayDim;
        ExprNode* arrayDecl = (yyvsp[-1].exprtype);
        while (arrayDecl) {
            arrayDim.push_back(arrayDecl->getValue());
            arrayDecl = (ExprNode*)(arrayDecl->getNext());
        }
        ArrayType* tempType = new ArrayType(dtype, arrayDim.back());
        arrayDim.pop_back();
        while (!arrayDim.empty()) {
            tempType = new ArrayType(tempType, arrayDim.back());
            arrayDim.pop_back();
        }
        SymbolEntry* se = new IdentifierSymbolEntry(tempType, (yyvsp[-2].strtype), identifiers->getLevel());
        arrayValue = new int[tempType->getSize()];
        std::stack<InitValueListExpr*>().swap(stk);
        arrayType = tempType;
        arrayIndex = 0;
        (yyval.se) = se;
    }
#line 1940 "src/parser.cpp"
    break;

  case 79: /* VarDef: ID Array ASSIGN @3 ArrayInit  */
#line 376 "src/parser.y"
                {
        ((IdentifierSymbolEntry*)(yyvsp[-1].se))->setArrayValue(arrayValue);
        identifiers->install((yyvsp[-4].strtype), (yyvsp[-1].se));
        (yyval.stmttype) = new DeclStmt(new Id((yyvsp[-1].se)), (yyvsp[0].exprtype));
        delete [](yyvsp[-4].strtype);
    }
#line 1951 "src/parser.cpp"
    break;

  case 80: /* ConstDef: ID ASSIGN ConstExp  */
#line 384 "src/parser.y"
                         {
        IdentifierSymbolEntry* se = new IdentifierSymbolEntry(TypeSystem::constIntType, (yyvsp[-2].strtype), identifiers->getLevel());
        se->setConst();
        se->setValue((yyvsp[0].exprtype)->getValue());
        identifiers->install((yyvsp[-2].strtype), se);
        (yyval.stmttype) = new DeclStmt(new Id(se), (yyvsp[0].exprtype));
        delete [](yyvsp[-2].strtype);
    }
#line 1964 "src/parser.cpp"
    break;

  case 81: /* @4: %empty  */
#line 392 "src/parser.y"
                       {
        std::vector<int> arrayDim;
        ExprNode* arrayDecl = (yyvsp[-1].exprtype);
        while (arrayDecl) {
            arrayDim.push_back(arrayDecl->getValue());
            arrayDecl = (ExprNode*)(arrayDecl->getNext());
        }
        if(dtype == TypeSystem::intType){
            dtype = TypeSystem::constIntType;
        }
        ArrayType* tempType = new ArrayType(dtype, arrayDim.back());
        arrayDim.pop_back();
        while (!arrayDim.empty()) {
            tempType = new ArrayType(tempType, arrayDim.back());
            arrayDim.pop_back();
        }
        SymbolEntry* se = new IdentifierSymbolEntry(tempType, (yyvsp[-2].strtype), identifiers->getLevel());
        ((IdentifierSymbolEntry*)se)->setConst();
        arrayValue = new int[tempType->getSize()];
        std::stack<InitValueListExpr*>().swap(stk);
        arrayType = tempType;
        arrayIndex = 0;
        (yyval.se) = se;
    }
#line 1993 "src/parser.cpp"
    break;

  case 82: /* ConstDef: ID Array ASSIGN @4 ConstArrayInit  */
#line 416 "src/parser.y"
                     {
        ((IdentifierSymbolEntry*)(yyvsp[-1].se))->setArrayValue(arrayValue);
        identifiers->install((yyvsp[-4].strtype), (yyvsp[-1].se));
        (yyval.stmttype) = new DeclStmt(new Id((yyvsp[-1].se)), (yyvsp[0].exprtype));
        delete [](yyvsp[-4].strtype);
    }
#line 2004 "src/parser.cpp"
    break;

  case 83: /* Array: LBRACKET ConstExp RBRACKET  */
#line 424 "src/parser.y"
                                 {
        (yyval.exprtype) = (yyvsp[-1].exprtype);
    }
#line 2012 "src/parser.cpp"
    break;

  case 84: /* Array: Array LBRACKET ConstExp RBRACKET  */
#line 427 "src/parser.y"
                                       {
        (yyval.exprtype) = (yyvsp[-3].exprtype);
        (yyvsp[-3].exprtype)->setNext((yyvsp[-1].exprtype));
    }
#line 2021 "src/parser.cpp"
    break;

  case 85: /* ArrayInit: Exp  */
#line 434 "src/parser.y"
          {
        arrayValue[arrayIndex++] = (yyvsp[0].exprtype)->getValue();
        //进入某{}中  获取当前正在处理的{}的ArrayType 存储在top中
        Type* arrTy = stk.top()->getSymbolEntry()->getType();
        while(arrTy){
            //如果当前是在最低维(或是找到的最低维)  即当前维度的元素为IntType 则将Exp加入树中
            if(((ArrayType*)arrTy)->getElementType() == TypeSystem::intType){
                stk.top()->addExpr((yyvsp[0].exprtype)); //加入树中
                // 每个括号都用一个initListExp存
                // 每进一层{} stk中多一个InitListExp子结点 leftCnt++
                // 若到达} 即当前{}处理完毕 { {|}, {3,4}  }
                // 将stk中已经赋值满的子结点pop出  且栈中剩下的节点数不能少于当前 "{" 数相同
                // 即回退到倒数第二维 通过else部分再次进入最低维的第二个数组
                while(stk.top()->isFull() && stk.size() != (long unsigned int)leftCnt){
                    arrTy = ((ArrayType*)arrTy)->getArrayType();
                    stk.pop();
                }
                break;
            }else{ // 不是在最低维 即出现了用Exp初始化某一维度的情况 只赋值第一个数
                // 例如 a[3][4] = {Exp} top->getType为ArrayType getElementType还是ArrayType
                // 获取元素类型 假设再次进入一个{} 新增一个InitValueListExpr 尝试找到最低维来赋值
                arrTy = ((ArrayType*)arrTy)->getElementType();
                SymbolEntry* se = new ConstantSymbolEntry(arrTy);
                InitValueListExpr* list = new InitValueListExpr(se);
                stk.top()->addExpr(list);
                stk.push(list);
            }
        }
    }
#line 2055 "src/parser.cpp"
    break;

  case 86: /* ArrayInit: LBRACE RBRACE  */
#line 463 "src/parser.y"
                    {
        if(stk.empty()){//整个数组初始化为空 {} 初始化完毕
            arrayIndex += arrayType->getSize() / 32;
            SymbolEntry* se = new ConstantSymbolEntry(arrayType);
            ExprNode* list = new InitValueListExpr(se);
            (yyval.exprtype) = list;
        } else {// 当前维度为空 {} 
            // top存储当前正在初始化的维度的ArrayType 
            // 如 a[5][4] = {|{1,2},{2,3},{4,4}} 此时top为 ArrayType[ArrayType[IntType]] 
            // a[5][4] = {{1,|2},{2,3},{4,4}} 此时top为 ArrayType[IntType] 
            // 获取当前正在初始化的元素类型(即top的元素type) 将其全都赋值为空
            ArrayType* arrTy = (ArrayType*)stk.top()->getSymbolEntry()->getType();
            Type* type = arrTy->getElementType();
            arrayIndex += type->getSize() / 32;
            SymbolEntry* se = new ConstantSymbolEntry(type);
            ExprNode* list = new InitValueListExpr(se);
            stk.top()->addExpr(list);
            // 每个括号都用一个initListExp存
            // 每进一层{} stk中多一个InitListExp子结点 leftCnt++
            // 若到达} 即当前{}处理完毕 { {|}, {3,4}  }
            // 将stk中已经赋值满的子结点pop出  且栈中剩下的节点数不能少于当前 "{" 数相同
            // 即回退到当前初始化维度的上一维 并寻找其(也是当前维的)下一个元素
            while(stk.top()->isFull() && stk.size() != (long unsigned int)leftCnt){
                stk.pop();
            }
            (yyval.exprtype) = list;
        }
    }
#line 2088 "src/parser.cpp"
    break;

  case 87: /* @5: %empty  */
#line 491 "src/parser.y"
             {
        // top存储当前正在初始化的维度的ArrayType 
        // 如 a[5][4] = {|{1,2},{2,3},{4,4}} 此时top为 ArrayType[ArrayType[IntType]] 
        // a[5][4] = {{1,|2},{2,3},{4,4}} 此时top为 ArrayType[IntType] 

        // 如果当前栈为空 则第一次进入{} arrayType即为ASSIGN前面的Type
        // 如果不为空 则获取top节点的ArrayType 即当前要进行初始化维度的Array类型
        if(!stk.empty()){
            ArrayType* topType = (ArrayType*)stk.top()->getSymbolEntry()->getType(); //{ {}, {} }外层括号的类型
            arrayType = (ArrayType*)topType->getElementType();//即为该{}的类型
        }
        SymbolEntry* se = new ConstantSymbolEntry(arrayType);
        // 之后开始初始化当前维度的元素 即进入下一层
        // 若为不为IntType说明下一层不会直接进入Exp 而是进入{} 
        // 此时arrayType应当为下一层{}的类型
        if(arrayType->getElementType() != TypeSystem::intType){
            arrayType = (ArrayType*)(arrayType->getElementType());
        }
        // 为要进入的{}新建一个InitListExp
        InitValueListExpr* expr = new InitValueListExpr(se);
        if(!stk.empty()) //若stk中有节点 需要add
            stk.top()->addExpr(expr);
        stk.push(expr); //压栈
        (yyval.exprtype) = expr;
        leftCnt++; //“{”计数加
    }
#line 2119 "src/parser.cpp"
    break;

  case 88: /* ArrayInit: LBRACE @5 ArrayInitLIst RBRACE  */
#line 517 "src/parser.y"
                           {
        leftCnt--;  //“{”计数减
        (yyval.exprtype) = (yyvsp[-2].exprtype);
        //{{},{}} 当前(内层){}已经初始化完毕 回退到上一维度的状态  即继续初始化(外层){}内的元素
        while(stk.size() != (long unsigned int)(leftCnt)){
            stk.pop();
        }
        int size = ((ArrayType*)((yyval.exprtype)->getSymbolEntry()->getType()))->getSize()/ 32;
        arrayIndex += size - arrayIndex % size; //round
    }
#line 2134 "src/parser.cpp"
    break;

  case 89: /* ConstArrayInit: ConstExp  */
#line 530 "src/parser.y"
               {
        arrayValue[arrayIndex++] = (yyvsp[0].exprtype)->getValue();
        //进入某{}中  获取当前正在处理的{}的ArrayType 存储在top中
        Type* arrTy = stk.top()->getSymbolEntry()->getType();
        while(arrTy){
            //如果当前是在最低维(或是找到的最低维)  即当前维度的元素为IntType 则将Exp加入树中
            if(((ArrayType*)arrTy)->getElementType() == TypeSystem::constIntType){
                stk.top()->addExpr((yyvsp[0].exprtype)); //加入树中
                // 每个括号都用一个initListExp存
                // 每进一层{} stk中多一个InitListExp子结点 leftCnt++
                // 若到达} 即当前{}处理完毕 { {|}, {3,4}  }
                // 将stk中已经赋值满的子结点pop出  且栈中剩下的节点数不能少于当前 "{" 数相同
                // 即回退到倒数第二维 通过else部分再次进入最低维的第二个数组
                while(stk.top()->isFull() && stk.size() != (long unsigned int)leftCnt){
                    arrTy = ((ArrayType*)arrTy)->getArrayType();
                    stk.pop();
                }
                break;
            }else{ // 不是在最低维 即出现了用Exp初始化某一维度的情况 只赋值第一个数
                // 例如 a[3][4] = {Exp} top->getType为ArrayType getElementType还是ArrayType
                // 获取元素类型 假设再次进入一个{} 新增一个InitValueListExpr 尝试找到最低维来赋值
                arrTy = ((ArrayType*)arrTy)->getElementType();
                SymbolEntry* se = new ConstantSymbolEntry(arrTy);
                InitValueListExpr* list = new InitValueListExpr(se);
                stk.top()->addExpr(list);
                stk.push(list);
            }
        }
    }
#line 2168 "src/parser.cpp"
    break;

  case 90: /* ConstArrayInit: LBRACE RBRACE  */
#line 559 "src/parser.y"
                    {
        if(stk.empty()){//整个数组初始化为空 {} 初始化完毕
            arrayIndex += arrayType->getSize() / 32;
            SymbolEntry* se = new ConstantSymbolEntry(arrayType);
            ExprNode* list = new InitValueListExpr(se);
            (yyval.exprtype) = list;
        } else {// 当前维度为空 {} 
            // top存储当前正在初始化的维度的ArrayType 
            // 如 a[5][4] = {|{1,2},{2,3},{4,4}} 此时top为 ArrayType[ArrayType[IntType]] 
            // a[5][4] = {{1,|2},{2,3},{4,4}} 此时top为 ArrayType[IntType] 
            // 获取当前正在初始化的元素类型(即top的元素type) 将其全都赋值为空
            ArrayType* arrTy = (ArrayType*)stk.top()->getSymbolEntry()->getType();
            Type* type = arrTy->getElementType();
            arrayIndex += type->getSize() / 32;
            SymbolEntry* se = new ConstantSymbolEntry(type);
            ExprNode* list = new InitValueListExpr(se);
            stk.top()->addExpr(list);
            // 每个括号都用一个initListExp存
            // 每进一层{} stk中多一个InitListExp子结点 leftCnt++
            // 若到达} 即当前{}处理完毕 { {|}, {3,4}  }
            // 将stk中已经赋值满的子结点pop出  且栈中剩下的节点数不能少于当前 "{" 数相同
            // 即回退到当前初始化维度的上一维 并寻找其(也是当前维的)下一个元素
            while(stk.top()->isFull() && stk.size() != (long unsigned int)leftCnt){
                stk.pop();
            }
            (yyval.exprtype) = list;
        }
    }
#line 2201 "src/parser.cpp"
    break;

  case 91: /* @6: %empty  */
#line 587 "src/parser.y"
             {
        // top存储当前正在初始化的维度的ArrayType 
        // 如 a[5][4] = {|{1,2},{2,3},{4,4}} 此时top为 ArrayType[ArrayType[IntType]] 
        // a[5][4] = {{1,|2},{2,3},{4,4}} 此时top为 ArrayType[IntType] 

        // 如果当前栈为空 则第一次进入{} arrayType即为ASSIGN前面的Type
        // 如果不为空 则获取top节点的ArrayType 即当前要进行初始化维度的Array类型
        if(!stk.empty()){
            ArrayType* topType = (ArrayType*)stk.top()->getSymbolEntry()->getType(); //{ {}, {} }外层括号的类型
            arrayType = (ArrayType*)topType->getElementType();//即为该{}的类型
        }
        SymbolEntry* se = new ConstantSymbolEntry(arrayType);
        // 之后开始初始化当前维度的元素 即进入下一层
        // 若为不为IntType说明下一层不会直接进入Exp 而是进入{} 
        // 此时arrayType应当为下一层{}的类型
        if(arrayType->getElementType() != TypeSystem::constIntType){
            arrayType = (ArrayType*)(arrayType->getElementType());
        }
        // 为要进入的{}新建一个InitListExp
        InitValueListExpr* expr = new InitValueListExpr(se);
        if(!stk.empty()) //若stk中有节点 需要add
            stk.top()->addExpr(expr);
        stk.push(expr); //压栈
        (yyval.exprtype) = expr;
        leftCnt++; //“{”计数加
    }
#line 2232 "src/parser.cpp"
    break;

  case 92: /* ConstArrayInit: LBRACE @6 ConstArrayInitLIst RBRACE  */
#line 613 "src/parser.y"
                                {
        (yyval.exprtype) = (yyvsp[-2].exprtype);
        leftCnt--;  //“{”计数减
        //{{},{}} 当前(内层){}已经初始化完毕 回退到上一维度的状态  即继续初始化(外层){}内的元素
        while(stk.size() != (long unsigned int)(leftCnt)){
            stk.pop();
        }
        // while(stk.top() != $<exprtype>2 && stk.size() > (long unsigned int)(leftCnt + 1))
        //     stk.pop();
        // if(stk.top() == $<exprtype>2)
        //     stk.pop();
        // if(!stk.empty())
        //     while(stk.top()->isFull() && stk.size() != (long unsigned int)leftCnt){
        //         stk.pop();
        //     }
        int size = ((ArrayType*)((yyval.exprtype)->getSymbolEntry()->getType()))->getSize()/ 32;
        while(arrayIndex % size != 0)
            arrayValue[arrayIndex++] = 0;
        if(!stk.empty())
            arrayType = (ArrayType*)(((ArrayType*)(stk.top()->getSymbolEntry()->getType()))->getElementType());
    }
#line 2258 "src/parser.cpp"
    break;

  case 93: /* ArrayInitLIst: ArrayInit  */
#line 638 "src/parser.y"
                {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 2266 "src/parser.cpp"
    break;

  case 94: /* ArrayInitLIst: ArrayInitLIst COMMA ArrayInit  */
#line 641 "src/parser.y"
                                    {
        (yyval.exprtype) = (yyvsp[-2].exprtype);
    }
#line 2274 "src/parser.cpp"
    break;

  case 95: /* ConstArrayInitLIst: ConstArrayInit  */
#line 646 "src/parser.y"
                     {
        (yyval.exprtype) = (yyvsp[0].exprtype);
    }
#line 2282 "src/parser.cpp"
    break;

  case 96: /* ConstArrayInitLIst: ConstArrayInitLIst COMMA ConstArrayInit  */
#line 649 "src/parser.y"
                                              {
        (yyval.exprtype) = (yyvsp[-2].exprtype);
    }
#line 2290 "src/parser.cpp"
    break;

  case 97: /* $@7: %empty  */
#line 655 "src/parser.y"
            {
        paramNo = 0;
        identifiers = new SymbolTable(identifiers);
    }
#line 2299 "src/parser.cpp"
    break;

  case 98: /* @8: %empty  */
#line 659 "src/parser.y"
                                 {
        std::vector<Type*> paramsType;
        std::vector<SymbolEntry*> paramsSe;
        DeclStmt* temp = (DeclStmt*)(yyvsp[-1].stmttype);
        while(temp){
            paramsType.push_back(temp->getId()->getSymbolEntry()->getType());
            paramsSe.push_back(temp->getId()->getSymbolEntry());
            temp = (DeclStmt*)(temp->getNext());
        }
        Type* funcType = new FunctionType((yyvsp[-5].type), paramsType, paramsSe);
        SymbolEntry* se = new IdentifierSymbolEntry(funcType, (yyvsp[-4].strtype), identifiers->getPrev()->getLevel());
        identifiers->getPrev()->install((yyvsp[-4].strtype), se);
        (yyval.se) = se; 
    }
#line 2318 "src/parser.cpp"
    break;

  case 99: /* FuncDef: Type ID $@7 LPAREN OptFuncFParams RPAREN @8 BlockStmt  */
#line 673 "src/parser.y"
              {
        (yyval.stmttype) = new FunctionDef((yyvsp[-1].se), (DeclStmt*)(yyvsp[-3].stmttype), (yyvsp[0].stmttype));
        SymbolTable* temp = identifiers;
        identifiers = identifiers->getPrev();
        delete temp;
        delete [](yyvsp[-6].strtype);
    }
#line 2330 "src/parser.cpp"
    break;

  case 100: /* OptFuncFParams: FuncFParams  */
#line 682 "src/parser.y"
                  {(yyval.stmttype) = (yyvsp[0].stmttype);}
#line 2336 "src/parser.cpp"
    break;

  case 101: /* OptFuncFParams: %empty  */
#line 683 "src/parser.y"
             {(yyval.stmttype) = nullptr;}
#line 2342 "src/parser.cpp"
    break;

  case 102: /* FuncFParams: FuncFParams COMMA FuncFParam  */
#line 685 "src/parser.y"
                                   {
        (yyval.stmttype) = (yyvsp[-2].stmttype);
        (yyval.stmttype)->setNext((yyvsp[0].stmttype));
    }
#line 2351 "src/parser.cpp"
    break;

  case 103: /* FuncFParams: FuncFParam  */
#line 689 "src/parser.y"
                 {
        (yyval.stmttype) = (yyvsp[0].stmttype);
    }
#line 2359 "src/parser.cpp"
    break;

  case 104: /* FuncFParam: Type ID  */
#line 694 "src/parser.y"
              {
        SymbolEntry* se;
        se = new IdentifierSymbolEntry((yyvsp[-1].type), (yyvsp[0].strtype), identifiers->getLevel(), paramNo++);
        identifiers->install((yyvsp[0].strtype), se);
        ((IdentifierSymbolEntry*)se)->setLabel();
        ((IdentifierSymbolEntry*)se)->setAddr(new Operand(se));
        (yyval.stmttype) = new DeclStmt(new Id(se));
        delete [](yyvsp[0].strtype);
    }
#line 2373 "src/parser.cpp"
    break;

  case 105: /* FuncFParam: Type ID FuncArrayIndices  */
#line 703 "src/parser.y"
                               {
        std::vector<int> arrayDim;
        ExprNode* arrayDecl = (yyvsp[0].exprtype);
        while(arrayDecl){
            arrayDim.push_back(arrayDecl->getValue());
            arrayDecl = (ExprNode*)(arrayDecl->getNext());
        }
        //从最低维开始生成
        ArrayType* tempType = new ArrayType(dtype,arrayDim.back());
        arrayDim.pop_back();
        while(!arrayDim.empty()){
            tempType = new ArrayType(tempType, arrayDim.back());
            arrayDim.pop_back();
        }
        IdentifierSymbolEntry* se = new IdentifierSymbolEntry(tempType, (yyvsp[-1].strtype), identifiers->getLevel(), paramNo++);
        se->setLabel();
        se->setAddr(new Operand(se));
        identifiers->install((yyvsp[-1].strtype), se);
        (yyval.stmttype) = new DeclStmt(new Id(se));
        delete [](yyvsp[-1].strtype);
    }
#line 2399 "src/parser.cpp"
    break;

  case 106: /* FuncArrayIndices: LBRACKET RBRACKET  */
#line 726 "src/parser.y"
                        {
        (yyval.exprtype) = new ExprNode(nullptr);
    }
#line 2407 "src/parser.cpp"
    break;

  case 107: /* FuncArrayIndices: FuncArrayIndices LBRACKET Exp RBRACKET  */
#line 729 "src/parser.y"
                                             {
        (yyval.exprtype) = (yyvsp[-3].exprtype);
        (yyval.exprtype)->setNext((yyvsp[-1].exprtype));
    }
#line 2416 "src/parser.cpp"
    break;


#line 2420 "src/parser.cpp"

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

#line 733 "src/parser.y"


int yyerror(char const* message)
{
    std::cerr<<message<<std::endl;
    return -1;
}
