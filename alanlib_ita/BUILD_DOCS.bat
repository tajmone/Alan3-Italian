:: "BUILD_DOCS.bat" v0.2.0 (2018/11/22) by Tristano Ajmone
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

FOR %%i IN (*.i) DO (
  CALL :doxterize  %%i
)

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
  -a experimental^
  -a icons=font^
  -a lang=it^
  -a linkattrs^
  -a reproducible^
  -a sectanchors^
  -a toc=left^
  -a toclevels=5^
  -a version-label=Versione^
  -a source-highlighter=highlightjs^
  -a highlightjsdir=hjs^
  -o %~n1.html^
  --verbose^
  %1
EXIT /B
