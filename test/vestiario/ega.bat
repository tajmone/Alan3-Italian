:: "ega.bat"                            v0.0.1 | 2019/02/20 | by Tristano Ajmone
:: -----------------------------------------------------------------------------
:: Documenta sorgente Emporio Giorgio Alani
:: -----------------------------------------------------------------------------
@ECHO OFF & CLS
CHCP 28591 > nul &:: ISO 8859-1 Latin 1
ECHO [36m##############################################
ECHO # [93m"Emporio Giorgio Alani"[37m di Tristano Ajmone [36m#
ECHO ##############################################[0m
ECHO.[92m
ECHO.[92m
ECHO ===================================
ECHO DOCUMENTA CODICE SORGENTE AVVENTURA
ECHO ===================================[0m
CALL :Documenta ega.alan
ECHO.
ECHO // fine //
EXIT /B

:Documenta
ECHO Doxterizza: %1 --^> %~n1.adoc
CALL doxter.exe %1 > nul 2>&1 ^
  && (
    ECHO Aciidoctor: ega_template.adoc --^> %~n1.html
    CALL asciidoctor^
      --verbose^
      -S unsafe^
      -o %~n1.html ^
         ega_template.adoc ^
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
