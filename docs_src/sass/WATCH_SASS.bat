:: -----------------------------------------------------------------------------
:: "WATCH_SASS.bat"                   | v2.0.0 | 2019/03/24 | by Tristano Ajmone
:: -----------------------------------------------------------------------------
@ECHO OFF
ECHO.
CALL BUILD_SASS.bat
ECHO ===============================
ECHO Build ^& Watch SCSS stylesheets
ECHO ===============================
CALL SASS --watch %SRC%:%OUT%
EXIT /B

:: EOF ::
