:: -----------------------------------------------------------------------------
:: "COMPILA.bat"                      | v1.0.1 | 2019/02/28 | by Tristano Ajmone
:: =============================================================================
::                        COMPILA L'AVVENTURA DIMOSTRATIVA                      
:: =============================================================================
@ECHO OFF
CHCP 28591 > nul &:: (ISO 8859-1 Latin 1)
CALL alan -import ..\alanlib_ita\ -debug il_mondo_di_alan.alan
EXIT /B
