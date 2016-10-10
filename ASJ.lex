%{
#include <stdio.h>
#include "ASJ.tab.h"
%}

%x arr_cond

TYPE int|double|char|str|float
INT -?[0-9]+
DOUBLE -?[0-9]+\.[0-9]+
FLOAT_ -?[0-9]+\.[0-9]+[e](\+|-)[0-9][0-9]
CHAR '[a-z]'
WORD_ [a-z]+
STRING_ \"(.*?)\"

%option yylineno
%option noyywrap

%%
{STRING_}               return STRING;
arr< 				    { BEGIN arr_cond; return ARR_BEGIN;}
<arr_cond>>             { BEGIN INITIAL; return ARR_END;}
program					return PROGRAM_WORD;
>|<|>=|<=|==|!=			return EQUAL_SIGN;
&&|\|\|                 return LOGIC_OPERATOR;
,                       return COMMA_SYMBOL;
!                       return NEGATIV_OPERATOR;
\+                      return PLUS_SYMBOL;
-                       return MINUS_SYMBOL;
\*                      return MULTI_SYMBOL;
\/                      return DIV_SYMBOL;
\[                      return SB_OPEN;
\]                      return SB_CLOSE;
\{						return BRACKET_ON;
\}						return BRACKET_OFF;
\(						return BRACKET_OPEN;
\)						return BRACKET_CLOSE;
=						return ASSIGN_SYMBOL;
repeat[ ]if             return REPEAT_IF_WORD;
elif                    return ELSE_IF_WORD;
if						return IF_WORD;
else					return ELSE_WORD;
then                    return THEN_WORD;
cin                     return CIN;
cout                    return COUT;
<INITIAL,arr_cond>{TYPE}         return DATA_TYPE_WORD;
{WORD_}  				return WORD;
{CHAR}					return CHAR_IN_APOSTROPHE;
{INT}                   return INT;
{DOUBLE}                return DOUBLE;
{FLOAT_}                return FLOAT;
\n                      /* игнорируем символ конца строки */;
[ \t]+                  /* игнорируем пробелы и символы табул€ции */;
%%
