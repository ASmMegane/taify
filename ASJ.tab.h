
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
      Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

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


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     PROGRAM_WORD = 258,
     IF_WORD = 259,
     ELSE_WORD = 260,
     THEN_WORD = 261,
     ELSE_IF_WORD = 262,
     REPEAT_IF_WORD = 263,
     WORD = 264,
     INT = 265,
     DOUBLE = 266,
     FLOAT = 267,
     CHAR = 268,
     STRING = 269,
     BRACKET_ON = 270,
     BRACKET_OFF = 271,
     BRACKET_OPEN = 272,
     BRACKET_CLOSE = 273,
     SB_OPEN = 274,
     SB_CLOSE = 275,
     ASSIGN_SYMBOL = 276,
     EQUAL_SIGN = 277,
     LOGIC_OPERATOR = 278,
     NEGATIV_OPERATOR = 279,
     PLUS_SYMBOL = 280,
     MINUS_SYMBOL = 281,
     MULTI_SYMBOL = 282,
     DIV_SYMBOL = 283,
     COMMA_SYMBOL = 284,
     CHAR_IN_APOSTROPHE = 285,
     ARR_BEGIN = 286,
     ARR_END = 287,
     DATA_TYPE_WORD = 288,
     CIN = 289,
     COUT = 290
   };
#endif



#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


