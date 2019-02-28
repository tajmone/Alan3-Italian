:: -----------------------------------------------------------------------------
:: "test/casa/TESTA_CARTELLA.bat"     | v1.1.1 | 2019/02/28 | by Tristano Ajmone
:: -----------------------------------------------------------------------------
:: SORGENTE SINGOLO -- Esegui tutti i test nella cartella.
:: -----------------------------------------------------------------------------
@ECHO OFF & CLS
SET ADV=casa.alan
CHCP 28591 > nul &:: (ISO 8859-1 Latin 1)
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
