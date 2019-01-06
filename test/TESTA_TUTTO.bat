:: "TESTA_TUTTO.bat" v1.0 (2019/01/06) | by Tristano Ajmone
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                            ::
::                 TEST SUITE DELLA LIBRERIA STANDARD DI ALAN                 ::
::                                                                            ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Esegui tutti i test nelle varie sottocartelle, tramite i loro batch script.

:: =============================================================================
::                                Settaggi Vari                                 
:: =============================================================================
:: Questa variabile serve a impedire che gli altri batch script cancellino lo
:: schermo con CLS all'avvio:
SET _TESTA_TUTTO_=1
:: =============================================================================
::                              Esegui Test "Casa"                              
:: =============================================================================
@ECHO OFF & CLS
PUSHD casa\
CALL MULTITEST.bat
POPD
:: Se la compilazione è fallita interrompi tutto:
IF ERRORLEVEL 1 GOTO :FineBatch
:: =============================================================================
::                              Esegui Test "Vari"                              
:: =============================================================================
PUSHD vari\
CALL TESTVARI.bat
POPD
:: =============================================================================
::                              Esci dallo Script                               
:: =============================================================================
:FineBatch
:: Resetta variabile che previene CLS:
SET _TESTA_TUTTO_=

EXIT /B
