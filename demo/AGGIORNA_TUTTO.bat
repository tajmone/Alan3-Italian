@ECHO OFF
:: "AGGIORNA_TUTTO.bat" v1.0 (2018/05/19) | by Tristano Ajmone
:: ==============================================================================
::                         AGGIORNA TUTTI I FILE DI TEST                         
:: ==============================================================================
ECHO.
ECHO Aggiornamento di tutti i file di test in corso...
ECHO.
SET _ERR=0
:: ===================
:: Elimina vecchi file
:: ===================
ECHO 1/3) Cancella vecchi file
DEL il_mondo_di_alan.a3c   > nul 2>&1
DEL il_mondo_di_alan.ifid  > nul 2>&1
DEL *.log                  > nul 2>&1
:: ================================
:: Compila l'avventura dimostrativa
:: ================================
ECHO 2/3) Compila avventura dimostrativa
CALL COMPILA.bat           > nul 2>&1
IF ERRORLEVEL 1 (
    ECHO      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    ECHO      ERRORE: compilazione non riuscita!
    ECHO      ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    SET _ERR=1
    GOTO :ESCI
)
:: ==================================
:: Esegui tutti gli script di comandi
:: ==================================
ECHO 3/3) Esegui script di comandi:
FOR /R %%i IN (*.script) DO (
    ECHO      -- "%%~nxi"
    CALL arun il_mondo_di_alan.a3c < %%i > %%~ni.log
)
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