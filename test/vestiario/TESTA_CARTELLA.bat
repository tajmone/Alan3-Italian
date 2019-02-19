:: "test/vestiario/TESTA_CARTELLA.bat"  v1.1.0 | 2019/02/19 | by Tristano Ajmone
:: -----------------------------------------------------------------------------
:: SORGENTE SINGOLO -- Esegui tutti i test nella cartella.
:: -----------------------------------------------------------------------------
@ECHO OFF & CLS
SET ADV=ega.alan
:: Code Page 28591 = ISO 8859-1 Latin 1; Western European (ISO)
CHCP 28591 > nul

ECHO COMPILA: %ADV%
CALL alan.exe -import ..\..\alanlib_ita %ADV%  > nul 2>&1 ^
  && (
    FOR %%i IN (*.a3sol) DO CALL :ExecTest %ADV% %%i
  ) || (
    ECHO ^*^* COMPILAZIONE FALLITA ^*^*
  )
EXIT /B

:ExecTest
ECHO TESTA CON:  %2
CALL arun.exe -r %~n1.a3c < %2 > %~n2.a3log
EXIT /B
