:: -----------------------------------------------------------------------------
:: "DOCUMENTA.bat"                    | v0.2.3 | 2019/03/24 | by Tristano Ajmone
:: -----------------------------------------------------------------------------
@ECHO OFF & CLS
CHCP 65001 > nul &:: (UTF-8 Unicode)
ECHO.
ECHO Creazione della documentazione di Alan Italian ...
ECHO.

SET LibSrc=..\alanlib_ita
SET DocsDest=..\docs

ECHO +----------------------------+
ECHO ^| 1. Elimina file precedenti ^|
ECHO +----------------------------+
DEL /Q lib*.asciidoc > NUL 2>&1

ECHO +-------------------------------+
ECHO ^| 2. Doxterizza moduli libreria ^|
ECHO +-------------------------------+
FOR %%i IN (%LibSrc%/lib*.i) DO CALL :doxterizzaLib %%i

ECHO +--------------------------------+
ECHO ^| 3. Converti da AsciiDoc a HTML ^|
ECHO +--------------------------------+
FOR %%i IN (*.asciidoc) DO CALL :convHTML %%i

EXIT /B

:: =============================================================================
:: func                    Doxterizza Sorgenti Libreria                         
:: =============================================================================
:doxterizzaLib
ECHO    Doxterizza: %~nx1
CALL doxter %LibSrc%/%~nx1 > nul
MOVE /Y %LibSrc%\%~n1.asciidoc .\
EXIT /B
:: ==============================================================================
:: func                     Converti da AsciiDoc a HTML                          
:: ==============================================================================
:convHTML
ECHO    Converti: %~nx1
CALL asciidoctor^
  --destination-dir %DocsDest%^
  --verbose^
  -S unsafe^
  -a data-uri^
  -a experimental^
  -a icons=font^
  -a lang=it^
  -a linkattrs^
  -a reproducible^
  -a sectanchors^
  -a toc-title="Indice dei contenuti"^
  -a toc=left^
  -a toclevels=5^
  -a version-label=Versione^
  -a source-highlighter=highlight^
  --template-dir .\haml^
  --require .\adoc\highlight-treeprocessor_mod.rb^
  -a docinfodir=.\adoc^
  -a docinfo=shared-head^
  %~nx1
EXIT /B

:: EOF ::
