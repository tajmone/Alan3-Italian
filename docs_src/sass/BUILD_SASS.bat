:: -----------------------------------------------------------------------------
:: "BUILD_SASS.bat"                   | v0.1.0 | 2019/02/28 | by Tristano Ajmone
:: -----------------------------------------------------------------------------
:: REQUIREMENTS -- To run this script you'll need to install either:
:: - Dart Sass (Node.js):
::   https://github.com/sass/dart-sass
:: - Ruby Sass (Ruby):
::   https://github.com/sass/ruby-sass
:: -----------------------------------------------------------------------------
@ECHO OFF
ECHO.
:: Passa a Code Page 65001 (UTF-8 Unicode):
CHCP 65001 > nul 2>&1

SET "SRC=styles.scss"
SET "OUT=../../docs/css/styles.css"

ECHO =================================
ECHO Building CSS stylesheet from SCSS
ECHO =================================
ECHO SOURCE: %SRC%
ECHO OUTPUT: %OUT%

CALL SCSS %SRC% %OUT%
EXIT /B

:: EOF ::
