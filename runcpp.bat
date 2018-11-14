cls
@ECHO OFF
ECHO. ##################################################################
ECHO. ###################### CMD COMPILER HELPER #######################
ECHO. ################# Developer: github @sharadcodes #################
ECHO.

if %~x1%==.c (
ECHO. ------------------------- It's a C File -------------------------- )
if %~x1%==.cpp (
ECHO. ------------------------- It's a C++ File ------------------------ )
if %~x1%==.py (
ECHO. ----------------------- It's a Python File ----------------------- )

ECHO. Source file name: %~n1
ECHO. Source path     : %~f1

if %~x1%==.cpp (
ECHO. Source binary   : %~dp1%~n1.exe 
)
if %~x1%==.c (
ECHO. Source binary   : %~dp1%~n1.exe 
)

ECHO.
ECHO. ############################ OUTPUT ##############################
ECHO.
ECHO.

if %~x1%==.cpp (
REM g++ %~f1 -o %~n1.exe 
REM g++ %~n1.cpp -o %~n1.exe last
g++ %~f1 -o %~dp1%~n1.exe
%~dp1%~n1.exe
ECHO.
REM del %~n1.exe
del %~dp1%~n1.exe
)

if %~x1%==.c (
REM gcc %~f1 -o %~n1.exe 
REM gcc %~n1.cpp -o %~n1.exe  last
gcc %~n1.cpp -o %~dp1%~n1.exe
%~dp1%~n1.exe
ECHO.
REM del %~n1.exe
del %~dp1%~n1.exe
)

if %~x1%==.py ( 
python %~f1 
) 

ECHO.
ECHO.
ECHO.
ECHO.
pause
