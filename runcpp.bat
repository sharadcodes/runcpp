cls
@ECHO OFF
ECHO. ##################################################################
ECHO. ###################### C++ COMPILER HELPER #######################
ECHO. ################# Developer: github @sharadcodes #################
ECHO.

if %~x1%==.c (
echo. ------------------------- It's a C File -------------------------- )
if %~x1%==.cpp (
echo. ------------------------- It's a C++ File ------------------------ )
if %~x1%==.py (
echo. ----------------------- It's a Python File ----------------------- )

ECHO.
ECHO. ############################ OUTPUT ##############################

ECHO.
ECHO.

if %~x1%==.cpp (
g++ %~f1 -o %~n1.exe 
%~n1.exe
)

if %~x1%==.c (
gcc %~f1 -o %~n1.exe 
%~n1.exe
)

if %~x1%==.py ( 
python %~f1 
) 

ECHO.
ECHO.
ECHO. ##################################################################
ECHO.
ECHO. -------------------- SELECT OPTIONS FROM BELOW -------------------
ECHO. 
ECHO. 1: COPY OUTPUT TO FILE
ECHO. 2: EXIT
ECHO.
ECHO. ##################################################################
ECHO.
ECHO ENTER YOUR CHOICE
set /p choice=
ECHO. ##################################################################
if %choice%==1 goto copytofile 
if %choice%==2 goto terminate 
:copytofile
%~n1.exe > %~f1.txt
echo. COPIED SUCCESSFULLY !
goto terminate
:terminate
pause
