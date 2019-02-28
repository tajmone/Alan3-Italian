:: -----------------------------------------------------------------------------
:: AGGIORNA_RICETTE.bat               | v0.0.2 | 2019/02/28 | by Tristano Ajmone
:: -----------------------------------------------------------------------------
@ECHO OFF & CLS
CHCP 28591 > nul &:: (ISO 8859-1 Latin 1)

FOR %%i IN (*.alan) DO (
  ECHO ....................................................
  CALL :CompilaPoiTesta %%i ^
    || (
      ECHO Abbandono prematuro dell'esecuzione ...
      EXIT /B
    )
)
ECHO ....................................................
ECHO // fine //
EXIT /B

:CompilaPoiTesta

:: Compila avventura
ECHO Compila: %1

CALL alan.exe -import ..\alanlib_ita\ %1  > nul 2>&1 ^
  && (
    ECHO Testa:   %~n1.a3sol
    CALL arun.exe -r %~n1.a3c < %~n1.a3sol > %~n1.a3log ^
      ||(
        ECHO ^*^*^* TEST FALLITO ^*^*^*
        EXIT /B 1
      )
  ) || (
    ECHO ^*^*^* COMPILAZIONE FALLITA ^*^*^*
    ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    CALL alan.exe -import ..\alanlib_ita\ %1
    ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    EXIT /B 1
  )
EXIT /B
