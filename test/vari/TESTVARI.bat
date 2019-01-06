:: "TESTVARI.bat" v3.3 (2019/01/06) | by Tristano Ajmone
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
::                                                                            ::
::                 TEST SUITE DELLA LIBRERIA STANDARD DI ALAN                 ::
::                                                                            ::
::                     TEST MULTIPLI SU AVVENTURE MULTIPLE                    ::
::                                                                            ::
::                             by Tristano Ajmone                             ::
::                                                                            ::
::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:: Per ogni file "*.alan" nella directory, questo script:
::   1. Compilerà "<nomefile>.alan" in "<nomefile>.a3c".
::   2. Eseguirà l'avventura usando uno o più file di comandi aventi il nome
::      "<nomefile>*.a3sol" (es "<nomefile>.a3sol", "<nomefile>_bis.a3sol").
::   3. Salverà le trascrizioni delle partite in "<nomefilecomandi>.a3log".
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

CALL :InitANSIColors   &:: Definisce alcune variabili per i colori ANSI
:: =================================
:: Stampa il Banner e l'Introduzione
:: =================================
CALL :PrintHeader      &:: Stampa il Banner

ECHO Questo script compilerà tutte le avventure Alan in questa cartella, poi le
ECHO eseguirà tramite script di comandi e ne salverà le trascrizioni su file.
ECHO.
:: ================================
:: Definisci Variabili dello Script
:: ================================
SET "_COMPILE_OPTS=-import ..\..\alanlib_ita\ -import ..\casa\ -debug"
SET /A _ERR=0          &:: Contatore Errori per Exit Code
SET /A _CNT=0          &:: Contatore per le operazioni di processazione
SET /A _ADVSOURCES=0   &:: Contatore delle avventure sorgenti
SET /A _ADVCOMPILE=0   &:: Contatore delle avventure compilate
SET /A _ADVTESTED=0    &:: Contatore delle avventure testate
SET /A _SCRIPTSCNT=0   &:: Contatore degli script di comandi eseguiti
:: =====================================
:: Calcola il Numero Totale di Avventure
:: =====================================
ECHO Verrano processate le seguenti avventure:%GRAY%
FOR %%i IN (*.alan) DO (
    SET /A _ADVSOURCES=!_ADVSOURCES! +1
    ECHO   !_ADVSOURCES!. %YELLOW%%%i%GRAY%
)
:: ===============================================
:: Elimina Precedenti File Creati da Questo Script
:: ===============================================
ECHO -------------------------------------------------------------------------------%WHITE%
ECHO Eliminazione dei file precedenti:
CALL :DelFile comandi-partita.sav
CALL :DelFile *.a3c
CALL :DelFile *.a3log
CALL :DelFile *.ifid
CALL :DelFile *.log
ECHO %GRAY%-------------------------------------------------------------------------------
:: ============================================
:: Compila le Avventure ed Esegui i Test-Script
:: ============================================
FOR %%i IN (*.alan) DO (
    SET /A _CNT=!_CNT! +1
    ECHO %BLUE%
    ECHO ================================================================================
    ECHO !_CNT!/%_ADVSOURCES% -- ^"%YELLOW%%%i%BLUE%^"
    ECHO ================================================================================
    :: Esegui il test solo se la compilazione è andata a buon fine:
    CALL :CompileAdv "%%i"  &&  CALL :RunTestScript "%%i"
)
:: ==========================
:: Visualizza Rapporto Finale
:: ==========================
ECHO %BLUE%
ECHO ================================================================================
ECHO SUMMARY REPORT
ECHO ================================================================================
ECHO %WHITE%Esecuzione dei test completata.
ECHO.
SET TEMP_COL=%GREEN%
:: ----------------------------------------------
:: Riporta il numero totale di avventure trovate:
:: ----------------------------------------------
ECHO AVVENTURE SORGENTI:  %_ADVSOURCES%
:: ------------------------------------------------------------
:: Riporta il numero totale di avventure compilate a buon fine:
:: ------------------------------------------------------------
IF %_ADVCOMPILE% NEQ %_ADVSOURCES% (
    SET TEMP_COL=%RED%
)
ECHO %TEMP_COL%AVVENTURE COMPILATE: %_ADVCOMPILE%/%_ADVSOURCES%
:: ----------------------------------------------
:: Riporta il numero totale di avventure testate:
:: ----------------------------------------------
SET TEMP_COL=%GREEN%
IF %_ADVTESTED% NEQ %_ADVSOURCES% (
    SET TEMP_COL=%RED%
)
ECHO %TEMP_COL%AVVENTURE TESTATE:   %_ADVTESTED%/%_ADVSOURCES%
:: -------------------------------------------------------
:: Riporta il numero totale di script di comandi eseguiti:
:: -------------------------------------------------------
ECHO %WHITE%TEST ESEGUITI:       %_SCRIPTSCNT%
:: -----------------------------------------------
:: Riporta il numero totale di errori riscontrati:
:: -----------------------------------------------
IF %_ERR% EQU 0 (
    ECHO %GREEN%ERRORI: NESSUNO
    ) ELSE (
    ECHO %RED%ERRORI: %_ERR%
)

:: ==================================
:: Fai Pulizia e Termina Batch Script
:: ==================================
:EXIT_SCRIPT

:: Azzera variabili d'ambiente (richiesto per via del CMD /K più avanti):
SET _COMPILE_OPTS=
SET _ERR=
SET _CNT=
SET _ADVSOURCES=
SET _ADVCOMPILE=
SET _ADVTESTED=
SET _SCRIPTSCNT=

:: Azzera colori ANSI del terminale:
ECHO %RESET_COLORS%

:: Facciamo in modo che la finestra del CMD rimagna aperta se lo script è stato
:: lanciato da Esplora Risorse:
ECHO "%cmdcmdline%" | FINDSTR /IC:"%windir%" >nul && (
    CMD /K
)
EXIT /B %_ERR%

:: *****************************************************************************
:: *                                                                           *
:: *                                 FUNZIONI                                  *
:: *                                                                           *
:: *****************************************************************************

:: =============================================================================
::                                Cancella File                                 
:: =============================================================================
:DelFile

ECHO %GRAY%  -%CYAN% %1%GRAY%
DEL %1 2> nul
EXIT /B
:: =============================================================================
::                          Compila Avventura Sorgente                          
:: =============================================================================
:CompileAdv

CALL alan.exe %_COMPILE_OPTS% %1  > nul 2>&1 ^
    && (
        SET /A _ADVCOMPILE=%_ADVCOMPILE% +1
        ECHO %BG_GREEN%
        ECHO ------------------------
        ECHO  COMPILATO CON SUCCESSO 
        ECHO ------------------------
    ) || (
        SET /A _ERR=%_ERR% +1
        ECHO %BG_RED%
        ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~
        ECHO  COMPILAZIONE FALLITA^^!^^!^^! 
        ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~
        ECHO %RESET_COLORS%%BLUE%
        ECHO Compiler report:%RED%
        :: Compile again in order to show compiler errors report
        CALL alan.exe %_COMPILE_OPTS% %1
    )
EXIT /B
:: =============================================================================
::                         Esegui gli Script di Comandi                         
:: =============================================================================
:: L'avventura "<nomefile>.alan" passata nel parametro verra eseguita con ogni
:: script di comandi che inizi con "<nomefile>" (ossia: "<nomefile>*.a3sol").
:: Questo sistema consente di testare la medesima avventura con più script di
:: tests. Se non viene trovato almeno uno script di comand verrà riportato un
:: errore. L'aspettativa minima è di trovare almeno "<nomefile>.a3sol".
:: -----------------------------------------------------------------------------
:RunTestScript

SET _ADVFILE=%~n1.a3c  &:: L'avventura usata è sempre la stessa!
SET _SCRIPT=%~n1.a3sol &:: Da usare in caso di errore (nessuno script trovato).
:: ======================================================
:: Esegui Tutti gli Script di Comandi per quest'Avventura
:: ======================================================
:: '%_FOUND%' traccia se è stato trovato almeno uno script:
SET _FOUND=

FOR /R %%i IN (%~n1*.a3sol) DO (
	SET "_FOUND=1"
    REM ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    REM NOTE: The code doesn't actually check that ARun returned without error,
    REM       or that the log was actually created. Should improve this!
    REM ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    SET /A _SCRIPTSCNT=!_SCRIPTSCNT! +1
    CALL arun.exe -r %_ADVFILE% < %%i > %%~ni.a3log
    ECHO %BG_GREEN%
    ECHO ----------------------------------
    ECHO  TRASCRIZIONE SALVATA SU DISCO^^!^^!^^! 
    ECHO ----------------------------------
    ECHO %RESET_COLORS%%GREEN%
    ECHO Trascrizione del test salvata in "%YELLOW%%%~ni.a3log%GREEN%".
)
IF NOT DEFINED _FOUND (
    SET /A _ERR=%_ERR% +1
    ECHO %BG_RED%
    ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    ECHO  SCRIPT DI COMANDI NON TROVATO^^!^^!^^! 
    ECHO ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    ECHO %RESET_COLORS%%RED%
    ECHO Lo script "%YELLOW%%_SCRIPT%%RED%" non è stato trovato.
) ELSE SET /A _ADVTESTED=!_ADVTESTED! +1
:: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
:: NOTA: Lo ELSE qui sopra aumenta di uno il totale delle avventure testate,
::       mentre il FOR loop precedente incrementa il totale dei test eseguiti. 
:: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
EXIT /B

:: =============================================================================
::            Inizializza le Variabili dei Colori ANSI per Terminale            
:: =============================================================================
:InitANSIColors

SET RESET_COLORS=[0m
:: ========================
:: Foreground Colors
:: ========================
SET BLUE=[36m
SET CYAN=[96m
SET GRAY=[37m
SET GREEN=[92m
SET RED=[91m
SET WHITE=[97m
SET YELLOW=[93m
:: ========================
:: Colored Backgrounds
:: ========================
SET BG_GREEN=[97;102m
SET BG_RED=[97;101m
EXIT /B
:: =============================================================================
::                     Azzera le Variabili dei Colori ANSI                      
:: =============================================================================
:: Ripulisci le variabili d'ambiente prima di abbandonare lo script. Questa
:: precauzione è richiesta per via del codice che garantisce che il prompt dei
:: comandi rimanga aperto se lo script è stato lanciato da Esplora Risorse -- in
:: quel caso, le variabili settate da questo script persisterebbero.
:DestroyANSIColors

SET RESET_COLORS=
SET BLUE=
SET CYAN=
SET GRAY=
SET GREEN=
SET RED=
SET WHITE=
SET YELLOW=
SET BG_GREEN=
SET BG_RED=
EXIT /B
:: ==============================================================================
::                                Stampa il Banner                               
:: ==============================================================================
:PrintHeader

ECHO %GREEN%
ECHO ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO ::                                                                            ::
ECHO ::%YELLOW%          ^
       TEST SUITE DELLA LIBRERIA STANDARD DI ALAN                 %GREEN%::
ECHO ::                                                                            ::
ECHO ::%YELLOW%                      ^
       by Tristano Ajmone                             %GREEN%::
ECHO ::                                                                            ::
ECHO ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO %WHITE%
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
