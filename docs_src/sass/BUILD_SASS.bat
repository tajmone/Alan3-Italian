:: -----------------------------------------------------------------------------
:: "BUILD_SASS.bat"                   | v2.0.0 | 2019/03/24 | by Tristano Ajmone
:: -----------------------------------------------------------------------------
:: Questo script richiede che sia installato Dart Sass sul sistema:
::      https://github.com/sass/dart-sass
::
:: Su Windows puoi usare Chocolatey per installarlo e tenerlo aggiornato:
::      https://chocolatey.org/packages/sass
:: -----------------------------------------------------------------------------
@ECHO OFF
ECHO.
:: Passa a Code Page 65001 (UTF-8 Unicode):
CHCP 65001 > nul 2>&1

SET "SRC=styles.scss"
SET "OUT=../../docs/css/styles.css"

ECHO ================================================
ECHO Compilazione dei fogli di stile CSS da Sass/SCSS
ECHO ================================================
ECHO SOURCE: %SRC%
ECHO OUTPUT: %OUT%

SASS %SRC% %OUT%
EXIT /B

:: EOF ::
