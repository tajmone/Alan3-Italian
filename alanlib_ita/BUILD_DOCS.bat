:: "BUILD_DOCS.bat" v0.1.2 (2018/10/14) by Tristano Ajmone
:: -----------------------------------------------------------------------------
:: To use this script you'll need the Doxter binary tool to be either in this
:: folder or on the system PATH:
::
::    https://github.com/tajmone/doxter
:: -----------------------------------------------------------------------------
@ECHO OFF
ECHO.

SET "_DOXREDIR=> nul"

ECHO ==============================================================================
ECHO Doxterising Library Sources ...
ECHO ==============================================================================

:: For the time being we'll pick manually only sources that have documentation:
CALL :doxterize lib_verbi.i
CALL :doxterize lib_definizioni.i
CALL :doxterize lib_classi.i

:: FOR %%i IN (*.alan, *.i) DO (
::   CALL :doxterize  %%i
:: )

ECHO.
ECHO ==============================================================================
ECHO Converting to HTML ...                  
ECHO ==============================================================================
FOR %%i IN (*.asciidoc) DO (
    CALL :conv2adoc %%i
)

EXIT /B

:: =============================================================================
:: func:                       Process With Doxter
:: =============================================================================
:doxterize
ECHO Doxterizing: %~nx1
CALL doxter %1 %_DOXREDIR%
EXIT /B

:: =============================================================================
:: func:                        Convert to AsciiDoc
:: =============================================================================
:conv2adoc
ECHO Converting: %~nx1
CALL asciidoctor^
  -S unsafe^
  -a data-uri^
  -a icons=font^
  -a toc=left^
  -a experimental^
  -a lang=it^
  -a version-label=Versione^
  -a source-highlighter=highlightjs^
  -a highlightjsdir=hjs^
  -o %~n1.html^
  --verbose^
  %1
EXIT /B
