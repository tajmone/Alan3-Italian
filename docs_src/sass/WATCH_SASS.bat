:: -----------------------------------------------------------------------------
:: "WATCH_SASS.bat"                   | v0.1.0 | 2019/02/28 | by Tristano Ajmone
:: -----------------------------------------------------------------------------
@ECHO OFF
ECHO.
CALL BUILD_SASS.bat
ECHO ===============================
ECHO Build ^& Watch SCSS stylesheets
ECHO ===============================
CALL SCSS --watch %SRC%:%OUT%
EXIT /B

:: EOF ::
