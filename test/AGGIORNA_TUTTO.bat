@ECHO OFF
:: "AGGIORNA_TUTTO.bat" v2.1 (2018/10/22) | by Tristano Ajmone
:: ==============================================================================
::                         AGGIORNA TUTTI I FILE DI TEST                         
:: ==============================================================================
ECHO [0m
CLS
ECHO Aggiornamento di tutti i file di test in corso...

:: ===================
:: Variabili d'Ambiente
:: ===================
SET _ERR=0
SET _CNT=0
:: Questa variabile se visulazzire o meno su schermo la trascrizione:
SET _NASCONDI_TRANSCRIPT=1

:: ===================
:: Elimina vecchi file
:: ===================
DEL *.a3c   > nul 2>&1
DEL *.ifid  > nul 2>&1
DEL *.log   > nul 2>&1
DEL *.a3log > nul 2>&1

:: ====================
:: Esegui i test-script
:: ====================
FOR /R %%i IN (*.alan) DO (
    CALL :AvviaTest "%%~ni.bat"
)

:: =====================
:: Termina batch ed esci
:: =====================
:ESCI

:: Azzera variabili d'ambiente:
SET _ERR=
SET _CNT=
SET _NASCONDI_TRANSCRIPT=

:: Facciamo in modo che la finestra del CMD rimagna aperta se lo script è stato
:: lanciato da Esplora Risorse:
ECHO "%cmdcmdline%" | FINDSTR /IC:"%windir%" >nul && (
    CMD /K
)
EXIT /B %_ERR%

:: *****************************************************************************
::                                   FUNZIONI                                   
:: *****************************************************************************
:AvviaTest
SET /A _CNT=%_CNT% +1
ECHO [1;32m
ECHO ==============================================================================
ECHO %_CNT%) %1
ECHO ==============================================================================
:: Resetta colori:
ECHO [0m

:: ====================================
:: Verifica l'esistenza del test-script
:: ====================================
IF NOT EXIST %1 (
    ECHO [1;37m[101m
    ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    ECHO ERRORE: test script inesistente!
    ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    ECHO [0m
    SET _ERR=1
    EXIT /B
)
CALL %1
EXIT /B
