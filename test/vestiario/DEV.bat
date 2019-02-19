:: -----------------------------------------------------------------------------
:: Esegui solo il gruppo di test "DEV*.a3sol" finalizzati ai lavori in corso
:: per il nuovo sistema del vestiario.
:: -----------------------------------------------------------------------------
@ECHO OFF & CLS
:: Code Page 28591 = ISO 8859-1 Latin 1; Western European (ISO)
CHCP 28591 > nul

ECHO COMPILA: ega.alan
CALL alan.exe -import ..\..\alanlib_ita ega.alan
FOR %%i IN (DEV*.a3sol) DO (
  ECHO TESTA CON:  %%i
  CALL :ExecTest %%i
)

EXIT /B

:ExecTest
CALL arun.exe -r ega.a3c < %1 > %~n1.a3log
EXIT /B
