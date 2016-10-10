@ECHO OFF

CD BISON\BIN
BISON -vd ..\..\%1
copy %~n1.tab.* ..\..\
cd ..\..

        