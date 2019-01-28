:: "TESTA_TUTTO.bat" v3.0.0 (2019/01/28) | by Tristano Ajmone
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                            ::
::                   TEST SUITE DELLA LIBRERIA ALAN ITALIAN                   ::
::                                                                            ::
::                             by Tristano Ajmone                             ::
::                                                                            ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
@ECHO OFF & CLS
:: -----------------------------------------------------------------------------
:: Questo script gestisce due tipologie di cartelle per i test:
:: 
::   (a) Sorgente Singolo  -> Test Multipli.
::   (b) Sorgenti Multipli -> Uno/Più Test Per Sorgente.
:: 
:: È possibile eseguire i test di tipo (a) su un numero illimitato di cartelle,
:: mentre i test di tipo (b) possono essere eseguiti su una sola cartella.
:: =============================================================================
::                        Impostazioni Cartelle dei Test                        
:: =============================================================================
:: Cartelle Sorgente Singolo -> Test Multipli
:: -----------------------------------------------------------------------------
:: Nelle variabili di tipo 'AVV_SINGOLA[n]AVV', il nome del file dell'avventura
:: non deve contenere l'estensione ".alan".
SET AVV_SINGOLA[1]DIR=casa
SET AVV_SINGOLA[1]AVV=casa
SET AVV_SINGOLA[2]DIR=vestiario
SET AVV_SINGOLA[2]AVV=ega
:: -----------------------------------------------------------------------------
:: Cartella Sorgenti Multipli -> Uno/Più Test Per Sorgente
:: -----------------------------------------------------------------------------
SET AVV_MULTIPLE_DIR=vari
:: =============================================================================
::                             Preliminari di Setup                             
:: =============================================================================
SET "PATH_INZIALE=%CD%" &:: Memorizza percorso attuale
:: ================
:: Setup Ambientale
:: ================
SETLOCAL EnableDelayedExpansion

:: Cambia Code Page per una corretta visualizzazione dei caratteri accentati:
CHCP 65001 > nul 2>&1

CALL :DefinisciCodiciANSI   &:: Definisce alcune variabili per i colori ANSI
:: =================================
:: Stampa il Banner e l'Introduzione
:: =================================
CALL :StampaBanner    &:: Stampa il Banner con il titolo incorniciato
ECHO.
:: ================================
:: Definisci Variabili dello Script
:: ================================
SET   "_COMPILE_OPTS_=-import ..\..\alanlib_ita\ -debug"
SET /A _ERR_=0        &:: Contatore errori per Exit Code
SET /A _AVV_COM_=0    &:: Contatore delle avventure compilate
SET /A _AVV_ERR_=0    &:: Contatore errori compilazione avventure
SET /A _AVV_EXE_=0    &:: Contatore delle avventure testate
SET /A _AVV_TOT_=0    &:: Contatore delle avventure sorgenti
SET /A _CNT_EXE_=0    &:: Contatore operazioni eseguite
SET /A _CNT_TOT_=0    &:: Contatore operazioni totali
SET /A _STP_EXE_=0    &:: Contatore step eseguiti
SET /A _STP_TOT_=5    &:: Contatore step totali
SET /A _TEST_EXE_=0   &:: Contatore script di comandi eseguiti
SET /A _TEST_TOT_=0   &:: Contatore script di comandi disponibili
:: =============================================================================
:: step 1                      Calcoli Preliminari                              
:: =============================================================================
CALL :TitoloStep "Calcoli Preliminari"
:: =====================================
:: Calcola il Numero Totale dei Sorgenti
:: =====================================
ECHO Verrano compilate le seguenti avventure:%_GRIGIO_%
:: Iterazione Cartelle Sorgente Singolo -> Test Multipli:
SET /A TMPC=1
:LoopContaSorgenti
IF "!AVV_SINGOLA[%TMPC%]DIR!" == "" GOTO :FineLoopContaSorgenti
CALL :ContaSorgenti !AVV_SINGOLA[%TMPC%]DIR!
SET /A "TMPC+=1"
GOTO :LoopContaSorgenti
:FineLoopContaSorgenti
:: Cartella Sorgenti Multipli -> Uno/Più Test Per Sorgente:
CALL :ContaSorgenti %AVV_MULTIPLE_DIR%
:: Aggiungi il numero delle avventure alle operazioni totali da eseguire:
SET /A _CNT_TOT_=!_CNT_TOT_! +!_AVV_TOT_!
ECHO.
:: =================================
:: Calcola il Numero Totale dei Test
:: =================================
ECHO Verrano eseguiti i seguenti script di test:%_GRIGIO_%
:: Iterazione Cartelle Sorgente Singolo -> Test Multipli:
SET /A TMPC=1
:LoopContaScript
IF "!AVV_SINGOLA[%TMPC%]DIR!" == "" GOTO :FineLoopContaScript
CALL :ContaScript !AVV_SINGOLA[%TMPC%]DIR!
SET /A "TMPC+=1"
GOTO :LoopContaScript
:FineLoopContaScript
:: Cartella Sorgenti Multipli -> Uno/Più Test Per Sorgente:
CALL :ContaScript %AVV_MULTIPLE_DIR%
:: Aggiungi il numero dei test alle operazioni totali da eseguire:
SET /A _CNT_TOT_=!_CNT_TOT_! +!_TEST_TOT_!
:: =============================================================================
:: step 2        Elimina File Precedenti Creati da Questo Script                
:: =============================================================================
CALL :TitoloStep "Elimina Vecchi File"
ECHO Eliminazione dei file precedentemente generati da questo script:
:: Iterazione Cartelle Sorgente Singolo -> Test Multipli:
SET /A TMPC=1
:LoopPulizia
IF "!AVV_SINGOLA[%TMPC%]DIR!" == "" GOTO :FineLoopPulizia
CALL :PulisciCartella !AVV_SINGOLA[%TMPC%]DIR!
SET /A "TMPC+=1"
GOTO :LoopPulizia
:FineLoopPulizia
:: Cartella Sorgenti Multipli -> Uno/Più Test Per Sorgente:
CALL :PulisciCartella %AVV_MULTIPLE_DIR%
:: ==============================================================================
:: step 3                Compila i Sorgenti delle Avventure                      
:: ==============================================================================
CALL :TitoloStep "Compila le Avventure"
SET /A _CNT_TMP_=0   &:: Contatore temporaneo compilazioni
SET /A _ERR_TMP_=0   &:: Variabile temporanea errori compilazione
:: Iterazione Cartelle Sorgente Singolo -> Test Multipli:
SET /A TMPC=1
:LoopCompila
IF "!AVV_SINGOLA[%TMPC%]DIR!" == "" GOTO :FineLoopCompila
CALL :CompilaCartella !AVV_SINGOLA[%TMPC%]DIR!
SET /A "TMPC+=1"
GOTO :LoopCompila
:FineLoopCompila
:: Cartella Sorgenti Multipli -> Uno/Più Test Per Sorgente:
CALL :CompilaCartella %AVV_MULTIPLE_DIR%
IF %_AVV_ERR_% GEQ  1 (
    CALL :CorniceErrore
    ECHO ERRORI DI COMPILAZIONE: %_AVV_ERR_%
    ECHO Non sarà possibile eseguire i test finché il problema non sarà risolto.
    ECHO %_BIANCO_%Abbandono dello script in corso...
    GOTO :RapportoFinale
)
:: =============================================================================
:: step 4                      Eseguit Tutti i Test                             
:: =============================================================================
CALL :TitoloStep "Eseguit Tutti i Test"
CALL :TestAvvSingola
CALL :TestAvvMultiple
:: =============================================================================
:: step 5                        Rapporto Finale                                
:: =============================================================================
:RapportoFinale

CALL :TitoloStep "RAPPORTO FINALE"
ECHO %_BIANCO_%Esecuzione dei test completata.
ECHO.
:: ------------------------------------------------------------
:: Riporta il numero totale di avventure compilate a buon fine:
:: ------------------------------------------------------------
SET TEMP_COL=%_VERDE_%
IF %_AVV_COM_% NEQ %_AVV_TOT_% (
    SET TEMP_COL=%_ROSSO_%
)
ECHO %TEMP_COL%AVVENTURE COMPILATE:  %_AVV_COM_%/%_AVV_TOT_%
:: ----------------------------------------------
:: Riporta il numero totale di avventure testate:
:: ----------------------------------------------
SET TEMP_COL=%_VERDE_%
IF %_AVV_EXE_% NEQ %_AVV_TOT_% (
    SET TEMP_COL=%_ROSSO_%
)
ECHO %TEMP_COL%AVVENTURE TESTATE:    %_AVV_EXE_%/%_AVV_TOT_%
:: ---------------------------------------------------------
:: Riporta il numero totale degli script trovati ed esguiti:
:: ---------------------------------------------------------
SET TEMP_COL=%_VERDE_%
IF %_TEST_EXE_% NEQ %_TEST_TOT_% (
    SET TEMP_COL=%_ROSSO_%
)
ECHO %TEMP_COL%TEST SCRIPT ESEGUITI: %_TEST_EXE_%/%_TEST_TOT_%
:: -----------------------------------------------
:: Riporta il numero totale di errori riscontrati:
:: -----------------------------------------------
IF %_ERR_% EQU 0 (
    ECHO %_VERDE_%ERRORI: NESSUNO
    ) ELSE (
    ECHO %_ROSSO_%ERRORI: %_ERR_%
)

:: =============================================================================
::                      Fai Pulizia e Termina Batch Script                      
:: =============================================================================
:TerminaScript

CD %PATH_INZIALE% &:: Riprista percorso originario
:: Azzera colori ANSI del terminale:
ECHO %_RESETTA_COLORI_%
:: Azzera variabili d'ambiente (richiesto per via del CMD /K più avanti):
CALL :DistruggiCodiciANSI

SET _COMPILE_OPTS_=
SET AVV_MULTIPLE_DIR=
SET AVV_SINGOLA=
SET AVV_SINGOLA_DIR=
SET PATH_INZIALE=

SET _AVV_COM_=
SET _AVV_ERR_=
SET _AVV_EXE_=
SET _AVV_TOT_=
SET _CNT_EXE_=
SET _CNT_TOT_=
SET _STP_EXE_=
SET _STP_TOT_=
SET _TEST_EXE_=
SET _TEST_TOT_=

:: Variabili temporanee:
SET _CNT_TMP_=
SET _ERR_TMP_=
SET _STR_AVV_=
SET _STR_CNT_=
SET AVV_BIN=
SET TEMP_COL=

ECHO // FINE //
:: Facciamo in modo che la finestra del CMD rimagna aperta se lo script è stato
:: lanciato da Esplora Risorse:
ECHO "%cmdcmdline%" | FINDSTR /IC:"%windir%" >nul && (
    CMD /K
)
EXIT /B %_ERR_%

:: *****************************************************************************
:: *                                                                           *
:: *                            FUNZIONI DI SETUP                              *
:: *                                                                           *
:: *****************************************************************************

:: =============================================================================
:: func                      Conta Avventure Sorgenti                           
:: =============================================================================
:: PARAMETRI: nome cartella.

:ContaSorgenti
FOR %%i IN (%~1\*.alan) DO (
    SET /A _AVV_TOT_=!_AVV_TOT_! +1
    ECHO   !_AVV_TOT_!. %_GIALLO_%%%i%_GRIGIO_%
)
EXIT /B
:: =============================================================================
:: func                        Conta Script Comandi                             
:: =============================================================================
:: PARAMETRI: nome cartella.
:: -----------------------------------------------------------------------------
:ContaScript

FOR %%i IN (%~1\*.a3sol) DO (
    SET /A _TEST_TOT_=!_TEST_TOT_! +1
    ECHO   !_TEST_TOT_!. %_GIALLO_%%%i%_GRIGIO_%
)
EXIT /B
:: =============================================================================
:: func               Ripulisci Cartella da File Precedenti                     
:: =============================================================================
:: PARAMETRI: nome cartella.
:: -----------------------------------------------------------------------------
:PulisciCartella

CALL :EliminaFile %~1\*.a3c
CALL :EliminaFile %~1\*.a3log
CALL :EliminaFile %~1\*.ifid
CALL :EliminaFile %~1\*.log
EXIT /B
:: =============================================================================
:: func                           Cancella File                                 
:: =============================================================================
:: PARAMETRI: il file o il file-pattern da cancellare.
:: -----------------------------------------------------------------------------
:EliminaFile

ECHO %_GRIGIO_%  -%_CIANO_% %1%_GRIGIO_%
DEL %1 2> nul
EXIT /B
:: *****************************************************************************
:: *                                                                           *
:: *                     FUNZIONI COMPILAZIONE AVVENTURE                       *
:: *                                                                           *
:: *****************************************************************************

:: =============================================================================
:: func              Compila Tutti i Sorgenti in Una Cartella                   
:: =============================================================================
:: PARAMETRI: nome cartella.
:: -----------------------------------------------------------------------------
:CompilaCartella

PUSHD %~1
FOR %%i IN (*.alan) DO (
    SET /A _CNT_TMP_=!_CNT_TMP_! +1
    SET "_STR_CNT_=!_CNT_TMP_!/%_AVV_TOT_%"
    SET "_STR_AVV_=^"%_MAGENTA_%%~1\%_GIALLO_%%%i%_BLU_%^""
    CALL :TitoloOperazione "COMPILA !_STR_CNT_! !_STR_AVV_!"
    CALL :CompilaAvv "%%i"
)
POPD
EXIT /B
:: =============================================================================
:: func                     Compila Avventura Sorgente                          
:: =============================================================================
:: PARAMETRI: il file sorgente ".alan" da compilare.
:: -----------------------------------------------------------------------------
:CompilaAvv

CALL alan.exe %_COMPILE_OPTS_% %1  > nul 2>&1 ^
    && (
        SET /A _AVV_COM_=%_AVV_COM_% +1
        ECHO %_BG_VERDE_%
        ECHO ------------------------
        ECHO  COMPILATA CON SUCCESSO 
        ECHO ------------------------

    ) || (
        SET /A _ERR_=%_ERR_% +1
        SET /A _AVV_ERR_=%_AVV_ERR_% +1
        ECHO %_BG_ROSSO_%
        ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~
        ECHO  COMPILAZIONE FALLITA^^!^^!^^! 
        ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~
        ECHO %_RESETTA_COLORI_%%_BLU_%
        ECHO Rapporto del compilatore:%_ROSSO_%
        :: Ricompila, così da poter mostrare il rapporto questa volta
        CALL alan.exe %_COMPILE_OPTS_% %1
    )
ECHO %_RESETTA_COLORI_%%_TORNA_SU_%
EXIT /B
:: *****************************************************************************
:: *                                                                           *
:: *                         FUNZIONI TEST AVVENTURE                           *
:: *                                                                           *
:: *****************************************************************************
:: =============================================================================
:: func                       Stampa Titolo del Test                            
:: =============================================================================
:: PARAMETRI:
:: %1 -- l'avventura da testare.
:: %2 -- il file di comandi ".a3sol" con cui testare l'avventura.
:: -----------------------------------------------------------------------------
:TitoloTest

CALL :TitoloOperazione "TESTA ^"%~1^" CON ^"%_GIALLO_%%~2%_BLU_%^""
EXIT /B
:: =============================================================================
:: func                   Esegui Test Avventura Singola                         
:: =============================================================================
:: PARAMETRI: nessuno.
:: -----------------------------------------------------------------------------
:TestAvvSingola

:: Iterazione Cartelle Sorgente Singolo -> Test Multipli:
SET /A TMPC=1
:LoopTestAvvSingola
IF "!AVV_SINGOLA[%TMPC%]DIR!" == "" GOTO :FineLoopTestAvvSingola
SET /A _AVV_EXE_=!_AVV_EXE_! +1
SET AVV_BIN=%_MAGENTA_%!AVV_SINGOLA[%TMPC%]DIR!\%_GIALLO_%!AVV_SINGOLA[%TMPC%]AVV!.a3c%_BLU_%
PUSHD !AVV_SINGOLA[%TMPC%]DIR!
FOR %%i IN (*.a3sol) DO (
    CALL :TitoloTest "!AVV_BIN!" "%%i"
    CALL :EseguiTest !AVV_SINGOLA[%TMPC%]AVV! "%%i"
)
POPD
SET /A "TMPC+=1"
GOTO :LoopTestAvvSingola
:FineLoopTestAvvSingola
EXIT /B
:: =============================================================================
:: func                   Esegui Test Avventure Multiple                        
:: =============================================================================
:: PARAMETRI: nessuno.
::
:: Esegui su ogni file "<avventura>.a3c" gli script "<avventura>*.a3sol".
:: -----------------------------------------------------------------------------
:TestAvvMultiple

PUSHD %AVV_MULTIPLE_DIR%
FOR %%i IN (*.a3c) DO (
    SET /A _AVV_EXE_=!_AVV_EXE_! +1
    CALL :ScriptMultipli "%%i"
)
POPD
EXIT /B
:: =============================================================================
:: func                       Esegui Script Multipli                            
:: =============================================================================
:: PARAMETRI: l'avventura da testare.
:: -----------------------------------------------------------------------------
:ScriptMultipli

FOR %%i IN (%~n1*.a3sol) DO (
    SET AVV_BIN=%_MAGENTA_%%AVV_MULTIPLE_DIR%\%_GIALLO_%%~n1.a3c%_BLU_%
    CALL :TitoloTest "!AVV_BIN!" "%%i"
    CALL :EseguiTest %1 "%%i"
)
EXIT /B
:: =============================================================================
:: func                    Esegui gli Script di Comandi                         
:: =============================================================================
:: PARAMETRI:
:: %1 -- l'avventura da testare.
:: %2 -- il file di comandi ".a3sol" con cui testare l'avventura.
:: -----------------------------------------------------------------------------
:EseguiTest

:: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
:: NOTA: Il codice non verifica che la trascrizione sia stata effettivamente
::       salvata su disco, o che non sia un file da 0Kb! Questo potrebbe
::       essere migliorato. 
:: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO %_ROSSO_%
CALL arun.exe -r %1 < %2 > %~n2.a3log ^
    && (
    SET /A _TEST_EXE_=!_TEST_EXE_! +1
    ECHO %_BG_VERDE_%
    ECHO ----------------------------------
    ECHO  TRASCRIZIONE SALVATA SU DISCO^^!^^!^^! 
    ECHO ----------------------------------
    ECHO %_RESETTA_COLORI_%%_BIANCO_%
    ECHO Trascrizione del test salvata in "%_VERDE_%%~n2.a3log%_BIANCO_%".
    ) || (
    SET /A _ERR_=%_ERR_% +1
    ECHO %_BG_ROSSO_%
    ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    ECHO  SI È VERIFICATO UN ERRRORE!^^!^^!^^! 
    ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    ECHO %_RESETTA_COLORI_%%_BIANCO_%
    ECHO Qualcosa è andato storto con lo script "%_ROSSO_%%~2%_BIANCO_%".
    ECHO Non è stato possibile creare la trascrizione "%_ROSSO_%%~n2.a3log%_BIANCO_%".
)
ECHO %_RESETTA_COLORI_%
EXIT /B
:: *****************************************************************************
:: *                                                                           *
:: *                           FUNZIONI CODICI ANSI                            *
:: *                                                                           *
:: *****************************************************************************

:: =============================================================================
:: func     Inizializza le Variabili degli ANSI Escapes per Terminale           
:: =============================================================================
:: PARAMETRI: nessuno.
:: -----------------------------------------------------------------------------
:DefinisciCodiciANSI

SET _RESETTA_COLORI_=[0m
SET _TORNA_SU_=[1A
SET _INVERSO_=[7m
:: ========================
:: Foreground Colors
:: ========================
SET _BIANCO_=[97m
SET _BLU_=[36m
SET _CIANO_=[96m
SET _GIALLO_=[93m
SET _GRIGIO_=[37m
SET _MAGENTA_=[95m
SET _ROSSO_=[91m
SET _VERDE_=[92m
:: ========================
:: Colored Backgrounds
:: ========================
SET _BG_VERDE_=[97;102m
SET _BG_ROSSO_=[97;101m
EXIT /B
:: =============================================================================
:: func               Azzera le Variabili degli ANSI Escapes                    
:: =============================================================================
:: PARAMETRI: nessuno.
::
:: Ripulisci le variabili d'ambiente prima di abbandonare lo script. Questa
:: precauzione è richiesta per via del codice che garantisce che il prompt dei
:: comandi rimanga aperto se lo script è stato lanciato da Esplora Risorse -- in
:: quel caso, le variabili settate da questo script persisterebbero.
:: -----------------------------------------------------------------------------
:DistruggiCodiciANSI

SET _RESETTA_COLORI_=
SET _TORNA_SU_=
SET _INVERSO_=
SET _BIANCO_=
SET _BLU_=
SET _CIANO_=
SET _GIALLO_=
SET _GRIGIO_=
SET _MAGENTA_=
SET _ROSSO_=
SET _VERDE_=
SET _BG_VERDE_=
SET _BG_ROSSO_=
EXIT /B
:: *****************************************************************************
:: *                                                                           *
:: *                        FUNZIONI TESTO DECORATIVO                          *
:: *                                                                           *
:: *****************************************************************************
:: =============================================================================
:: func                          Stampa il Banner                               
:: =============================================================================
:: PARAMETRI: nessuno.
:: -----------------------------------------------------------------------------
:StampaBanner

ECHO %_VERDE_%
ECHO ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO ::                                                                            ::
ECHO ::%_GIALLO_%            ^
       TEST SUITE DELLA LIBRERIA ALAN ITALIAN                   %_VERDE_%::
ECHO ::                                                                            ::
ECHO ::%_GIALLO_%                      ^
       by Tristano Ajmone                             %_VERDE_%::
ECHO ::                                                                            ::
ECHO ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO %_BIANCO_%
EXIT /B
:: =============================================================================
:: func                        Stampa Titolo Steps                              
:: =============================================================================
:: PARAMETRI: il titolo dello step.
:: -----------------------------------------------------------------------------
:TitoloStep

SET /A _STP_EXE_=!_STP_EXE_! +1
ECHO.
ECHO %_VERDE_%################################################################################%_GIALLO_%
ECHO STEP !_STP_EXE_!/%_STP_TOT_% ^| %~1
ECHO %_VERDE_%################################################################################%_BIANCO_%
EXIT /B
:: =============================================================================
:: func                      Stampa Titolo Operazione                           
:: =============================================================================
:: PARAMETRI: il titolo dell'operazione.
::
:: Stampa una cornice con il numero dell'operazione in corso, il numero delle
:: operazioni totali, e il titolo dell'operazione attuale.
:: -----------------------------------------------------------------------------
:TitoloOperazione

SET /A _CNT_EXE_=!_CNT_EXE_! +1
ECHO.
ECHO %_BLU_%===============================================================================
ECHO !_CNT_EXE_!/%_CNT_TOT_% ^| %~1
ECHO ===============================================================================%_BIANCO_%
EXIT /B
:: =============================================================================
::                            Stampa Cornice Errore                             
:: =============================================================================
:: PARAMETRI:nessuno.
:: -----------------------------------------------------------------------------
:CorniceErrore

ECHO.
ECHO %_ROSSO_%////////////////////////////////////////////////////////////////////////////////
ECHO //////////////////////////////// %_GIALLO_%ERRORE FATALE%_ROSSO_% /////////////////////////////////
ECHO ////////////////////////////////////////////////////////////////////////////////%_RESETTA_COLORI_%
EXIT /B
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                The MIT License                             ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: MIT License
:: 
:: Copyright (c) 2018 Tristano Ajmone, https://github.com/tajmone
:: 
:: Permission is hereby granted, free of charge, to any person obtaining a copy
:: of this software and associated documentation files (the "Software"), to deal
:: in the Software without restriction, including without limitation the rights
:: to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
:: copies of the Software, and to permit persons to whom the Software is
:: furnished to do so, subject to the following conditions:
:: 
:: The above copyright notice and this permission notice shall be included in
:: all copies or substantial portions of the Software.
:: 
:: THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
:: IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
:: FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
:: AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
:: LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
:: OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
:: SOFTWARE.
::::::::::::::::::::::::::::::::::::{ EOF }:::::::::::::::::::::::::::::::::::::
