cls
@ECHO OFF
ECHO. ##################################################################
ECHO. ###################### C++ COMPILER HELPER #######################
ECHO. ################# Developer: github @sharadcodes #################
ECHO.
ECHO. ############################ OUTPUT ##############################
REM g++ %~nx1 -o %~n1
ECHO.
ECHO.
g++ %~f1 -o %~n1
%~n1.exe
ECHO.
ECHO.
ECHO.
ECHO.
pause