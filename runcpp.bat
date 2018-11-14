cls
@ECHO OFF
ECHO. ##################################################################
ECHO. ###################### C++ COMPILER HELPER #######################
ECHO. ################# Developer: github @sharadcodes #################
ECHO.
ECHO. ############################ OUTPUT ##############################
ECHO.
ECHO.

if %~x1%==.cpp (
echo. It's a C++ File
g++ %~f1 -o %~n1.exe 
%~n1.exe
TYPE %~f1 > %~n1_pro.txt
%~n1.exe > %~n1.txt
)

if %~x1%==.c (
echo. It's a C File
gcc %~f1 -o %~n1.exe 
%~n1.exe
TYPE %~f1 > %~n1_pro.txt
%~n1.exe > %~n1.txt
)

%~n1.exe > %~n1.txt
ECHO.
ECHO.
ECHO.
ECHO.
pause 100
cmd