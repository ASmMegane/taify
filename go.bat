call bison.bat %1
call flex.bat %~n1.lex
call mingw.bat %~n1.tab.c %~n1.lex.c

