:: "DOCUMENTA.bat" v0.1.2 (2018-12-16)
:: -----------------------------------------------------------------------------
@ECHO OFF & CLS
ECHO.
ECHO Creazione della documentazione di Alan Italian ...
ECHO.

SET LibSrc=../alanlib_ita
SET DocsDest=../docs

ECHO +-------------------------------+
ECHO ^| 1. Doxterizza moduli libreria ^|
ECHO +-------------------------------+
FOR %%i IN (%LibSrc%/lib*.i) DO CALL :doxterizzaLib %%i

ECHO +--------------------------------+
ECHO ^| 2. Converti da AsciiDoc a HTML ^|
ECHO +--------------------------------+
FOR %%i IN (*.asciidoc) DO CALL :convHTML %%i

:: Facciamo in modo che la finestra del CMD rimagna aperta se lo script è stato
:: lanciato da Esplora Risorse:
ECHO "%cmdcmdline%" | FINDSTR /IC:"%windir%" >nul && (
    CMD /K
)
EXIT /B

:: =============================================================================
:: func                    Doxterizza Sorgenti Libreria                         
:: =============================================================================
:doxterizzaLib
ECHO    Doxterizza: %~nx1
CALL doxter %LibSrc%/%~nx1 > nul
MOVE /Y %LibSrc%/%~n1.asciidoc ./
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
  -a source-highlighter=highlightjs^
  -a highlightjsdir=hjs^
  %~nx1
EXIT /B

:: EOF ::
