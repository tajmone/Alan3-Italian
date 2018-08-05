@ECHO OFF
:: "ESEGUI.bat" v1.0 (2018/08/05) | by Tristano Ajmone
:: =============================================================================
::                     ESEGUI TEST TRAMITE SCRIPT DI GIOCO                      
:: =============================================================================
:: ESEGUI <file-avventura.*> <nomefile.script>
::
:: Questo batch file esegue l'avventura del primo parametro usando come script
:: il file del secondo parametro. La trascrizione della sessione di gioco viene
:: salvata in un file di log ed infine stampata sullo schermo (a meno che la
:: variabile d'ambiente %_NASCONDI_TRANSCRIPT% non sia == 1).
::   L'estensione di <file-avventura> viene ignorata e convertita sempre in .a3c
:: per ragioni di praticità d'uso negli script invocanti.
:: -----------------------------------------------------------------------------
SET _ERR=0
ECHO [1;33m^>^>^>^>^>^>^>^>^> ESEGUI TEST "%~nx2" ^>^>^>^>^>^>^>^>^>

:: Imposta colori per errore
ECHO [1;37m[101m

:: ==============================================
:: Verifica che siano stati passati due parametri
:: ==============================================
IF [%1] EQU [] (
    ECHO ERRORE: Devi fornire un'avventura come primo parametro
    SET _ERR=1
    GOTO :ESCI
)
IF [%2] EQU [] (
    ECHO ERRORE: Devi fornire uno script come secondo parametro
    SET _ERR=1
    GOTO :ESCI
)
:: ==============================================================
:: Definisci %_ADV% e correggi estensione file avventura in *.a3c
:: ==============================================================
:: Per comodità d'uso nello script invocante, il nome file dell'avventura può
:: avere qualsiasi estensione, ma noi qui la correggiamo in ".a3c".
SET _ADV=%~n1.a3c
:: ======================================================
:: Verifica che il secondo parametro sia un file *.script
:: ======================================================
IF [%~x2] NEQ [.script] (
    ECHO ERRORE: Il secondo parametro deve essere un file di script ^(^*.script^)
    SET _ERR=1
    GOTO :ESCI
)
:: ===============================================
:: Verifica l'esistenza dei due file dei parametri
:: ===============================================
IF NOT EXIST %_ADV% (
    ECHO ERRORE: Non trovo l'avventura compilata "%_ADV%"
    SET _ERR=1
    GOTO :ESCI
)
IF NOT EXIST %2 (
    ECHO ERRORE: Non trovo file di script "%2"
    SET _ERR=1
    GOTO :ESCI
)

:: Resetta colori:
ECHO [0m

:: ========================
:: Esegui il file di script
:: ========================
:: Cambia Code Page per una corretta visualizzazione dei caratteri accentati:
CHCP 65001
:: Pulisci schermo così è più facile navigare nella trascrizione:
rem CLS
CALL arun -r %_ADV% < %~n2.script > %~n2.log

IF %_NASCONDI_TRANSCRIPT% NEQ 1 (
    ECHO [0;32m
    ECHO -----------------------------
    ECHO TRASCRIZIONE DEL TEST-SCRIPT:
    ECHO -----------------------------
    ECHO [0;37m
    TYPE %~n2.log
) ELSE (
    ECHO [1;37m[102m
    ECHO ------------------------------
    ECHO TRASCRIZIONE SALVATA SU DISCO!
    ECHO ------------------------------
)
:: Resetta colori:
ECHO [0m

:: =====================
:: Termina batch ed esci
:: =====================
:ESCI

:: Resetta colori:
ECHO [0m

:: Facciamo in modo che la finestra del CMD rimagna aperta se lo script è stato
:: lanciato da Esplora Risorse:
ECHO "%cmdcmdline%" | FINDSTR /IC:"%windir%" >nul && (
    CMD /K
)
EXIT /B %_ERR%
