@ECHO OFF

CD flex\BIN
flex -o%~n1.lex.c ..\..\%1
copy %~n1.lex.* ..\..\
cd ..\..
