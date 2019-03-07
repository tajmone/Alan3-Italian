:: -----------------------------------------------------------------------------
:: "cloak_darkness.bat"                 v0.2.1 | 2019/03/07 | by Tristano Ajmone
:: -----------------------------------------------------------------------------
:: Compila, testa e documenta "Cloak of Darkness"
:: -----------------------------------------------------------------------------
@ECHO OFF & CLS
ECHO [36m######################################
ECHO # [93m"Cloak of Darkness"[37m di Roger Firth [36m#
ECHO ######################################[0m
DEL *.ifid, *.a3c, *.a3log > nul 2>&1
ECHO.[92m
ECHO ======================================
ECHO 1. COMPILA E ESEGUI TEST AUTOMATIZZATI
ECHO ======================================[0m
CHCP 28591 > nul &:: ISO 8859-1 Latin 1
CALL :CompilaPoiTesta cloak_darkness.alan
ECHO.[92m
ECHO ======================================
ECHO 2. DOCUMENTA CODICE SORGENTE AVVENTURA
ECHO ======================================[0m
CHCP 65001 > nul &:: (UTF-8 Unicode)
CALL :Documenta cloak_darkness.alan
ECHO.
ECHO // fine //
EXIT /B

:CompilaPoiTesta
ECHO Compila: %1
CALL alan.exe %1  > nul 2>&1 ^
  && (
    FOR %%i IN (*.a3sol) DO (
      ECHO Esegui:  %%i
      CALL arun.exe -r %~n1.a3c < %%i > %%~ni.a3log ^
        ||(
          ECHO ^*^*^* TEST FALLITO ^*^*^*
          EXIT /B 1
      )
    )
  ) || (
    ECHO [91m~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    ECHO ^*^*^* COMPILAZIONE FALLITA ^*^*^*
    ECHO.
    REM Ricompila, ma questa volta mostra messaggi di errore:
    CALL alan.exe %1
    ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~[0m
    EXIT /B 1
  )
EXIT /B

:Documenta
ECHO Doxterizza: %1 --^> %~n1.adoc
CALL doxter.exe %1 > nul 2>&1 ^
  && (
    ECHO Aciidoctor: cloak_template.adoc --^> %~n1.html
    CALL asciidoctor^
      --verbose^
      -S unsafe^
      -a source-highlighter=highlight^
      --template-dir ..\..\docs_src\haml^
      --require ..\..\docs_src\adoc\highlight-treeprocessor_mod.rb^
      -a docinfo=shared-head^
      -o %~n1.html ^
         cloak_template.adoc ^
      || (
        ECHO [91m~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        ECHO ^*^*^* CONVERSIONE HTML FALLITA ^*^*^*
        ECHO.
        ECHO Qualcosa è andato storto con Asciidoctor.
        ECHO Verifica di aver installato correttamente Asciidoctor sul sistema:
        ECHO.
        ECHO    https://asciidoctor.org/
        ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~[0m
        EXIT /B 1
    )
  ) || (
    ECHO [91m~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    ECHO ^*^*^* DOXTERIZZAZIONE FALLITA ^*^*^*
    ECHO.
    ECHO Verifica che l'eseguibile "doxter.exe" sia presente nel PATH di sistema o
    ECHO all'interno di questa cartella di lavoro:
    ECHO.
    ECHO    https://github.com/tajmone/doxter
    ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~[0m
    EXIT /B 1
  )
EXIT /B
