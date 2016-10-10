/* Калькулятор для выражени в инфиксной нотации -- calc */

%{
#include <math.h>
#include <stdio.h>

void yyerror(char *s) {
  fprintf (stderr, "%s\n", s);
}


int main (void)
{
  return yyparse();
}
%}


%token PROGRAM_WORD
%token IF_WORD ELSE_WORD THEN_WORD ELSE_IF_WORD REPEAT_IF_WORD
%token WORD INT DOUBLE FLOAT CHAR STRING
%token BRACKET_ON BRACKET_OFF BRACKET_OPEN BRACKET_CLOSE SB_OPEN SB_CLOSE
%token ASSIGN_SYMBOL EQUAL_SIGN LOGIC_OPERATOR NEGATIV_OPERATOR
%token PLUS_SYMBOL MINUS_SYMBOL MULTI_SYMBOL DIV_SYMBOL
%token COMMA_SYMBOL
%token CHAR_IN_APOSTROPHE
%token ARR_BEGIN ARR_END
%token DATA_TYPE_WORD
%token CIN COUT



%%
program: PROGRAM_WORD BRACKET_ON statement_body BRACKET_OFF
;

statement_body: statement
        	  | statement_body statement
;

statement: def_var
         | inoutcommand
		 | IF_WORD if_body_begin
         | REPEAT_IF_WORD BRACKET_OPEN complex_logic BRACKET_CLOSE BRACKET_ON statement_body BRACKET_OFF
;

if_body_begin: BRACKET_OPEN complex_logic BRACKET_CLOSE THEN_WORD BRACKET_ON statement_body BRACKET_OFF if_body_end
;

if_body_end: 
           | ELSE_WORD BRACKET_ON statement_body BRACKET_OFF
           | ELSE_IF_WORD if_body_begin
;
def_var: var_name ASSIGN_SYMBOL expr
       | type var_name ASSIGN_SYMBOL BRACKET_OPEN init_arr BRACKET_CLOSE   
       | var_name SB_OPEN expr SB_CLOSE ASSIGN_SYMBOL expr
;

inoutcommand: CIN var_name BRACKET_OPEN term BRACKET_CLOSE
            | COUT term
;

expr: expr_simple
    | BRACKET_OPEN expr BRACKET_CLOSE sign expr_simple
    | BRACKET_OPEN expr BRACKET_CLOSE sign BRACKET_OPEN expr_simple BRACKET_CLOSE
;

expr_simple: term
           | expr_simple sign term
;

complex_logic: logic
             | BRACKET_OPEN complex_logic BRACKET_CLOSE EQUAL_SIGN BRACKET_OPEN logic BRACKET_CLOSE
             | BRACKET_OPEN complex_logic BRACKET_CLOSE LOGIC_OPERATOR BRACKET_OPEN complex_logic BRACKET_CLOSE
             | NEGATIV_OPERATOR BRACKET_OPEN complex_logic BRACKET_CLOSE
;

logic: expr EQUAL_SIGN expr
;

sign: PLUS_SYMBOL
    | MINUS_SYMBOL
    | MULTI_SYMBOL
    | DIV_SYMBOL
;
 
term: INT
    | DOUBLE
    | FLOAT
    | var_name SB_OPEN expr SB_CLOSE
    | var_name
    | CHAR_IN_APOSTROPHE
    | STRING
;

var_name: WORD
;

type: DATA_TYPE_WORD
    | type_arr
;

type_arr: ARR_BEGIN DATA_TYPE_WORD ARR_END ;

init_arr: expr COMMA_SYMBOL init_arr
        | expr
;
%%
