@echo off

cd mingw\bin
gcc ..\..\%1 ..\..\%2 -o..\..\%~n1.exe
cd ..\..
