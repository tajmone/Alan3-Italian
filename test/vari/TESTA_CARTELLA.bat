:: "test/vari/TESTA_CARTELLA.bat"       v1.0.0 | 2019/02/19 | by Tristano Ajmone
:: -----------------------------------------------------------------------------
:: SORGENTI MULTIPLI -- Esegui tutti i test nella cartella.
:: -----------------------------------------------------------------------------
@ECHO OFF & CLS
:: Code Page 28591 = ISO 8859-1 Latin 1; Western European (ISO)
CHCP 28591 > nul

FOR %%i IN (*.alan) DO (
  ECHO =====================================================
  ECHO COMPILA: %%i
  CALL :CompilaTesta %%i
)

EXIT /B

:CompilaTesta
CALL alan.exe -import ..\..\alanlib_ita %1  > nul 2>&1 ^
  && (
    FOR %%i IN (%~n1*.a3sol) DO CALL :ExecTest %~n1.a3c %%i
  ) || (
    ECHO ^*^* COMPILAZIONE FALLITA ^*^*
  )
 
EXIT /B

:ExecTest
ECHO TESTA CON:  %2
CALL arun.exe -r %~n1.a3c < %2 > %~n2.a3log
EXIT /B
