@ECHO OFF
:: "ESEGUI.bat" v1.0 (2018/05/19) | by Tristano Ajmone
:: =============================================================================
::                     ESEGUI TEST TRAMITE SCRIPT DI GIOCO                      
:: =============================================================================
:: ESEGUI <nomefile.script>
::
:: Questo batch file esegue la demo "il_mondo_di_alan" usando lo script passato
:: come parametro. La trascrizione della sessione di gioco viene salvata in un
:: file di log ed infine stampata sullo schermo. 
:: -----------------------------------------------------------------------------
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
:: ==============================================
:: Verifica che il parametro sia un file *.script
:: ==============================================
IF [%~x1] NEQ [.script] (
    ECHO ERRORE: Il parametro deve essere un file di script ^(^*.script^)
    SET _ERR=1
    GOTO :ESCI
)
:: ========================
:: Esegui il file di script
:: ========================
:: Cambia Code Page per una corretta visualizzazione dei caratteri accentati:
CHCP 65001
:: Pulisci schermo così è più facile navigare nella trascrizione:
CLS
CALL arun il_mondo_di_alan.a3c < %~n1.script > %~n1.log
TYPE %~n1.log
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