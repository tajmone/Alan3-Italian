@ECHO OFF
:: "COMPILA.bat" v2.0 (2018/08/22) | by Tristano Ajmone
:: ==============================================================================
::                          COMPILA UN'AVVENTURA ALAN 3                          
:: ==============================================================================
:: COMPILA <file-sorgente.*>
::
:: Questo batch file compila l'avventura passata come parametro. L'estensione di
:: <file-avventura> viene ignorata e convertita sempre in ".alan" per ragioni di
:: praticità d'uso negli script invocanti.
:: -----------------------------------------------------------------------------
ECHO [1;33m^>^>^>^>^>^>^>^>^> COMPILA "%~n1.alan" ^>^>^>^>^>^>^>^>^>
ECHO [0;37m

CALL alan -import ..\alanlib_ita\ -debug %~n1.alan

:: Resetta colori:
ECHO [0m

EXIT /B %ERRORLEVEL%
