:: -----------------------------------------------------------------------------
:: "ESEGUI.bat"                       | v2.0.1 | 2019/02/28 | by Tristano Ajmone
:: =============================================================================
::                     ESEGUI TEST TRAMITE SCRIPT DI GIOCO                      
:: =============================================================================
:: ESEGUI <nomefile.a3sol>
::
:: Questo batch file esegue la demo "il_mondo_di_alan" usando lo script passato
:: come parametro. La trascrizione della sessione di gioco viene salvata in un
:: file di log (.a3log) ed infine stampata sullo schermo. 
:: -----------------------------------------------------------------------------
@ECHO OFF & CLS
CHCP 28591 > nul &:: (ISO 8859-1 Latin 1)
SET _ERR=0
:: ==================================================
:: Verifica la disponibilità dell'avventura compilata
:: ==================================================
IF NOT EXIST il_mondo_di_alan.a3c (
  ECHO ERRORE: Non trovo l'avventura compilata "il_mondo_di_alan.a3c"
  SET _ERR=1
  GOTO :ESCI
)
:: ===========================================
:: Verifica che sia stato passato un parametro
:: ===========================================
IF [%1] EQU [] (
  ECHO ERRORE: Devi passare uno script come parametro
  SET _ERR=1
  GOTO :ESCI
)
:: =============================================
:: Verifica che il parametro sia un file *.a3sol
:: =============================================
IF [%~x1] NEQ [.a3sol] (
  ECHO ERRORE: Il parametro deve essere un file di script ^(^*.a3sol^)
  SET _ERR=1
  GOTO :ESCI
)
:: ========================
:: Esegui il file di script
:: ========================
CALL arun il_mondo_di_alan.a3c < %~n1.a3sol > %~n1.a3log
TYPE %~n1.a3log
:: =====================
:: Termina batch ed esci
:: =====================
:ESCI
:: Facciamo in modo che la finestra del CMD rimagna aperta se lo script è stato
:: lanciato da Esplora Risorse:
ECHO "%cmdcmdline%" | FINDSTR /IC:"%windir%" >nul && (
  CMD /K
)
EXIT /B %_ERR%