:: "MULTITEST.bat" v1.0 (2019/01/06) | by Tristano Ajmone
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                            ::
::                 TEST SUITE DELLA LIBRERIA STANDARD DI ALAN                 ::
::                                                                            ::
::                   TEST MULTIPLI SU UNA SINGOLA AVVENTURA                   ::
::                                                                            ::
::                             by Tristano Ajmone                             ::
::                                                                            ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Questo script esegue test multipli su una singola avventura Alan.
:: Data l'avventure sorgente definita in %AVV_SRC%, questo script:
::   1. Compilerà "<nomeavventura>.alan" in "<nomeavventura>.a3c".
::   2. Eseguirà l'avventura usando ogni script di comandi "*.a3sol" presente in
::      questa cartella (es "prendere.a3sol", "esamina.a3sol", ecc.).
::   3. Salverà le trascrizioni delle partite in "<nomescriptcomandi>.a3log".
::   4. Mostrerà nella console un rapporto finale su errori e statistiche.
::------------------------------------------------------------------------------
@ECHO OFF
:: Non cancellare lo schermo se invocato da "..\TESTA_TUTTO.bat":
IF NOT DEFINED _TESTA_TUTTO_ CLS
:: ================
:: Setup Ambientale
:: ================
SETLOCAL EnableDelayedExpansion

:: Cambia Code Page per una corretta visualizzazione dei caratteri accentati:
CHCP 65001 > nul 2>&1

CALL :DefinisciColoriANSI   &:: Definisce alcune variabili per i colori ANSI
:: ==========================
:: Imposta Avventura Sorgente
:: ==========================
:: Il nome dell'avventura senza l'estensione ".alan":
SET NOME_AVVENTURA=casa
:: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
:: NOTA: In futuro sarà possibile modificare l'avventura sorgente usata per i
::       test tramite l'uso di un parametro da riga di comando opzionale!
:: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
:: =================================
:: Stampa il Banner e l'Introduzione
:: =================================
CALL :StampaBanner     &:: Stampa il Banner con il titolo incorniciato

ECHO Questo script compilerà l'avventura "%_CIANO_%%AVV_SRC%%_BIANCO_%", poi la eseguirà usando ogni
ECHO script di comandi ".a3sol" presente nella cartella, savlando le trascrizioni di
ECHO partita su file.
ECHO.
:: ================================
:: Definisci Variabili dello Script
:: ================================
SET AVV_SRC=%NOME_AVVENTURA%.alan
SET AVV_BIN=%NOME_AVVENTURA%.a3c
SET   "_COMPILE_OPTS_=-import ..\..\alanlib_ita\ -debug"
SET /A _ERR_=0        &:: Contatore errori per Exit Code
SET /A _CNT_TOT_=2    &:: Contatore operazioni totali
SET /A _CNT_EXE_=0    &:: Contatore operazioni eseguite
SET /A _TEST_TOT_=0   &:: Contatore script di comandi disponibili
SET /A _TEST_EXE_=0   &:: Contatore script di comandi eseguiti
:: =================================
:: Calcola il Numero Totale dei Test
:: =================================
ECHO Verrano eseguiti i seguenti script di test:%_GRIGIO_%
FOR %%i IN (*.a3sol) DO (
    SET /A _TEST_TOT_=!_TEST_TOT_! +1
    ECHO   !_TEST_TOT_!. %_GIALLO_%%%i%_GRIGIO_%
)
:: Aggiungi il numero dei test alle operazioni totali da eseguire:
SET /A _CNT_TOT_=!_CNT_TOT_! +!_TEST_TOT_!
:: ===============================================
:: Elimina Precedenti File Creati da Questo Script
:: ===============================================
CALL :TitoloOperazione "Elimina Vecchi File"
ECHO Eliminazione dei file precedentemente generati da questo script:
CALL :EliminaFile *.a3c
CALL :EliminaFile *.a3log
CALL :EliminaFile *.ifid
CALL :EliminaFile *.log
:: ============================
:: Compila L'Avventura Sorgente
:: ============================
CALL :TitoloOperazione "Compila l'Avventura"
ECHO Compilazione dell'avventura sorgente "%_CIANO_%%AVV_SRC%%_BIANCO_%":
CALL :CompilaAvv %AVV_SRC%
IF ERRORLEVEL 1 (
    ECHO Non sarà possibile eseguire i test finché il problema non sarà risolto.
    ECHO Abbandono dello script in corso...
    GOTO :TerminaScript
)
:: =====================================
:: Esegui gli Script di Comandi dei Test
:: =====================================
FOR %%i IN (*.a3sol) DO (
    CALL :TitoloOperazione "Esegui test: ^"%_GIALLO_%%%i%_BLU_%^""
    CALL :EseguiTest "%%i"
)
:: ======================
:: Mostra Rapporto Finale
:: ======================
ECHO %_BLU_%%_TORNA_SU_%
ECHO ================================================================================
ECHO RAPPORTO FINALE
ECHO ================================================================================
ECHO %_BIANCO_%Esecuzione dei test completata.
ECHO.
:: ------------------------------------------
:: Riporta il numero totale di test eseguiti:
:: ------------------------------------------
SET _TEMP_COL_=%_VERDE_%
IF %_TEST_EXE_% NEQ %_TEST_TOT_% (
    SET _TEMP_COL_=%_ROSSO_%
)
ECHO %_TEMP_COL_%TEST ESEGUITI:  %_TEST_EXE_%/%_TEST_TOT_%
:: -----------------------------------------------
:: Riporta il numero totale di errori riscontrati:
:: -----------------------------------------------
IF %_ERR_% EQU 0 (
    ECHO %_VERDE_%ERRORI TROVATI: NESSUNO
    ) ELSE (
    ECHO %_ROSSO_%ERRORI TROVATI: %_ERR_%
)

:: ==================================
:: Fai Pulizia e Termina Batch Script
:: ==================================
:TerminaScript

:: Azzera colori ANSI del terminale:
ECHO %_RESETTA_COLORI_%
:: Azzera variabili d'ambiente (richiesto per via del CMD /K più avanti):
CALL :DistruggiColoriANSI
SET _COMPILE_OPTS_=
SET _CNT_EXE_=
SET _TEST_TOT_=
SET _ADVCOMPILE=
SET _ADVTESTED=
SET _TEST_EXE_=

ECHO // FINE //

:: Facciamo in modo che la finestra del CMD rimagna aperta se lo script è stato
:: lanciato da Esplora Risorse:
ECHO "%cmdcmdline%" | FINDSTR /IC:"%windir%" >nul && (
    CMD /K
)
EXIT /B %_ERR_%

:: *****************************************************************************
:: *                                                                           *
:: *                                 FUNZIONI                                  *
:: *                                                                           *
:: *****************************************************************************

:: =============================================================================
:: func                           Cancella File                                 
:: =============================================================================
:: PARAMETRI: il file o il file-pattern da cancellare.
:: -----------------------------------------------------------------------------
:EliminaFile

ECHO %_GRIGIO_%  -%_CIANO_% %1%_GRIGIO_%
DEL %1 2> nul
EXIT /B
:: =============================================================================
:: func                     Compila Avventura Sorgente                          
:: =============================================================================
:: PARAMETRI: il file sorgente ".alan" da compilare.
:: -----------------------------------------------------------------------------
:CompilaAvv

SET _TEMP_ERR_=0
CALL alan.exe %_COMPILE_OPTS_% %1  > nul 2>&1 ^
    && (
        SET /A _ADVCOMPILE=%_ADVCOMPILE% +1
        ECHO %_BG_VERDE_%
        ECHO ------------------------
        ECHO  COMPILATA CON SUCCESSO 
        ECHO ------------------------

    ) || (
        SET /A _ERR_=%_ERR_% +1
        SET _TEMP_ERR_=1
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
EXIT /B %_TEMP_ERR_%
:: =============================================================================
:: func                    Esegui gli Script di Comandi                         
:: =============================================================================
:: PARAMETRI: il file di comandi ".a3sol" con cui testare l'avventura.
:: -----------------------------------------------------------------------------
:EseguiTest

:: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
:: NOTA: Il codice non verifica che la trascrizione sia stata effettivamente
::       salvata su disco, o che non sia un file da 0Kb! Questo potrebbe
::       essere migliorato. 
:: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ECHO %_ROSSO_%
CALL arun.exe -r %AVV_BIN% < %1 > %~n1.a3log ^
    && (
    SET /A _TEST_EXE_=!_TEST_EXE_! +1
    ECHO %_BG_VERDE_%
    ECHO ----------------------------------
    ECHO  TRASCRIZIONE SALVATA SU DISCO^^!^^!^^! 
    ECHO ----------------------------------
    ECHO %_RESETTA_COLORI_%%_BIANCO_%
    ECHO Trascrizione del test salvata in "%_VERDE_%%~n1.a3log%_BIANCO_%".
    ) || (
    SET /A _ERR_=%_ERR_% +1
    ECHO %_BG_ROSSO_%
    ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    ECHO  SI È VERIFICATO UN ERRRORE!^^!^^!^^! 
    ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    ECHO %_RESETTA_COLORI_%%_BIANCO_%
    ECHO Qualcosa è andato storto con lo script "%_ROSSO_%%~1%_BIANCO_%".
    ECHO Non è stato possibile creare la trascrizione "%_ROSSO_%%~n1.a3log%_BIANCO_%".
)
ECHO %_RESETTA_COLORI_%
EXIT /B

:: =============================================================================
:: func       Inizializza le Variabili dei Colori ANSI per Terminale            
:: =============================================================================
:: PARAMETRI: nessuno.
:: -----------------------------------------------------------------------------
:DefinisciColoriANSI

SET _RESETTA_COLORI_=[0m
SET _TORNA_SU_=[1A
:: ========================
:: Foreground Colors
:: ========================
SET _BLU_=[36m
SET _CIANO_=[96m
SET _GRIGIO_=[37m
SET _VERDE_=[92m
SET _ROSSO_=[91m
SET _BIANCO_=[97m
SET _GIALLO_=[93m
:: ========================
:: Colored Backgrounds
:: ========================
SET _BG_VERDE_=[97;102m
SET _BG_ROSSO_=[97;101m
EXIT /B
:: =============================================================================
:: func                Azzera le Variabili dei Colori ANSI                      
:: =============================================================================
:: PARAMETRI: nessuno.
::
:: Ripulisci le variabili d'ambiente prima di abbandonare lo script. Questa
:: precauzione è richiesta per via del codice che garantisce che il prompt dei
:: comandi rimanga aperto se lo script è stato lanciato da Esplora Risorse -- in
:: quel caso, le variabili settate da questo script persisterebbero.
:: -----------------------------------------------------------------------------
:DistruggiColoriANSI

SET _RESETTA_COLORI_=
SET _TORNA_SU_=
SET _BLU_=
SET _CIANO_=
SET _GRIGIO_=
SET _VERDE_=
SET _ROSSO_=
SET _BIANCO_=
SET _GIALLO_=
SET _BG_VERDE_=
SET _BG_ROSSO_=
EXIT /B
:: =============================================================================
:: func                          Stampa il Banner                               
:: =============================================================================
:: PARAMETRI: nessuno.
:: -----------------------------------------------------------------------------
:StampaBanner

ECHO %_VERDE_%
ECHO ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO ::                                                                            ::
ECHO ::%_GIALLO_%          ^
       TEST SUITE DELLA LIBRERIA STANDARD DI ALAN                 %_VERDE_%::
ECHO ::                                                                            ::
ECHO ::%_GIALLO_%            ^
       TEST MULTIPLI SU UNA SINGOLA AVVENTURA                   %_VERDE_%::
ECHO ::                                                                            ::
ECHO ::%_GIALLO_%                      ^
       by Tristano Ajmone                             %_VERDE_%::
ECHO ::                                                                            ::
ECHO ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO %_BIANCO_%
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
ECHO %_BLU_%===============================================================================
ECHO !_CNT_EXE_!/%_CNT_TOT_% -- %~1
ECHO ===============================================================================%_BIANCO_%

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
