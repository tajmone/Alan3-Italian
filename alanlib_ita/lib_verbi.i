--= Alan StdLib Italian: Verbi
--| Tristano Ajmone <tajmone@gmail.com>
--~-----------------------------------------------------------------------------
--~ "lib_verbi.i"
--| v0.7.14-Alpha, 2018-11-01: Alan 3.0beta6
--|=============================================================================
--| Adattamento italiano del modulo `lib_verbs.i` della
--| _ALAN Standard Library_ v2.1, (C) Anssi Räisänen, Artistic License 2.1.
--| Ad opera di Tristano Ajmone,  (C) 2018, Artistic License 2.1.
--|=============================================================================

-- This library file defines common verbs needed in gameplay. The verbs
-- are listed alphabetically. This file also includes common commands which are not
-- actually verbs, such as "inventory", "verbose" and "again".
-- Directions (north, south, up, etc.) are declared in the file 'locations.i'.


-->elenco_verbi(1000)
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Elenco dei Verbi Italiani
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--|
--| I verbi finora tradotti in italiano sono raggruppti in tre diversi gruppi:
--| 
--| 1. <<Meta Verbi di Partita>>
--| 2. <<Verbi di Gioco>>
--| 3. <<Verbi di Domande>>
--| 
--| Di seguito troverete una tabella per ciascun gruppo, in cui i verbi sono
--| elencati in ordine alfabetico.
--| 
--|=============================================================================
--| 
--| [big]#*Legenda delle Tabelle*#
--| 
--| Il significato delle lettere nelle ultime quattro colonne è il seguente:
--| 
--| [horizontal]
--|   [M] Meta Verbo :: {X} = Sì
--|   [A] Arietà     :: <n> = numero di parametri
--|   [O] Oggetto    :: {X} = Sì
--|   [B] C'è un Bug :: {B} = Sì
--|=============================================================================
--<

-- L'ordine di apparizione dei verbi nella tabella rispecchia l'ordine in cui
-- appaiono nel codice sorgente qui di seguito; ai tre gruppi della tabella
-- corrispondono tre sezioni distinte in cui sono raggruppati i verbi in questo
-- file.

-- Le direzioni (nord, sud, su, giù, ecc.) sono definite in "lib_luoghi.i".


-->comandi_partita(10000)
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Meta Verbi di Partita
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--|
--| Comandi che riguardano aspetti della partita (salvare, uscire, ecc.) anziché
--| il mondo dell'avventura. Sono tutti `META VERB`, il cui uso non consuma un
--| turno di gioco nell'avventura.
--| Altresì noti come _comandi extradiegetici_.
--<

-->tabella_verbi_partita(1010)
--| === Tabella Comandi di Partita
--| [cols="15m,25d,35d,4*^5d",options="header"]
--| |=============================================================================================================
--| | VERBO              | SINONIMI                     | SINTASSI                         |  M  | A |  O  |  B
--~ +--------------------+------------------------------+----------------------------------+-----+---+-----+-----+
--| | abbandona_partita  | quit, Q                      | abbandona [partita]              | {X} | 0 |     |
--| | carica_partita     | restore                      | carica [partita]                 | {X} | 0 |     |
--| | modalità_breve     | brief, modalità corta        | modalità breve                   | {X} | 0 |     | {B}
--| | modalità_lunga     | verbose                      | modalità lunga                   | {X} | 0 |     |
--| | notifica           |                              | notifica                         | {X} | 0 |     |
--| | notifica_off       | notifica off                 | notifica disattivata             | {X} | 0 |     |
--| | notifica_on        | notifica on                  | notifica attivata                | {X} | 0 |     |
--| | ricomincia_partita | restart                      | ricomincia [partita]             | {X} | 0 |     |
--| | ringraziamenti     | autore, copyright, credits   | ringraziamenti                   | {X} | 0 |     |
--| | salva_partita      | save                         | salva [partita]                  | {X} | 0 |     |
--| | trascrizione       |                              | trascrizione                     | {X} | 0 |     |
--| | trascrizione_off   | trascrizione off             | trascrizione disattivata         | {X} | 0 |     |
--| | trascrizione_on    | trascrizione on              | trascrizione attivata            | {X} | 0 |     |
--| | vedi_punteggio     |                              | punteggio                        | {X} | 0 |     |
--| |=============================================================================================================
--<


-->gruppo_file(10100)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Salvataggio e Caricamento
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--|
--| Questo gruppo include i verbi che riguardano il salvataggio ed il carimento
--| della partita.
--<

-->verbo_carica_partita(10110)    @CARICA_PARTITA -> @RESTORE
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== carica_partita
--~-----------------------------------------------------------------------------
--~=============================================================================
--<

-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `carica_partita`.
--<


--#NOTA: A questo verbo diamo l'ID "carica_partita" per lasciare
--       libero l'ID "carica" nel caso l'utente volesse creare un
--       verbo "carica_partita" nel gioco.
-- MESSAGGI DI SISTEMA CORRELATI (alcuni visibili solo in ARun):
--    NOT_A_SAVEFILE  -- Il file non è una partiata salvata.
--    RESTORE_FROM    -- Chiede il nome del file da caricare.
--    SAVE_MISSING    -- Non riesce a trovare/aprire il file.
--    SAVE_NAME       -- Il file non è di una partita di questa avventura.
--    SAVE_VERSION    -- File creato con altra versione di Alan.


SYNTAX carica_partita = carica.
       carica_partita = carica partita.
       carica_partita = 'restore'. ---> Bisogna conservare anche l'inglese!

META VERB carica_partita
  CHECK mia_AT CAN caricare_partita
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    RESTORE.
END VERB carica_partita.


-->verbo_salva_partita(10120)   @SALVA_PARTITA -> @SAVE
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== salva_partita
--~-----------------------------------------------------------------------------
--~=============================================================================
--<

-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `salva_partita`.
--<


--#NOTA: A questo verbo diamo l'ID "salva_partita" per lasciare
--       libero l'ID "salva" nel caso l'utente volesse creare un
--       verbo "salva" nel gioco.
-- MESSAGGI DI SISTEMA CORRELATI (alcuni visibili solo in ARun):
--    SAVE_FAILED    -- Se il salvataggio fallisce.
--    SAVE_OVERWRITE -- Conferma sovrascrittura file.
--    SAVE_WHERE     -- Nome del file di salvataggio
SYNTAX salva_partita = salva.
       salva_partita = salva partita.
       salva_partita = 'save'. ---> Meglio conservare anche l'inglese, dato che
                               --   dobbiamo conservare RESTART, RESTORE e QUIT!


META VERB salva_partita
  CHECK mia_AT CAN salvare_partita
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    SAVE.
END VERB salva_partita.


-->gruppo_trascrizione(10200)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Trascrizione
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi che controllano l'avvio e l'arresto della
--| trascrizione della partita su un file di log.
--<


-->verbo_trascrizione(10210)   @TRASCRIZIONE -> @SCRIPT
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== trascrizione
--~-----------------------------------------------------------------------------
--~=============================================================================
--<

-- SYNTAX 'script' = 'script'.
--         script_on = 'script' 'on'.
--         script_off = 'script' 'off'.


SYNTAX  trascrizione     = trascrizione.
        trascrizione_on  = trascrizione 'on'.
        trascrizione_on  = trascrizione attivata.
        trascrizione_off = trascrizione 'off'.
        trascrizione_off = trascrizione disattivata.

SYNONYMS 'transcript' = trascrizione.

META VERB trascrizione
  CHECK mia_AT CAN trascrivere
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    "Puoi avviare/interrompere la trascrizione della partita in corso tramite i
     comandi TRASCRIZIONE ON/OFF.

     La trascrizione sarà salvata in un file con il nome dell'avventura seguito
     dalla data e dall'estensione "".log"".
 
     $pNell'interprete con interfaccia grafica, puoi accedere alle funzionalità
     di trascrizione tramite menù.
    
     $pL'interprete a riga di comando ARun può essere avviato con l'opzione
     ""-l"" per abilitare la trascrizione dell'intera partita."

  -- "You can turn transcripting on and off using the 'script on/off' command within the game.
  -- The transcript will be available in a file with a name starting with the game name.
  -- $pIn a GUI version you can also find this in the drop-down menu in the interpreter.
  -- $pIn a command line version you can start your game with the '-s' switch to get a transcript
  -- of the whole game."
END VERB trascrizione.


-->verbo_trascrizione_on(10220)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== trascrizione_on
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `trascrizione_on`.
--<

META VERB trascrizione_on
  CHECK mia_AT CAN trascrivere_on
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    TRANSCRIPT ON.
    "Trascrizione avviata."
END VERB trascrizione_on.

-->verbo_trascrizione_off(10230)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== trascrizione_off
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `trascrizione_off`.
--<

META VERB trascrizione_off
  CHECK mia_AT CAN trascrivere_off
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    TRANSCRIPT OFF.
    "Trascrizione terminata."
END VERB trascrizione_off.



-->gruppo_punteggio(10300)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Punteggio e Notifiche
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi che riguardano il salvataggio ed il carimento
--| della partita:
--| 
--| * `vedi_punteggio`
--| * `notifica`
--| * `notifica_on`
--| * `notifica_off`
--<


-->verbo_vedi_punteggio(10310)   @PUNTEGGIO --> @SCORE
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== vedi_punteggio
--~-----------------------------------------------------------------------------
--~=============================================================================
--<

-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `vedi_punteggio`.
--<

SYNTAX vedi_punteggio = punteggio.


META VERB vedi_punteggio
  CHECK mia_AT CAN vedere_punteggio
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    SCORE.
    -- Per disabilitare il punteggio, rimpiazza la riga precedente con qualcosa
    -- come:
    -- "In questa avventura non c'è punteggio."
END VERB vedi_punteggio.


-- ==============================================================


-- @NOTIFICA -> @NOTIFY


-- ==============================================================
-- SYNTAX notify = notify.
--        notify_on = notify 'on'.
--        notify_off = notify 'off'.

-- @NOTA: i7 implementa anche i sinonimi:
--        - sipunti
--        - sipunteggio
--        - nopunti
--        - nopunteggio

--                                                                              TRANSLATE!
-- Thanks to Steve Griffiths whose 'Score notification' sample was used
-- in declaring this verb.


SYNTAX  notifica = notifica.

        notifica_on = notifica 'on'.
        notifica_on = notifica attivata.
--                                                                              TRANSLATE!
        -- The instructions tell the player that mere 'notify'
        -- is enough, but these two verbs are implemented
        notifica_off = notifica 'off'.
        notifica_off = notifica disattivata.
--                                                                              TRANSLATE!
        -- In case (s)he adds the prepositions to the end anyway.

-->verbo_notifica(10320)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== notifica
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `notifica`.
--<

META VERB notifica
  CHECK mia_AT CAN notificare
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    IF mia_AT HAS notifiche_attive
      THEN MAKE mia_AT NOT notifiche_attive. SAY mia_AT:notifica_disattivata.
      ELSE MAKE mia_AT     notifiche_attive. SAY mia_AT:notifica_attivata.
    END IF.
END VERB notifica.

-->verbo_notifica_on(10330)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== notifica_on
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `notifica_on`.
--<

META VERB notifica_on
  CHECK mia_AT CAN notificare_on
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    IF mia_AT HAS notifiche_attive
      THEN "La notifica del punteggio è già attiva."
      ELSE MAKE mia_AT notifiche_attive. SAY mia_AT:notifica_attivata.
    END IF.
END VERB notifica_on.

-->verbo_notifica_off(10340)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== notifica_off
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `notifica_off`.
--<

META VERB notifica_off
  CHECK mia_AT CAN notificare_off
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    IF mia_AT HAS notifiche_attive
      THEN MAKE mia_AT NOT notifiche_attive. SAY mia_AT:notifica_disattivata.
      ELSE "La notifica del punteggio è già disattiva."
    END IF.
END VERB notifica_off.

--                                                                              TRANSLATE!
-- The 'notify' verb allows the players to disable the score change
-- messages. (Some players find such messages annoying.)
-- The verb toggles the hero's 'notify_on' attribute on and off. That
-- attribute is checked by the 'checkscore' event to determine whether
-- to display the score msg or not.

-- The following event is run each turn to check if the game score is greater than
-- the last recorded score (which is stored in the Hero's 'ultimo_punteggio'
-- attribute). If the score is greater, then the 'Score has gone up...'
-- text is displayed (as long as the player hasn't disabled it by using the
-- 'notify' verb - which sets 'notify_on' to off
-- - i.e. the hero 'IS NOT notify_on'.)

-- NOTE: The ALAN scoring system records the game score in a thing called
-- score. It isn't called score OF anything; its just 'score'.

-- NOTE: This event assumes score can only increase, if score can go
-- down then you would need to modify this code a bit.


EVENT controlla_punteggio
  IF ultimo_punteggio OF mia_AT < SCORE
    THEN
      IF mia_AT HAS notifiche_attive
        THEN -- Il giocatore desidera essere notificato del punteggio:
          "$p(Il tuo punteggio è appena salito di"
          SAY (SCORE - ultimo_punteggio OF mia_AT). "punt$$"
          IF  (SCORE - ultimo_punteggio OF mia_AT) = 1
            THEN "o"
            ELSE "i"
          END IF. "$$.)"
          -- Il seguente avviso verrà mostrato solo alla prima notifica:
          IF mia_AT HAS NOT  visto_notifica
            THEN MAKE mia_AT visto_notifica.
              "$p(Per disabilitare le notifiche di punteggio usa il comando NOTIFICA.)"
          END IF.
      END IF.

      SET ultimo_punteggio OF mia_AT TO SCORE.
  END IF.
  -- Ripeti questo evento al prossimo turno:
  SCHEDULE controlla_punteggio AT hero AFTER 1.
END EVENT.


-->gruppo_verbosity(10400)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Descrizioni Brevi e Lunghe
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo di verbi controlla la verbosità della descrizioni, offrendo due
--| modalità: breve e lunga.
--| 
--| * `modalità_breve`
--| * `modalità_lunga`
--<

-->verbo_modalita_breve(10410)  @MODALITÀ BREVE -> @BRIEF
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== modalità_breve
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `modalità_breve`.
--<

-- SYNTAX brief = brief.

-- @BUG: The VISITS statement seems to be broken, and "brief" verb doesn't
--       behave as expected!

-- Use "Visits 0." or "Visits 1000." in the START section if you want
-- the game to start in verbose or brief mode. (By default,
-- all games start in the verbose mode.)


SYNTAX  modalità_breve = modalità breve.
        modalità_breve = modalità corta.
        modalità_breve = brief.


META VERB modalità_breve
  CHECK mia_AT CAN modalità_breve
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    VISITS 1000.
    -- "Brief mode is now on. Location descriptions will only be shown
    -- the first time you visit."

    "Il gioco è ora in modalità" STYLE EMPHASIZED. "breve" STYLE NORMAL. ", le
    descrizioni dei luoghi già visitati non saranno più mostrate."
END VERB modalità_breve.

-->verbo_modalita_lunga(10420)  @MODALITÀ LUNGA -> @VERBOSE (see also -> BRIEF)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== modalità_lunga
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `modalità_lunga`.
--<

-- SYNTAX verbose = verbose.

SYNTAX  modalità_lunga = modalità lunga.
        modalità_lunga = verbose.


META VERB modalità_lunga
  CHECK mia_AT CAN modalità_lunga
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    VISITS 0.
    -- "Verbose mode is now on. Location descriptions will be
    -- always shown in full."

    "Il gioco è ora in modalità" STYLE EMPHASIZED. "lunga" STYLE NORMAL. ", le
    descrizioni dei luoghi saranno mostrate sempre (anche se già visitati)."
END VERB modalità_lunga.


-->gruppo_misc_meta(10500)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Meta Verbi Vari
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Qui di seguito sono elencati i vari meta verbi che non rientrano in alcun
--| gruppo specifico.
--<

-->verbo_abbandona_partita(10510)  @ABBANDONA_PARTITA -> @QUIT
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== abbandona_partita
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `abbandona_partita`.
--<

--#NOTA: A questo verbo diamo l'ID "abbandona_partita" per lasciare
--       libero l'ID "abbandona" nel caso l'utente volesse creare un
--       verbo "abbandona" nel gioco.
-- MESSAGGI DI SISTEMA CORRELATI (alcuni visibili solo in ARun):
--    QUIT_ACTION      -- "Do you want to RESTART, RESTORE, QUIT or UNDO? ".


SYNTAX
  abbandona_partita = abbandona.
  abbandona_partita = abbandona partita.
  abbandona_partita = 'quit'. ---> Bisogna conservare anche l'inglese!

SYNONYMS Q = 'quit'.

META VERB abbandona_partita
  CHECK mia_AT CAN abbandonare_partita
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    QUIT.
END VERB abbandona_partita.


-->verbo_ricomincia_partita(10520)  @RICOMINCIA_PARTITA -> @RESTART
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== ricomincia_partita
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `ricomincia_partita`.
--<

--#NOTA: A questo verbo diamo l'ID "ricomincia_partita" per lasciare
--       libero l'ID "ricomincia" nel caso l'utente volesse creare un
--       verbo "ricomincia" nel gioco.
-- MESSAGGI DI SISTEMA CORRELATI (alcuni visibili solo in ARun):
--    REALLY         -- Richiesta di conferma.

SYNTAX ricomincia_partita = ricomincia.
SYNTAX ricomincia_partita = ricomincia partita.
       ricomincia_partita = 'restart'. ---> Bisogna conservare anche l'inglese!

META VERB ricomincia_partita
  CHECK mia_AT CAN ricominciare_partita
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    RESTART.
END VERB ricomincia_partita.

-->verbo_ringraziamenti(10530)  @RINGRAZIAMENTI -> @CREDITS (+ acknowledgments, author, copyright)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== ringraziamenti
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `ringraziamenti`.
--<

-- SYNTAX credits = credits.
-- SYNONYMS acknowledgments, author, copyright = credits.


SYNTAX ringraziamenti = ringraziamenti.
       ringraziamenti = credits.
       ringraziamenti = autore.
       ringraziamenti = copyright.


META VERB ringraziamenti
  CHECK mia_AT CAN ringraziamenti
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
--                                                                              IMPROVE!
    "I diritti d'autore ed il copyright di questa avventura appartengono al suo
     autore.
     $pQuesta avventura è stata realizzata con ALAN Adventure Language, il sistema
     per lo sviluppo di interactive fiction di Thomas Nilsson.
     $nE-mail: thomas@alanif.se
     $pPer maggiori informazioni su ALAN, vistate il sito web:
     $ihttp://www.alanif.se$p"
--  "The author retains the copyright to this game.
--  $pThis game was written using the ALAN Adventure Language. ALAN is
--  an interactive fiction authoring system by Thomas Nilsson.
--  $nE-mail address: thomas@alanif.se $pFurther information
--  about the ALAN system can be obtained from
--  the World Wide Web Internet site
--  $ihttp://www.alanif.se$p"
END VERB ringraziamenti.


-->comandi_gioco(20000)
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Verbi di Gioco
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--| 
--| Comandi diretti al personaggio protagonista per interagire con l'avventura.
--<


-->tabella_verbi_gioco(1020)
--| === Tabella Comandi di Gioco
--| [cols="15m,25d,35d,4*^5d",options="header"]
--| |===================================================================================================================
--| | VERBO              | SINONIMI                     | SINTASSI                               |  M  | A |  O  |  B
--~ +--------------------+------------------------------+----------------------------------------+-----+---+-----+-----+
--| | accendi            |                              | accendi (disp)                         |     | 1 |     |
--| | annusa0            | odora                        | annusa                                 |     | 0 |     |
--| | annusa             | odora                        | annusa (odore)                         |     | 1 |     |
--| | apri               |                              | apri (ogg)                             |     | 1 | {X} |
--| | apri_con           |                              | apri (ogg) con (strum)                 |     | 2 | {X} |
--| | ascolta0           |                              | ascolta                                |     | 0 |     |
--| | ascolta            |                              | ascolta (ogg)!                         |     | 1 | {X} |
--| | aspetta            | attendi, Z                   | aspetta                                |     | 0 |     |
--| | attacca            | combatti, picchia            | attacca (bersaglio)                    |     | 1 |     |
--| | attacca_con        | combatti, picchia            | attacca (bersaglio) con (arma)         |     | 2 |     |
--| | attraversa         |                              | attraversa (ogg)                       |     | 1 | {X} |
--| | bacia              | abbraccia                    | bacia (ogg)                            |     | 1 | {X} |
--| | balla              | danza                        | balla                                  |     | 0 |     |
--| | bevi               |                              | bevi (liq)                             |     | 1 |     |
--| | blocca             | serra                        | blocca (ogg)                           |     | 1 | {X} |
--| | blocca_con         | serra                        | blocca (ogg) con (chiave)              |     | 2 | {X} |
--| | brucia             |                              | brucia (ogg)                           |     | 1 | {X} |
--| | brucia_con         |                              | brucia (ogg) con (strum)               |     | 2 | {X} |
--| | canta              |                              | canta                                  |     | 0 |     |
--| | chiedi             |                              | chiedi a (png) (ogg)                   |     | 2 | {X} |
--| | chiudi             |                              | chiudi (ogg)                           |     | 1 | {X} |
--| | chiudi_con         |                              | chiudi (ogg) con (strum)               |     | 2 | {X} |
--| | compra             | acquista                     | compra (merce)                         |     | 1 |     |
--| | consulta           | guarda, cerca, ricerca       | consulta (fonte) riguardo (argomento)! |     | 2 |     |
--| | dai_a              | porgi, offri                 | dai (ogg) a (ricevente)                |     | 2 | {X} |
--| | dì                 |                              | dì (argomento)                         |     | 1 |     |
--| | dì_a               |                              | dì (argomento) a (png)                 |     | 2 |     |
--| | domanda            | chiedi                       | domanda a (png) di (argomento)!        |     | 2 |     |
--| | dormi              | riposa                       | dormi                                  |     | 0 |     |
--| | esamina            | guarda, descrivi, osserva, X | esamina (ogg)                          |     | 1 | {X} |
--| | gioca_con          |                              | gioca con (ogg)                        |     | 1 | {X} |
--| | gratta             |                              | gratta (ogg)                           |     | 1 | {X} |
--| | guarda             | L                            | guarda                                 |     | 0 |     |
--| | guarda_dietro      |                              | guarda dietro (bulk)                   |     | 1 |     |
--| | guarda_in          |                              | guarda in (cont)                       |     | 1 |     |
--| | guarda_fuori_da    |                              | guarda fuori da (ogg)                  |     | 1 | {X} |
--| | guarda_attraverso  |                              | guarda attraverso (bulk)               |     | 1 |     |
--| | guarda_sotto       |                              | guarda sotto (bulk)                    |     | 1 |     |
--| | guarda_su          | L                            | guarda su                              |     | 0 |     |
--| | guida              |                              | guida (veicolo)                        |     | 1 |     |
--| | indossa            | mettiti                      | indossa (ogg)                          |     | 1 | {X} |
--| | inventario         | inv                          | inventario                             |     | 0 |     |
--| | lascia             | abbandona, metti giù, posa   | lascia (ogg)*                          |     | 1 | {X} |
--| | lega               |                              | lega (ogg)                             |     | 1 | {X} |
--| | lega_a             |                              | lega (ogg) a (bersaglio)               |     | 2 | {X} |
--| | leggi              |                              | leggi (ogg)                            |     | 1 | {X} |
--| | libera             | rilascia                     | libera (ogg)                           |     | 1 | {X} |
--| | mangia             |                              | mangia (cibo)                          |     | 1 |     |
--| | parla              |                              | parla                                  |     | 0 |     |
--| | parla_con          |                              | parla con (png)                        |     | 1 |     |
--| | pensa              | pondera, rifletti, medita    | pensa                                  |     | 0 |     |
--| | pensa_a            | rifletti/medita su, pondera  | pensa a (argomento)!                   |     | 1 |     |
--| | prega              |                              | prega                                  |     | 0 |     |
--| | prendi             | afferra, raccogli, trasporta | prendi (ogg)                           |     | 1 | {X} |
--| | prendi_da          | rimuovi, togli               | prendi (ogg) da (detentore)            |     | 2 | {X} |
--| | racconta           | informa, dì a, parla a       | racconta a (png) di (argomento)!       |     | 2 |     |
--| | rifai              | ancora, G                    | rifai                                  |     | 0 |     |
--| | riempi             |                              | riempi (cont)                          |     | 1 |     |
--| | riempi_con         |                              | riempi (cont) con (sostanza)           |     | 2 |     |
--| | rompi              | distruggi, spacca, sfonda    | rompi (ogg)                            |     | 1 | {X} |
--| | rompi_con          | distruggi, spacca, sfonda    | rompi (ogg) con (strum)                |     | 2 | {X} |
--| | ripara             | aggiusta                     | ripara (ogg)                           |     | 1 | {X} |
--| | rispondi           |                              | rispondi (argomento)!                  |     | 1 |     |
--| | sblocca            |                              | sblocca (ogg)                          |     | 1 | {X} |
--| | sblocca_con        |                              | sblocca (ogg) con (chiave)             |     | 2 | {X} |
--| | scava              |                              | scava (ogg)                            |     | 1 | {X} |
--| | scrivi             |                              | scrivi "testo" su (ogg)                |     | 1 | {X} |
--| | siediti            | siedi                        | siediti                                |     | 0 |     |
--| | siediti_su         | siedi                        | siediti su (superficie)                |     | 1 |     |
--| | sorseggia          |                              | sorseggia (liq)                        |     | 1 |     |
--| | spegni             |                              | spegni (disp)                          |     | 1 |     |
--| | spogliati          | svestiti                     | spogliati                              |     | 0 |     |
--| | suona              |                              | suona (ogg)                            |     | 1 | {X} |
--| | taglia             |                              | taglia (ogg)                           |     | 1 | {X} |
--| | taglia_con         |                              | taglia (ogg) con (strum)               |     | 2 | {X} |
--| | tira               |                              | tira (ogg)                             |     | 1 | {X} |
--| | tocca              | accarezza, carezza           | tocca (ogg)                            |     | 1 | {X} |
--| | tocca_con          | accarezza, carezza           | tocca (ogg) con (strum)                |     | 2 | {X} |
--| | togliti            | sfilati, levati              | togliti (ogg)                          |     | 1 | {X} |
--| | trova              |                              | trova (ogg)                            |     | 1 | {X} |
--| | uccidi             | ammazza                      | uccidi (vittima)                       |     | 1 |     |
--| | uccidi_con         | ammazza                      | uccidi (vittima) con (arma)            |     | 2 |     |
--| | usa                |                              | usa (ogg)                              |     | 1 | {X} |
--| | usa_con            |                              | usa (ogg) con (strum)                  |     | 2 | {X} |
--| | vai_a              |                              | vai a (dest)                           |     | 1 |     |
--| | vendi              |                              | vendi (merce)                          |     | 1 |     |
--| |===================================================================================================================
--<

-->gruppo_accendi(20100)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Accensione e Spegnimento
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi per l'accensione e lo spegnimento di fonti di
--| luce e dispositivi:
--| 
--| * `accendi`
--| * `spegni`
--<

-->verbo_accendi(20110)  @ACCENDI --- > @TURN ON
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== accendi
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `accendi`.
--<

-- SYNTAX  turn_on = turn 'on' (disp)
--         turn_on = switch 'on' (disp).
--         turn_on = turn (disp) 'on'.
--         turn_on = switch (disp) 'on'.

----- Only devices and lightsources can be turned on and off. These classes are
----- defined in 'classes.i' with proper checks for 'on' and 'NOT on', 'lit' and 'NOT illuminato'.
----- Trying to turn on or off an ordinary object will default here to "That's not
----- something you can turn on".


-- @TODO: Dovrei cambiare il param (disp) in qualcos'altro perché ora i verbi   FIXME!
--        corrispettivi (in "lib_classi.i") si applicano sia ai dispositivi
--        che alle fonti di luce!

SYNTAX  accendi = accendi (disp)
  WHERE disp IsA OBJECT
    ELSE
      IF disp IS NOT plurale
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "accendere."


-- Note that 'switch' is not declared a synonym for 'turn'.
-- This is because 'turn' has also other meanings, for example 'turn page' which is
-- not equal with 'switch page'.
-- A separate 'switch' verb is declared in 'classes.i', classes 'device' and 'lightsource'.
-- This verb merely covers cases where the player forgets (or doesn't bother) to type 'on' or 'off'.



ADD TO EVERY OBJECT
  VERB accendi
    CHECK mia_AT CAN accendere
      ELSE SAY  azione_bloccata  OF mia_AT.
    DOES
      IF disp IS NOT plurale
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "accendere."
  END VERB accendi.
END ADD TO.

-->verbo_spegni(20120)  @SPEGNI ---> @TURN OFF
--~=============================================================================
--| ==== spegni
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `spegni`.
--<

-- # syn/synt: 'spengi'?

-- SYNTAX turn_off = turn off (disp)
--        turn_off = switch off (disp).
--        turn_off = turn (disp) off.
--        turn_off = switch (disp) off.

----- Only devices and lightsources can be turned on and off. These classes
----- are defined in 'classes.i' with proper checks for 'on' and 'NOT on',
----- 'lit' and 'NOT illuminato'.

-- @TODO: Dovrei cambiare il param (disp) in qualcos'altro perché ora i verbi   FIXME!
--        corrispettivi (in "lib_classi.i") si applicano sia ai dispositivi
--        che alle fonti di luce!

SYNTAX spegni = spegni (disp)
  WHERE disp IsA OBJECT
    ELSE
      IF disp IS NOT plurale
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "spegnere."


-- Note that 'switch' is not declared a synonym for 'turn'.
-- This is because 'turn' has also other meanings, for example 'turn page' which is
-- not equal with 'switch page'.
-- A separate 'switch' verb is declared in 'classes.i', classes 'device' and 'lightsource'.
-- This verb merely covers cases where the player forgets to type 'on' or 'off'.


ADD TO EVERY OBJECT
  VERB spegni
    CHECK mia_AT CAN spegnere
      ELSE SAY  azione_bloccata  OF mia_AT.
    DOES
      IF disp IS NOT plurale
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "spegnere."
  END VERB spegni.
END ADD TO.

-->gruppo_apri(20200)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Apertura e Chiusura
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi per aprire, chiudere e bloccare:
--| 
--| * `apri`
--| * `apri_con`
--| * `blocca`
--| * `blocca_con`
--| * `chiudi`
--| * `chiudi_con`
--<

-->verbo_apri(20210)  @APRI ---> @OPEN
--~=============================================================================
--| ==== apri
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `apri`.
--<

SYNTAX apri = apri (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "aprire."


ADD TO EVERY OBJECT
  VERB apri
    CHECK mia_AT CAN aprire
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS apribile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "aprire."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    AND ogg IS NOT aperto
      ELSE
        IF ogg IS NOT femminile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg_già_aperto_ms  OF mia_AT.
              ELSE SAY  ogg_già_aperto_mp  OF mia_AT.
            END IF.
          ELSE
            IF ogg IS NOT plurale
              THEN SAY  ogg_già_aperto_fs  OF mia_AT.
              ELSE SAY  ogg_già_aperto_fp  OF mia_AT.
            END IF.
        END IF.
    DOES
      IF ogg IS bloccato
        THEN
          IF chiave_abbinata OF ogg IN hero
            THEN MAKE ogg NOT bloccato.
              MAKE ogg aperto.
              "(con" SAY THE chiave_abbinata OF ogg. "$$)
              $nSblocchi ed apri" SAY THE ogg. "."
          ELSE SAY THE ogg.
            IF ogg IS NOT plurale
              THEN "è"
              ELSE "sono"
            END IF.
            "bloccat$$" SAY ogg:vocale. "."
        END IF.
      ELSIF ogg IS NOT bloccato
        THEN MAKE ogg aperto.
        "Apri" SAY THE ogg. "."
      END IF.
  END VERB apri.
END ADD TO.

-->verbo_apri_con(20220)   @APRI CON ---> @OPEN WITH
--~=============================================================================
--| ==== apri_con
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `apri_con`.
--<

-- SYNTAX open_with = open (ogg) 'with' (strum)

SYNTAX apri_con = apri (ogg) con (strum)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
    "aprire."
  AND strum IsA OBJECT
    ELSE
      IF strum IS NOT plurale
        --  "$+1 non [è/sono] qualcosa con cui poter"
        THEN SAY  ogg2_illegale_CON_sg  OF mia_AT.
        ELSE SAY  ogg2_illegale_CON_pl  OF mia_AT.
      END IF.
      "aprire." -- @TODO: "aprire altre cose"??                                 IMPROVE!



ADD TO EVERY OBJECT
  VERB apri_con
        WHEN ogg
      CHECK mia_AT CAN aprire_con
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND ogg IS apribile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY  ogg1_inadatto_sg  OF mia_AT.
            ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
          END IF.
          "aprire."
      AND strum IS esaminabile
        ELSE
          IF strum IS NOT plurale
            --  "$+1 non [è/sono] qualcosa con cui poter"
            THEN SAY  ogg2_illegale_CON_sg  OF mia_AT.
            ELSE SAY  ogg2_illegale_CON_pl  OF mia_AT.
          END IF.
          "aprire." -- @TODO: ".. altre cose"??                                 IMPROVE!
      AND ogg <> strum
        ELSE SAY  check_obj_not_obj2_with  OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.
      AND strum IN hero
        ELSE SAY  non_possiedi_ogg2  OF mia_AT.
      AND ogg IS NOT aperto
        ELSE
          IF ogg IS NOT femminile
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg_già_aperto_ms  OF mia_AT.
                ELSE SAY  ogg_già_aperto_mp  OF mia_AT.
              END IF.
            ELSE
              IF ogg IS NOT plurale
                THEN SAY  ogg_già_aperto_fs  OF mia_AT.
                ELSE SAY  ogg_già_aperto_fp  OF mia_AT.
              END IF.
          END IF.
      DOES
        IF ogg IS bloccato
          THEN
            IF strum = chiave_abbinata OF ogg
              THEN MAKE ogg NOT bloccato.
                MAKE ogg aperto.
             -- "You unlock  and open" SAY THE ogg.
                "Sblocchi e apri" SAY THE ogg.
                "con" SAY THE strum. "."
              ELSE SAY THE ogg.
                IF ogg IS NOT plurale
                  THEN "è"
                  ELSE "sono"
                END IF.
                "bloccat$$" SAY ogg:vocale. "."

            END IF.
          ELSE "Non puoi aprire" SAY THE ogg. "con" SAY THE strum. "."
        END IF.
    END VERB apri_con.
END ADD TO.

-->verbo_blocca(20230)  @BLOCCA ---> @LOCK
--~=============================================================================
--| ==== blocca
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `blocca`.
--<


SYNTAX blocca = blocca (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "bloccare."

SYNONYMS
  serra = blocca.


ADD TO EVERY OBJECT
  VERB blocca
    CHECK mia_AT CAN bloccare
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS bloccabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "bloccare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    AND ogg IS NOT bloccato
      ELSE
        IF ogg IS NOT femminile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg_già_bloccato_ms  OF mia_AT.
              ELSE SAY  ogg_già_bloccato_mp  OF mia_AT.
            END IF.
          ELSE
            IF ogg IS NOT plurale
              THEN SAY  ogg_già_bloccato_fs  OF mia_AT.
              ELSE SAY  ogg_già_bloccato_fp  OF mia_AT.
            END IF.
        END IF.
  DOES
    IF chiave_abbinata OF ogg IN hero
      THEN MAKE ogg bloccato.
        "(con" SAY THE chiave_abbinata OF ogg. "$$)$n"
        "Tu"
        IF ogg IS aperto
          THEN "chiudi e"
            MAKE ogg NOT aperto.
        END IF.

        "blocchi" SAY THE ogg. "."
    ELSE
      SAY  specificare_CON_cosa  OF mia_AT. "bloccare" SAY THE ogg.
   -- ELSE "Devi specificare con cosa vuoi bloccare" SAY THE ogg.
   -- ELSE "You have to state what you want to lock" SAY THE ogg. "with."
    END IF.

  END VERB blocca.
END ADD TO.

-->verbo_blocca_con(20240)   @BLOCCA CON ---> @LOCK WITH
--~=============================================================================
--| ==== blocca_con
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `blocca_con`.
--<


SYNTAX blocca_con = blocca (ogg) con (chiave)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "bloccare."
  AND chiave IsA OBJECT
    ELSE
      IF chiave IS NOT plurale
        --  "$+1 non [è/sono] qualcosa con cui poter"
        THEN SAY  ogg2_illegale_CON_sg  OF mia_AT.
        ELSE SAY  ogg2_illegale_CON_pl  OF mia_AT.
      END IF.
      "bloccare." -- @TODO: ".. altre cose"??                                   IMPROVE!


ADD TO EVERY OBJECT
    VERB blocca_con
        WHEN ogg
      CHECK mia_AT CAN bloccare_con
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND ogg IS bloccabile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY  ogg1_inadatto_sg  OF mia_AT.
            ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
          END IF.
          "bloccare."
      AND chiave IS esaminabile
        ELSE
          IF chiave IS NOT plurale
            --  "$+1 non [è/sono] qualcosa con cui poter"
            THEN SAY  ogg2_illegale_CON_sg  OF mia_AT.
            ELSE SAY  ogg2_illegale_CON_pl  OF mia_AT.
          END IF.
          "bloccare." -- @TODO: ".. altre cose"??                               IMPROVE!
      AND ogg <> chiave
        ELSE SAY  check_obj_not_obj2_with  OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND ogg IS NOT bloccato
        ELSE
          IF ogg IS NOT femminile
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg_già_bloccato_ms  OF mia_AT.
                ELSE SAY  ogg_già_bloccato_mp  OF mia_AT.
              END IF.
            ELSE
              IF ogg IS NOT plurale
                THEN SAY  ogg_già_bloccato_fs  OF mia_AT.
                ELSE SAY  ogg_già_bloccato_fp  OF mia_AT.
              END IF.
          END IF.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.
      AND chiave IN hero
        ELSE SAY  non_possiedi_ogg2  OF mia_AT.
      AND chiave = chiave_abbinata OF ogg -- @TODO:                             TRANSLATE!
        ELSE SAY  check_door_matching_key  OF mia_AT.

      DOES
        MAKE ogg bloccato. "Tu"
        IF ogg IS aperto
          THEN "chiudi e"
            MAKE ogg NOT aperto.
        END IF.
        "blocchi" SAY THE ogg. "con" SAY THE chiave. "."
    END VERB blocca_con.
END ADD TO.

-->verbo_chiudi(20260)    @CHIUDI ---> @CLOSE (+ shut)
--~=============================================================================
--| ==== chiudi
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `chiudi`.
--<


SYNTAX chiudi = chiudi (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "chiudere."


-- SYNONYMS shut = close.


ADD TO EVERY OBJECT
  VERB chiudi
    CHECK mia_AT CAN chiudere
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS apribile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "chiudere."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    AND ogg IS aperto
      ELSE
        IF ogg IS NOT femminile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg_già_chiuso_ms  OF mia_AT.
              ELSE SAY  ogg_già_chiuso_mp  OF mia_AT.
            END IF.
          ELSE
            IF ogg IS NOT plurale
              THEN SAY  ogg_già_chiuso_fs  OF mia_AT.
              ELSE SAY  ogg_già_chiuso_fp  OF mia_AT.
            END IF.
        END IF.

    DOES
          MAKE ogg NOT aperto.
          "Chiudi" SAY THE ogg. "."
  END VERB chiudi.
END ADD TO.


-->verbo_chiudi_con(20260)    @CHIUDI CON ---> @CLOSE WITH
--~=============================================================================
--| ==== chiudi_con
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `chiudi_con`.
--<


SYNTAX chiudi_con = chiudi (ogg) con (strum)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "chiudere."
  AND strum IsA OBJECT
    ELSE
      IF strum IS NOT plurale
        THEN SAY  ogg2_illegale_CON_sg  OF mia_AT.
        ELSE SAY  ogg2_illegale_CON_pl  OF mia_AT.
      END IF.
      "chiudere" SAY THE ogg. "." -- TODO:                                      IMPROVE!


ADD TO EVERY OBJECT
  VERB chiudi_con
    WHEN ogg
      CHECK mia_AT CAN chiudere_con
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND ogg IS apribile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY  ogg1_inadatto_sg  OF mia_AT.
            ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
          END IF.
          "chiudere."
      AND strum IS esaminabile
        ELSE
          IF strum IS NOT plurale
            THEN SAY  ogg2_illegale_CON_sg  OF mia_AT.
            ELSE SAY  ogg2_illegale_CON_pl  OF mia_AT.
          END IF.
          "chiudere" SAY THE ogg. "."
      AND ogg <> strum
        ELSE SAY  check_obj_not_obj2_with  OF mia_AT.
      AND strum IN hero
        ELSE SAY  non_possiedi_ogg2  OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
        END IF.
      AND ogg IS aperto
        ELSE
          IF ogg IS NOT femminile
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg_già_chiuso_ms  OF mia_AT.
                ELSE SAY  ogg_già_chiuso_mp  OF mia_AT.
              END IF.
            ELSE
              IF ogg IS NOT plurale
                THEN SAY  ogg_già_chiuso_fs  OF mia_AT.
                ELSE SAY  ogg_già_chiuso_fp  OF mia_AT.
              END IF.
          END IF.

      DOES
        "Non puoi chiudere" SAY THE ogg. "con" SAY THE strum. "."
  END VERB chiudi_con.
END ADD TO.

-->gruppo_sensi(20300)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Azioni Sensoriali
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi per le azioni sensoriali:
--| 
--| * `annusa0`
--| * `annusa`
--| * `ascolta0`
--| * `ascolta`
--| * `tocca`
--| * `tocca_con`
--| 
--| Verbi non tradotti appartenenti a questo gruppo:
--| 
--| * `taste` (oppure in altro gruppo, assieme a `mangia`? in fondo riguarda il
--|    senso del gusto)
--| 
--| Il verbo `guarda` andrebbe in questo gruppo o con `esamina`? 
--| 
--| [NOTE]
--| ============================================================================
--| Il verbo `annusa` è anche definito in `lib_classi.i` sulla classe `suono`
--| (per rispondere che i suoni non sono qualcosa che si possa annusare).
--| ============================================================================
--<

-->verbo_annusa0(20310)  @ANNUSA --> @SMELL (smell0)
--~=============================================================================
--| ==== annusa0
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `annusa0`.
--<

-- SYNTAX smell0 = smell.


SYNTAX annusa0 = annusa.

SYNONYMS odora = annusa.

VERB annusa0
  CHECK mia_AT CAN annusare
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
-- @TODO: Crea un attributo condiviso per la risposta                           OPTIMIZE!
    "Non senti alcun odore particolare." -- preso da i6.
 -- "You smell nothing unusual."
END VERB annusa0.


-->verbo_annusa(20320)  @ANNUSA (ODORE) --> @SMELL (+ ogg)
--~=============================================================================
--| ==== annusa
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `annusa`.
--<

-- @TODO: Perché questo verbo non usa 'ogg' al posto di 'odore'?                VERIFY!

SYNTAX annusa = annusa (odore)
  WHERE odore IsA THING
    ELSE
      IF odore IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "annusare." -- #odorare?


ADD TO EVERY THING
  VERB annusa
    CHECK mia_AT CAN annusare
      ELSE SAY  azione_bloccata  OF mia_AT.
    DOES
    "Non senti alcun odore particolare." -- preso da i6.
 -- "You smell nothing unusual."
  END VERB annusa.
END ADD TO.



-->verbo_ascolta0(20330)  @ASCOLTA0 ---> @LISTEN
--~=============================================================================
--| ==== ascolta0
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `ascolta0`.
--<

-- SYNTAX listen0 = listen.


SYNTAX ascolta0 = ascolta.


VERB ascolta0
  CHECK mia_AT CAN ascoltare
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    "Non odi niente di particolare."
 -- "You hear nothing unusual."
END VERB ascolta0.



-->verbo_ascolta(20340)  @ASCOLTA (OGG) ---> @LISTEN TO
--~=============================================================================
--| ==== ascolta
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `ascolta`.
--<


-- SYNTAX listen = listen 'to' (ogg)!


SYNTAX ascolta = ascolta (ogg)!
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "ascoltare."


ADD TO EVERY THING
  VERB ascolta
    CHECK mia_AT CAN ascoltare
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg <> hero
--                                                                              TRANSLATE!
--             "It doesn't make sense to $v yourself."
      ELSE SAY  check_obj_not_hero1  OF mia_AT.
    DOES
      IF ogg AT hero
        THEN
          IF ogg IsA ACTOR
            THEN SAY THE ogg. "non sta"
              IF ogg IS plurale
                THEN "$$nno"
              END IF.
              "parlando in questo momento."
           -- "not talking right now."
            ELSE "Non odi niente di particolare."
              -- "You hear nothing unusual."
          END IF.
-- TODO: Se l'oggetto è lontano non produce nessuna risposta, ma forse dovrebbe
--       produrre un qualche testo. Il problema qui è che comunque il tentativo
--       svela l'esistenza dell'oggetto, laddove un oggetto inesistente avrebbe
--       prodotto "Non conosco la parola 'xxx'.", questo messaggio (o la sua
--       assenza) è indicatorio del fatto che l'oggetto esiste ma non si trova
--       in un luogo contiguo.
      ELSIF ogg NEAR hero
        THEN "Non riesci a sentire" SAY THE ogg. "da questa distanza."
     -- THEN "You can't hear" SAY THE ogg. "very well from here."
      END IF.
  END VERB ascolta.
END ADD TO.

-->verbo_tocca(20350)  @TOCCA ---> @TOUCH
--~=============================================================================
--| ==== tocca
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `tocca`.
--<


-- @NOTA: i6 accetta come sinonimi di 'tocca':
--        'accarezza', 'palpa', 'carezza'.

-- SYNTAX touch = touch (ogg)
-- SYNONYMS feel = touch.


SYNTAX tocca = tocca (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "toccare."

SYNONYMS accarezza, carezza = tocca.


ADD TO EVERY THING
  VERB tocca
    CHECK mia_AT CAN toccare
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "toccare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
      AND ogg <> hero
        -- "Farlo non servirebbe a nulla."
        ELSE SAY  mia_AT:non_servirebbe_a_nulla.
--                                                                              TRANSLATE!
      AND ogg IS inanimato
        ELSE SAY  check_obj_inanimate2  OF mia_AT.
      DOES
        "Tocchi $+1 ma non senti nulla di strano."
     -- "You feel nothing unexpected."
  END VERB tocca.
END ADD TO.

-->verbo_tocca_con(20360)  @TOCCA CON ---> @TOUCH WITH
--~=============================================================================
--| ==== tocca_con
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `tocca_con`.
--<

-- SYNTAX touch_with = touch (ogg) 'with' (strum)

SYNTAX tocca_con = tocca (ogg) con (strum)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "toccare."
  AND strum IsA OBJECT
    ELSE
      IF strum IS NOT plurale
        THEN SAY  ogg2_illegale_CON_sg  OF mia_AT.
        ELSE SAY  ogg2_illegale_CON_pl  OF mia_AT.
      END IF.
      "toccare" SAY THE ogg. "."


ADD TO EVERY THING
  VERB tocca_con
    WHEN ogg
      CHECK mia_AT CAN toccare_con
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND ogg IS esaminabile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY  ogg1_inadatto_sg  OF mia_AT.
            ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
          END IF.
          "toccare."
      AND strum IS esaminabile
        ELSE
          IF strum IS NOT plurale
            THEN SAY  ogg2_illegale_CON_sg  OF mia_AT.
            ELSE SAY  ogg2_illegale_CON_pl  OF mia_AT.
        END IF.
        "toccare" SAY THE ogg. "."
--                                                                              TRANSLATE!
      AND ogg <> strum
        ELSE SAY  check_obj_not_obj2_with  OF mia_AT.
--                                                                              TRANSLATE!
      AND strum <> hero
        ELSE SAY  check_obj2_not_hero1  OF mia_AT.
      AND strum IN hero
        ELSE SAY  non_possiedi_ogg2  OF mia_AT.
--                                                                              TRANSLATE!
      AND ogg IS inanimato
        ELSE SAY  check_obj_inanimate2  OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.
      DOES
        "Tocchi $+1 con $+2 ma non succede nulla."
     -- "You touch" SAY THE ogg. "with" SAY THE strum. ". Nothing special happens."
  END VERB tocca_con.
END ADD TO.

-->gruppo_conversare(20400)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Conversare
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi per conversare:
--| 
--| * `chiedi` (da spostare in altro gruppo!)
--| * `chiedi_errore` (_idem_)
--| * `domanda`
--| * `dì`
--| * `dì_a`
--| * `parla`
--| * `parla_a`
--| * `racconta`
--| * `rispondi`
--| 
--| [NOTE]
--| ============================================================================
--| I verbo `chiedi` e `chiedi_errore` andrebbero spostati in un altro gruppo dato
--| che non riguardano la conversazione ma il domandare un oggetto a un altro
--| PNG (chiedere per avere, anziché per sapere). Per ora li lascio qui, finché
--| non decido in quale gruppo spostarli.
--| ============================================================================
--<

-->verbo_chiedi(20410)  @CHIEDI ---> @ASK FOR
--~=============================================================================
--| ==== chiedi
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `chiedi`.
--<

-- SYNTAX ask_for = ask (act) 'for' (obj)
-- SYNTAX ask_for_error = ask 'for' (obj)

SYNTAX  chiedi = chiedi a (png) (ogg)
  WHERE png IsA ACTOR
    ELSE
      IF png IS NOT plurale
--                                                                              TRANSLATE!
        THEN SAY  illegal_parameter_talk_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_talk_pl  OF mia_AT.
      END IF.
  AND ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
--                                                                              TRANSLATE!
        THEN SAY  illegal_parameter_for_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_for_pl  OF mia_AT.
      END IF.

        chiedi = chiedi (ogg) a (png).

ADD TO EVERY ACTOR
  VERB chiedi
      WHEN png
      CHECK mia_AT CAN chiedere
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND png <> hero
--                                                                              TRANSLATE!
        ELSE SAY  check_obj_not_hero1  OF mia_AT.
          AND png CAN parlare
              ELSE
          IF png IS NOT plurale
--                                                                              TRANSLATE!
            THEN SAY  check_act_can_talk_sg  OF mia_AT.
            ELSE SAY  check_act_can_talk_pl  OF mia_AT.
          END IF.
      AND ogg IS esaminabile
        ELSE
          IF ogg IS NOT plurale
--                                                                              TRANSLATE!
            THEN SAY  check_obj2_suitable_for_sg  OF mia_AT.
            ELSE SAY  check_obj2_suitable_for_pl  OF mia_AT.
          END IF.
      AND ogg NOT IN hero
--                                                                              TRANSLATE!
        ELSE SAY  check_obj2_not_in_hero3  OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND png IS NOT distante
        ELSE
          IF png IS NOT plurale
            THEN SAY  ogg1_distante_sg  OF mia_AT.
            ELSE SAY  ogg1_distante_pl  OF mia_AT.
          END IF.
      AND ogg IS prendibile
--                                                                              TRANSLATE!
        ELSE SAY  check_obj2_takeable2  OF mia_AT.

      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
--                                                                              TRANSLATE!
            THEN SAY  check_obj_reachable_ask  OF mia_AT.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.
      AND ogg IS NOT scenario
        ELSE
          IF ogg IS NOT plurale
--                                                                              TRANSLATE!
            THEN SAY  check_obj2_not_scenery_sg  OF mia_AT.
            ELSE SAY  check_obj2_not_scenery_pl  OF mia_AT.
          END IF.
      DOES
        -- Preserviamo copia dello stato di condiscendenza attuale del PNG:
        IF png IS condiscendente
          THEN MAKE mia_AT temp_condiscendente.
          ELSE MAKE mia_AT NOT temp_condiscendente.
        END IF.
        -- Rendiamo temporaneamente condiscendente il PNG affinché sia possibile
        -- rimuovere un oggetto contenuto da esso: 
        MAKE png condiscendente.
        LOCATE ogg IN hero.
--                                                                              TRANSLATE!
        "$+1 ti"
        IF png IS NOT plurale
          THEN "dà"
          ELSE "danno"
        END IF.
        "$+2."
     -- SAY THE png. "gives" SAY THE ogg. "to you."
        
        -- Ora ripristiniamo lo stato di condiscendenza originale del PNG:
        IF mia_AT IS NOT temp_condiscendente
          THEN MAKE png NOT condiscendente.
        END IF.
  END VERB chiedi.
END ADD TO.



--- another 'ask_for' formulation added to guide players to use the right phrasing:


SYNTAX chiedi_errore = chiedi (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      -- "Per chiedere qualcosa a qualcuno usa CHIEDI A PERSONA OGGETTO."
      SAY  per_chiedere_qlco_USA  OF mia_AT.
    -- "Please use the formulation ASK PERSON FOR THING to ask somebody for
    --  something."


ADD TO EVERY OBJECT
  VERB chiedi_errore
    DOES
      -- "Per chiedere qualcosa a qualcuno usa CHIEDI A PERSONA OGGETTO."
      SAY  per_chiedere_qlco_USA  OF mia_AT.
  END VERB chiedi_errore.
END ADD TO.

-->verbo_dire(20420)  @DÌ ---> @SAY
--~=============================================================================
--| ==== dì
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `dì`.
--<


-- SYNTAX 'say' = 'say' (topic)

SYNTAX dì = dì (argomento)
  WHERE argomento IsA STRING
    ELSE SAY  illegal_parameter_string  OF mia_AT.


ADD TO EVERY STRING
  VERB dì
    CHECK mia_AT CAN dire
      ELSE SAY  azione_bloccata  OF mia_AT.
        DOES
          "Dici ""$1"", ma non succede nulla."
       -- "Nothing happens."
  END VERB dì.
END ADD TO.


-->verbo_dire_a(20430)  @DÌ A ---> @SAY TO
--~=============================================================================
--| ==== dì_a
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `dì_a`.
--<


-- SYNTAX say_to = 'say' (topic) 'to' (act)

SYNTAX  dì_a = dì (argomento) a (png)
  WHERE argomento IsA STRING
    ELSE SAY  illegal_parameter_string  OF mia_AT.
  AND png IsA ACTOR
    ELSE
      IF png IS NOT plurale
        THEN SAY  illegal_parameter_talk_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_talk_pl  OF mia_AT.
      END IF.

        dì_a = dì a (png) (argomento).

ADD TO EVERY ACTOR
  VERB dì_a
    WHEN png
      CHECK mia_AT CAN dire_a
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND png <> hero
        ELSE SAY  check_obj2_not_hero1  OF mia_AT.
      AND png CAN parlare
        ELSE
          IF png IS NOT plurale
            THEN SAY  check_act_can_talk_sg  OF mia_AT.
            ELSE SAY  check_act_can_talk_pl  OF mia_AT.
          END IF.
      AND png IS NOT distante
        ELSE
          IF png IS NOT plurale
            THEN SAY  ogg1_distante_sg  OF mia_AT.
            ELSE SAY  ogg1_distante_pl  OF mia_AT.
          END IF.
      DOES
        "$+2 non sembra"
        IF png IS plurale
          THEN "$$no"
        END IF.
        "interessat$$" SAY png:vocale. "."
     -- IF png IS NOT plurale
     --   THEN "doesn't look"
     --   ELSE "don't look"
     -- END IF.
     -- "interested."
  END VERB dì_a.
END ADD TO.


-->verbo_domanda(20440)  @DOMANDA @ASK (= enquire, inquire, interrogate)
--~=============================================================================
--| ==== domanda
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `domanda`.
--<

-- @TODO SININOMI: interroga su?

-- SYNTAX ask = ask (png) about (argomento)!
--        ask = enquire (png) about (argomento)!.
--        ask = inquire (png) about (argomento)!.
--        ask = interrogate (png) about (argomento)!.

SYNTAX  domanda = domanda a (png) di (argomento)!
  WHERE png IsA ACTOR
    ELSE
      IF png IS NOT plurale
--                                                                              TRANSLATE!
        THEN SAY  illegal_parameter_talk_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_talk_pl  OF mia_AT.
      END IF.
  AND argomento IsA THING
    ELSE
      IF argomento IS NOT plurale
--                                                                              TRANSLATE!
        THEN SAY  illegal_parameter_about_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_about_pl  OF mia_AT.
      END IF.

        domanda = domanda a (png) riguardo (argomento)!.
        domanda = chiedi a (png) di (argomento)!.
        domanda = chiedi a (png) riguardo (argomento)!.

  -- Ordine dei parametri invertito:
        domanda = domanda di (argomento)! a (png).
        domanda = domanda riguardo (argomento)! a (png).
        domanda = chiedi di (argomento)! a (png).
        domanda = chiedi riguardo (argomento)! a (png).

SYNONYMS
  circa = riguardo.
  -- Above, we define the alternative verbs in the syntax rather than as synonyms,
  -- as the verb 'ask_for' below doesn't sound correct with these alternatives allowed.


ADD TO EVERY ACTOR
  VERB domanda
    WHEN png
      CHECK mia_AT CAN domandare
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND png <> hero
--                                                                              TRANSLATE!
        ELSE SAY  check_obj_not_hero1  OF mia_AT.
      AND png CAN parlare
        ELSE
          IF png IS NOT plurale
--                                                                              TRANSLATE!
            THEN SAY  check_act_can_talk_sg  OF mia_AT.
            ELSE SAY  check_act_can_talk_pl  OF mia_AT.
          END IF.
      AND png IS NOT distante
        ELSE
          IF png IS NOT plurale
            THEN SAY  ogg1_distante_sg  OF mia_AT.
            ELSE SAY  ogg1_distante_pl  OF mia_AT.
          END IF.
      DOES
        "Nessuna risposta." ---> taken from i6
        -- "There is no reply."
    END VERB domanda.
END ADD TO.



----- note that 'consult' is defined separately


-->verbo_parla(20450)   @PARLA ---> @TALK
--~=============================================================================
--| ==== parla
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `parla`.
--<


-- SYNTAX talk = talk.

SYNTAX parla = parla.


VERB parla
  CHECK mia_AT CAN parlare
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    -- "Per parlare a qualcuno, usa DOMANDA A PERSONA DI ARGOMENTO, oppure
    --  RACCONTA A PERSONA DI ARGOMENTO.".    
    SAY  per_parlare_con_USA  OF mia_AT.
-- "To talk to somebody, you can ASK PERSON ABOUT THING
--  or TELL PERSON ABOUT THING."
END VERB parla.


-->verbo_parla_con(20460)  @PARLA CON ---> @TALK_TO
--~=============================================================================
--| ==== parla_con
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `parla_con`.
--<

-- SYNTAX talk_to = talk 'to' (png)

SYNTAX  parla_con = parla con (png)
  WHERE png IsA ACTOR
    ELSE
      IF png IS NOT plurale
        --  "$+1 non [è/sono] qualcosa con cui puoi"
        THEN SAY ogg1_illegale_CON_sg OF mia_AT.
        ELSE SAY ogg1_illegale_CON_pl OF mia_AT.
      END IF. "parlare."

        parla_con = parla a (png).

ADD TO EVERY ACTOR
  VERB parla_con
    CHECK mia_AT CAN parlare_con
      ELSE SAY  azione_bloccata  OF mia_AT.
    DOES
      -- "Per parlare a qualcuno, usa DOMANDA A PERSONA DI ARGOMENTO, oppure
      --  RACCONTA A PERSONA DI ARGOMENTO.".    
      SAY  per_parlare_con_USA  OF mia_AT.
  END VERB parla_con.
END ADD TO.

-->verbo_racconta(20470)  @RACCONTA ---> @TELL  (+ enlighten, inform)
--~=============================================================================
--| ==== racconta
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `racconta`.
--<


-- SYNTAX tell = tell (png) about (topic)!
-- SYNONYMS enlighten, inform = tell.

SYNTAX  racconta = racconta a (png) di (argomento)!
  WHERE png IsA ACTOR
    ELSE
      IF png IS NOT plurale
            THEN SAY  illegal_parameter_talk_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_talk_pl  OF mia_AT.
      END IF.
  AND argomento IsA THING
    ELSE
      IF argomento IS NOT plurale
        THEN SAY  illegal_parameter_about_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_about_pl  OF mia_AT.
      END IF.

        racconta = parla a (png) di (argomento)!.
        racconta = parla con (png) di (argomento)!.
        racconta = informa (png) di (argomento)!.
        racconta = informa (png) su (argomento)!.
        racconta = dì a (png) di (argomento)!.

-- SYNONYMS enlighten, inform = racconta.


ADD TO EVERY ACTOR
  VERB racconta
    WHEN png
      CHECK mia_AT CAN raccontare
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND png <> hero
--                                                                              TRANSLATE!        ELSE SAY  check_obj_not_hero1  OF mia_AT.
        ELSE SAY  check_obj_not_hero1  OF mia_AT.
          AND png CAN parlare
              ELSE
          IF png IS NOT plurale
--                                                                              TRANSLATE!        ELSE SAY  check_obj_not_hero1  OF mia_AT.
            THEN SAY  check_act_can_talk_sg  OF mia_AT.
            ELSE SAY  check_act_can_talk_pl  OF mia_AT.
          END IF.
      AND png IS NOT distante
        ELSE
          IF png IS NOT plurale
            THEN SAY  ogg1_distante_sg  OF mia_AT.
            ELSE SAY  ogg1_distante_pl  OF mia_AT.
          END IF.
      DOES
        SAY THE png. "non sembra"
        IF png IS plurale
          THEN "$$no"
        END IF.
        "interessat$$" SAY png:vocale. "."

      -- IF png IS NOT plurale
      --   THEN "doesn't"
      --   ELSE "don't"
      -- END IF.

      -- "look interested."

  END VERB racconta.
END ADD TO.


-->verbo_rispondi(20480)  @RISPONDI ---> @ANSWER    (+ reply)
--~=============================================================================
--| ==== rispondi
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `rispondi`.
--<


-- SYNTAX answer = answer (topic)
-- SYNONYMS reply = answer.

SYNTAX rispondi = rispondi (argomento)
  WHERE argomento IsA STRING
    ELSE SAY  illegal_parameter_string  OF mia_AT. --                           TRANSLATE!




ADD TO EVERY STRING
  VERB rispondi
    CHECK mia_AT CAN rispondere
      ELSE SAY  azione_bloccata  OF mia_AT.
    DOES
      "Qual'era la domanda?"
   -- "What was the question?"
    END VERB rispondi.
END ADD TO.

-->gruppo_mangiabevi(20500)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Mangiare e Bere
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi che riguardano mangiare e bere:
--| 
--| * `bevi`
--| * `mangia`
--| * `sorseggia`
--| 
--| [cols="15m,25d,60d",options="header"]
--| |====================================================
--| | verbo     | sintassi        | parametri
--~ |-----------+-----------------+---------------------- 
--| | bevi      | bevi (liq)      | liq è `potabile`
--| | mangia    | mangia (cibo)   | cibo è `commestibile`
--| | sorseggia | sorseggia (liq) | liq è `potabile`
--| |====================================================
--| 
--| Verbi di questo gruppo non ancora tradotti:
--| 
--| * `bite`
--| * `taste`
--<


-->verbo_bevi(20510)  @BEVI --> @DRINK
--~=============================================================================
--| ==== bevi
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `bevi`.
--<

-- SYNTAX drink = drink (liq)

SYNTAX bevi = bevi (liq)
  WHERE liq IsA liquido    -- see 'classes.i'
    ELSE
      IF liq IS NOT plurale
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "bere."


ADD TO EVERY liquido
  VERB bevi
    CHECK mia_AT CAN bere
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND liq IS potabile
      ELSE
        IF liq IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "bere."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND liq IS raggiungibile AND liq IS NOT distante
      ELSE
        IF liq IS NOT raggiungibile
          THEN
            IF liq IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF liq IS distante
          THEN
            IF liq IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      IF recipiente OF liq = recipiente_fittizio
        -- Se il liquido non è in un contenitore, l'eroe ne berrà solo un po' (e
        -- il liquido non verrà consumato). Questo serve a consentire di bere da
        -- un fiume, o da altri liquidi allo stato libero.

        --| NOTA: Questa risposta è un po' generica e potrebbe non essere sempre
        --|       adatta. Dipende dall'oggetto in questione, e se il suo nome
        --|       visualizzato si riferisce al contenitore o al contenuto.
        --|       Es., "un po' di fiume", laddove "un po' dal fiume" sarebbe
        --|       stato meglio (o anche "po' di acqua dal fiume").
        --|       Sta all'autore scegliere bene il nome da visualizzare con
        --|       MENTIONED, ma la questione merita di essere approfondita e
        --|       capire se ci sono soluzioni migliori. In ogni caso, il blocco
        --|       DOES del verbo può sempre essere implementato sull'istanza
        --|       specifica per ottenere un testo ad hoc.
        THEN "Bevi un po' di" SAY liq. "."
     -- THEN "You drink a bit of" SAY THE liq. "."
      ELSE
          -- Se invece il liquido è in un contenitore:

          -- >>> prendi implicito: >>>
          IF recipiente OF liq NOT DIRECTLY IN hero
            THEN
              IF recipiente OF liq IS NOT prendibile
                ---> @TODO!!                                                    TRANSLATE!
                THEN "You can't carry" SAY THE liq. "around in your bare hands."
                  -- the action stops here if the container is not takeable.
                ELSE
                  LOCATE recipiente OF liq IN hero.
                  "(prima prendi" SAY THE THIS:recipiente. SAY THIS:prep_DI. SAY THIS. "$$)$n"
              END IF.

          END IF.
          -- <<< prendi implicito <<<

          IF liq IN hero
            -- i.e. if the implicit taking was successful
            -- Se il prendi implicito è andato in porto:
            THEN
              "Bevi tutt$$" SAY liq:vocale.
              SAY THE liq. "."
              LOCATE liq AT limbo.
          END IF.
      END IF.

  END VERB bevi.
END ADD TO.


-- Note that the verb 'sip' is defined separately, with a slightly different behaviour.

-->verbo_mangia(20520)  @MANGIA -> @EAT
--~=============================================================================
--| ==== mangia
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `mangia`.
--<


-- SYNTAX eat = eat (food)

SYNTAX mangia = mangia (cibo)
  WHERE cibo IsA OBJECT
    ELSE
      IF cibo IS NOT plurale
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "mangiare."


ADD TO EVERY OBJECT
  VERB mangia
    CHECK mia_AT CAN mangiare
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND cibo IS commestibile
      ELSE
        IF cibo IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "mangiare."
    AND cibo IS prendibile
      ---> @TODO!!                                                              TRANSLATE!
      ELSE SAY  check_obj_takeable  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND cibo IS raggiungibile AND cibo IS NOT distante
      ELSE
        IF cibo IS NOT raggiungibile
          THEN
            IF cibo IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF cibo IS distante
          THEN
            IF cibo IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      -- >>> prendi implicito: >>>
      IF cibo NOT DIRECTLY IN hero
        THEN LOCATE cibo IN hero.
          SAY  mia_AT:riferisci_prendi_implicito.
      END IF.
      -- <<< prendi implicito <<<

      "Mangi" SAY THE cibo. "."
   -- "You eat all of" SAY THE cibo. "."
      LOCATE cibo AT limbo.

  END VERB mangia.
END ADD.

-->verbo_sorseggia(20530)  @SORSEGGIA --> @SIP
--~=============================================================================
--| ==== sorseggia
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `sorseggia`.
--<


SYNTAX sorseggia = sorseggia (liq)
  WHERE liq IsA liquido
    ELSE
      IF liq IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "sorseggiare."


ADD TO EVERY liquido
  VERB sorseggia
    CHECK mia_AT CAN sorseggiare
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND liq IS potabile
      ELSE
        IF liq IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "sorseggiare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND liq IS raggiungibile AND liq IS NOT distante
      ELSE
        IF liq IS NOT raggiungibile
          THEN
            IF liq IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF liq IS distante
          THEN
            IF liq IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      IF recipiente OF liq = recipiente_fittizio
        -- Se il liquido non ha un contenitore (p.es. se l'eroe beve un sorso
        -- dal fiume) l'azione viene eseguita con successo.
        THEN "Bevi un sorso di" SAY liq. "."
          -- "You take a sip of" SAY THE liq. "."
        ELSE
          -- >>> prendi implicito: >>>
          IF recipiente OF liq NOT DIRECTLY IN hero
            THEN
              IF recipiente OF liq IS NOT prendibile
                -- Se il recipiente non può essere preso, l'azione si ferma qui.
--                                                                              TRANSLATE!
                THEN "You can't carry" SAY THE liq. "around in your bare hands."
                ELSE LOCATE recipiente OF liq IN hero.
                "(prima prendi" SAY THE recipiente OF liq. "$$)$n"
              END IF.
          END IF.
          -- <<< prendi implicito <<<
      END IF.

      IF liq IN hero    -- i.e. if the implicit taking was successful
        THEN
          IF recipiente OF liq IS NOT aperto
--                                                                              TRANSLATE!
            THEN "You can't, since" SAY THE recipiente OF liq. "is closed."
            ELSE "Bevi un sorso di" SAY liq. "."
              -- "You take a sip of" SAY THE liq. "."
          END IF.
      END IF.

  END VERB sorseggia.
END ADD TO.


-- See also the verb 'drink'.




--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- VERBI NON ANCORA RAGGRUPPATI 
-------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================


-- ==============================================================


-- @ASPETTA ---> WAIT (= z)


-- ==============================================================


SYNTAX aspetta = aspetta.

SYNONYMS
  z, attendi = aspetta.

VERB aspetta
  CHECK mia_AT CAN aspettare
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    "Il tempo passa."
END VERB aspetta.



-- =============================================================


-- @ATTACCA ---> @ATTACK (+ beat, fight, hit, punch)


-- =============================================================
-- @NOTA: In Inform 6 'attacca' riconosce questi sinonimi:
--        rompi, colpisci, combatti, uccidi, tortura, lotta, sfonda, ammazza,
--        picchia.

-- SYNTAX attack = attack (bersaglio)
-- SYNONYMS beat, fight, hit, punch = attack.

SYNTAX attacca = attacca (bersaglio)
  WHERE bersaglio IsA THING
    ELSE
      IF bersaglio IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "attaccare."


SYNONYMS combatti, picchia = attacca.

-- Note that 'kick' is defined separately, to avoid absurd commands such as
-- 'kick man with sword' (see 'attack_with' below)


ADD TO EVERY THING
  VERB attacca
    CHECK mia_AT CAN attaccare
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND bersaglio IS esaminabile
      ELSE
        IF bersaglio IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "attaccare."
--                                                                              TRANSLATE!
    AND bersaglio <> hero
      ELSE SAY  check_obj_not_hero1  OF mia_AT.
--                                                                              TRANSLATE!
    AND bersaglio NOT IN hero
      ELSE SAY  check_obj_not_in_hero1  OF mia_AT.
--                                                                              TRANSLATE!
    AND bersaglio NOT IN abbigliamento
      ELSE SAY  check_obj_not_in_worn2  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND bersaglio IS raggiungibile AND bersaglio IS NOT distante
      ELSE
        IF bersaglio IS NOT raggiungibile
          THEN
            IF bersaglio IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF bersaglio IS distante
          THEN
            IF bersaglio IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
--                                                                              TRANSLATE!
    AND hero IS NOT seduto
      ELSE SAY  check_hero_not_sitting2  OF mia_AT.
--                                                                              TRANSLATE!
    AND hero IS NOT sdraiato
      ELSE SAY  check_hero_not_lying_down2  OF mia_AT.
        DOES
          -- "La violenza non è la giusta risposta a questo." ---> taken from i6
          SAY   la_violenza_non_è_la_risposta  OF mia_AT.
          -- "Resorting to brute force is not the solution here."
    END VERB attacca.
END ADD TO.




-- ==============================================================


-- @ATTACCA CON ---> @ATTACK WITH


-- ==============================================================

-- SYNTAX attack_with = attack (bersaglio) 'with' (arma)

SYNTAX attacca_con = attacca (bersaglio) con (arma)
  WHERE bersaglio IsA THING
    ELSE
      IF bersaglio IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "attaccare."
  AND arma IsA arma
    ELSE
      IF arma IS NOT plurale
        THEN SAY  ogg2_illegale_CON_sg  OF mia_AT.
        ELSE SAY  ogg2_illegale_CON_pl  OF mia_AT.
      END IF.
      "attaccare" SAY THE bersaglio. "."


ADD TO EVERY THING
  VERB attacca_con
    WHEN bersaglio
      CHECK mia_AT CAN attaccare_con
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND bersaglio IS esaminabile
        ELSE
          IF bersaglio IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY  ogg1_inadatto_sg  OF mia_AT.
            ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
          END IF.
          "attaccare."
--                                                                              TRANSLATE!
      AND bersaglio <> arma
        ELSE SAY  check_obj_not_obj2_with  OF mia_AT.
--                                                                              TRANSLATE!
      AND bersaglio <> hero
        ELSE SAY  check_obj_not_hero1  OF mia_AT.
--                                                                              TRANSLATE!
      AND bersaglio NOT IN hero
        ELSE SAY  check_obj_not_in_hero1  OF mia_AT.
--                                                                              TRANSLATE!
      AND bersaglio NOT IN abbigliamento
        ELSE SAY  check_obj_not_in_worn2  OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND bersaglio IS raggiungibile AND bersaglio IS NOT distante
        ELSE
          IF bersaglio IS NOT raggiungibile
            THEN
              IF bersaglio IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF bersaglio IS distante
            THEN
              IF bersaglio IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.
--                                                                              TRANSLATE!
      AND hero IS NOT seduto
        ELSE SAY  check_hero_not_sitting2  OF mia_AT.
--                                                                              TRANSLATE!
      AND hero IS NOT sdraiato
        ELSE SAY  check_hero_not_lying_down2  OF mia_AT.
          DOES
            -- "La violenza non è la giusta risposta a questo." ---> taken from i6
            SAY   la_violenza_non_è_la_risposta  OF mia_AT.
            -- "Resorting to brute force is not the solution here."
  END VERB attacca_con.
END ADD TO.



-- ==============================================================


-- @ATTRAVERSA ---> CLIMB THROUGH


-- ==============================================================

-- SYNTAX climb_through = climb through (obj)

SYNTAX attraversa = attraversa (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "attraversare."

ADD TO EVERY OBJECT
  VERB attraversa
    CHECK mia_AT CAN attraversare
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "attraversare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    AND hero IS NOT seduto
      ---> @TODO!!                                                              TRANSLATE!
      ELSE SAY  check_hero_not_sitting3  OF mia_AT.
    AND hero IS NOT sdraiato
      ---> @TODO!!                                                              TRANSLATE!
      ELSE SAY  check_hero_not_lying_down3  OF mia_AT.
    DOES
      IF ogg IS NOT plurale
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "attraversare."
   -- IF ogg IS NOT plurale
   --   THEN "That's not"
   --   ELSE "Those are not"
   -- END IF.
   -- "something you can climb through."
  END VERB attraversa.
END ADD TO.




-- ==============================================================


-- @BACIA ---> @KISS (+ hug, embrace)


-- ==============================================================

-- SYNTAX kiss = kiss (ogg)
-- SYNONYMS hug, embrace = kiss.

SYNTAX bacia = bacia (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "$vre." -- baciare/abbracciare

SYNONYMS abbraccia = bacia.



ADD TO EVERY THING
  VERB bacia
    CHECK mia_AT CAN baciare
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "$vre." -- baciare/abbracciare
--                                                                              TRANSLATE!
    AND ogg <> hero
      ELSE SAY  check_obj_not_hero6  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      IF ogg IsA ACTOR
        THEN SAY THE ogg. "respinge le tue avances."
        --                "avoids your advances."
        ELSE
          -- "Farlo non servirebbe a nulla."
          SAY mia_AT:non_servirebbe_a_nulla.
        -- "Nothing would be achieved by that."
      END IF.
  END VERB bacia.
END ADD TO.

-- ==============================================================


-- @BALLA ---> @DANCE


-- ==============================================================

-- SYNTAX dance = dance.

SYNTAX balla = balla.

SYNONYMS danza = balla.


VERB balla
  CHECK mia_AT CAN ballare
    ELSE SAY  azione_bloccata  OF mia_AT.
  AND CURRENT LOCATION IS illuminato
    ELSE SAY  imp_luogo_buio  OF mia_AT.
--                                                                              TRANSLATE!
  AND hero IS NOT seduto
    ELSE SAY  check_hero_not_sitting1  OF mia_AT.
--                                                                              TRANSLATE!
  AND hero IS NOT sdraiato
    ELSE SAY  check_hero_not_lying_down1  OF mia_AT.
  DOES
    SAY mia_AT:non_senti_bisogno_di. "ballare."
 -- "How about a waltz?"
END VERB balla.



-- =================================================================

-- @BRUCIA ---> @BURN (VERB + SYNTAX)

-- =================================================================
-- @NOTA: In i6 "incendia" è sinonimo di "brucia" e "brucia con".
--        Inoltre, "col" è sinonimo di "con".

SYNTAX brucia = brucia (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "bruciare."

ADD TO EVERY OBJECT
  VERB brucia
    CHECK mia_AT CAN bruciare
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "bruciare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    DOES
      SAY  specificare_CON_cosa  OF mia_AT. "bruciare" SAY THE ogg. "."
   -- "You must state what you want to burn" SAY THE ogg. "with."
  END VERB brucia.
END ADD TO.



-- =================================================================

-- @BRUCIA_CON ---> @BURN_WITH (VERB + SYNTAX)

-- =================================================================


SYNTAX brucia_con = brucia (ogg) con (strum)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "bruciare."
  AND strum IsA OBJECT
    ELSE
      IF strum IS NOT plurale
        THEN SAY  ogg2_illegale_CON_sg  OF mia_AT.
        ELSE SAY  ogg2_illegale_CON_pl  OF mia_AT.
      END IF.
      "bruciare." -- @TODO: ".. altre cose"??                                   IMPROVE!


ADD TO EVERY OBJECT
  VERB brucia_con
    WHEN ogg
      CHECK mia_AT CAN bruciare_con
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND ogg IS esaminabile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY  ogg1_inadatto_sg  OF mia_AT.
            ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
          END IF.
          "bruciare."
      AND strum IS esaminabile
        ELSE
          IF strum IS NOT plurale
            THEN SAY  ogg2_illegale_CON_sg  OF mia_AT.
            ELSE SAY  ogg2_illegale_CON_pl  OF mia_AT.
          END IF.
          "bruciare" SAY THE ogg. "."
      AND ogg <> strum
        ---> @TODO!!                                                            TRANSLATE!
        ELSE SAY  check_obj_not_obj2_with  OF mia_AT.
      AND strum IN hero
        ELSE SAY  non_possiedi_ogg2  OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.

      DOES
        "Non puoi bruciare" SAY THE ogg. "con" SAY THE strum. "."
     -- "You can't burn" SAY THE ogg. "with" SAY THE strum. "."
  END VERB brucia_con.
END ADD TO.



-- ==============================================================


-- @CANTA ---> @SING (+ hum, whistle)


-- ==============================================================

-- SYNTAX sing = sing.
-- SYNONYMS hum, whistle = sing.

SYNTAX canta = canta.


VERB canta
  CHECK mia_AT CAN cantare
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    "Canticchi una melodia."
 -- "You $v a little tune."
END VERB canta.


-- ==================================================================


-- @COMPRA ---> @BUY (+ purchase)


-- ==================================================================


SYNTAX compra = compra (merce)
  WHERE merce IsA OBJECT
    ELSE
      IF merce IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "comprare."

SYNONYMS acquista = compra.

-- SYNONYMS purchase = buy.

ADD TO EVERY OBJECT
  VERB compra
    CHECK mia_AT CAN comprare
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND merce IS esaminabile
      ELSE
        IF merce IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "comprare."
    DOES
      SAY the merce.
      IF merce IS NOT plurale
        THEN "non è"
        ELSE "non sono"
        -- THEN "That's not"
        -- ELSE "Those are not"
      END IF.
      "in vendita."
      -- "for sale."
  END VERB compra.
END ADD TO.


-- ==============================================================


-- @CONSULTA --> @CONSULT


-- ==============================================================
-- SYNTAX consult = consult (fonte) about (argomento)!
-- consult = 'look' 'up' (argomento) 'in' (fonte).

-- NOTA:  'CIRCA' è sinonimo di 'RIGUARDO' (definito altrove).


SYNTAX  consulta = consulta (fonte) riguardo (argomento)!
  WHERE fonte IsA OBJECT
    -- you can only consult an inanimate source, not a person.
    ELSE
      IF fonte IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "consultare."
  AND argomento IsA THING
    ELSE
      IF argomento IS NOT plurale
--                                                                              TRANSLATE!
        THEN SAY  illegal_parameter_consult_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_consult_pl  OF mia_AT.
      END IF.

        consulta = guarda (argomento) 'in' (fonte).
        consulta = cerca (argomento) 'in' (fonte).
        consulta = ricerca (argomento) 'in' (fonte).


ADD TO EVERY THING
  VERB consulta
    WHEN fonte
      CHECK mia_AT CAN consultare
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND fonte IS esaminabile
        ELSE
          IF fonte IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY  ogg1_inadatto_sg  OF mia_AT.
            ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
          END IF.
          "consultare."
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND fonte IS raggiungibile AND fonte IS NOT distante
        ELSE
          IF fonte IS NOT raggiungibile
            THEN
              IF fonte IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF fonte IS distante
            THEN
              IF fonte IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.
      DOES
--                                                                              TRANSLATE!
        "You find nothing useful about" SAY THE argomento. "in" SAY THE fonte. "."

  END VERB consulta.
END ADD TO.


--- another 'consult' formulation added to guide players to use the right phrasing:


SYNTAX consulta_error = consulta (fonte)
  WHERE fonte IsA THING
-- @TODO: Transforma in attributo risposta ricorrente:
--                                                                              TRANSLATE!
    ELSE "To consult something, please use the formulation
          CONSULT THING ABOUT PERSON/THING."


ADD TO EVERY THING
  VERB consulta_error
--                                                                              TRANSLATE!
    DOES "To consult something, please use the formulation
          CONSULT THING ABOUT PERSON/THING."
    END VERB consulta_error.
END ADD TO.




-- ==============================================================


-- @DAI_A -> @GIVE (+ hand, offer)


-- ==============================================================
-- #NOTA: Aggiungere anche "'dai' 'a' (ricevente) (obj)"?

-- SYNTAX give_to = 'give' (obj) 'to' (recipient)

SYNTAX dai_a = 'dai' (ogg) 'a' (ricevente)
  WHERE ogg IsA OBJECT
    ---> @TODO!!                                                                TRANSLATE!
    ELSE SAY  illegal_parameter_obj  OF mia_AT.
  AND ricevente IsA ACTOR
    ELSE
      IF ricevente IS NOT plurale
        ---> @TODO!!                                                            TRANSLATE!
        THEN SAY  illegal_parameter2_to_sg  OF mia_AT.
        ELSE SAY  illegal_parameter2_to_pl  OF mia_AT.
      END IF.


SYNONYMS porgi, offri = dai.
-- SYNONYMS hand, offer = give.


ADD TO EVERY OBJECT
  VERB dai_a
        WHEN ogg
      CHECK mia_AT CAN dare -- (was CAN give)
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND ogg IS prendibile
        ---> @TODO!!                                                            TRANSLATE!
        ELSE SAY  check_obj_takeable  OF mia_AT.
      AND ogg <> ricevente
        ---> @TODO!!                                                            TRANSLATE!
        ELSE SAY  check_obj_not_obj2_to  OF mia_AT.
      AND ricevente <> hero
        ---> @TODO!!                                                            TRANSLATE!
        ELSE SAY  check_obj2_not_hero3  OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND ogg NOT IN ricevente
        ELSE
          IF ricevente IS NOT plurale
            ---> @TODO!!                                                       TRANSLATE!
            THEN SAY  check_obj_not_in_act_sg  OF mia_AT.
            ELSE SAY  check_obj_not_in_act_pl  OF mia_AT.
          END IF.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.
      AND ricevente IS raggiungibile AND ricevente IS NOT distante
        ELSE
          IF ricevente IS NOT raggiungibile
            THEN
              IF ricevente IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF ricevente IS distante
            THEN
              IF ricevente IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.
          DOES
        -- >>> prendi implicito: >>>
        IF ogg NOT DIRECTLY IN hero
          THEN SAY  mia_AT:riferisci_prendi_implicito.
          LOCATE ogg IN hero.
        END IF.
        -- <<< prendi implicito <<<

        LOCATE ogg IN ricevente.
        ---> @TODO!!                                                            TRANSLATE!
        "You give" SAY THE ogg. "to" SAY THE ricevente. "."


  END VERB dai_a.
END ADD TO.



-- ==============================================================


-- @DORMI ---> @SLEEP (+ rest)


-- ==============================================================


SYNTAX dormi = dormi.

SYNONYMS riposa = dormi.

VERB dormi
  CHECK mia_AT CAN dormire
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    "Non è il momento di riposare."
END VERB dormi.




-- ==============================================================


-- @ESAMINA ---> @EXAMINE (+ look at)


-- ==============================================================

-- @TODO: EXAMINE con oggetti leggibili si comporta come READ, ma vorrei cambiare
--        questo. Mi piacrebbe che, p.es., un libro fosse sia esaminabile che
--        leggibile, dove il primo fornisce una descrizione del libro (es: un
--        antico libro di pelle), mentre il secondo legge il testo ivi
--        contenuto. Inoltre, con alcuni oggetti (grossi libri), sarebbe così
--        possibile fare in modo che leggendo più volte di seguito si ottenga
--        il testo di pagine diverse, per creare l'illusione di una lettura
--        vera e proprio (ovviamente, vi è un limite dopo il quale la risposta
--        sarebbe "Sei stufo di leggere", o simile).


-- SYNTAX examine = examine (obj)
--        examine = 'look' 'at' (obj).
--        examine = 'look' (obj).  -- note that this formulation is allowed, too
-- SYNONYMS
--   'check', inspect, observe, x = examine.

SYNTAX esamina = esamina (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        THEN SAY  illegal_parameter_examine_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_examine_pl  OF mia_AT.
      END IF.

       esamina = 'guarda' (ogg).

SYNONYMS
  descrivi, osserva, X = esamina.


ADD TO EVERY THING
  VERB esamina
    CHECK mia_AT CAN esaminare
      ELSE SAY  azione_bloccata  OF mia_AT.
        AND ogg IS esaminabile
          ELSE
        IF ogg IS NOT plurale
          THEN SAY  check_obj_suitable_examine_sg  OF mia_AT.
          ELSE SAY  check_obj_suitable_examine_pl  OF mia_AT.
        END IF.
        AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS NOT scenario
      ELSE
        IF ogg IS NOT plurale
          THEN SAY  check_obj_not_scenery_sg  OF mia_AT. ---> "$+1 non è importante ai fini del gioco."
          ELSE SAY  check_obj_not_scenery_pl  OF mia_AT. ---> "$+1 non sono importanti ai fini del gioco."
        END IF.

    DOES
      IF xDesc OF ogg <> ""
        THEN SAY xDesc OF ogg.
      ELSIF ogg IS leggibile AND testo OF ogg <> ""
      --+-----------------------------------------------------------------------
      --| Se la stringa 'xDesc' è vuota, e si tratta di un oggetto leggibile
      --| contenente del 'testo', allora ESAMINA si comporterà come LEGGI:
      --+-----------------------------------------------------------------------
        THEN "Leggi" SAY THE ogg. "."
          IF ogg IS NOT plurale
            THEN "Dice"
            ELSE "Dicono"
          END IF.
          """$$" SAY testo OF ogg. "$$""."
      ELSIF ogg = hero
     -- THEN "You notice nothing unusual about yourself."
        THEN "Non noti niente di insolito in te stesso."
        ELSE "Esamini" SAY THE ogg. ", ma non noti niente di speciale."
     -- ELSE "You notice nothing unusual about" SAY THE ogg. "."
        --#i7: "Non [trovi] nulla di particolare [inp the noun]."
        --#i6: "Esamini ", (the) x1, ", ma non noti niente di speciale."
      END IF.
  END VERB esamina.
END ADD TO.


-- ==============================================================


-- @GIOCA CON ---> @PLAY WITH


-- ==============================================================
-- SYNTAX play_with = 'play' 'with' (ogg)


SYNTAX gioca_con = gioca con (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        THEN SAY  illegal_parameter_with_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_with_pl  OF mia_AT.
      END IF.



ADD TO EVERY THING
  VERB gioca_con
    CHECK mia_AT CAN giocare_con
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY  check_obj_suitable_with_sg  OF mia_AT.
          ELSE SAY  check_obj_suitable_with_pl  OF mia_AT.
        END IF.
    AND ogg <> hero
      ELSE SAY  check_obj_not_hero6  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      "Ripensandoci, non vedi alcuna utilità nel giocare con" SAY THE ogg. "."
   -- "After second thought you don't find it purposeful to start
   --  playing with" SAY THE ogg. "."
  END VERB gioca_con.
END ADD TO.




-- ==============================================================


-- @GRATTA --> @SCRATCH


-- ==============================================================
-- SYNTAX scratch = scratch (ogg)

-- Non è chiaro se il verbo è inteso come "gratta" o "graffia".

SYNTAX gratta = gratta (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "grattare." -- #graffiare?


ADD TO EVERY THING
  VERB gratta
    CHECK mia_AT CAN grattare
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "grattare." -- #graffiare?
    AND ogg <> hero
      -- "Farlo non servirebbe a nulla."
      ELSE SAY  mia_AT:non_servirebbe_a_nulla.
    AND ogg IS inanimato
      -- "non credo che $+1 gradirebbe."
      ELSE SAY  mia_AT:ogg1_png_non_apprezzerebbe.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      -- "Farlo non servirebbe a nulla."
      SAY mia_AT:non_servirebbe_a_nulla.
      -- "Nothing would be achieved by that."
  END VERB gratta.
END ADD TO.



-- ==============================================================


-- @GUARDA -> @LOOK


-- ==============================================================
-- SYNTAX 'look' = 'look'.
-- SYNONYMS l = 'look'.


SYNTAX guarda = guarda.


SYNONYMS l = guarda.


VERB guarda
  CHECK mia_AT CAN guardare
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    INCREASE descritto OF CURRENT LOCATION.
    -- vedi 'lib_luoghi.i', attributo 'descritto'.
    LOOK.
END VERB guarda.

-- ==============================================================


-- @GUARDA_DIETRO -> @LOOK BEHIND


-- ==============================================================
-- SYNTAX look_behind = 'look' behind (bulk)


SYNTAX guarda_dietro = guarda dietro (bulk)
  WHERE bulk IsA THING
    ELSE SAY  illegal_parameter_there  OF mia_AT.
-- @TODO: Aggiungi controllo per suoni, oppure implementa il verbo sulla classe
--        dei suoni.                                                            FIXME!

ADD TO EVERY THING
  VERB guarda_dietro
    CHECK mia_AT CAN guardare_dietro
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND bulk IS esaminabile
      ELSE SAY  mia_AT:impossibile_guardare. "dietro $+1."
             -- check_obj_suitable_there  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND bulk <> hero
      ELSE SAY  check_obj_not_hero7  OF mia_AT.
    DOES
      IF bulk IN hero
        THEN "Giri $+1 ma non noti niente di particolare."
          -- "You turn" SAY THE bulk. "in your hands but notice nothing unusual about it."
        ELSE "Non noti nulla di insolito dietro $+1."
          -- "You notice nothing unusual behind" SAY THE bulk. "."
      END IF.
  END VERB guarda_dietro.
END ADD TO.



-- ==============================================================


-- @GUARDA IN -> @LOOK IN


-- ==============================================================
-- SYNTAX look_in = 'look' 'in' (cont)


SYNTAX guarda_in = guarda 'in' (cont)
-- @TODO: Can these be joined in a single WHERE?                                OPTIMIZE?
    WHERE cont IsA OBJECT
      ELSE SAY  mia_AT:impossibile_guardare. "dentro $+1."
            --  illegal_parameter_there  OF mia_AT.
    AND cont IsA CONTAINER
      ELSE SAY  mia_AT:impossibile_guardare. "dentro $+1."
            --  illegal_parameter_there  OF mia_AT.


ADD TO EVERY OBJECT
  VERB guarda_in
    CHECK mia_AT CAN guardare_in
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND cont IS esaminabile
      ELSE SAY  mia_AT:impossibile_guardare. "dentro $+1."
            --  check_obj_suitable_there  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND cont IS aperto
      ELSE
        IF cont IS NOT femminile
          THEN
            IF cont IS NOT plurale
              THEN SAY  imp_ogg1_chiuso_ms  OF mia_AT.
              ELSE SAY  imp_ogg1_chiuso_mp  OF mia_AT.
            END IF.
          ELSE
            IF cont IS NOT plurale
              THEN SAY  imp_ogg1_chiuso_fs  OF mia_AT.
              ELSE SAY  imp_ogg1_chiuso_fp  OF mia_AT.
            END IF.
        END IF.
    DOES
      LIST cont.
  END VERB guarda_in.
END ADD TO.



-- ==============================================================


-- @GUARDA FUORI DA -> @LOOK OUT OF


-- ==============================================================
-- SYNTAX look_out_of = 'look' 'out' 'of' (ogg)


SYNTAX guarda_fuori_da = guarda fuori da (ogg)
  WHERE ogg IsA OBJECT
    ELSE
-- @TODO: Add checks for Hero!                                                  FIXME!
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa da cui poter"
        THEN SAY mia_AT:ogg1_illegale_DA_sg.
        ELSE SAY mia_AT:ogg1_illegale_DA_pl.
      END IF.
      "guardare fuori."

ADD TO EVERY OBJECT
  VERB guarda_fuori_da
    CHECK mia_AT CAN guardare_fuori_da
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
--                                                                              TRANSLATE!
          THEN SAY  check_obj_suitable_look_out_sg  OF mia_AT.
          ELSE SAY  check_obj_suitable_look_out_pl  OF mia_AT.
        END IF.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    DOES
      IF ogg IS NOT plurale
--                                                                              TRANSLATE!
        THEN "That's not"
        ELSE "Those are not"
      END IF.
      "something you can look out of."
  END VERB guarda_fuori_da.
END ADD TO.



-- ==============================================================


-- @GUARDA ATTRAVERSO -> @LOOK THROUGH


-- ==============================================================
-- SYNTAX look_through = 'look' through (bulk)


SYNTAX guarda_attraverso = guarda attraverso (bulk)
  WHERE bulk IsA OBJECT
--                                                                              TRANSLATE!
    ELSE SAY  illegal_parameter_look_through  OF mia_AT.



ADD TO EVERY OBJECT
  VERB guarda_attraverso
    CHECK mia_AT CAN guardare_attraverso
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND bulk IS esaminabile
--                                                                              TRANSLATE!
      ELSE SAY  check_obj_suitable_look_through  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    DOES
--                                                                              TRANSLATE!
      "You can't see through" SAY THE bulk. "."
  END VERB guarda_attraverso.
END ADD TO.



-- ==============================================================


-- @GUARDA SOTTO -> @LOOK UNDER


-- ==============================================================
-- SYNTAX look_under = 'look' under (bulk)


SYNTAX guarda_sotto = guarda sotto (bulk)
  WHERE bulk IsA THING
--                                                                              TRANSLATE!
    ELSE SAY  illegal_parameter_there  OF mia_AT.



ADD TO EVERY THING
  VERB guarda_sotto
    CHECK mia_AT CAN guardare_sotto
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND bulk IS esaminabile
--                                                                              TRANSLATE!
      ELSE SAY  check_obj_suitable_there  OF mia_AT.
    AND bulk <> hero
--                                                                              TRANSLATE!
      ELSE SAY  check_obj_not_hero8  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    DOES
-- @NOTE: Perché non controlla se l'oggeto è posseduto dal giocatore (come fa in look_behind)?
      "Non noti nulla di insolito sotto $+1."
  --  "You notice nothing unusual under" SAY THE bulk. "."
  END VERB guarda_sotto.
END ADD TO.



-- ==============================================================


-- @GUARDA SU -> @LOOK UP   (-> see also CONSULT)


-- ==============================================================
-- SYNTAX look_up = 'look' up.


SYNTAX guarda_su = guarda su.


VERB guarda_su
  CHECK mia_AT CAN guardare_su
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES "Guardando su non noti nulla di interessante."
    -- "Looking up, you see nothing unusual."
END VERB guarda_su.



-- ==============================================================


-- @GUIDA ---> @DRIVE


-- ==============================================================

-- SYNTAX drive = drive (veicolo)

SYNTAX guida = guida (veicolo)
  WHERE veicolo IsA OBJECT
    ELSE
      IF veicolo IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "guidare."

ADD TO EVERY OBJECT
  VERB guida
    CHECK mia_AT CAN guidare
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND veicolo IS esaminabile
      ELSE
        IF veicolo IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "guidare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND veicolo IS raggiungibile AND veicolo IS NOT distante
      ELSE
        IF veicolo IS NOT raggiungibile
          THEN
            IF veicolo IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF veicolo IS distante
          THEN
            IF veicolo IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    AND hero IS NOT sdraiato
--                                                                              TRANSLATE!
      ELSE SAY  check_hero_not_lying_down3  OF mia_AT.
    DOES
      IF veicolo IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "guidare."
  END VERB guida.
END ADD TO.


--                                                                              TRANSLATE!
-- another 'drive' formulation added to guide players to use the right phrasing:


SYNTAX guida_errore = guida.

-- @TODO: Aggiungere check 'mia_AT can guidare'? Se no il messaggio su come usare
--        il verbo diventa ingannevole.

VERB guida_errore
  DOES "Per guidare un mezzo di trasporto, usa la formula GUIDA VEICOLO."
  -- DOES "To drive something, use the phrasing DRIVE SOMETHING."
END VERB guida_errore.


-- ==============================================================


-- @INDOSSA ---> @WEAR


-- ==============================================================

-- @ALTRI SINONIMI: 'infilati', 'calza' 

-- SYNTAX  wear = wear (ogg)
--         wear = put 'on' (ogg).
--         wear = put (ogg) 'on'.
--         wear = don (ogg).


SYNTAX  indossa = indossa (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg <> hero
        THEN
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY  ogg1_inadatto_sg  OF mia_AT.
            ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
          END IF.
          "indossare."
        ELSE SAY  azione_insensata  OF mia_AT.
      END IF.

        indossa = mettiti (ogg).


ADD TO EVERY OBJECT
  VERB indossa
    CHECK mia_AT CAN indossare
        ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg NOT IN abbigliamento
--                                                                              TRANSLATE!
      ELSE SAY  indossi_già  OF mia_AT.
    AND ogg IS prendibile
      ELSE
        IF THIS IS NOT plurale
--                                                                              TRANSLATE!
          THEN SAY  check_obj_takeable  OF mia_AT.
          ELSE SAY  check_obj_takeable  OF mia_AT.
        END IF.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.

    DOES
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "indossare."

  END VERB indossa.
END ADD TO.



-- ==============================================================


-- @INVENTARIO -> @INVENTORY (+ i, inv)


-- ==============================================================
-- META VERBO: Inventariare è un'azione mentale più che fisica, perciò pur
-- essendo un comando di gioco è stato dichiarato come META poiché non dovrebbe
-- far avanzare il tempo nel mondo dell'avventura --- p.es, il giocatore potrebbe
-- trovarsi in situazioni di pericolo in cui ha pochi turni prima di morire; in
-- simili frangenti consultare l'inventario non dovrebbe far procedere il turno.
-- Inoltre, l'inventario non è un'azione che possa essere disfatta con UNDO.
--------------------------------------------------------------------------------


--# NOTE: The original verb/syntax was "i", with "inv" and "inventory" as synonyms;
--        But his in Italian will conflict with 'i' being implemented as a
--        NOISE WORD synonym (ie: all articles in player input being ignored).
--        So, we'll define the verb as "inventario" with shorthand "inv".
--        For the CAN attribute, we'll use "inventariare" instead of "CAN i".

SYNTAX inventario = inventario.


SYNONYMS inv = inventario.


VERB inventario
  CHECK mia_AT CAN inventariare
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    LIST hero.

    IF COUNT DIRECTLY IN abbigliamento > 0   -- See the file 'classes.i', subclass 'clothing'.
      THEN LIST abbigliamento.     -- This code will list what the hero is wearing.
    END IF.

END VERB inventario.




-- ==============================================================


-- @LASCIA ---> @DROP


-- ==============================================================

-- i6: lascia, lancia, abbandona, posa, metti giù

SYNTAX  lascia = lascia (ogg)*
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "lasciare." -- @TODO: "maneggiare"??                                      IMPROVE!

        lascia = abbandona (ogg)*.
        lascia = metti giù (ogg)*.
        lascia = posa (ogg)*.



ADD TO EVERY OBJECT
  VERB lascia
    CHECK mia_AT CAN lasciare
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IN hero
      ELSE
        IF ogg IN abbigliamento
          THEN SAY  indumento_andrebbe_rimosso  OF mia_AT.
          ELSE SAY  non_possiedi_ogg1  OF mia_AT.
        END IF.

    DOES
      LOCATE ogg HERE.
       "Lasci" SAY THE ogg. "."
    -- "Dropped."
  END VERB lascia.
END ADD TO.


-- SYNONYMS
--   abbandona = lascia.
--
-- @NOTA | non si può implementare 'abbandona' come sinonimo di 'lascia' perché
--       | abbandona_partita lo usa già nella sua sintassi:
--       | 333 E : The word 'abbandona' is defined to be both a synonym and another word class.

-- @TODO | Verificare se potrò usare sinonimi (che non interferiscano con sintassi
--       | di altri verbi)!!!
--       | Quanto a 'posa': meglio lasciarlo libero dato che potrebbe servire il
--       | verbo 'posa' in alcuni giochi?

--| ORIGINALE INGLESE:
--| =================
--| SYNTAX  drop = drop (ogg)*
--|         drop = put (ogg) * down.
--|         drop = put down (ogg)*.
--| SYNONYMS
--|   discard, dump, reject = drop.


-- ==============================================================


-- @LEGA ---> @TIE


-- ==============================================================
-- @NOTA: in i6: lega, fissa, congiungi, unisci, allaccia, annoda, attacca.

-- SYNTAX tie = tie (ogg)

SYNTAX lega = lega (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "legare."


ADD TO EVERY OBJECT
  VERB lega
    CHECK mia_AT CAN legare
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "legare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    DOES
      SAY mia_AT:specificare_A_cosa. "vorresti legare $+1."
   -- "You must state where you want to tie" SAY THE ogg. "."
    END VERB lega.
END ADD TO.



-- ==============================================================


-- @LEGA A ---> @TIE TO


-- ==============================================================

-- SYNTAX lega_a = tie (ogg) 'to' (target)

SYNTAX lega_a = lega (ogg) a (bersaglio)
  WHERE ogg IsA OBJECT
    ELSE SAY  illegal_parameter_obj  OF mia_AT.
  AND bersaglio IsA THING
    ELSE SAY  illegal_parameter_obj  OF mia_AT.



ADD TO EVERY THING
  VERB lega_a
    WHEN ogg
      CHECK mia_AT CAN legare_a
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND ogg IS esaminabile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY  ogg1_inadatto_sg  OF mia_AT. "legare."
            ELSE SAY  ogg1_inadatto_pl  OF mia_AT. "legare."
          END IF.
      AND bersaglio IS esaminabile
        ELSE SAY  check_obj2_suitable_there  OF mia_AT.
--                                                                              TRANSLATE!
      AND ogg <> bersaglio
        ELSE SAY  check_obj_not_obj2_to  OF mia_AT.
--                                                                              TRANSLATE!
      AND ogg IS prendibile
        ELSE SAY  check_obj_takeable  OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.
      AND bersaglio IS raggiungibile AND bersaglio IS NOT distante
        ELSE
          IF bersaglio IS NOT raggiungibile
            THEN
              IF bersaglio IS NOT plurale
                THEN SAY  ogg2_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg2_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF bersaglio IS distante
            THEN
              IF bersaglio IS NOT plurale
                THEN SAY  ogg2_distante_sg  OF mia_AT.
                ELSE SAY  ogg2_distante_pl  OF mia_AT.
              END IF.
          END IF.
      DOES
        -- >>> prendi implicito: >>>
        IF ogg NOT DIRECTLY IN hero
          THEN LOCATE ogg IN hero.
            SAY  mia_AT:riferisci_prendi_implicito.
        END IF.
        -- <<< prendi implicito <<<

        "Non è possibile legare $+1" SAY bersaglio:prep_A. "$2."
     -- "It's not possible to tie" SAY THE ogg. "to" SAY THE bersaglio. "."

  END VERB lega_a.
END ADD TO.



-- ==============================================================


-- @LEGGI ---> @READ


-- ==============================================================
-- SYNTAX read = read (obj)


SYNTAX leggi = leggi (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "leggere."


ADD TO EVERY OBJECT
    VERB leggi
    CHECK mia_AT CAN leggere
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS leggibile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "leggere."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT plurale
          THEN SAY  ogg1_distante_sg  OF mia_AT.
          ELSE SAY  ogg1_distante_pl  OF mia_AT.
        END IF.
    DOES
      IF testo OF ogg = ""
     -- THEN "There is nothing written on" SAY THE ogg. "."
        THEN "Non c'è nulla da leggere" SAY prep_SU of ogg. SAY ogg. "."
          ELSE "Leggi" SAY THE ogg. "."
            IF ogg IS NOT plurale
              THEN "Dice"
              ELSE "Dicono"
          END IF.
          """$$" SAY testo OF ogg. "$$""."
      END IF.
    END VERB leggi.
END ADD TO.



-- ==============================================================


-- @LIBERA ---> @FREE (+ release)


-- ==============================================================

-- SYNTAX free = free (ogg)
-- SYNONYMS release = free.

SYNTAX libera = libera (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "liberare."


SYNONYMS rilascia = libera.


ADD TO EVERY THING
  VERB libera
    CHECK mia_AT CAN liberare
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "liberare."
    AND ogg <> hero
      ELSE SAY  check_obj_not_hero5  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      "$+1 non necessita"
      IF ogg IS plurale
        THEN "$$no"
      END IF.
      "di essere liberat$$" SAY ogg:vocale. "."
  END VERB libera.
END ADD TO.


-- ==============================================================


-- @PENSA ---> @THINK   (+ ponder, meditate, reflect)


-- ==============================================================
--| SINTASSI:
--|   (pensa|pondera|rifletti|medita)
--------------------------------------------------------------------------------


-- SYNTAX think = think.
-- SYNONYMS ponder, meditate, reflect = think.

SYNTAX pensa = pensa.
       pensa = pondera.
       pensa = rifletti.

SYNONYMS medita = rifletti.

VERB pensa
  CHECK mia_AT CAN pensare
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    "Nothing helpful comes to your mind."
END VERB pensa.





-- ==============================================================


-- @PENSA A ---> @THINK ABOUT


-- ==============================================================
--| SINTASSI:
--|   pensa a <argomento>
--|   (rifletti|medita) su <argomento>
--|   pondera <argomento>
--------------------------------------------------------------------------------

-- SYNTAX think_about = think 'about' (argomento)!

SYNTAX  pensa_a = pensa a (argomento)!
  WHERE argomento IsA THING
    ELSE
      IF argomento IS NOT plurale
        THEN SAY  illegal_parameter_about_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_about_pl  OF mia_AT.
      END IF.

        pensa_a = rifletti su (argomento)!.
        pensa_a = pondera (argomento)!.

ADD TO EVERY THING
  VERB pensa_a
    CHECK mia_AT CAN pensare_a
      ELSE SAY  azione_bloccata  OF mia_AT.
    DOES
      "Nothing helpful comes to your mind."
  END VERB pensa_a.
END ADD TO.



-- ==============================================================


-- @PREGA ---> @PRAY (VERB + SYNTAX)


-- ==============================================================


SYNTAX prega = prega.


VERB prega
  CHECK mia_AT CAN pregare
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES "Sembra che le tue preghiere non siano state esaudite." ---> da i6
  -- DOES "Your prayers don't seem to help right now."
END VERB prega.


-- ==============================================================


-- @PRENDI -> @TAKE (+ carry, get, grab, hold, obtain, pick up)


-- ==============================================================

-- @PRENDI -> @TAKE (SYNTAX)         => take (obj)

SYNTAX prendi = prendi (ogg)
      WHERE ogg IsA THING
        ELSE
      IF ogg IS NOT plurale
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "prendere." -- @TODO: "maneggiare"??                                      IMPROVE!

-- @TODO: Cleanup, these might not need an alternative syntax but just synonym!

    prendi = afferra (ogg).
    prendi = raccogli (ogg).
    prendi = trasporta (ogg).

--| ORIGINAL EN:
--| ============
--| SYNTAXES:
--|   take = take    (obj)
--|   take = get     (obj)
--|   take = pick up (obj)
--|   take = pick    (obj) up
--| SYNONYMS:
--|   carry, grab, hold, obtain = take


SYNONYMS
  carry, grab, hold, obtain = prendi. --@TODO: Translate IT synonims


ADD TO EVERY THING
-- @PRENDI -> @TAKE (VERB) => ADD TO EVERY THING
  VERB prendi
    CHECK mia_AT CAN prendere ---> CAN take
      ELSE SAY  azione_bloccata  OF mia_AT. --#-> "Non puoi farlo."
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "prendere."
    AND ogg <> hero
      ---> @TODO!!                                                              TRANSLATE!
      ELSE SAY  check_obj_not_hero1  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS NOT scenario
      ELSE
        IF THIS IS NOT plurale
          ---> @TODO!!                                                          TRANSLATE!
          THEN SAY  check_obj_not_scenery_sg  OF mia_AT. --#-> "$+1 is not important."
          ELSE SAY  check_obj_not_scenery_pl  OF mia_AT. --#-> "$+1 are not important."
        END IF.
    AND ogg IS spostabile
   -- ELSE SAY  check_obj_movable  OF mia_AT. --#-> "It's not possible to $v $+1."
      ELSE
      --#i6/7: "È/Sono fissat* al proprio posto"
        -- @TODO: optimize using vocale and spaghetti strings!                  OPTIMIZE!
        IF ogg IS NOT femminile
          THEN
            IF ogg IS NOT plurale
              THEN "È fissato al suo posto."
              ELSE "Sono fissati al loro posto."
            END IF.
          ELSE
            IF ogg IS NOT plurale
              THEN "È fissata al suo posto."
              ELSE "Sono fissate al loro posto."
            END IF.
        END IF.
        AND ogg IS prendibile
          ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "prendere."
    AND ogg NOT DIRECTLY IN hero
      -- i.e. the object to be taken is not carried by the hero already
      ---> @TODO!!                                                              TRANSLATE!
      ELSE SAY  check_obj_not_in_hero2  OF mia_AT.
        AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
        AND peso Of ogg < 50
          ELSE
        IF ogg IS NOT plurale
          ---> @TODO!!                                                          TRANSLATE!
          THEN SAY  check_obj_weight_sg  OF mia_AT.
          ELSE SAY  check_obj_weight_pl  OF mia_AT.
        END IF.
        DOES
      IF ogg IsA ACTOR
        ---> @TODO!!                                                            TRANSLATE!
        THEN SAY THE ogg. "would probably object to that."
      -- actors are not prohibited from being taken in the checks; this is to
      -- allow for example a dog to be picked up, or a bird to be taken out of
      -- a cage, etc.
      ELSIF ogg IsA OBJECT
        THEN IF ogg DIRECTLY IN abbigliamento
            THEN LOCATE ogg IN hero.
              ---> @TODO!!                                                      TRANSLATE!
              "You take off" SAY THE ogg. "and carry it in your hands."
              IF ogg IsA indumento
                THEN EXCLUDE ogg FROM indossati OF hero.
              END IF.
            ELSE LOCATE ogg IN hero.
              --@ "Taken." => "Pres[o|a|i|e]."
              "Pres$$" SAY ogg:vocale. "."
          END IF.
      END IF.

        -- Objects held by NPCs cannot be taken by the hero by default.
        -- The hero must *ask for* the object to obtain it.

  END VERB prendi.
END ADD TO.




-- ==============================================================


-- @PRENDI_DA -> @TAKE_FROM


-- ==============================================================

--------------------------------------------------------------------------------
-- NOTE: Alternative 'dai' prepositions must be implement separately because
--       these can't be covered by synonyms due to conflicts with verb "dai"!!!
--------------------------------------------------------------------------------

SYNTAX prendi_da = 'prendi' (ogg) 'da' (detentore)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "prendere." -- @TODO: "maneggiare"??                                      IMPROVE
  AND detentore IsA THING
    ELSE
      IF detentore IS NOT plurale
        ---> @TODO!!                                                            TRANSLATE!
        THEN SAY  illegal_parameter2_from_sg  OF mia_AT. ---> "That's not something you can take things from."
        ELSE SAY  illegal_parameter2_from_pl  OF mia_AT. ---> "Those are not something you can take things from."
      END IF.
  AND detentore IsA CONTAINER
    ELSE
      IF detentore IS NOT plurale
        ---> @TODO!!                                                            TRANSLATE!
        THEN SAY  illegal_parameter2_from_sg  OF mia_AT.
        ELSE SAY  illegal_parameter2_from_pl  OF mia_AT.
      END IF.

  prendi_da = prendi  (ogg)  'dai' (detentore).
  prendi_da = rimuovi (ogg)* 'da'  (detentore).
  prendi_da = rimuovi (ogg)* 'dai' (detentore).
  prendi_da = togli   (ogg)  'da'  (detentore).
  prendi_da = togli   (ogg)  'dai' (detentore).

--| ORIGINAL EN:
--| ============
--| SYNTAXES:
--|   take_from = 'take' (obj)  'from' (holder)
--|   take_from = remove (obj)* 'from' (holder)
--|   take_from = get    (obj)  'from' (holder)


ADD TO EVERY THING
    VERB prendi_da
        WHEN ogg
      CHECK mia_AT CAN prendere_da ---> CAN take_from
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND ogg <> hero
        ---> @TODO!!                                                            TRANSLATE!
        ELSE SAY  check_obj_not_hero1  OF mia_AT.
      AND detentore <> hero
        ---> @TODO!!                                                            TRANSLATE!
        ELSE SAY  check_obj2_not_hero1  OF mia_AT.
          AND ogg NOT DIRECTLY IN hero
          ELSE  SAY  check_obj_not_in_hero2  OF mia_AT. --#-> "You already have $+1."
      AND ogg <> detentore
        ---> @TODO!!                                                            TRANSLATE!
        ELSE SAY  check_obj_not_obj2_from  OF mia_AT.  --#-> "It doesn't make sense to $v something from itself."
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND ogg IS NOT scenario
        ELSE
          IF ogg IS NOT plurale
            ---> @TODO!!                                                        TRANSLATE!
            THEN SAY  check_obj_not_scenery_sg  OF mia_AT.
            ELSE SAY  check_obj_not_scenery_pl  OF mia_AT.
          END IF.
      AND detentore IS NOT scenario
        ELSE
          IF detentore IS NOT plurale
            ---> @TODO!!                                                        TRANSLATE!
            THEN SAY  check_obj2_not_scenery_sg  OF mia_AT.
            ELSE SAY  check_obj2_not_scenery_pl  OF mia_AT.
          END IF.
      AND ogg IS spostabile
        ---> @TODO!!                                                            TRANSLATE!
        ELSE SAY  check_obj_movable  OF mia_AT.
      AND ogg IS prendibile
            ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY  ogg1_inadatto_sg  OF mia_AT.
            ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
          END IF.
          "prendere."
      AND detentore IS raggiungibile AND detentore IS NOT distante
        ELSE
          IF detentore IS NOT raggiungibile
            THEN
              IF detentore IS NOT plurale
                THEN SAY  ogg2_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg2_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF detentore IS distante
            THEN
              IF detentore IS NOT plurale
                THEN SAY  ogg2_distante_sg  OF mia_AT.
                ELSE SAY  ogg2_distante_pl  OF mia_AT.
              END IF.
          END IF.
      AND peso Of ogg < 50
            ELSE
          IF ogg IS NOT plurale
            ---> @TODO!!                                                        TRANSLATE!
            THEN SAY  check_obj_weight_sg  OF mia_AT.
            ELSE SAY  check_obj_weight_pl  OF mia_AT.
          END IF.
          AND ogg IN detentore
        ELSE
          IF detentore IS inanimato
            THEN
              IF detentore IsA supporto
                THEN
                  IF ogg IS NOT plurale
                    ---> @TODO!!                                                TRANSLATE!
                    THEN SAY  check_obj_on_surface_sg  OF mia_AT.
                    ELSE SAY  check_obj_on_surface_pl  OF mia_AT.
                  END IF.
                ELSE
                  IF ogg IS NOT plurale
                    ---> @TODO!!                                                TRANSLATE!
                    THEN SAY  check_obj_in_cont_sg  OF mia_AT.
                    ELSE SAY  check_obj_in_cont_pl  OF mia_AT.
                  END IF.
              END IF.
            ELSE
              IF detentore IS NOT plurale
                ---> @TODO!!                                                    TRANSLATE!
                THEN SAY  check_obj_in_act_sg  OF mia_AT.
                ELSE SAY  check_obj_in_act_pl  OF mia_AT.
              END IF.
          END IF.
      DOES
        IF ogg IsA ACTOR
          ---> @TODO!!                                                          TRANSLATE!
          THEN SAY THE ogg. "would probably object to that."
            -- actors are not prohibited from being taken in the checks; this is to
            -- allow for example a dog to be picked up, or a bird to be taken out of
            -- a cage, etc.
        ELSIF ogg IsA OBJECT
          THEN
            IF detentore IsA contenitore_elencato AND detentore IS NOT aperto
              ---> @TODO!!                                                      TRANSLATE!
              THEN "You can't;" SAY THE detentore.
                  IF detentore IS NOT plurale
                    THEN "is"
                    ELSE "are"
                  END IF.
                "closed."
              ELSE
                LOCATE ogg IN hero.
                ---> @TODO!!                                                    TRANSLATE!
                "You take" SAY THE ogg. "from" SAY THE detentore. "."
            END IF.
        END IF.

          -- Objects held by NPCs cannot be taken by the hero by default.
          -- The hero must *ask for* the object to obtain it.


    END VERB prendi_da.
END ADD TO.


-- ==============================================================


-- @RIEMPI ---> @FILL


-- ==============================================================
-- # 'riempi' 'colma'

-- SYNTAX fill = fill (cont)

SYNTAX riempi = riempi (cont)
  WHERE cont IsA OBJECT
    ELSE
      IF cont IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "riempire."
  AND cont IsA CONTAINER
    ELSE
      IF cont IS NOT plurale
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "riempire."


ADD TO EVERY OBJECT
  VERB riempi
    CHECK mia_AT CAN riempire
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND cont IS esaminabile
      ELSE
        IF cont IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "riempire."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    DOES
      SAY mia_AT:specificare_CON_cosa. "riempire" SAY THE cont.
      -- "You have to say what you want to fill" SAY THE cont. "with."
    END VERB riempi.
END ADD TO.



-- ==============================================================


-- @RIEMPI CON ---> @FILL WITH


-- ==============================================================

-- SYNTAX fill_with = fill (cont) 'with' (sostanza)

SYNTAX riempi_con = riempi (cont) con (sostanza)
  WHERE cont IsA OBJECT
    ELSE
      IF cont IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "riempire."
  AND cont IsA CONTAINER
    ELSE
      IF cont IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "riempire."
  AND sostanza IsA OBJECT
    ELSE
      IF sostanza IS NOT plurale
        THEN SAY  ogg2_illegale_CON_sg  OF mia_AT.
        ELSE SAY  ogg2_illegale_CON_pl  OF mia_AT.
      END IF.
      "riempire" SAY THE cont. "."


ADD TO EVERY OBJECT
  VERB riempi_con
    WHEN cont
      CHECK mia_AT CAN riempire_con
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND cont <> sostanza
        ELSE SAY  check_obj_not_obj2_with  OF mia_AT.
      AND sostanza IS esaminabile
        ELSE
          IF sostanza IS NOT plurale
            THEN SAY  ogg2_illegale_CON_sg  OF mia_AT.
            ELSE SAY  ogg2_illegale_CON_pl  OF mia_AT.
          END IF.
          "riempire" SAY THE cont. "."
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND sostanza NOT IN cont
        --                                                                      TRANSLATE!
        ELSE SAY  check_obj_not_in_cont2  OF mia_AT.
      AND sostanza IS prendibile
        --                                                                      TRANSLATE!
        ELSE SAY  check_obj2_takeable1  OF mia_AT.
      AND cont IS raggiungibile AND cont IS NOT distante
        ELSE
          IF cont IS NOT raggiungibile
            THEN
              IF cont IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF cont IS distante
            THEN
              IF cont IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT. "."
                ELSE SAY  ogg1_distante_pl  OF mia_AT. "."
              END IF.
          END IF.
      AND sostanza IS raggiungibile AND sostanza IS NOT distante
        ELSE
          IF sostanza IS NOT raggiungibile
            THEN
              IF sostanza IS NOT plurale
                THEN SAY  ogg2_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg2_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF sostanza IS distante
            THEN
              IF sostanza IS NOT plurale
                THEN SAY  ogg2_distante_sg  OF mia_AT. "."
                ELSE SAY  ogg2_distante_pl  OF mia_AT. "."
              END IF.
          END IF.
      DOES
        -- allow the action at individual substances only!
        "Non puoi riempire" SAY THE cont. "con" SAY THE sostanza. "."
     -- "You can't fill" SAY THE cont. "with" SAY THE sostanza. "."
  END VERB riempi_con.
END ADD TO.



-- =============================================================


-- @RIFAI ---> @AGAIN (= g)


-- =============================================================
-- #NOTA: Aggiungere anche "ripeti"?

SYNTAX
  rifai = rifai.
  rifai = ancora.


SYNONYMS g = rifai.


VERB rifai
  CHECK mia_AT CAN rifare
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    "[Il comando ANCORA non è supportato in questo gioco. In alternativa, prova
    ad usare i tasti 'su' e 'giù' per navigare tra i comandi precedenti.]"
    -- "[The AGAIN command is not supported in this game. As a workaround, try using
    --  the 'up' and 'down' arrow keys to scroll through your previous commands.]"
END VERB rifai.




-- ==============================================================


-- @RIPARA ---> @FIX (mend, repair)


-- ==============================================================
-- NOTA: Ho scelto "ripara" anziché "aggiusta" come verbo base poiché il primo
--       copre un significato più preciso del secondo, dato che questo verbo è
--       legato all'attributo 'rotto'.
--       Es. "aggiusta il quadro" nel senso di "raddrizzalo" non implica che
--       esso sia rotto.

-- SYNTAX fix = fix (ogg)
-- SYNONYMS mend, repair = fix.

SYNTAX  ripara = ripara (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "riparare."

SYNONYMS aggiusta = ripara.


ADD TO EVERY OBJECT
  VERB ripara
    CHECK mia_AT CAN riparare
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS rotto
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:ogg1_non_rotto_sg.
          ELSE SAY mia_AT:ogg1_non_rotto_pl.
        END IF.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      "Sii più specifico. Come intendi ripararl$$" SAY ogg:vocale. "?"
   -- "Please be more specific. How do you intend to fix it?"
  END VERB ripara.
END ADD TO.



-- ===============================================================


-- @ROMPI ---> @BREAK (VERB + SYNTAX)


-- ===============================================================


SYNTAX rompi = rompi (ogg)
    WHERE ogg IsA OBJECT
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "rompere."


SYNONYMS distruggi, spacca, sfonda = rompi.


ADD TO EVERY OBJECT
  VERB rompi
    CHECK mia_AT CAN rompere
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "rompere."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      -- "La violenza non è la giusta risposta a questo." ---> taken from i6
      SAY   la_violenza_non_è_la_risposta  OF mia_AT.
      -- "Resorting to brute force is not the solution here."
  END VERB rompi.
END ADD TO.



-- ===============================================================


-- @ROMPI_CON ---> @BREAK WITH (VERB + SYNTAX)


-- ===============================================================


-- SYNTAX break_with = break (obj) 'with' (instr)

SYNTAX rompi_con = rompi (ogg) con (strum)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "rompere."
  AND strum IsA OBJECT
    ELSE
      IF strum IS NOT plurale
        THEN SAY  ogg2_illegale_CON_sg  OF mia_AT.
        ELSE SAY  ogg2_illegale_CON_pl  OF mia_AT.
      END IF.
      "rompere" SAY THE ogg. "."


ADD TO EVERY OBJECT
  VERB rompi_con
    WHEN ogg
      CHECK mia_AT CAN rompere_con
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND ogg IS esaminabile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY  ogg1_inadatto_sg  OF mia_AT.
            ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
          END IF.
          "rompere."
      AND strum IS esaminabile
        ELSE
          IF strum IS NOT plurale
            THEN SAY  ogg2_illegale_CON_sg  OF mia_AT.
            ELSE SAY  ogg2_illegale_CON_pl  OF mia_AT.
          END IF.
          "rompere" SAY THE ogg. "."
      AND ogg <> strum
        ---> @TODO!!                                                            TRANSLATE!
        ELSE SAY  check_obj_not_obj2_with  OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND strum IN hero
        ---> @TODO!!                                                            TRANSLATE!
        ELSE SAY  non_possiedi_ogg2  OF mia_AT.
        ---> @TODO!!                                                            TRANSLATE!
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.
      DOES
        "Tentare di rompere" SAY THE ogg. "con" SAY THE strum.
        "non risolverebbe nulla."
      -- "Trying to break" SAY THE obj. "with" SAY THE strum.
      -- "wouldn't accomplish anything."
  END VERB rompi_con.
END ADD TO.


-- ==============================================================


-- @SBLOCCA ---> @UNLOCK


-- ==============================================================


SYNTAX sblocca = sblocca (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "sbloccare."


ADD TO EVERY OBJECT
  VERB sblocca
    CHECK mia_AT CAN sbloccare
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS bloccabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY  check_obj_suitable_sg  OF mia_AT.
          ELSE SAY  check_obj_suitable_pl  OF mia_AT.
        END IF.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    AND ogg IS bloccato
      ELSE
        IF ogg IS NOT femminile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg_già_sbloccato_ms  OF mia_AT.
              ELSE SAY  ogg_già_sbloccato_mp  OF mia_AT.
            END IF.
          ELSE
            IF ogg IS NOT plurale
              THEN SAY  ogg_già_sbloccato_fs  OF mia_AT.
              ELSE SAY  ogg_già_sbloccato_fp  OF mia_AT.
            END IF.
        END IF.
    DOES
      IF chiave_abbinata OF ogg IN hero
        THEN MAKE ogg NOT bloccato.
          "(con" SAY THE chiave_abbinata OF ogg. "$$)$n"
          "Sblocchi" SAY THE ogg. "."
        ELSE "Non possiedi la chiave che sblocca" SAY THE ogg. "."
     -- ELSE "You don't have the key that unlocks" SAY THE ogg. "."
      END IF.
  END VERB sblocca.
END ADD TO.



-- =============================================================


-- @SBLOCCA ---> @UNLOCK WITH


-- =============================================================


SYNTAX sblocca_con = sblocca (ogg) con (chiave)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "sbloccare."
  AND chiave IsA OBJECT
      ELSE SAY  illegal_parameter_with_sg  OF mia_AT. "."


ADD TO EVERY OBJECT
  VERB sblocca_con
    WHEN ogg
      CHECK mia_AT CAN sbloccare_con
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND ogg IS bloccabile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY  ogg1_inadatto_sg  OF mia_AT.
            ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
          END IF.
          "sbloccare."
      AND chiave IS esaminabile
        ELSE
          IF chiave IS NOT plurale
            THEN SAY  ogg2_illegale_CON_sg  OF mia_AT.
            ELSE SAY  ogg2_illegale_CON_pl  OF mia_AT.
         END IF.
         "sbloccare" SAY THE ogg. "."
      AND chiave IN hero
          ELSE SAY  non_possiedi_ogg2  OF mia_AT.
      AND ogg <> chiave
        ELSE SAY  check_obj_not_obj2_with  OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.
      AND ogg IS bloccato
        ELSE
          IF ogg IS NOT femminile
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg_già_sbloccato_ms  OF mia_AT.
                ELSE SAY  ogg_già_sbloccato_mp  OF mia_AT.
              END IF.
            ELSE
              IF ogg IS NOT plurale
                THEN SAY  ogg_già_sbloccato_fs  OF mia_AT.
                ELSE SAY  ogg_già_sbloccato_fp  OF mia_AT.
              END IF.
          END IF.
      AND chiave = chiave_abbinata OF ogg
        ELSE SAY  check_door_matching_key  OF mia_AT.
      DOES
        MAKE ogg NOT bloccato.
        "Sblocchi" SAY THE ogg. "con" SAY THE chiave. "."
    END VERB sblocca_con.
END ADD TO.



-- ==============================================================


-- @SCAVA ---> @DIG


-- ==============================================================

-- NOTA: Dovrei aggiungere una versione globale del verbo (scava0) per poter
--       intercettare comandi come 'scava' e chiedere al giocatore cosa vorrebbe
--       scavare? Oppure è troppo?

-- SYNTAX dig = dig (ogg)

SYNTAX scava = scava (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "scavare."


ADD TO EVERY OBJECT
  VERB scava
    CHECK mia_AT CAN scavare
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
--                                                                              TRANSLATE!
    AND hero IS NOT seduto
      ELSE SAY  check_hero_not_sitting2  OF mia_AT.
--                                                                              TRANSLATE!
    AND hero IS NOT sdraiato
      ELSE SAY  check_hero_not_lying_down2  OF mia_AT.
    DOES
      "Qui non c'è nulla da scavare."
   -- "There is nothing suitable to dig here."
  END VERB scava.
END ADD TO.



-- ==============================================================


-- @SCRIVI ---> @WRITE


-- ==============================================================
-- @TODO: Handle when (txt) is and empty string: should not add anything,
--        and/or report error!

-- SYNTAX write = write (txt) 'on' (obj)
--        write = write (txt) 'in' (obj).

SYNTAX  scrivi = scrivi (txt) su (ogg)
    WHERE txt IsA STRING
      ELSE SAY  illegal_parameter_string  OF mia_AT.
    AND ogg IsA OBJECT
      ELSE SAY  illegal_parameter2_there  OF mia_AT.

        scrivi = scrivi (txt) 'in' (ogg).


ADD TO EVERY OBJECT
  VERB scrivi
        WHEN ogg
      CHECK mia_AT CAN scrivere
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND ogg IS scrivibile
--                                                                              TRANSLATE!
        ELSE SAY  check_obj_writeable  OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.

      DOES
        "Non hai nulla con cui scrivere."
      -- "You don't have anything to write with."

        -- To make it work:
        -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        -- IF text OF obj = ""
        --   THEN SET text OF obj TO txt.
        --   ELSE SET text OF obj TO text OF obj + " " + txt.
        -- END IF.
        -- "You write ""$$" SAY txt. "$$"" on" SAY THE obj. "."
        -- MAKE obj readable.
        -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    END VERB scrivi.
END ADD TO.


-- A couple of other formulations are understood but they guide the player to
-- use the correct syntax:


SYNTAX  scrivi_errore1 = scrivi su (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      -- "Per scrivere su qualcosa, usa SCRIVI ""TESTO"" SU (IN) OGGETTO.".
      SAY  per_scrivere_USA  OF mia_AT.
  -- "Please use the formulation WRITE ""TEXT"" ON (IN) OBJECT
  --  to write something."

        scrivi_errore1 = scrivi 'in' (ogg).

ADD TO EVERY OBJECT
  VERB scrivi_errore1
    DOES
      -- "Per scrivere su qualcosa, usa SCRIVI ""TESTO"" SU (IN) OGGETTO.".
      SAY  per_scrivere_USA  OF mia_AT.

  END VERB scrivi_errore1.
END ADD TO.


SYNTAX scrivi_errore2 = scrivi.

VERB scrivi_errore2
  DOES
    -- "Per scrivere su qualcosa, usa SCRIVI ""TESTO"" SU (IN) OGGETTO.".
    SAY  per_scrivere_USA  OF mia_AT.
END VERB scrivi_errore2.


SYNTAX scrivi_errore3 = scrivi (txt)
  WHERE txt IsA STRING
    ELSE
      -- "Per scrivere su qualcosa, usa SCRIVI ""TESTO"" SU (IN) OGGETTO.".
      SAY  per_scrivere_USA  OF mia_AT.


ADD TO EVERY STRING
  VERB scrivi_errore3
    DOES
      -- "Per scrivere su qualcosa, usa SCRIVI ""TESTO"" SU (IN) OGGETTO.".
      SAY  per_scrivere_USA  OF mia_AT.
  END VERB scrivi_errore3.
END ADD TO.


-- ==============================================================


-- @SIEDITI ---> @SIT


-- ==============================================================

-- SYNTAX sit = sit.

--        sit = sit 'down'.

SYNTAX siediti = siediti.

       -- siediti = siedi.

SYNONYMS siedi = siediti.


VERB siediti
  CHECK mia_AT CAN sedersi
    ELSE SAY  azione_bloccata  OF mia_AT.
  AND hero IS NOT seduto
    --                                                                          TRANSLATE
    ELSE SAY  check_hero_not_sitting4  OF mia_AT.
  DOES
    -- @TODO: Creare messaggio parziale "Al momento, non senti il bisogno di" ??
    "Non senti il bisogno di sederti in questo momento." --                     IMPROVE
 -- "You feel no urge to sit down at present."

    --| Se invece si desidera che l'azione venga portata a termine, rimpiazzare
    --| la riga precedente con il seguente codice:
    -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    -- IF hero IS sdraiato
    --   THEN "Ti tiri su a sedere."
    --     MAKE hero NOT sdraiato.
    --   ELSE "Ti siedi."
    -- END IF.
    -- MAKE hero seduto.
    -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
END VERB siediti.

-- Mentre l'eroe è 'seduto' o 'sdraiato', non gli sarà possibile eseguire certe
-- azioni poiché molti verbi della libreria prima controllano che non si trovi
-- in una di quelle posizioni. Per esempio, se l'eroe è seduto ed il giocatore
-- digita 'attacca [qualcosa]', la risposta sarà:
--
--    It will be difficult to attack anything while sitting down."              TRANSLATE
--
-- Inoltre, sarà spesso necessario rendere alcuni oggetti non raggiungibili da
-- seduto o sdraiato.


-- ==============================================================


-- @SIEDITI SU ---> @SIT_ON


-- ==============================================================

-- SYNTAX sit_on = sit 'on' (superficie)

SYNTAX siediti_su = siediti su (superficie)
  WHERE superficie IsA supporto
    ELSE
      IF superficie IS NOT plurale
        THEN SAY  ogg1_illegale_SU_sg  OF mia_AT.
        ELSE SAY  ogg1_illegale_SU_pl  OF mia_AT.
      END IF.
      "$$si sedere."


ADD TO EVERY supporto
  VERB siediti_su
    CHECK mia_AT CAN sedersi_su
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND hero IS NOT seduto
      --                                                                        TRANSLATE
      ELSE SAY  check_hero_not_sitting4  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND superficie IS raggiungibile AND superficie IS NOT distante
      ELSE
        IF superficie IS NOT raggiungibile
          THEN
            IF superficie IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF superficie IS distante
          THEN
            IF superficie IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      "Non senti il bisogno di sederti in questo momento." --                   IMPROVE
      -- "You feel no urge to sit down at present."

      --| Se invece si desidera che l'azione venga portata a termine, rimpiazzare
      --| la riga precedente con il seguente codice:
      -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      -- IF hero sdraiato
      --   THEN "Ti alzi e ti siedi" SAY superficie:prep_SU. SAY superficie. "."
      --     MAKE hero NOT sdraiato.
      --   ELSE "Ti siedi" SAY superficie:prep_SU. SAY superficie. "."
      -- END IF.
      -- MAKE hero seduto.
  END VERB siediti_su.
END ADD TO.


-- Mentre l'eroe è 'seduto' o 'sdraiato', non gli sarà possibile eseguire certe
-- azioni poiché molti verbi della libreria prima controllano che non si trovi
-- in una di quelle posizioni. Per esempio, se l'eroe è seduto ed il giocatore
-- digita 'attacca [qualcosa]', la risposta sarà:
--
--    It will be difficult to attack anything while sitting down."              TRANSLATE
--
-- Inoltre, sarà spesso necessario rendere alcuni oggetti non raggiungibili da
-- seduto o sdraiato.




-- ==============================================================


-- @SPOGLIATI -> @UNDRESS (SYNTAX + VERB)


-- ==============================================================
-- @ALTRI SINONIMI: 'denudati'

SYNTAX spogliati = spogliati.


SYNONYMS svestiti = spogliati.


VERB spogliati
  CHECK mia_AT CAN spogliarsi
    ELSE SAY  azione_bloccata  OF mia_AT.   --# "Non puoi farlo."
  AND CURRENT LOCATION IS illuminato
    ELSE SAY  imp_luogo_buio  OF mia_AT. --# "È troppo buio."
  --@TODO: modifica frase (non mi piace):
  DOES "Ripensandoci, spogliarsi qui e ora non è una buona idea."
--DOES "You don't feel like undressing is a good idea right now."

 -- To make it work, use the following lines instead:
--@TODO: sintassi 'desempio commentata (da verificare e testare)!
--| Per implementare l'azione di spogliarsi, usa:
--|--------------------------------------------------------
--| IF COUNT DIRECTLY IN abbigliamento, IsA indumento > 0
--|   THEN EMPTY abbigliamento IN hero.
--|     "Fatto. Ora non indossi più nulla."
--|     -- "You remove all the items you were wearing."
--|   ELSE "Non indossi nulla di cui potresti spogliarti."
--|   -- ELSE "You're not wearing anything you can remove."
--| END IF.
--|--------------------------------------------------------
END VERB spogliati.




-- ==============================================================


-- @SUONA ---> @PLAY


-- ==============================================================
-- SYNTAX 'play' = 'play' (ogg)

SYNTAX suona = suona (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "suonare."


ADD TO EVERY OBJECT
  VERB suona
    CHECK mia_AT CAN suonare
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY  check_obj_suitable_with_sg  OF mia_AT.
          ELSE SAY  check_obj_suitable_with_pl  OF mia_AT.
        END IF.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      IF ogg IS NOT plurale
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "suonare."
   -- IF ogg IS NOT plurale
   --   THEN "That's not"
   --   ELSE "Those are not"
   -- END IF.
   -- "something you can play."
  END VERB suona.
END ADD TO.




-- ==============================================================


-- @TAGLIA ---> @CUT


-- ==============================================================

-- NOTA: i6 Italian accetta questi sinomini di 'taglia':
--       'affetta' 'sfronda' 'sfoltisci' 'spacca' 'strappa'

-- SYNTAX cut = cut (ogg)

SYNTAX taglia = taglia (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "tagliare."


ADD TO EVERY OBJECT
  VERB taglia
    CHECK mia_AT CAN tagliare
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "tagliare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    DOES
      SAY mia_AT:specificare_CON_cosa. "tagliare" SAY THE ogg.
    -- "You need to specify what you want to cut" SAY THE ogg. "with."
    END VERB taglia.
END ADD TO.



-- ==============================================================


-- @TAGLIA CON ---> @CUT WITH


-- ==============================================================

-- SYNTAX cut_with = cut (ogg) 'with' (strum)

SYNTAX taglia_con = taglia (ogg) con (strum)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "tagliare."
  AND strum IsA OBJECT
    ELSE
      IF strum IS NOT plurale
        THEN SAY  ogg2_illegale_CON_sg  OF mia_AT.
        ELSE SAY  ogg2_illegale_CON_pl  OF mia_AT.
      END IF.
      "tagliare" SAY THE ogg. "."


ADD TO EVERY OBJECT
  VERB taglia_con
    WHEN ogg
      CHECK mia_AT CAN tagliare_con
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND ogg <> strum
        ELSE SAY  check_obj_not_obj2_with  OF mia_AT.
      AND ogg IS esaminabile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY  ogg1_inadatto_sg  OF mia_AT.
            ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
          END IF.
          "tagliare."
      AND strum IS esaminabile
        ELSE
          IF strum IS NOT plurale
            THEN SAY  ogg2_illegale_CON_sg  OF mia_AT.
            ELSE SAY  ogg2_illegale_CON_pl  OF mia_AT.
          END IF.
          "tagliare" SAY THE ogg. "."
      AND strum IN hero
        ELSE SAY  non_possiedi_ogg2  OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.
      DOES
        "Non puoi tagliare" SAY THE ogg. "con" SAY THE strum. "."
     -- "You can't cut" SAY THE ogg. "with" SAY THE strum. "."
  END VERB taglia_con.
END ADD TO.



-- ==============================================================


-- @TIRA ---> @PULL


-- ==============================================================
-- i6 accetta come sinonimo di 'tira': 'trascina'.

-- SYNTAX pull = pull (ogg)

SYNTAX tira = tira (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "tirare." --@NOTA: ambiguità con "lanciare"


ADD TO EVERY OBJECT
  VERB tira
    CHECK mia_AT CAN tirare
      ELSE SAY  azione_bloccata  OF mia_AT.
--                                                                              TRANSLATE!
    AND ogg IS spostabile
      ELSE SAY  check_obj_movable  OF mia_AT.
--                                                                              TRANSLATE!
    AND ogg <> hero
      ELSE SAY  check_obj_not_hero1  OF mia_AT.
    AND ogg IS inanimato
      -- "non credo che $+1 gradirebbe."
      ELSE SAY  mia_AT:ogg1_png_non_apprezzerebbe.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      -- "Farlo non servirebbe a nulla."
      SAY mia_AT:non_servirebbe_a_nulla.
      -- "That wouldn't accomplish anything."
  END VERB tira.
END ADD TO.



-- ==============================================================


-- @TOGLITI ---> @REMOVE


-- ==============================================================
-- NOTA: 'togliti', 'levati', 'sfilati'.

-- this verb only works with clothing (see 'classes.i').

-- SYNTAX  remove = remove (ogg)
--         remove = take 'off' (ogg).
--         remove = take (ogg) 'off'.
--         remove = doff (ogg).


SYNTAX  togliti = togliti (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg <> hero
        THEN
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY  ogg1_inadatto_sg  OF mia_AT.
            ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
          END IF.
          "indossare o toglierti."
        ELSE SAY  azione_insensata  OF mia_AT.
      END IF.
      --| NOTA: il messaggio originale inglese era:
      --|       "That's not something you can remove since you're not wearing it."
      --|       Ma non mi piaceva dato che non chiarificava che il parametro non
      --|       è un indossabile per sua natura.

        togliti = levati (ogg).
        togliti = sfilati (ogg).


ADD TO EVERY OBJECT
  VERB togliti
    CHECK mia_AT CAN togliersi_indumento
      ELSE SAY  azione_bloccata  OF mia_AT.
    DOES
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "indossare o toglierti."
  END VERB togliti.
END ADD TO.


-- ==============================================================


-- @TROVA ---> @FIND


-- ==============================================================

-- SYNTAX find = find (ogg)!
-- SYNONYMS 'locate' = find.

SYNTAX trova = trova (ogg)!
  WHERE ogg IsA THING
    ELSE
--                                                                              TRANSLATE!
      IF ogg IS NOT plurale
      -- @NOTA: Qui potrebbe volerci un messaggio ad hoc per questo verbo!
        THEN SAY  illegal_parameter_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_pl  OF mia_AT.
      END IF.


-- SYNONYMS 'locate' = trova.
-- # 'scova', 'rintraccia'???


ADD TO EVERY THING
  VERB trova
    CHECK mia_AT CAN trovare
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg <> hero
      ELSE SAY  sei_già_qui  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg NOT AT hero
      ELSE
        IF ogg IS NOT plurale
          THEN SAY  ogg1_già_qui_sg  OF mia_AT.
          ELSE SAY  ogg1_già_qui_pl  OF mia_AT.
        END IF.
    DOES
      "Dovrai trovarlo da te!"
   -- "You'll have to $v it yourself."
  END VERB trova.
END ADD TO.



-- ==============================================================


-- @UCCIDI ---> @KILL (+ murder)


-- ==============================================================

-- SYNTAX kill = kill (vittima)

SYNTAX uccidi = uccidi (vittima)
  WHERE vittima IsA ACTOR
    ELSE
      IF vittima IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "uccidere."

SYNONYMS ammazza = uccidi.

ADD TO EVERY ACTOR
  VERB uccidi
    CHECK mia_AT CAN uccidere
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND vittima IS esaminabile
      ELSE
        IF vittima IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "uccidere."
--                                                                              TRANSLATE!
    AND vittima <> hero
      ELSE SAY  check_obj_not_hero2  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    DOES "You have to state what you want to kill" SAY THE vittima. "with."
  END VERB uccidi.
END ADD TO.



-- ==============================================================


-- @UCCIDI CON ---> @KILL WITH


-- ==============================================================

-- SYNTAX kill_with = kill (vittima) 'with' (arma)

SYNTAX uccidi_con = uccidi (vittima) con (arma)
  WHERE vittima IsA ACTOR
    ELSE
      IF vittima IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "uccidere."
  AND arma IsA arma
    ELSE
      IF arma IS NOT plurale
        THEN SAY  ogg2_illegale_CON_sg  OF mia_AT.
        ELSE SAY  ogg2_illegale_CON_pl  OF mia_AT.
      END IF.
      "uccidere."


ADD TO EVERY ACTOR
  VERB uccidi_con
    WHEN vittima
      CHECK mia_AT CAN uccidere_con
        ELSE SAY  azione_bloccata  OF mia_AT.
--                                                                              TRANSLATE!
      AND vittima <> hero
        ELSE SAY  check_obj_not_hero2  OF mia_AT.
      AND arma IN hero
        ELSE SAY  non_possiedi_ogg2  OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND vittima IS NOT distante
        ELSE
          IF vittima IS NOT plurale
            THEN SAY  ogg1_distante_sg  OF mia_AT.
            ELSE SAY  ogg1_distante_pl  OF mia_AT.
          END IF.
      DOES
        "Sarebbe un atto di inutile brutalità."
     -- "That would be needlessly brutal."
  END VERB uccidi_con.
END ADD TO.


-- ==============================================================


-- @USA ---> @USE


-- ==============================================================


SYNTAX usa = usa (ogg)
  WHERE ogg IsA OBJECT
    ELSE "Solo gli oggetti sono utilizzabili!"
 -- ELSE SAY  illegal_parameter_obj  OF mia_AT.

-- @TODO: Valutare se usare un messagio my_game per qui sopra!

ADD TO EVERY OBJECT
  VERB usa
    CHECK mia_AT CAN usare
      ELSE SAY  azione_bloccata  OF mia_AT.
    DOES
   -- "Please be more specific. How do you intend to use"
      "Sii più specifico. Come vorresti usarl$$" SAY ogg:vocale. "?"
    END VERB usa.
END ADD TO.



-- ==============================================================


-- @USA CON ---> @USE WITH


-- ==============================================================


SYNTAX usa_con = usa (ogg) con (strum)
  WHERE ogg IsA OBJECT
    ELSE "Solo gli oggetti sono utilizzabili!"
 -- ELSE SAY  illegal_parameter_obj  OF mia_AT.
  AND strum IsA OBJECT
    ELSE "Solo gli oggetti sono utilizzabili!"
 -- ELSE SAY  illegal_parameter_obj  OF mia_AT.

-- @TODO: Valutare se usare un messagio my_game per qui sopra!


ADD TO EVERY OBJECT
  VERB usa_con
    WHEN ogg
      CHECK mia_AT CAN usare_con
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND ogg <> strum
        ELSE SAY  check_obj_not_obj2_with  OF mia_AT. --@TODO                    TRANSLATE!
      DOES
     -- "Please be more specific. How do you intend to use them together?"
        "Sii più specifico. Come vorresti usarl$$"
        IF ogg IS NOT femminile OR strum IS NOT femminile
          THEN "i?" --| Se anche solo uno dei due è maschile useremo il maschile,
          ELSE "e?" --| altrimenti il femminile.
        END IF.
    END VERB usa_con.
END ADD TO.





-- ==============================================================


-- @VAI A -> @GO TO


-- ==============================================================


-- SYNTAX go_to = 'to' (dest)!

SYNTAX vai_a = 'a' (dest)!
  -- Because 'go' is predefined in the parser, it can't be used in verb definitions.
  -- The player will still be able to type 'go to [dest]' successfully.
  WHERE dest IsA THING
    ELSE SAY  destinazione_invalida  OF mia_AT.


SYNONYMS vai = go.


-- SYNONYMS walk = go.
  -- here we define a synonym for the predefined parser word 'go'
  -- which is not visible in the syntax itself.
  -- Thus, you will be able to say for example both 'go to shop' and 'walk to shop'
  -- (as well as for example both 'go east' and 'walk east').


ADD TO EVERY THING
  VERB vai_a
    CHECK mia_AT CAN andare_a
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND dest <> hero
      -- @NOTA: Potrei fare a meno dell'attr. messaggio, e personalizzarlo qui!
      ELSE SAY  sei_già_qui  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND hero IS NOT seduto --                                                   TRANSLATE
      ELSE SAY  check_hero_not_sitting3  OF mia_AT.
    AND hero IS NOT sdraiato
      ELSE SAY  check_hero_not_lying_down3  OF mia_AT.
    AND dest NOT AT hero --                                                     TRANSLATE
      ELSE
        IF dest IS NOT plurale
          THEN SAY  ogg1_già_qui_sg  OF mia_AT.
          ELSE SAY  ogg1_già_qui_pl  OF mia_AT.
        END IF.
    AND dest IS raggiungibile AND dest IS NOT distante
      ELSE
        IF dest IS NOT raggiungibile
          THEN
            IF dest IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF dest IS distante
          THEN
            IF dest IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES --                                                                     TRANSLATE
      "You can't see" SAY THE dest. "anywhere nearby. You must state a
       direction where you want to go."
    END VERB vai_a.
END ADD TO.




-- ==============================================================


-- @VENDI ---> @SELL


-- ==============================================================

-- SYNTAX sell = sell (merce)

SYNTAX vendi = vendi (merce)
  WHERE merce IsA OBJECT
    ELSE
      IF merce IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "vendere."


ADD TO EVERY OBJECT
    VERB vendi
    CHECK mia_AT CAN vendere
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND merce IS esaminabile
      ELSE
        IF merce IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "vendere."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    DOES
      "Qui nessuno è interessanto ad acquistare" SAY THE merce. "."
   -- "There's nobody here who would be interested in buying" SAY THE merce. "."
    END VERB vendi.
END ADD TO.

-- Depending on the situation, it might be good to add a check whether the item is carried
-- by the hero or not, etc.



-->comandi_domande(30000)
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Verbi di Domande
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--| 
--| Questo gruppo include tutti quei comandi che non seguono la consueta forma
--| in cui il giocatore impartisce un ordine diretto al personaggio protagonista
--| (p.es. "`prendi la mela`"), presentandosi invece sotto forma di affermazioni
--| o domande poste dal protagonista stesso (p.es. "`chi sono?`", "`sì`", "`dove
--| è il tesoro?`").
--<

-->tabella_verbi_domande(1030)
--| === Tabella Comandi Domande
--| [cols="15m,25d,35d,4*^5d",options="header"]
--| |=============================================================================================================
--| | VERBO              | SINONIMI                     | SINTASSI                         |  M  | A |  O  |  B
--~ +--------------------+------------------------------+----------------------------------+-----+---+-----+-----+
--| | chi_è              |                              | chi è (png)                      |     | 1 |     | {B}
--| | chi_sono_io        |                              | chi sono                         |     | 0 |     |
--| | cosa_è             |                              | cosa è (ogg)                     |     | 1 | {X} | {B}
--| | cosa_sono_io       |                              | cosa sono                        |     | 0 |     |
--| | dove_è             |                              | dove è (ogg)                     |     | 1 | {X} | {B}
--| | dove_mi_trovo      |                              | dove sono                        |     | 0 |     |
--| | rispondi_No        |                              | no                               |     | 0 |     |
--| | rispondi_Sì        |                              | sì                               |     | 0 |     |
--| |=============================================================================================================
--<


-- ==============================================================


-- @CHI E' ---> @WHO IS


-- ==============================================================

--||~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--|| BUG: Per qualche ragione, Alan non riesce a preservare la 'è' nelle sintassi
--||      e nei sinonimi! (mentre non ci sonop problemi con le istanze ed i parametri)
--||      Tutte le altre lettere accentate funzionano (à é ì ò ù), solo 'è' causa
--||      problemi!
--||
--||      Per ora dovrò ripiegare sulla 'é', finché il problema non è risolto a
--||      monte tramite un bugfix. So che è orribile (oltre che inutile), ma è
--||      giusto per andare avanti con il lavoro.
--||~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-- SYNTAX who_is = 'who' 'is' (png)!
--        who_is = 'who' 'are' (png)!.

SYNTAX  chi_è = chi é (png)!   ---> BUG: 'è' instead of 'é'                      FIXME!
  WHERE png IsA ACTOR
    ELSE
      IF png IS NOT plurale
        THEN SAY  illegal_parameter_who_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_who_pl  OF mia_AT.
      END IF.

        chi_è = chi sono (png)!.


ADD TO EVERY ACTOR
  VERB chi_è
    CHECK mia_AT CAN domandare_chi_è
      ELSE SAY  azione_bloccata  OF mia_AT.
    DOES
      "Dovrai scoprirlo da te!"
   -- "You'll have to find it out yourself."
    END VERB chi_è.
END ADD TO.


-- ==============================================================


-- @CHI SONO ---> @WHO AM I


-- ==============================================================

-- SYNTAX who_am_i = who am i.

SYNTAX chi_sono_io = chi sono io.
       chi_sono_io = chi sono.


VERB chi_sono_io
  CHECK mia_AT CAN domandare_chi_sono_io
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    "Hai provato a esaminare te stesso? Forse ti aiuterebbe."
 -- "Maybe examining yourself might help."
END VERB chi_sono_io.




-- ==============================================================


-- @COSA E'? ---> @WHAT IS


-- ==============================================================

--||~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--|| BUG: Per qualche ragione, Alan non riesce a preservare la 'è' nelle sintassi
--||      e nei sinonimi! (mentre non ci sonop problemi con le istanze ed i parametri)
--||      Tutte le altre lettere accentate funzionano (à é ì ò ù), solo 'è' causa
--||      problemi!
--||
--||      Per ora dovrò ripiegare sulla 'é', finché il problema non è risolto a
--||      monte tramite un bugfix. So che è orribile (oltre che inutile), ma è
--||      giusto per andare avanti con il lavoro.
--||~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-- SYNTAX what_is = 'what' 'is' (ogg)!

SYNTAX  cosa_è = cosa é (ogg)!            ---> BUG: 'è' instead of 'é'           FIXME!
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        THEN SAY  illegal_parameter_what_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_what_pl  OF mia_AT.
      END IF.

        cosa_è = che cosa é (ogg)!.       ---> BUG: 'è' instead of 'é'           FIXME!
        cosa_è = 'cos''é' (ogg)!.         ---> BUG: 'è' instead of 'é'           FIXME!
        cosa_è = che 'cos''é' (ogg)!.     ---> BUG: 'è' instead of 'é'           FIXME!

        cosa_è = cosa sono (ogg)!.
        cosa_è = che cosa sono (ogg)!.



ADD TO EVERY THING
  VERB cosa_è
    CHECK mia_AT CAN domandare_cosa_è
      ELSE SAY  azione_bloccata  OF mia_AT.
    DOES
      "Dovrai scoprirlo da te!"
   -- "You'll have to find it out yourself."
    END VERB cosa_è.
END ADD TO.




-- ==============================================================


-- @COSA SONO IO? ---> @WHAT AM I


-- ==============================================================

-- SYNTAX what_am_i = 'what' am i.

SYNTAX  cosa_sono_io = cosa sono.
        cosa_sono_io = cosa sono io.
        cosa_sono_io = che sono.
        cosa_sono_io = che sono io.
        cosa_sono_io = che cosa sono.
        cosa_sono_io = che cosa sono io.


VERB cosa_sono_io
  CHECK mia_AT CAN domandare_cosa_sono_io
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    "Hai provato a esaminare te stesso? Forse ti aiuterebbe."
 -- "Maybe examining yourself might help."
END VERB cosa_sono_io.


-- ==============================================================


-- @DOVE E' ---> @WHERE IS


-- ==============================================================

--||~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--|| BUG: Per qualche ragione, Alan non riesce a preservare la 'è' nelle sintassi
--||      e nei sinonimi! (mentre non ci sonop problemi con le istanze ed i parametri)
--||      Tutte le altre lettere accentate funzionano (à é ì ò ù), solo 'è' causa
--||      problemi!
--||
--||      Per ora dovrò ripiegare sulla 'é', finché il problema non è risolto a
--||      monte tramite un bugfix. So che è orribile (oltre che inutile), ma è
--||      giusto per andare avanti con il lavoro.
--||~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


-- SYNTAX where_is = 'where' 'is' (ogg)!
--        where_is = 'where' 'are' (ogg)!.

SYNTAX  dove_è = dove é (ogg)!            ---> BUG: 'è' instead of 'é'           FIXME!
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        THEN SAY  illegal_parameter_what_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_what_pl  OF mia_AT.
      END IF.

        dove_è = 'dov''é' (ogg)!.         ---> BUG: 'è' instead of 'é'           FIXME!
        dove_è = dove sono (ogg)!.
        dove_è = dove si trova (ogg)!.
        dove_è = dove si trovano (ogg)!.


ADD TO EVERY THING
  VERB dove_è
    CHECK mia_AT CAN domandare_dove_è
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg NOT AT hero
      ELSE
        IF ogg IS NOT plurale
          THEN SAY  ogg1_già_qui_sg  OF mia_AT.
          ELSE SAY  ogg1_già_qui_pl  OF mia_AT.
        END IF.
    DOES
      "Dovrai scoprirlo da te!"
   -- "You'll have to find it out yourself."
  END VERB dove_è.
END ADD TO.




-- ==============================================================


-- @DOVE MI TROVO ---> @WHERE AM I


-- ==============================================================
-- Ha to change it because the 'i' here was conflicting with the 'i' synonym
-- for NOISE WORDS. (befor 'i' was the default syntax for "inventory", so it
-- didn't conflict because it was not a synonym but a verb and syntax).

-- SYNTAX where_am_i = 'where' am i.

SYNTAX  dove_mi_trovo = dove mi trovo.
        dove_mi_trovo = dove sono io.
        dove_mi_trovo = dove sono.


VERB dove_mi_trovo
  CHECK mia_AT CAN domandare_dove_mi_trovo
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    LOOK.
END VERB dove_mi_trovo.



-- ==============================================================


-- @RISPONDI "No" ---> @NO


-- ==============================================================

-- SYNTAX 'no' = 'no'.

SYNTAX rispondi_No = 'no'.


VERB rispondi_No
  CHECK mia_AT CAN rispondere_No
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES "Davvero?"
    -- "Really?"
END VERB rispondi_No.


-- ================================================================


-- @RISPONDI "Sì" ---> @YES


-- ================================================================

-- SYNTAX yes = yes.

SYNTAX rispondi_Sì = sì.


VERB rispondi_Sì
  CHECK mia_AT CAN rispondere_Sì
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES "Davvero?"
    -- "Really?"
END VERB rispondi_Sì.


-->verbi_non_tradotti(50100)
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Verbi da Tradurre
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================

--~ NOTA: i verbi preceduti da "--~*" sono stati già tradotti.
--~       i verbi preceduti da "--~!" sono stati eliminati.

--| .Elenco dei Verbi Non Tradotti
--| [cols="20m,30d,25d,2*^5d",options="header"]
--| |=======================================================================================================
--| | VERBO              | SINONIMI                           | SINTASSI                          | A |  O  
--~ +--------------------+------------------------------------+-----------------------------------+---+-----
--| | about              | help, info                         | about                             | 0 |
--~*| again              | G                                  | again                             | 0 |
--~*| answer             | reply                              | answer (topic)                    | 1 |
--~*| ask                | enquire, inquire, interrogate      | ask (act) about (topic)           | 2 |
--~*| ask_for            |                                    | ask (act) for (obj)               | 2 | {x}
--~*| attack             | beat, fight, hit, punch            | attack (target)                   | 1 |
--~*| attack_with        |                                    | attack (target) with (weapon)     | 2 |
--| | bite               | chew                               | bite (obj)                        | 1 | {x}
--~*| break              | destroy                            | break (obj)                       | 1 | {x}
--~*| break_with         |                                    | break (obj) with (instr)          | 2 | {x}
--~*| brief              |                                    | brief                             | 0 |
--~*| burn               |                                    | burn (obj)                        | 1 | {x}
--~*| burn_with          |                                    | burn (obj) with (instr)           | 2 | {x}
--~*| buy                | purchase                           | buy (item)                        | 1 |
--| | catch              |                                    | catch (obj)                       | 1 | {x}
--| | clean              | polish, wipe                       | clean (obj)                       | 1 | {x}
--| | climb              |                                    | climb (obj)                       | 1 | {x}
--| | climb_on           |                                    | climb on (surface)                | 1 |
--~*| climb_through      |                                    | climb through (obj)               | 1 | {x}
--~*| close              | shut                               | close (obj)                       | 1 | {x}
--~*| close_with         |                                    | close (obj) with (instr)          | 2 | {x}
--~*| consult            |                                    | consult (source) about (topic)    | 2 |
--~*| credits            | acknowledgments, author, copyright | credits                           | 0 |
--~*| cut                |                                    | cut (obj)                         | 1 | {x}
--~*| cut_with           |                                    | cut (obj) with (instr)            | 2 | {x}
--~*| dance              |                                    | dance                             | 0 |
--~*| dig                |                                    | dig (obj)                         | 1 | {x}
--| | dive               |                                    | dive                              | 0 |
--| | dive_in            |                                    | dive in (liq)                     | 1 |
--~*| drink              |                                    | drink (liq)                       | 1 |
--~*| drive              |                                    | drive (vehicle)                   | 1 |
--~*| drop               | discard, dump, reject              | drop (obj)                        | 1 | {x}
--~*| eat                |                                    | eat (food)                        | 1 |
--| | empty              |                                    | empty (obj)                       | 1 | {x}
--| | empty_in           |                                    | empty (obj) in (cont)             | 2 | {x}
--| | empty_on           |                                    | empty (obj) on (surface)          | 2 | {x}
--| | enter              |                                    | enter (obj)                       | 1 | {x}
--~*| examine            | check, inspect, observe, X         | examine (obj)                     | 1 | {x}
--| | exit               |                                    | exit (obj)                        | 1 | {x}
--~!| extinguish         | put out, quench                    | extinguish (obj)                  | 1 | {x}
--~*| fill               |                                    | fill (cont)                       | 1 |
--~*| fill_with          |                                    | fill (cont) with (substance)      | 2 |
--~*| find               | locate                             | find (obj)                        | 1 | {x}
--| | fire               |                                    | fire (weapon)                     | 1 |
--| | fire_at            |                                    | fire (weapon) at (target)         | 2 |
--~*| fix                | mend, repair                       | fix (obj)                         | 1 | {x}
--| | follow             |                                    | follow (act)                      | 1 |
--~*| free               | release                            | free (obj)                        | 1 | {x}
--| | get_up             |                                    | get up                            | 0 |
--| | get_off            |                                    | get off (obj)                     | 1 | {x}
--~*| give               |                                    | give (obj) to (recipient)         | 2 | {x}
--~*| go_to              |                                    | go to (dest)                      | 1 |
--| | hint               | hints                              | hint                              | 0 |
--~*| i                  | inv, inventory                     | inventory                         | 0 |
--| | jump               |                                    | jump                              | 0 |
--| | jump_in            |                                    | jump in (cont)                    | 1 |
--| | jump_on            |                                    | jump on (surface)                 | 1 |
--| | kick               |                                    | kick (target)                     | 1 |
--~*| kill               | murder                             | kill (victim)                     | 1 |
--~*| kill_with          |                                    | kill (victim) with (weapon)       | 2 |
--~*| kiss               | hug, embrace                       | kiss (obj)                        | 1 | {x}
--| | knock (on)         |                                    | knock on (obj)                    | 1 | {x}
--| | lie_down           |                                    | lie down                          | 0 |
--| | lie_in             |                                    | lie in (cont)                     | 1 |
--| | lie_on             |                                    | lie on (surface)                  | 1 |
--| | lift               |                                    | lift (obj)                        | 1 | {x}
--~!| light              | lit                                | light (obj)                       | 1 | {x}
--~*| listen0            |                                    | listen                            | 0 |
--~*| listen             |                                    | listen to (obj)                   | 1 | {x}
--~*| lock               |                                    | lock (obj)                        | 1 | {x}
--~*| lock_with          |                                    | lock (obj) with (key)             | 2 | {x}
--~*| look               | gaze, peek                         | look                              | 0 |
--~!| look_at            |                                    | look at (obj)                     | 1 | {x}
--~*| look_behind        |                                    | look behind (bulk)                | 1 |
--~*| look_in            |                                    | look in (cont)                    | 1 |
--~*| look_out_of        |                                    | look out of (obj)                 | 1 | {x}
--~*| look_through       |                                    | look through (bulk)               | 1 |
--~*| look_under         |                                    | look under (bulk)                 | 1 |
--~*| look_up            |                                    | look up                           | 0 |
--~*| no                 |                                    | no                                | 0 |
--~*| notify (on, off)   |                                    | notify. notify on. notify off     | 0 |
--~*| open               |                                    | open (obj)                        | 1 | {x}
--~*| open_with          |                                    | open (obj) with (instr)           | 2 | {x}
--~*| play               |                                    | play (obj)                        | 1 | {x}
--~*| play_with          |                                    | play with (obj)                   | 1 | {x}
--| | pour               | (= defined at the verb `empty`)    | pour (obj)                        | 1 | {x}
--| | pour_in            | (= defined at the verb `emtpy_in`) | pour (obj) in (cont)              | 2 | {x}
--| | pour_on            | (= defined at the verb `empty_on`) | pour (obj) on (surface)           | 2 | {x}
--~*| pray               |                                    | pray                              | 0 |
--| | pry                |                                    | pry (obj)                         | 1 | {x}
--| | pry_with           |                                    | pry (obj) with (instr)            | 2 | {x}
--~*| pull               |                                    | pull (obj)                        | 1 | {x}
--| | push               |                                    | push (obj)                        | 1 | {x}
--| | push_with          |                                    | push (obj) with (instr)           | 2 | {x}
--| | put                | lay, place                         | put (obj)                         | 1 | {x}
--| | put_against        |                                    | put (obj) against (bulk))         | 2 | {x}
--| | put_behind         |                                    | put (obj) behind (bulk)           | 2 | {x}
--~*| put_down           | (= defined at the verb `drop`)     | put down (obj)                    | 1 | {x}
--| | put_in             | insert                             | put (obj) in (cont)               | 2 | {x}
--| | put_near           |                                    | put (obj) near (bulk)             | 2 | {x}
--| | put_on             |                                    | put (obj) on (surface)            | 2 | {x}
--| | put_under          |                                    | put (obj) under (bulk)            | 2 | {x}
--~*| quit               | Q                                  | quit                              | 0 |
--~*| read               |                                    | read (obj)                        | 1 | {x}
--~*| remove             |                                    | remove (obj)                      | 1 | {x}
--~*| restart            |                                    | restart                           | 0 |
--~*| restore            |                                    | restore                           | 0 |
--| | rub                |                                    | rub (obj)                         | 1 | {x}
--~*| save               |                                    | save                              | 0 |
--~*| say                |                                    | say (topic)                       | 1 |
--~*| say_to             |                                    | say (topic) to (act)              | 2 |
--~*| score              |                                    | score                             | 0 |
--~*| scratch            |                                    | scratch (obj)                     | 1 | {x}
--~*| script             |                                    | script. script on. script off.    | 0 |
--| | search             |                                    | search (obj)                      | 1 | {x}
--~*| sell               |                                    | sell (item)                       | 1 |
--| | shake              |                                    | shake (obj)                       | 1 | {x}
--| | shoot (at)         |                                    | shoot at (target)                 | 1 |
--| | shoot_with         |                                    | shoot (target) with (weapon)      | 2 |
--| | shout              | scream, yell                       | shout                             | 0 |
--| | show               | reveal                             | show (obj) to (act)               | 2 | {x}
--~*| sing               |                                    | sing                              | 0 |
--~*| sip                |                                    | sip (liq)                         | 1 |
--~*| sit (down)         |                                    | sit.  sit down.                   | 0 |
--~*| sit_on             |                                    | sit on (surface)                  | 1 |
--~*| sleep              | rest                               | sleep                             | 0 |
--~*| smell0             |                                    | smell                             | 0 |
--~*| smell              |                                    | smell (odour)                     | 1 |
--| | squeeze            |                                    | squeeze (obj)                     | 1 | {x}
--| | stand (up)         |                                    | stand.  stand up.                 | 0 |
--| | stand_on           |                                    | stand on (surface)                | 1 |
--| | swim               |                                    | swim                              | 0 |
--| | swim_in            |                                    | swim in (liq)                     | 1 |
--~!| switch             |                                    | switch (obj)                      | 1 | {x}
--~*| switch_on          | (defined at the verb `turn_on`)    | switch on (app)                   | 1 |
--~*| switch_off         | (defined at the verb `turn_off`)   | switch off (app)                  | 1 |
--~*| take               | carry, get, grab, hold, obtain     | take (obj)                        | 1 | {x}
--~*| take_from          | remove from                        | take (obj) from (holder)          | 2 | {x}
--~*| talk               |                                    | talk                              | 0 |
--~*| talk_to            | speak                              | talk to (act)                     | 1 |
--| | taste              | lick                               | taste (obj)                       | 1 | {x}
--| | tear               | rip                                | tear (obj)                        | 1 | {x}
--~*| tell               | enlighten, inform                  | tell (act) about (topic)          | 2 |
--~*| think              |                                    | think                             | 0 |
--~*| think_about        |                                    | think about (topic)               | 1 |
--| | throw              |                                    | throw (projectile)                | 1 |
--| | throw_at           |                                    | throw (projectile) at (target)    | 2 |
--| | throw_in           |                                    | throw (projectile) in (cont)      | 2 |
--| | throw_to           |                                    | throw (projectile) to (recipient) | 2 |
--~*| tie                |                                    | tie (obj)                         | 1 | {x}
--~*| tie_to             |                                    | tie (obj) to (target)             | 2 | {x}
--~*| touch              | feel                               | touch (obj)                       | 1 | {x}
--~*| touch_with         | feel                               | touch (ogg) 'with' (strum)        | 2 | {x}
--| | turn               | rotate                             | turn (obj)                        | 1 | {x}
--~*| turn_on            |                                    | turn on (app)                     | 1 |
--~*| turn_off           |                                    | turn off (app)                    | 1 |
--~*| undress            |                                    | undress                           | 0 |
--~*| unlock             |                                    | unlock (obj)                      | 1 | {x}
--~*| unlock_with        |                                    | unlock (obj) with (key)           | 2 | {x}
--~*| use                |                                    | use (obj)                         | 1 | {x}
--~*| use_with           |                                    | use (obj) with (instr)            | 2 | {x}
--~*| verbose            |                                    | verbose                           | 0 |
--~*| wait               | Z                                  | wait                              | 0 |
--~*| wear               |                                    | wear (obj)                        | 1 | {x}
--~*| what_am_i          |                                    | what am i                         | 0 |
--~*| what_is            |                                    | what is (obj)                     | 1 | {x}
--~*| where_am_i         |                                    | where am i                        | 0 |
--~*| where_is           |                                    | where is (obj)                    | 1 | {x}
--~*| who_am_i           |                                    | who am i                          | 0 |
--~*| who_is             |                                    | who is (act)                      | 1 |
--~*| write              |                                    | write (txt) on (obj)              | 2 | {x}
--~*| yes                |                                    | yes                               | 0 |
--| |=======================================================================================================
--<


----- The verbs and commands:



--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- Comandi di Partita Non Tradotti
-------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================


-- =============================================================


-- @ABOUT


-- =============================================================
-- SYNTAX 'about' = 'about'.
-- SYNONYMS help, info = 'about'.


SYNTAX 'about' = 'about'.


SYNONYMS help, info = 'about'.


META VERB 'about'
  CHECK mia_AT CAN about
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    "[This is a text adventure, also called interactive fiction, which means that what
    goes on in the story depends on what you type at the prompt. Commands you can type
    are for example GO NORTH (or NORTH or just N), WEST, SOUTHEAST, UP, IN etc for
    moving around, but you can try many
        other things too, like TAKE LAMP, DROP EVERYTHING, EAT APPLE, EXAMINE BIRD or
    FOLLOW OLD MAN, to name just a few. LOOK (L) describes your surroundings, and
    INVENTORY (I) lists what you are carrying. You can SAVE your game and RESTORE it
    later on.
    $pType CREDITS to see information about the author and the copyright issues.
    $pTo stop playing and end the program, type QUIT.]$p"
END VERB 'about'.



-- ==============================================================


-- @HINT (+ hints)


-- ==============================================================


SYNTAX hint = hint.


SYNONYMS
  hints = hint.


META VERB hint
  CHECK mia_AT CAN hint
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    "Unfortunately hints are not available in this game."
END VERB hint.






--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- Comandi di Gioco Non Tradotti 
-------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================



-- ===============================================================


-- @BITE  (+ chew)


-- ===============================================================


SYNTAX bite = bite (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "mordere."

SYNONYMS chew = bite.


ADD TO EVERY OBJECT
  VERB bite
    CHECK mia_AT CAN bite
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS commestibile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "mordere."
    AND ogg IS prendibile
      ELSE SAY  check_obj_takeable  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS NOT distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      -- This if-statement takes care of implicit taking; i.e. if the hero
      -- doesn't have the object, (s)he will take it automatically first
      -- - unless it's carried by another actor.
      -- This same if-statement is found in numerous other verbs throughout
      -- the library, as well.

      -- >>> prendi implicito: >>>
      IF ogg NOT DIRECTLY IN hero
        THEN LOCATE ogg IN hero.
          SAY  mia_AT:riferisci_prendi_implicito.
      END IF.
      -- <<< prendi implicito <<<

      "You take a bite of" SAY THE ogg. "$$."
        IF ogg IS NOT plurale
          THEN "It tastes nothing out of the ordinary."
          ELSE "They taste nothing out of the ordinary."
        END IF.

  END VERB bite.
END ADD TO.



-- ==================================================================


-- @CATCH


-- ==================================================================


SYNTAX catch = catch (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "catturare."

ADD TO EVERY THING
  VERB catch
    CHECK mia_AT CAN catch
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "catturare."
    AND ogg <> hero
      ELSE SAY  check_obj_not_hero1  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND hero IS NOT seduto
      ELSE SAY  check_hero_not_sitting2  OF mia_AT.
    AND hero IS NOT sdraiato
      ELSE SAY  check_hero_not_lying_down2  OF mia_AT.
    DOES
      IF ogg IS NOT plurale
        THEN "That doesn't"
        ELSE "Those don't"
      END IF.

          "need to be caught."
  END VERB catch.
END ADD TO.



-- ==================================================================


-- @CLEAN ( + wipe, polish)


-- ==================================================================


SYNTAX clean = clean (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "pulire."


SYNONYMS wipe, polish = clean.

----- notice that 'rub' is defined separately

ADD TO EVERY OBJECT
  VERB clean
    CHECK mia_AT CAN pulire
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "pulire."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      -- "Farlo non servirebbe a nulla."
      SAY mia_AT:non_servirebbe_a_nulla.
      -- "Nothing would be achieved by that."
  END VERB clean.
END ADD TO.





-- ==============================================================


-- @CLIMB


-- ==============================================================


SYNTAX climb = climb (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
      --@NOTA: Qui dovrò usare un messaggio personalizzato
        THEN SAY  illegal_parameter_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_pl  OF mia_AT.
      END IF.



ADD TO EVERY OBJECT
  VERB climb
  CHECK mia_AT CAN climb
    ELSE SAY  azione_bloccata  OF mia_AT.
  AND ogg IS esaminabile
    ELSE
      IF ogg IS NOT plurale
      --------------------------------------------------------------------------
      --@NOTA: Qui dovrò usare un messaggio personalizzato, del tipo:
      --       "$+1 non [è/sono] qualcosa su cui potersi arrampicare"
      --------------------------------------------------------------------------
        THEN SAY  check_obj_suitable_sg  OF mia_AT.
        ELSE SAY  check_obj_suitable_pl  OF mia_AT.
      END IF.
  AND CURRENT LOCATION IS illuminato
    ELSE SAY  imp_luogo_buio  OF mia_AT.
  AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
  AND hero IS NOT seduto
    ELSE SAY  check_hero_not_sitting3  OF mia_AT.
  AND hero IS NOT sdraiato
    ELSE SAY  check_hero_not_lying_down3  OF mia_AT.
  DOES
    IF ogg IS NOT plurale
      THEN "That's not"
      ELSE "Those are not"
    END IF.
    "something you can climb."
  END VERB climb.
END ADD TO.



-- ==============================================================


-- @CLIMB ON


-- ==============================================================


SYNTAX climb_on = climb 'on' (superficie)
  WHERE superficie IsA supporto
    ELSE
      IF superficie IS NOT plurale
        THEN SAY  ogg1_illegale_SU_sg  OF mia_AT.
        ELSE SAY  ogg1_illegale_SU_pl  OF mia_AT.
      END IF.
      "$$si arrampicare." --                                                    CHECK VERB!


ADD TO EVERY supporto
  VERB climb_on
    CHECK mia_AT CAN climb_on
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND superficie IS raggiungibile AND superficie IS NOT distante
      ELSE
        IF superficie IS NOT raggiungibile
          THEN
            IF superficie IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF superficie IS NOT distante
          THEN
            IF superficie IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    AND hero IS NOT seduto
      ELSE SAY  check_hero_not_sitting3  OF mia_AT.
    AND hero IS NOT sdraiato
      ELSE SAY  check_hero_not_lying_down3  OF mia_AT.
    DOES
      IF superficie IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.
      "something you can climb on."
  END VERB climb_on.
END ADD TO.




-- ==============================================================


-- @DIVE


-- ==============================================================


SYNTAX dive = dive.


VERB dive
  CHECK mia_AT CAN tuffarsi
    ELSE SAY  azione_bloccata  OF mia_AT.
  AND CURRENT LOCATION IS illuminato
    ELSE SAY  imp_luogo_buio  OF mia_AT.
  AND hero IS NOT seduto
    ELSE SAY  check_hero_not_sitting3  OF mia_AT.
  AND hero IS NOT sdraiato
    ELSE SAY  check_hero_not_lying_down3  OF mia_AT.
  DOES
    "There is no water suitable for swimming here."
END VERB dive.



-- ==============================================================


-- @DIVE IN


-- ==============================================================
-- @NOTA | dive 'in' (liq) coprirebbe "tuffati in acqua" ma non
--       | "tuffati nella piscina". In teoria, servirebbe un'altra
--       | sintassi del tipo dive 'in' (recipiente) che controlli un attributo che
--       | specifica se il contenitore contiene liquidi e se è grande abbastanza
--       | per potervici tuffare. Se no, usando "piscina" come sinonimo di "acqua"
--       | per far sì che ci si possa tuffare in essa, crerebbe il problema che
--       | i verbi riguardanti i liquidi si applicherebbero anche alla piscina.
--       | Magari in realtà il problema non sussiste, ma devo tenerne conto.


SYNTAX dive_in = dive 'in' (liq)
  WHERE liq IsA liquido    -- see 'classes.i'
    ELSE
      IF liq IS NOT plurale
        THEN SAY  illegal_parameter_in_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_in_pl  OF mia_AT.
      END IF.


ADD TO EVERY OBJECT
  VERB dive_in
    CHECK mia_AT CAN tuffarsi_in
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND hero IS NOT seduto
      ELSE SAY  check_hero_not_sitting3  OF mia_AT.
    AND hero IS NOT sdraiato
      ELSE SAY  check_hero_not_lying_down3  OF mia_AT.
    -- notice that, unlike 'swim_in', it is possible to dive in a
    -- not reachable object (for example from a clifftop into a river)
    -- but not to a distant object:
    AND liq IS NOT distante
      ELSE
        IF liq IS NOT plurale
          THEN SAY  ogg1_distante_sg  OF mia_AT.
          ELSE SAY  ogg1_distante_pl  OF mia_AT.
        END IF.
    DOES
      IF liq IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.
      "something you can dive in."
  END VERB dive_in.
END ADD TO.




-- ==============================================================


-- @EMPTY   (+ POUR)


-- ==============================================================


-- The verbs 'empty' and 'pour' have similar syntaxes and behaviour here. They are, however,
-- not declared as synonyms but kept separate, as their usage doesn't overlap 100%; for example
-- you can pour liquids but not empty them.
-- That's why in 'classes.i', liquids are defined only to work with the verb 'pour',
-- and the verb 'empty' is disabled for liquids.




SYNTAX 'empty' = 'empty' (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "svuotare."
  AND ogg IsA CONTAINER
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "svuotare."

  pour = pour (ogg)
    WHERE ogg IsA OBJECT
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "versare."
    AND ogg IsA CONTAINER
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "versare."


ADD TO EVERY OBJECT
  VERB 'empty', pour
    CHECK mia_AT CAN svuotare AND mia_AT CAN versare
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS prendibile
      ELSE SAY  check_obj_takeable  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    AND ogg IS aperto
      ELSE
        IF ogg IS NOT femminile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  imp_ogg1_chiuso_ms  OF mia_AT.
              ELSE SAY  imp_ogg1_chiuso_mp  OF mia_AT.
            END IF.
          ELSE
            IF ogg IS NOT plurale
              THEN SAY  imp_ogg1_chiuso_fs  OF mia_AT.
              ELSE SAY  imp_ogg1_chiuso_fp  OF mia_AT.
            END IF.
        END IF.
    DOES

      -- >>> prendi implicito: >>>
      IF ogg NOT DIRECTLY IN hero
        THEN LOCATE ogg IN hero.
          SAY  mia_AT:riferisci_prendi_implicito.
      END IF.
      -- <<< prendi implicito <<<

      IF COUNT IsA OBJECT, DIRECTLY IN ogg = 0
        THEN "There is nothing in" SAY THE ogg. "."
        ELSE
          "You $v the contents of" SAY THE ogg.
            IF pavimento HERE
              THEN "on the floor."
              ELSE "on the ground."
            END IF.
          EMPTY ogg AT hero.
      END IF.

  END VERB 'empty'. -- + pour
END ADD TO.



-- ==============================================================


-- @EMPTY IN  (+ POUR IN)


-- ==============================================================



SYNTAX empty_in = 'empty' (ogg) 'in' (cont)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "svuotare."
  AND ogg IsA CONTAINER
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "svuotare."
  AND cont IsA OBJECT
    ELSE
      IF cont IsA ACTOR
        THEN SAY  illegal_parameter_act  OF mia_AT.
        ELSE SAY  illegal_parameter2_there  OF mia_AT.
      END IF.
  AND cont IsA CONTAINER
    ELSE SAY  illegal_parameter2_there  OF mia_AT.



pour_in = pour (ogg) 'in' (cont)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "versare."
  AND ogg IsA CONTAINER
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "versare."
  AND cont IsA OBJECT
    ELSE
      IF cont IsA ACTOR
        THEN SAY  illegal_parameter_act  OF mia_AT.
        ELSE SAY  illegal_parameter2_there  OF mia_AT.
      END IF.
  AND cont IsA CONTAINER
    ELSE SAY  illegal_parameter2_there  OF mia_AT.




ADD TO EVERY OBJECT
  VERB empty_in, pour_in
    WHEN ogg
      CHECK mia_AT CAN svuotare_in AND mia_AT CAN versare_in
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND ogg <> cont
        ELSE SAY  check_obj_not_obj2_in  OF mia_AT.
      AND ogg IS prendibile
        ELSE SAY  check_obj_takeable  OF mia_AT.
      AND cont NOT IN ogg
        ELSE SAY  check_cont_not_in_obj  OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.
      AND cont IS raggiungibile AND cont IS NOT distante
        ELSE
          IF cont IS NOT raggiungibile
            THEN
              IF cont IS NOT plurale
                THEN SAY  ogg2_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg2_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF cont IS distante
            THEN
              IF cont IS NOT plurale
                THEN SAY  ogg2_distante_sg  OF mia_AT.
                ELSE SAY  ogg2_distante_pl  OF mia_AT.
              END IF.
          END IF.
      AND ogg IN consentiti OF cont
        ELSE
          IF ogg IS NOT plurale
            THEN SAY  check_obj_allowed_in_sg  OF mia_AT.
            ELSE SAY  check_obj_allowed_in_pl  OF mia_AT.
          END IF.
      AND ogg IS aperto
        ELSE
          IF ogg IS NOT femminile
            THEN
              IF ogg IS NOT plurale
                THEN SAY  imp_ogg1_chiuso_ms  OF mia_AT.
                ELSE SAY  imp_ogg1_chiuso_mp  OF mia_AT.
              END IF.
            ELSE
              IF ogg IS NOT plurale
                THEN SAY  imp_ogg1_chiuso_fs  OF mia_AT.
                ELSE SAY  imp_ogg1_chiuso_fp  OF mia_AT.
              END IF.
          END IF.
      AND cont IS aperto
        ELSE
          IF cont IS NOT femminile
            THEN
              IF cont IS NOT plurale
                THEN SAY  imp_ogg2_chiuso_ms  OF mia_AT.
                ELSE SAY  imp_ogg2_chiuso_mp  OF mia_AT.
              END IF.
            ELSE
              IF cont IS NOT plurale
                THEN SAY  imp_ogg2_chiuso_fs  OF mia_AT.
                ELSE SAY  imp_ogg2_chiuso_fp  OF mia_AT.
              END IF.
          END IF.
      DOES

      -- >>> prendi implicito: >>>
      IF ogg NOT DIRECTLY IN hero
        THEN LOCATE ogg IN hero.
          SAY  mia_AT:riferisci_prendi_implicito.
      END IF.
      -- <<< prendi implicito <<<

      IF COUNT IsA OBJECT, DIRECTLY IN ogg = 0
        THEN "There is nothing in" SAY THE ogg. "."
        ELSE
          EMPTY ogg IN cont.
          "You $v the contents of" SAY THE ogg.
          "in" SAY THE cont. "."
      END IF.
     END VERB empty_in.
END ADD TO.



-- ==============================================================


-- @EMPTY ON  (+ POUR ON)


-- ==============================================================



SYNTAX empty_on = 'empty' (ogg) 'on' (superficie)
    WHERE ogg IsA OBJECT
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "svuotare."
    AND ogg IsA CONTAINER
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "svuotare."
    AND superficie IsA THING
      ELSE SAY  illegal_parameter2_there  OF mia_AT.
    AND superficie IsA CONTAINER
      ELSE SAY  illegal_parameter2_there  OF mia_AT.

  pour_on = pour (ogg) 'on' (superficie)
    WHERE ogg IsA OBJECT
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "versare."
    AND ogg IsA CONTAINER
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "versare."
    AND superficie IsA OBJECT
      ELSE SAY  illegal_parameter2_there  OF mia_AT.
    AND superficie IsA CONTAINER
      ELSE SAY  illegal_parameter2_there  OF mia_AT.


ADD TO EVERY THING
  VERB empty_on, pour_on
      WHEN ogg
      CHECK mia_AT CAN svuotare_su AND mia_AT CAN versare_su
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND ogg <> superficie
        ELSE SAY  check_obj_not_obj2_on  OF mia_AT.
      AND ogg IS prendibile
        ELSE SAY  check_obj_takeable  OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.
      AND superficie IS raggiungibile AND superficie IS NOT distante
        ELSE
          IF superficie IS NOT raggiungibile
            THEN
              IF superficie IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF superficie IS distante
            THEN
              IF superficie IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.
      AND ogg IS aperto
        ELSE
          IF ogg IS NOT femminile
            THEN
              IF ogg IS NOT plurale
                THEN SAY  imp_ogg1_chiuso_ms  OF mia_AT.
                ELSE SAY  imp_ogg1_chiuso_mp  OF mia_AT.
              END IF.
            ELSE
              IF ogg IS NOT plurale
                THEN SAY  imp_ogg1_chiuso_fs  OF mia_AT.
                ELSE SAY  imp_ogg1_chiuso_fp  OF mia_AT.
              END IF.
          END IF.
      DOES
        -- >>> prendi implicito: >>>
        IF ogg NOT DIRECTLY IN hero
          THEN LOCATE ogg IN hero.
            SAY  mia_AT:riferisci_prendi_implicito.
        END IF.
        -- <<< prendi implicito <<<

        IF COUNT IsA OBJECT, DIRECTLY IN ogg = 0
          THEN "There is nothing in" SAY THE ogg. "."
          ELSE
            IF superficie = pavimento OR superficie = suolo
              THEN EMPTY ogg AT hero.
              ELSE EMPTY ogg IN superficie.
            END IF.
            "You $v the contents of" SAY THE ogg.
            "on" SAY THE superficie. "."
        END IF.
  END VERB empty_on.
END ADD TO.



-- ==============================================================


-- @ENTER


-- ==============================================================


-- In the present version of ALAN, actors cannot enter containers.
-- You can simulate the hero entering a container by making the 'container'
-- a nested location and locating the hero there in the DOES ONLY
-- section of this verb under the instance at hand.


SYNTAX enter = enter (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
      -- @NOTA: Qui servirà un messaggio personalizzato a questo verbo!!
        THEN SAY  illegal_parameter_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_pl  OF mia_AT.
      END IF.



ADD TO EVERY OBJECT
  VERB enter
    CHECK mia_AT CAN entrare
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND hero IS NOT seduto
      ELSE SAY  check_hero_not_sitting2  OF mia_AT.
    AND hero IS NOT sdraiato
      ELSE SAY  check_hero_not_lying_down2  OF mia_AT.
      DOES
      IF ogg IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.
      "something you can enter."
  END VERB enter.
END ADD TO.


--- another 'enter' formulation declared to guide players to use the right formulation:


SYNTAX enter_error = enter.


VERB enter_error
  DOES "You must state what you want to enter."
END VERB enter_error.



-- ==============================================================


-- @EXIT


-- ==============================================================

-- In the present version of ALAN, actors are not allowed inside containers.

-- You can simulate the hero exiting something by modifying the default
-- response below in the DOES ONLY part of this verb under the instance at hand.


SYNTAX 'exit' = 'exit' (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
      -- @NOTA: Qui servirà un messaggio personalizzato per questo verbo!
        THEN SAY  illegal_parameter_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_pl  OF mia_AT.
      END IF.



ADD TO EVERY OBJECT
  VERB 'exit'
    CHECK mia_AT CAN 'exit'
      ELSE SAY  azione_bloccata  OF mia_AT.
    DOES
      IF ogg IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.
      "something you can exit."
    END VERB 'exit'.
END ADD TO.


--- another 'exit' formulation added to guide players to use the right formulation:


SYNTAX exit_error = 'exit'.


VERB exit_error
  DOES
    "You must state what you want to exit."
END VERB exit_error.




-- ==============================================================


-- @FIRE


-- ==============================================================


SYNTAX fire = fire (arma)
  WHERE arma IsA arma
    ELSE
      IF arma IS NOT plurale
      -- @NOTA: Meglio usare un messaggio ad hoc qui!
        THEN SAY  illegal_parameter_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_pl  OF mia_AT.
      END IF.


ADD TO EVERY arma
  VERB fire
    CHECK mia_AT CAN fire
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND arma can sparare
      ELSE
        IF arma IS NOT plurale
          THEN SAY  check_obj_suitable_sg  OF mia_AT.
          ELSE SAY  check_obj_suitable_pl  OF mia_AT.
        END IF.

  AND CURRENT LOCATION IS illuminato
    ELSE SAY  imp_luogo_buio  OF mia_AT.
  DOES
    "You fire" SAY THE arma. "into the air."
  END VERB fire.
END ADD TO.



-- ==============================================================


-- @FIRE AT


-- ==============================================================


SYNTAX fire_at = fire (arma) 'at' (bersaglio)
  WHERE arma IsA arma
    ELSE
      IF arma IS NOT plurale
      -- @NOTA: Come per 'fire', usa messaggio ad hoc per verbo!
        THEN SAY  illegal_parameter_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_pl  OF mia_AT.
      END IF.
  AND bersaglio IsA THING
    ELSE SAY  illegal_parameter_at  OF mia_AT.



ADD TO EVERY arma
  VERB fire_at
    WHEN arma
      CHECK mia_AT CAN fire_at
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND arma can sparare
        ELSE
          IF arma IS NOT plurale
            THEN SAY  check_obj_suitable_sg  OF mia_AT.
            ELSE SAY  check_obj_suitable_pl  OF mia_AT.
          END IF.
      AND bersaglio IS esaminabile
        ELSE SAY  check_obj_suitable_at  OF mia_AT.
      AND arma <> bersaglio
        ELSE SAY  check_obj_not_obj2_at  OF mia_AT.
      AND bersaglio <> hero
        ELSE SAY  check_obj_not_hero2  OF mia_AT.
      AND bersaglio IS NOT distante
        -- note that it is possible to fire at a "not reachable" bersaglio
        ELSE
          IF bersaglio IS NOT plurale
            THEN SAY  ogg1_distante_sg  OF mia_AT.
            ELSE SAY  ogg1_distante_pl  OF mia_AT.
          END IF.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      DOES
        -- "La violenza non è la giusta risposta a questo." ---> taken from i6
        SAY   la_violenza_non_è_la_risposta  OF mia_AT.
    -- "Resorting to violence is not the solution here."
  END VERB fire_at.
END ADD TO.


-- another formulation added:


SYNTAX fire_at_error = fire 'at' (bersaglio)
  WHERE bersaglio IsA THING
    ELSE
      IF bersaglio IS NOT plurale
      -- @NOTA: Qui serve messaggio ad hoc!
        THEN SAY  illegal_parameter_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_pl  OF mia_AT.
      END IF.


ADD TO EVERY THING
  VERB fire_at_error
    CHECK COUNT IsA ARMA, can sparare, DIRECTLY IN hero > 0
      ELSE SAY  check_count_weapon_in_hero  OF mia_AT.
    AND bersaglio <> hero
      ELSE SAY  check_obj_not_hero2  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    DOES
      -- "La violenza non è la giusta risposta a questo." ---> taken from i6
      SAY   la_violenza_non_è_la_risposta  OF mia_AT.
  -- "Resorting to violence is not the solution here."
  END VERB fire_at_error.
END ADD TO.




-- ==============================================================


-- @FOLLOW


-- ==============================================================


SYNTAX follow = follow (png)!
  WHERE png IsA ACTOR
    ELSE
      IF png IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "seguire."


ADD TO EVERY THING
  VERB follow
    CHECK mia_AT CAN seguire
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND png <> hero
      ELSE SAY  check_obj_not_hero1  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND png NOT AT hero
      ELSE
        IF png IS NOT plurale
          THEN SAY  ogg1_già_qui_sg  OF mia_AT.
          ELSE SAY  ogg1_già_qui_pl  OF mia_AT.
        END IF.
    AND hero IS NOT seduto
      ELSE SAY  check_hero_not_sitting2  OF mia_AT.
    AND hero IS NOT sdraiato
      ELSE SAY  check_hero_not_lying_down2  OF mia_AT.
    AND png NEAR hero
      ELSE SAY  check_act_near_hero  OF mia_AT.
    DOES
      LOCATE hero AT png.
      "You follow" SAY THE png. "."
    END VERB follow.
END ADD TO.


-- ==============================================================


------ GET OFF


-- ==============================================================


SYNTAX get_off = get off (superficie)
  WHERE superficie IsA supporto
    ELSE
      IF superficie IS NOT plurale
        THEN SAY  illegal_parameter_off_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_off_pl  OF mia_AT.
      END IF.

ADD TO EVERY supporto
  VERB get_off
    CHECK mia_AT CAN get_off
      ELSE SAY  azione_bloccata  OF mia_AT.
    DOES
      IF hero IS seduto OR hero IS sdraiato
        THEN "You get off" SAY THE superficie. "."
          MAKE hero NOT sdraiato.
          MAKE hero NOT seduto.
        ELSE "You're standing up already."
      END IF.
    END VERB get_off.
END ADD TO.


-- ==============================================================


------ GET UP


-- ==============================================================


SYNTAX get_up = get up.


VERB get_up
  CHECK mia_AT CAN get_up
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    IF hero IS seduto
      THEN "You stand up."
        MAKE hero NOT seduto.
        MAKE hero NOT sdraiato.
    ELSIF hero IS sdraiato
      THEN "You get up."
        MAKE hero NOT sdraiato.
        MAKE hero NOT seduto.
    ELSE "You're standing up already."
    END IF.
END VERB get_up.





-- ==============================================================


-- @HELP -> see ABOUT


-- ==============================================================




-- ==============================================================


-- @JUMP


-- ==============================================================


SYNTAX jump = jump.


VERB jump
  CHECK mia_AT CAN saltare
    ELSE SAY  azione_bloccata  OF mia_AT.
  AND hero IS NOT seduto
    ELSE SAY  check_hero_not_sitting1  OF mia_AT.
  AND hero IS NOT sdraiato
    ELSE SAY  check_hero_not_lying_down1  OF mia_AT.
  DOES
    "You jump on the spot, to no avail."
END VERB jump.



-- ==============================================================


-- @JUMP IN


-- ==============================================================


SYNTAX jump_in = jump 'in' (cont)
  WHERE cont IsA OBJECT
    ELSE
      IF cont IS NOT plurale
        THEN SAY  illegal_parameter_in_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_in_pl  OF mia_AT.
      END IF.
  AND cont IsA CONTAINER
    ELSE
      IF cont IS NOT plurale
        THEN SAY  illegal_parameter_in_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_in_pl  OF mia_AT.
      END IF.



ADD TO EVERY OBJECT
  VERB jump_in
    CHECK mia_AT CAN saltare_in
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND cont IS raggiungibile AND cont IS NOT distante
      ELSE
        IF cont IS NOT raggiungibile
          THEN
            IF cont IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF cont IS distante
          THEN
            IF cont IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    AND hero IS NOT seduto
      ELSE SAY  check_hero_not_sitting1  OF mia_AT.
    AND hero IS NOT sdraiato
      ELSE SAY  check_hero_not_lying_down1  OF mia_AT.
    DOES
      IF cont IS NOT plurale
        THEN "That's not something you can jump into."
        ELSE "Those are not something you can jump into."
      END IF.
    END VERB jump_in.
END ADD TO.



-- ==============================================================


-- @JUMP ON


-- ==============================================================


SYNTAX jump_on = jump 'on' (superficie)
  WHERE superficie IsA supporto
    ELSE
      IF superficie IS NOT plurale
        THEN SAY  ogg1_illegale_SU_sg  OF mia_AT.
        ELSE SAY  ogg1_illegale_SU_pl  OF mia_AT.
      END IF.
      "saltare." --                                                             CHECK VERB


ADD TO EVERY OBJECT
  VERB jump_on
    CHECK mia_AT CAN saltare_su
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND hero IS NOT seduto
      ELSE SAY  check_hero_not_sitting1  OF mia_AT.
    AND hero IS NOT sdraiato
      ELSE SAY  check_hero_not_lying_down1  OF mia_AT.
    DOES
      IF superficie IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.
      "something you can jump onto."
    END VERB jump_on.
END ADD TO.



-- =============================================================


-- @KICK


-- =============================================================


SYNTAX kick = kick (bersaglio)
  WHERE bersaglio IsA THING
    ELSE
      IF bersaglio IS NOT plurale
      -- @NOTA: Servirà messaggio ad hoc qui!
        THEN SAY  illegal_parameter_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_pl  OF mia_AT.
      END IF.


ADD TO EVERY THING
  VERB kick
    CHECK mia_AT CAN kick
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND bersaglio IS esaminabile
      ELSE
        IF bersaglio IS NOT plurale
          THEN SAY  check_obj_suitable_sg  OF mia_AT.
          ELSE SAY  check_obj_suitable_pl  OF mia_AT.
        END IF.
    AND bersaglio <> hero
      ELSE SAY  check_obj_not_hero1  OF mia_AT.
    AND bersaglio NOT IN hero
      ELSE SAY  check_obj_not_in_hero1  OF mia_AT.
    AND bersaglio NOT IN abbigliamento
      ELSE SAY  check_obj_not_in_worn2  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND bersaglio IS raggiungibile AND bersaglio IS NOT distante
      ELSE
        IF bersaglio IS NOT raggiungibile
          THEN
            IF bersaglio IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF bersaglio IS distante
          THEN
            IF bersaglio IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      -- "La violenza non è la giusta risposta a questo." ---> taken from i6
      SAY   la_violenza_non_è_la_risposta  OF mia_AT.
   -- "Resorting to brute force is not the solution here."
  END VERB kick.
END ADD TO.



-- ==============================================================


-- @KNOCK


-- ==============================================================


SYNTAX knock = knock 'on' (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
--| NOTA: Qui Ho usato il messaggio per prep_SU, come da originale, ma siccome
--|       il verbo italiano verrà usato anche per "bussa alla porta", dovrò
--|       considerare se usare invece prep_A, o se mettere dei controlli nel
--|       codice per decidire quale risposta usare. Per ora va bene così.
        THEN SAY  ogg1_illegale_SU_sg  OF mia_AT.
        ELSE SAY  ogg1_illegale_SU_pl  OF mia_AT.
      END IF.
      "bussare." --                                                             CHECK VERB

       knock = knock (ogg).


ADD TO EVERY OBJECT
  VERB knock
    CHECK mia_AT CAN bussare
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY  check_obj_suitable_on_sg  OF mia_AT.
          ELSE SAY  check_obj_suitable_on_pl  OF mia_AT.
        END IF.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      "You knock on" SAY THE ogg. "$$. Nothing happens."
  END VERB knock.
END ADD TO.


--- another 'knock' formulation added to guide players to use the right phrasing:


SYNTAX knock_error = knock.


VERB knock_error
  DOES
    "Please use the formulation KNOCK ON SOMETHING to knock on something."
END VERB knock_error.



-- ==============================================================


-- @LIE DOWN


-- ==============================================================


SYNTAX lie_down = lie 'down'.

    lie_down = lie.


VERB lie_down
  CHECK mia_AT CAN lie_down
    ELSE SAY  azione_bloccata  OF mia_AT.
  AND hero IS NOT sdraiato
    ELSE SAY  check_hero_not_lying_down4  OF mia_AT.
  DOES
    "There's no need to lie down right now."
    -- If you need this to work, insert the following lines instead of the above:
        -- DOES "You lie down."
        -- MAKE hero lying_down.
        -- MAKE hero NOT sitting_down.
END VERB lie_down.


-- When the hero is sitting or lying down, it will be impossible for her/him to
-- perform certain actions, as numerous verbs in the library have checks for this.
-- For example, if the hero is lying down and the player types 'attack [something]',
-- the response will be "It will be difficult to attack anything while
-- lying down."

-- Also, it is often essential to make certain objects NOT reachable when you are sitting
-- or lying down.



-- ==============================================================


-- @LIE IN


-- ==============================================================


SYNTAX  lie_in = lie 'in' (cont)
  WHERE cont IsA OBJECT
    ELSE
      IF cont IS NOT plurale
        THEN SAY  illegal_parameter_in_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_in_pl  OF mia_AT.
      END IF.
  AND cont IsA CONTAINER
    ELSE
      IF cont IS NOT plurale
        THEN SAY  illegal_parameter_in_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_in_pl  OF mia_AT.
      END IF.

        lie_in = lie 'down' 'in' (cont).


ADD TO EVERY OBJECT
  VERB lie_in
    CHECK mia_AT CAN lie_in
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND hero IS NOT sdraiato
      ELSE SAY  check_hero_not_lying_down4  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND cont IS raggiungibile AND cont IS NOT distante
      ELSE
        IF cont IS NOT raggiungibile
          THEN
            IF cont IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF cont IS distante
          THEN
            IF cont IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      "There's no need to lie down in" SAY THE cont. "."
      -- If you need this to work, make a nested location
      -- (for example THE in_bed IsA LOCATION AT bedroom; etc.)
      -- Remember to: MAKE hero lying_down.
      -- Presently, an actor cannot be located inside a container object.
  END VERB lie_in.
END ADD TO.


-- When the hero is sitting or lying down, it will be impossible for her/him to
-- perform certain actions, as numerous verbs in the library have checks for this.
-- For example, if the hero is lying down and the player types 'attack [something]',
-- the response will be "It will be difficult to attack anything while
-- lying down."

-- Also, it is often essential to make certain objects NOT reachable when you are sitting
-- or lying down.



-- ==============================================================


-- @LIE ON


-- ==============================================================


SYNTAX lie_on = lie 'on' (superficie)
  WHERE superficie IsA supporto
    ELSE
      IF superficie IS NOT plurale
        THEN SAY  ogg1_illegale_SU_sg  OF mia_AT.
        ELSE SAY  ogg1_illegale_SU_pl  OF mia_AT.
      END IF.
      "$$si sdraiare."

   lie_on = lie 'down' 'on' (superficie).


ADD TO EVERY OBJECT
  VERB lie_on
    CHECK mia_AT CAN lie_on
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND hero IS NOT sdraiato
      ELSE SAY  check_hero_not_lying_down4  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND superficie IS raggiungibile AND superficie IS NOT distante
      ELSE
        IF superficie IS NOT raggiungibile
          THEN
            IF superficie IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF superficie IS distante
          THEN
            IF superficie IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      "There's no need to lie down on" SAY THE superficie. "."
      -- If you need this to work, make a nested location
      -- (for example THE on_bed IsA LOCATION AT bedroom; etc.)
      -- Remember to: MAKE hero lying_down.
                -- Presently, an actor cannot be located inside a container object
      -- or on a supporter.
  END VERB lie_on.
END ADD TO.



-- When the hero is sitting or lying down, it will be impossible for her/him to
-- perform certain actions, as numerous verbs in the library have checks for this.
-- For example, if the hero is lying down and the player types 'attack [something]',
-- the response will be "It will be difficult to attack anything while
-- lying down."

-- Also, it is often essential to make certain objects NOT reachable when you are sitting
-- or lying down.



-- ==============================================================


-- @LIFT


-- ==============================================================


SYNTAX lift = lift (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "sollevare." --# alzare?


SYNONYMS raise = lift.


ADD TO EVERY OBJECT
  VERB lift
    CHECK mia_AT CAN lift
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "sollevare." --# alzare?
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg NOT IN hero
      ELSE SAY  check_obj_not_in_hero1  OF mia_AT.
    AND ogg IS spostabile
      ELSE SAY  check_obj_movable  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    AND peso OF ogg < 50
      ELSE
        IF ogg IS NOT plurale
          THEN SAY  check_obj_weight_sg  OF mia_AT.
          ELSE SAY  check_obj_weight_pl  OF mia_AT.
        END IF.
  DOES
    "That wouldn't accomplish anything."
  END VERB lift.
END ADD TO.


-- ==============================================================


-- @LOOK AT -> see EXAMINE


-- ==============================================================



-- ==============================================================


-- @POUR, POUR IN, POUR ON


-- ==============================================================



-- => SEE EMPTY, EMPTY IN, EMPTY ON




-- ==============================================================


-- @PRY


-- ==============================================================


SYNTAX pry = pry (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY  illegal_parameter_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_pl  OF mia_AT.
      END IF.


ADD TO EVERY OBJECT
  VERB pry
    CHECK mia_AT CAN pry
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY  check_obj_suitable_sg  OF mia_AT.
          ELSE SAY  check_obj_suitable_pl  OF mia_AT.
        END IF.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    DOES "You must state what you want to pry" SAY THE ogg. "with."
  END VERB pry.
END ADD TO.



-- ==============================================================


-- @PRY_WITH


-- ==============================================================


SYNTAX pry_with = pry (ogg) 'with' (strum)
    WHERE ogg IsA OBJECT
      ELSE
        IF ogg IS NOT plurale
          THEN SAY  illegal_parameter_sg  OF mia_AT.
          ELSE SAY  illegal_parameter_pl  OF mia_AT.
        END IF.
    AND strum IsA OBJECT
      ELSE
        IF strum IS NOT plurale
          THEN SAY  ogg2_illegale_CON_sg  OF mia_AT.
          ELSE SAY  ogg2_illegale_CON_pl  OF mia_AT.
        END IF.
        "(prying)" SAY THE ogg. "." -- @TODO:                                   TRANSLATE!


ADD TO EVERY OBJECT
VERB pry_with
  WHEN ogg
    CHECK mia_AT CAN pry_with
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY  check_obj_suitable_sg  OF mia_AT.
          ELSE SAY  check_obj_suitable_pl  OF mia_AT.
        END IF.
    AND strum IS esaminabile
      ELSE
        IF strum IS NOT plurale
          THEN SAY  ogg2_illegale_CON_sg  OF mia_AT.
          ELSE SAY  ogg2_illegale_CON_pl  OF mia_AT.
        END IF.
        "(prying)" SAY THE ogg. "." -- @TODO:                                   TRANSLATE!
    AND ogg <> strum
      ELSE SAY  check_obj_not_obj2_with  OF mia_AT.
    AND strum IN hero
      ELSE SAY  non_possiedi_ogg2  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES "That doesn't work."
  END VERB pry_with.
END ADD TO.




-- ==============================================================


-- @PUSH


-- ==============================================================


SYNTAX push = push (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "spingere."


SYNONYMS press = push.


ADD TO EVERY THING
  VERB push
    CHECK mia_AT CAN spingere
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS spostabile
          ELSE SAY  check_obj_movable  OF mia_AT.
    AND ogg <> hero
      ELSE SAY  check_obj_not_hero1  OF mia_AT.
    AND ogg IS inanimato
      -- "non credo che $+1 gradirebbe."
      ELSE SAY  mia_AT:ogg1_png_non_apprezzerebbe.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
          "You give" SAY THE ogg. "a little push. Nothing happens."
  END VERB push.
END ADD TO.



-- ==============================================================


-- @PUSH WITH


-- ==============================================================


SYNTAX push_with = push (ogg) 'with' (strum)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "spingere."
  AND strum IsA OBJECT
    ELSE
      IF strum IS NOT plurale
        THEN SAY  ogg2_illegale_CON_sg  OF mia_AT.
        ELSE SAY  ogg2_illegale_CON_pl  OF mia_AT.
      END IF.
      "spingere" SAY THE ogg. "."


ADD TO EVERY THING
  VERB push_with
    WHEN ogg
      CHECK mia_AT CAN spingere_con
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND ogg IS spostabile
          ELSE SAY  check_obj_movable  OF mia_AT.
      AND ogg <> strum
        ELSE SAY  check_obj_not_obj2_with  OF mia_AT.
      AND strum IS esaminabile
        ELSE
          IF strum IS NOT plurale
            THEN SAY  ogg2_illegale_CON_sg  OF mia_AT.
            ELSE SAY  ogg2_illegale_CON_pl  OF mia_AT.
          END IF.
          "spingere" SAY THE ogg. "."
      AND strum IN hero
        ELSE SAY  non_possiedi_ogg2  OF mia_AT.
      AND ogg <> hero
        ELSE SAY  check_obj_not_hero1  OF mia_AT.
      AND ogg IS inanimato
        -- "non credo che $+1 gradirebbe."
        ELSE SAY  mia_AT:ogg1_png_non_apprezzerebbe.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.
      DOES
        "That wouldn't accomplish anything."
  END VERB push_with.
END ADD TO.



-- ==============================================================


-- @PUT (+ lay, locate, place)


-- ==============================================================


SYNTAX put = put (ogg)
  WHERE ogg IsA OBJECT
    ELSE SAY  illegal_parameter_obj  OF mia_AT.


SYNONYMS lay, place = put.


ADD TO EVERY OBJECT
  VERB put
    CHECK mia_AT CAN put
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IN HERO
      ELSE SAY  non_possiedi_ogg1  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    DOES
      "You must state where you want to put"

      IF ogg IS NOT plurale
        THEN "it."
        ELSE "them."
      END IF.
  END VERB put.
END ADD TO.


-- ==============================================================


-- @PUT DOWN  (works as  'drop')


-- ==============================================================


----- The syntax for 'put down' has been declared in the 'drop' verb.




-- ==============================================================


-- @PUT IN  (+ insert)


-- ==============================================================


SYNTAX put_in = put (ogg) 'in' (cont)
  WHERE ogg IsA OBJECT
    ELSE SAY  illegal_parameter_obj  OF mia_AT.
  AND cont IsA OBJECT
    ELSE
      IF cont IsA ACTOR
        THEN SAY  illegal_parameter_act  OF mia_AT.
        ELSE SAY  illegal_parameter2_there  OF mia_AT.
      END IF.
  AND cont IsA CONTAINER
    ELSE SAY  illegal_parameter2_there  OF mia_AT.


  put_in = insert (ogg) 'in' (cont).


ADD TO EVERY OBJECT
  VERB put_in
    WHEN ogg
      CHECK mia_AT CAN put_in
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND ogg <> cont
        ELSE SAY  check_obj_not_obj2_in  OF mia_AT.
      AND ogg IS prendibile
        ELSE SAY  check_obj_takeable  OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.
      AND ogg NOT IN cont
        ELSE
          IF cont IsA supporto
            THEN SAY  check_cont_not_supporter  OF mia_AT.
          ELSE
            IF ogg IS NOT plurale -- @TODO: 'ogg' or 'cont'??                   CHECK!
              THEN SAY  check_obj_not_in_cont_sg  OF mia_AT.
              ELSE SAY  check_obj_not_in_cont_pl  OF mia_AT.
            END IF.
          END IF.
      AND cont IS raggiungibile AND cont IS NOT distante
        ELSE
          IF cont IS NOT raggiungibile
            THEN
              IF cont IS NOT plurale
                THEN SAY  ogg2_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg2_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF cont IS distante
            THEN
              IF cont IS NOT plurale
                THEN SAY  ogg2_distante_sg  OF mia_AT.
                ELSE SAY  ogg2_distante_pl  OF mia_AT.
              END IF.
          END IF.
      AND ogg IN consentiti OF cont
        ELSE
          IF ogg IS NOT plurale
            THEN SAY  check_obj_allowed_in_sg  OF mia_AT.
            ELSE SAY  check_obj_allowed_in_pl  OF mia_AT.
          END IF.
      AND cont IS aperto
        ELSE
          IF cont IS NOT femminile
            THEN
              IF cont IS NOT plurale
                THEN SAY  imp_ogg2_chiuso_ms  OF mia_AT.
                ELSE SAY  imp_ogg2_chiuso_mp  OF mia_AT.
              END IF.
            ELSE
              IF cont IS NOT plurale
                THEN SAY  imp_ogg2_chiuso_fs  OF mia_AT.
                ELSE SAY  imp_ogg2_chiuso_fp  OF mia_AT.
              END IF.
          END IF.
      DOES
        LOCATE ogg IN cont.
        "You put" SAY THE ogg. "into" SAY THE cont. "."
  END VERB put_in.
END ADD TO.




-- ==============================================================


-- @PUT AGAINST, BEHIND, NEAR, UNDER


-- ==============================================================


SYNTAX put_against = put (ogg) against (bulk)
  WHERE ogg IsA OBJECT
    ELSE SAY  illegal_parameter_obj  OF mia_AT.
  AND bulk IsA THING
    ELSE SAY  illegal_parameter2_there  OF mia_AT.



SYNTAX put_behind = put (ogg) behind (bulk)
  WHERE ogg IsA OBJECT
    ELSE SAY  illegal_parameter_obj  OF mia_AT.
  AND bulk IsA THING
    ELSE SAY  illegal_parameter2_there  OF mia_AT.



SYNTAX put_near = put (ogg) 'near' (bulk)
  WHERE ogg IsA OBJECT
    ELSE SAY  illegal_parameter_obj  OF mia_AT.
  AND bulk IsA THING
    ELSE SAY  illegal_parameter2_there  OF mia_AT.



SYNTAX put_under = put (ogg) under (bulk)
  WHERE ogg IsA OBJECT
    ELSE SAY  illegal_parameter_obj  OF mia_AT.
  AND bulk IsA THING
    ELSE SAY  illegal_parameter2_there  OF mia_AT.



ADD TO EVERY OBJECT
  VERB put_against, put_behind, put_near, put_under
    WHEN ogg
      CHECK mia_AT CAN put_against AND mia_AT CAN put_behind
      AND mia_AT CAN put_near AND mia_AT CAN put_under
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND bulk NOT IN hero
          ELSE SAY  check_obj2_not_in_hero2  OF mia_AT.
      AND ogg <> bulk
          ELSE SAY  check_obj_not_obj2_put  OF mia_AT.
      AND ogg IS prendibile
          ELSE SAY  check_obj_takeable  OF mia_AT.
      AND bulk <> hero
          ELSE SAY  check_obj2_not_hero2  OF mia_AT.
      AND CURRENT LOCATION IS illuminato
            ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.
      AND bulk IS raggiungibile AND bulk IS NOT distante
        ELSE
          IF bulk IS NOT raggiungibile
            THEN
              IF bulk IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF bulk IS distante
            THEN
              IF bulk IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.
      DOES
          "That wouldn't accomplish anything."

  END VERB put_against.
END ADD TO.



-- ==============================================================


-- @PUT_ON


-- ==============================================================


-- To use this verb in the meaning 'wear', see the file 'classes.i',
-- class 'clothing', verb 'wear'.

-- You can put things on the floor/ground (= drop them). In other
-- cases, the action will fail by default. Allow the action with
-- individual instances only.



SYNTAX put_on = put (ogg) 'on' (superficie)
  WHERE ogg IsA OBJECT
      ELSE SAY  illegal_parameter_obj  OF mia_AT.
  AND superficie IsA supporto
    ELSE SAY  illegal_parameter2_there  OF mia_AT.



ADD TO EVERY OBJECT
  VERB put_on
    WHEN ogg
      CHECK mia_AT CAN put_on
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND ogg <> superficie
        ELSE SAY  check_obj_not_obj2_on  OF mia_AT.
      AND ogg IS prendibile
        ELSE SAY  check_obj_takeable  OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND ogg NOT IN superficie
        ELSE
          IF ogg IS NOT plurale
            THEN SAY  check_obj_not_on_surface_sg  OF mia_AT.
            ELSE SAY  check_obj_not_on_surface_pl  OF mia_AT.
          END IF.
          AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.
      AND superficie IS raggiungibile AND superficie IS NOT distante
        ELSE
          IF superficie IS NOT raggiungibile
            THEN
              IF superficie IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF superficie IS distante
            THEN
              IF superficie IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.
      DOES
        -- >>> prendi implicito: >>>
        IF ogg NOT DIRECTLY IN hero
          THEN LOCATE ogg IN hero.
            SAY  mia_AT:riferisci_prendi_implicito.
        END IF.
        -- <<< prendi implicito <<<

        IF superficie = pavimento OR superficie = suolo
          THEN LOCATE ogg AT hero.
          ELSE LOCATE ogg IN superficie.
        END IF.

        "Posi" SAY THE ogg. SAY prep_SU of superficie. SAY superficie. "."
        -- "You put" SAY THE ogg. "on" SAY THE superficie. "."

    END VERB put_on.
END ADD TO.



-- ==============================================================


-- @PUT OUT  (works as -> EXTINGUISH)


-- ==============================================================


----- The syntax for 'put out' has been declared in the 'extinguish' verb.






-- ==============================================================


-- @REMOVE FROM => TAKE FROM


-- ==============================================================


----- this verb works as 'take from'





-- ==============================================================


-- @RUB (+ massage)


-- ==============================================================


SYNTAX rub = rub (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "strofinare."

SYNONYMS massage = rub.

ADD TO EVERY THING
  VERB rub
    CHECK mia_AT CAN rub
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "strofinare."
    AND ogg <> hero
      ELSE SAY  check_obj_not_hero6  OF mia_AT.
    AND ogg IS inanimato
      ELSE SAY  check_obj_inanimate2  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      -- "Farlo non servirebbe a nulla."
      SAY mia_AT:non_servirebbe_a_nulla.
      -- "Nothing would be achieved by that."
  END VERB rub.
END ADD TO.




-- ==============================================================


------ SEARCH


-- ==============================================================


SYNTAX search = search (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
      -- @NOTA: Questo messaggio potrebbe dover essere ad hoc!
        THEN SAY  illegal_parameter_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_pl  OF mia_AT.
      END IF.


ADD TO EVERY THING
  VERB search
    CHECK mia_AT CAN search
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg <> hero
      ELSE LIST hero.
    AND ogg IS inanimato
      -- "non credo che $+1 gradirebbe."
      ELSE SAY  mia_AT:ogg1_png_non_apprezzerebbe.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      "You find nothing of interest."
  END VERB search.
END ADD TO.




-- ==============================================================


-- @SHAKE


-- ==============================================================


SYNTAX shake = shake (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY  illegal_parameter_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_pl  OF mia_AT.
      END IF.



ADD TO EVERY OBJECT
  VERB shake
    CHECK mia_AT CAN shake
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY  check_obj_suitable_sg  OF mia_AT.
          ELSE SAY  check_obj_suitable_pl  OF mia_AT.
        END IF.
    AND ogg IS spostabile
      ELSE SAY  check_obj_movable  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      IF ogg IN hero
        THEN "You shake" SAY THE ogg. "cautiously in your hands. Nothing happens."
        ELSE "There is no reason to start shaking" SAY THE ogg. "."
      END IF.
  END VERB shake.
END ADD TO.



-- ==============================================================


-- @SHOOT


-- ==============================================================



SYNTAX  shoot = shoot (bersaglio)
  WHERE bersaglio IsA THING
    ELSE
      IF bersaglio IS NOT plurale
        THEN SAY  illegal_parameter_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_pl  OF mia_AT.
      END IF.

        shoot = shoot 'at' (bersaglio).


ADD TO EVERY THING
  VERB shoot
    CHECK mia_AT CAN shoot
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND bersaglio IS esaminabile
      ELSE
        IF bersaglio IS NOT plurale
          THEN SAY  check_obj_suitable_sg  OF mia_AT.
          ELSE SAY  check_obj_suitable_pl  OF mia_AT.
        END IF.
    AND bersaglio <> hero
      ELSE SAY  check_obj_not_hero2  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND bersaglio NOT IN hero
      ELSE SAY  check_obj_not_in_hero1  OF mia_AT.
    AND bersaglio NOT IN abbigliamento
      ELSE SAY  check_obj_not_in_worn2  OF mia_AT.
    AND bersaglio IS NOT distante
      ELSE
        IF bersaglio IS NOT plurale
          THEN SAY  ogg1_distante_sg  OF mia_AT.
          ELSE SAY  ogg1_distante_pl  OF mia_AT.
        END IF.
    DOES
      IF bersaglio IsA ACTOR
        THEN "That's quite uncalled-for."
          ELSE "That wouldn't accomplish anything."
      END IF.
  END VERB shoot.
END ADD TO.


-- note that it is possible to shoot (at) both not reachable and distant objects.


-- another  'shoot' formulation added, to guide players to use the right phrasing:


SYNTAX shoot_error = shoot.


VERB shoot_error
  DOES
    "You must state what you want to shoot, for example SHOOT BEAR WITH RIFLE."
END VERB shoot_error.



-- ==============================================================


-- @SHOOT WITH


-- ==============================================================


SYNTAX  shoot_with = shoot (bersaglio) 'with' (arma)
  WHERE bersaglio IsA THING
    ELSE
      IF bersaglio IS NOT plurale
        THEN SAY  illegal_parameter_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_pl  OF mia_AT.
      END IF.
      AND arma IsA arma
        ELSE
      IF arma IS NOT plurale
        THEN SAY  ogg2_illegale_CON_sg  OF mia_AT.
        ELSE SAY  ogg2_illegale_CON_pl  OF mia_AT.
      END IF.
      "sparare." -- # "a THE bersaglio"???                                      IMPROVE?

        shoot_with = shoot (arma) 'at' (bersaglio).
        -- to allow player input such as 'shoot rifle at bear'


ADD TO EVERY THING
  VERB shoot_with
    WHEN bersaglio
      CHECK mia_AT CAN shoot_with
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND bersaglio IS esaminabile
        ELSE
          IF bersaglio IS NOT plurale
            THEN SAY  check_obj_suitable_sg  OF mia_AT.
            ELSE SAY  check_obj_suitable_pl  OF mia_AT.
          END IF.
      AND bersaglio <> hero
        ELSE SAY  check_obj_not_hero2  OF mia_AT.
      AND bersaglio <> arma
        ELSE SAY  check_obj_not_obj2_with  OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND bersaglio NOT IN hero
        ELSE SAY  check_obj_not_in_hero1  OF mia_AT.
      AND bersaglio NOT IN abbigliamento
        ELSE SAY  check_obj_not_in_worn2  OF mia_AT.
      AND bersaglio IS NOT distante
        ELSE
          IF bersaglio IS NOT plurale
            THEN SAY  ogg1_distante_sg  OF mia_AT.
            ELSE SAY  ogg1_distante_pl  OF mia_AT.
          END IF.
      DOES
        IF bersaglio IsA ACTOR
          THEN "That's quite uncalled-for."
          ELSE "That wouldn't accomplish anything."
        END IF.
  END VERB shoot_with.
END ADD TO.



-- ==============================================================


-- @SHOUT


-- ==============================================================


SYNTAX shout = shout.


SYNONYMS scream, yell = shout.


VERB shout
  CHECK mia_AT CAN gridare
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    "Nothing results from your $ving."
END VERB shout.



-- ==============================================================


-- @SHOW


-- ==============================================================


SYNTAX 'show' = 'show' (ogg) 'to' (png)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "mostrare."
  AND png IsA ACTOR
    ELSE
      IF png IS NOT plurale
        THEN SAY  illegal_parameter2_to_sg  OF mia_AT.
        ELSE SAY  illegal_parameter2_to_pl  OF mia_AT.
      END IF.


SYNONYMS reveal = 'show'.


ADD TO EVERY OBJECT
  VERB 'show'
    WHEN ogg
      CHECK mia_AT CAN mostrare
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND png <> hero
        ELSE SAY  check_obj2_not_hero1  OF mia_AT.
      AND ogg IN hero
        ELSE SAY  non_possiedi_ogg1  OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND png IS NOT distante
        ELSE
          IF png IS NOT plurale
            THEN SAY  ogg2_distante_sg  OF mia_AT.
            ELSE SAY  ogg2_distante_pl  OF mia_AT.
          END IF.
      DOES
        SAY THE png.

        IF png IS NOT plurale
          THEN "is"
          ELSE "are"
        END IF.

        "not especially interested."
  END VERB 'show'.
END ADD TO.



-- ==============================================================


-- @SQUEEZE


-- ==============================================================


SYNTAX squeeze = squeeze (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY  illegal_parameter_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_pl  OF mia_AT.
      END IF.


ADD TO EVERY THING
  VERB squeeze
    CHECK mia_AT CAN squeeze
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY  check_obj_suitable_sg  OF mia_AT.
          ELSE SAY  check_obj_suitable_pl  OF mia_AT.
        END IF.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
          "Trying to squeeze" SAY THE ogg. "wouldn't accomplish anything."
  END VERB squeeze.
END ADD TO.



-- ==============================================================


-- @STAND


-- ==============================================================


SYNTAX stand = stand.

   stand = stand 'up'.


VERB stand
  CHECK mia_AT CAN stand
    ELSE SAY  azione_bloccata  OF mia_AT.
  DOES
    IF hero IS seduto OR hero IS sdraiato
      THEN "You get up."
        MAKE hero NOT seduto.
        MAKE hero NOT sdraiato.
      ELSE "You're standing up already."
    END IF.
END VERB stand.



-- ==============================================================


-- @STAND_ON


-- ==============================================================


SYNTAX  stand_on = stand 'on' (superficie)
  WHERE superficie IsA supporto
    ELSE
      IF superficie IS NOT plurale
        THEN SAY  ogg1_illegale_SU_sg  OF mia_AT.
        ELSE SAY  ogg1_illegale_SU_pl  OF mia_AT.
      END IF.
      "(stand on)." --                                                          FIX VERB!

        stand_on = get 'on' (superficie).


ADD TO EVERY supporto
  VERB stand_on
    CHECK mia_AT CAN stand_on
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND superficie IS raggiungibile AND superficie IS NOT distante
      ELSE
        IF superficie IS NOT raggiungibile
          THEN
            IF superficie IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF superficie IS distante
          THEN
            IF superficie IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      "You feel no urge to stand on" SAY THE superficie. "."
      -- or, to make it work, use the following instead of the above:
      -- "You get on" SAY THE surface. "."
      -- (Make an attribute for the hero to check that he's on the surface.
      -- It is not possible to actually locate him on the surface (unless
      -- you implement a nested location.)
      -- MAKE hero NOT sitting. MAKE hero NOT lying_down.
  END VERB stand_on.
END ADD TO.



-- ==============================================================


-- @SWIM


-- ==============================================================


SYNTAX swim = swim.


VERB swim
  CHECK mia_AT CAN nuotare
    ELSE SAY  azione_bloccata  OF mia_AT.
  AND hero IS NOT seduto
    ELSE SAY  check_hero_not_sitting1  OF mia_AT.
  AND hero IS NOT sdraiato
    ELSE SAY  check_hero_not_lying_down1  OF mia_AT.
  AND CURRENT LOCATION IS illuminato
    ELSE SAY  imp_luogo_buio  OF mia_AT.
  DOES
    "There is no water suitable for swimming here."
END VERB swim.



-- ==============================================================


-- @SWIM IN


-- ==============================================================


SYNTAX swim_in = swim 'in' (liq)
  WHERE liq IsA liquido
    ELSE
      IF liq IS NOT plurale
        THEN SAY  illegal_parameter_in_sg  OF mia_AT.
        ELSE SAY  illegal_parameter_in_pl  OF mia_AT.
      END IF.



ADD TO EVERY OBJECT
  VERB swim_in
    CHECK mia_AT CAN nuotare_in
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND hero IS NOT seduto
      ELSE SAY  check_hero_not_sitting3  OF mia_AT.
    AND hero IS NOT sdraiato
      ELSE SAY  check_hero_not_lying_down3  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND liq IS raggiungibile AND liq IS NOT distante
      ELSE
        IF liq IS NOT raggiungibile
          THEN
            IF liq IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF liq IS distante
          THEN
            IF liq IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      IF liq IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.

      "something you can swim in."
  END VERB swim_in.
END ADD TO.




-- ==============================================================


-- @TASTE   (+ lick)


-- ==============================================================


SYNTAX taste = taste (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "assaggiare."


SYNONYMS lick = taste.


ADD TO EVERY OBJECT
  VERB taste
    CHECK mia_AT CAN assaggiare
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "assaggiare."
    AND ogg IS commestibile OR ogg IS potabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "assaggiare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      "Non hai sentito nessun sapore particolare." ---> preso da i6
      -- "You taste nothing unexpected."
  END VERB taste.
END ADD TO.



-- ==============================================================


-- @TEAR  (+ rip)


-- ==============================================================


SYNTAX tear = tear (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY  ogg1_inadatto_sg  OF mia_AT.
        ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
      END IF.
      "strappare."


SYNONYMS rip = tear.


ADD TO EVERY OBJECT
  VERB tear
    CHECK mia_AT CAN tear
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT.
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
        END IF.
        "strappare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      "Trying to $v" SAY THE ogg. "would be futile."
  END VERB tear.
END ADD TO.





-- ==============================================================


-- @THROW


-- ==============================================================


SYNTAX throw = throw (proiettile)
  WHERE proiettile IsA OBJECT
    ELSE SAY  illegal_parameter_obj  OF mia_AT.



ADD TO EVERY OBJECT
  VERB throw
    CHECK mia_AT CAN throw
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND proiettile IS esaminabile
      ELSE
        IF proiettile IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY  ogg1_inadatto_sg  OF mia_AT. "lanciare."
          ELSE SAY  ogg1_inadatto_pl  OF mia_AT. "lanciare."
        END IF.
    AND proiettile IS prendibile
      ELSE SAY  check_obj_takeable  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND proiettile IS raggiungibile AND proiettile IS NOT distante
      ELSE
        IF proiettile IS NOT raggiungibile
          THEN
            IF proiettile IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF proiettile IS distante
          THEN
            IF proiettile IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.
    DOES
      -- >>> prendi implicito: >>>
      IF proiettile NOT DIRECTLY IN hero
        THEN LOCATE proiettile IN hero.
          SAY  mia_AT:riferisci_prendi_implicito.
      END IF.
      -- <<< prendi implicito <<<

      "You can't throw very far;" SAY THE proiettile.

      IF proiettile IS NOT plurale
        THEN "ends up"
        ELSE "end up"
      END IF.

      IF pavimento HERE
        THEN "on the floor"
      ELSIF suolo HERE
        THEN "on the ground"
      END IF.

      "nearby."
          LOCATE proiettile AT hero.

  END VERB throw.
END ADD TO.




-- ==============================================================


-- @THROW AT


-- ==============================================================


SYNTAX throw_at = throw (proiettile) 'at' (bersaglio)
  WHERE proiettile IsA OBJECT
    ELSE SAY  illegal_parameter_obj  OF mia_AT.
  AND bersaglio IsA THING
    ELSE SAY  illegal_parameter_at  OF mia_AT.



ADD TO EVERY OBJECT
  VERB throw_at
    WHEN proiettile
      CHECK mia_AT CAN throw_at
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND proiettile IS esaminabile
        ELSE
          IF proiettile IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY  ogg1_inadatto_sg  OF mia_AT. "lanciare."
            ELSE SAY  ogg1_inadatto_pl  OF mia_AT. "lanciare."
          END IF.
      AND proiettile IS prendibile
        ELSE SAY  check_obj_takeable  OF mia_AT.
      AND bersaglio IS esaminabile
        ELSE SAY  check_obj_suitable_at  OF mia_AT.
      AND proiettile <> bersaglio
        ELSE SAY  check_obj_not_obj2_at  OF mia_AT.
      AND bersaglio NOT IN hero
        ELSE SAY  check_obj2_not_in_hero1  OF mia_AT.
      AND bersaglio <> hero
        ELSE SAY  check_obj2_not_hero1  OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND proiettile IS raggiungibile AND proiettile IS NOT distante
        ELSE
          IF proiettile IS NOT raggiungibile
            THEN
              IF proiettile IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF proiettile IS distante
            THEN
              IF proiettile IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.
      AND bersaglio IS NOT distante
        -- it is possible to throw something at an (otherwise) not reachable bersaglio
        ELSE
          IF bersaglio IS NOT plurale
            THEN SAY  ogg2_distante_sg  OF mia_AT.
            ELSE SAY  ogg2_distante_pl  OF mia_AT.
          END IF.
      DOES
        -- >>> prendi implicito: >>>
        IF proiettile NOT DIRECTLY IN hero
          THEN LOCATE proiettile IN hero.
            SAY  mia_AT:riferisci_prendi_implicito.
        END IF.
        -- <<< prendi implicito <<<

        IF bersaglio IS inanimato
          THEN
            IF bersaglio NOT DIRECTLY AT hero
              -- for example the bersaglio is inside a box
              THEN "It wouldn't accomplish anything trying to throw
                 something at" SAY THE bersaglio. "."
              ELSE
                SAY THE proiettile.

                IF proiettile IS NOT plurale
                  THEN "bounces"
                  ELSE "bounce"
                END IF.

                "harmlessly off"

                SAY THE bersaglio. "and"

                IF proiettile IS NOT plurale
                  THEN "ends up"
                  ELSE "end up"
                END IF.

                  IF pavimento HERE
                  THEN "on the floor"
                ELSIF suolo HERE
                  THEN "on the ground"
                  END IF.

                    "nearby."
                  LOCATE proiettile AT hero.
            END IF.

          ELSE SAY THE bersaglio. "wouldn't probably appreciate that."
            -- Throwing objects at actors is not disabled in the checks
            -- as in some situations this might be desired, for example
            -- when attacking enemies.
          END IF.

  END VERB throw_at.
END ADD TO.



-- ==============================================================


-- @THROW TO


-- ==============================================================


SYNTAX throw_to = throw (proiettile) 'to' (ricevente)
    WHERE proiettile IsA OBJECT
      ELSE SAY  illegal_parameter_obj  OF mia_AT.
    AND ricevente IsA ACTOR
      ELSE SAY  illegal_parameter2_there  OF mia_AT.


ADD TO EVERY OBJECT
  VERB throw_to
    WHEN proiettile
      CHECK mia_AT CAN throw_to
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND proiettile IS esaminabile
        ELSE
          IF proiettile IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY  ogg1_inadatto_sg  OF mia_AT. "lanciare."
            ELSE SAY  ogg1_inadatto_pl  OF mia_AT. "lanciare."
          END IF.
      AND proiettile IS prendibile
        ELSE SAY  check_obj_takeable  OF mia_AT.
      AND ricevente IS esaminabile
        ELSE SAY  check_obj_suitable_at  OF mia_AT.
      AND proiettile <> ricevente
        ELSE SAY  check_obj_not_obj2_to  OF mia_AT.
      AND ricevente NOT IN hero
        ELSE SAY  check_obj2_not_in_hero1  OF mia_AT.
      AND ricevente <> hero
        ELSE SAY  check_obj2_not_hero1  OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND proiettile IS raggiungibile AND proiettile IS NOT distante
        ELSE
          IF proiettile IS NOT raggiungibile
            THEN
              IF proiettile IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF proiettile IS distante
            THEN
              IF proiettile IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.
      AND ricevente IS NOT distante
        ELSE
          IF ricevente IS NOT plurale
            THEN SAY  ogg2_distante_sg  OF mia_AT.
            ELSE SAY  ogg2_distante_pl  OF mia_AT.
          END IF.
      DOES
        -- >>> prendi implicito: >>>
        IF proiettile NOT DIRECTLY IN hero
          THEN LOCATE proiettile IN hero.
            SAY  mia_AT:riferisci_prendi_implicito.
        END IF.
        -- <<< prendi implicito <<<

        "It wouldn't accomplish anything trying to throw"
        SAY the proiettile. "to" SAY THE ricevente. "."

  END VERB throw_to.
END ADD TO.



-- ==============================================================


------ THROW IN


-- ==============================================================


SYNTAX throw_in = throw (proiettile) 'in' (cont)
  WHERE proiettile IsA OBJECT
    ELSE SAY  illegal_parameter_obj  OF mia_AT.
  AND cont IsA OBJECT
    ELSE
      IF cont IsA ACTOR
        THEN SAY  illegal_parameter_act  OF mia_AT.
        ELSE SAY  illegal_parameter2_there  OF mia_AT.
      END IF.
  AND cont IsA CONTAINER
    ELSE SAY  illegal_parameter2_there  OF mia_AT.


ADD TO EVERY OBJECT
  VERB throw_in
    WHEN proiettile
      CHECK mia_AT CAN throw_in
        ELSE SAY  azione_bloccata  OF mia_AT.
      AND proiettile IS esaminabile
        ELSE
          IF proiettile IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY  ogg1_inadatto_sg  OF mia_AT. "lanciare."
            ELSE SAY  ogg1_inadatto_pl  OF mia_AT. "lanciare."
          END IF.
      AND proiettile IS prendibile
          ELSE SAY  check_obj_takeable  OF mia_AT.
      AND cont IS esaminabile
          ELSE SAY  check_obj2_suitable_there  OF mia_AT.
      AND proiettile <> cont
        ELSE SAY  check_obj_not_obj2_in  OF mia_AT.
      AND cont <> hero
        ELSE SAY  check_obj2_not_hero1  OF mia_AT.
      AND cont NOT IN hero
        ELSE SAY  check_obj2_not_in_hero1  OF mia_AT.
      AND CURRENT LOCATION IS illuminato
          ELSE SAY  imp_luogo_buio  OF mia_AT.
      AND proiettile NOT IN cont
        ELSE
          IF proiettile IS NOT plurale
            THEN SAY  check_obj_not_in_cont_sg  OF mia_AT.
            ELSE SAY  check_obj_not_in_cont_pl  OF mia_AT.
          END IF.
      AND proiettile IS raggiungibile AND proiettile IS NOT distante
        ELSE
          IF proiettile IS NOT raggiungibile
            THEN
              IF proiettile IS NOT plurale
                THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
                ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
              END IF.
          ELSIF proiettile IS distante
            THEN
              IF proiettile IS NOT plurale
                THEN SAY  ogg1_distante_sg  OF mia_AT.
                ELSE SAY  ogg1_distante_pl  OF mia_AT.
              END IF.
          END IF.
      AND cont IS NOT distante
        ELSE
          IF cont IS NOT plurale
            THEN SAY  ogg2_distante_sg  OF mia_AT.
            ELSE SAY  ogg2_distante_pl  OF mia_AT.
          END IF.
      AND proiettile IN consentiti OF cont
        ELSE
          IF proiettile IS NOT plurale
            THEN SAY  check_obj_allowed_in_sg  OF mia_AT.
            ELSE SAY  check_obj_allowed_in_pl  OF mia_AT.
          END IF.
      AND cont IS aperto
        ELSE
          IF cont IS NOT femminile
            THEN
              IF cont IS NOT plurale
                THEN SAY  imp_ogg2_chiuso_ms  OF mia_AT.
                ELSE SAY  imp_ogg2_chiuso_mp  OF mia_AT.
              END IF.
            ELSE
              IF cont IS NOT plurale
                THEN SAY  imp_ogg2_chiuso_fs  OF mia_AT.
                ELSE SAY  imp_ogg2_chiuso_fp  OF mia_AT.
              END IF.
          END IF.
      DOES
        -- >>> prendi implicito: >>>
        IF proiettile NOT DIRECTLY IN hero
          THEN LOCATE proiettile IN hero.
            SAY  mia_AT:riferisci_prendi_implicito.
        END IF.
        -- <<< prendi implicito <<<

        "It wouldn't accomplish anything trying to throw"
        SAY THE proiettile. "into" SAY THE cont. "."

        -- Throwing objects into containers, even when these objects are
        -- in the 'allowed' set of the container, is not successful by
        -- default; this is to avoid successful outcomes for commands like
        -- 'throw plate into cupboard' etc.

  END VERB throw_in.
END ADD TO.




-- ==============================================================


-- @TURN  (+ rotate)


-- ==============================================================


SYNTAX turn = turn (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF mia_AT CAN NOT turn
        THEN
          "The verb '$v' is not in your vocabulary."
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY  ogg1_inadatto_sg  OF mia_AT.
            ELSE SAY  ogg1_inadatto_pl  OF mia_AT.
          END IF.
          "girare." --# ruotare?
      END IF.




ADD TO EVERY OBJECT
  VERB turn
    CHECK mia_AT CAN turn
      ELSE SAY  azione_bloccata  OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY  check_obj_suitable_sg  OF mia_AT.
          ELSE SAY  check_obj_suitable_pl  OF mia_AT.
        END IF.
    AND ogg IS spostabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY  check_obj_suitable_sg  OF mia_AT.
          ELSE SAY  check_obj_suitable_pl  OF mia_AT.
        END IF.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY  imp_luogo_buio  OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_non_raggiungibile_sg  OF mia_AT.
              ELSE SAY  ogg1_non_raggiungibile_pl  OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY  ogg1_distante_sg  OF mia_AT.
              ELSE SAY  ogg1_distante_pl  OF mia_AT.
            END IF.
        END IF.

    DOES
      IF ogg DIRECTLY IN hero
        THEN "You turn" SAY THE ogg. "in your hands, noticing nothing special."
        ELSE "That wouldn't accomplish anything."
      END IF.
  END VERB turn.
END ADD TO.




-->todo(50000.1)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| == TODO
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questa sezione contiene l'elenco delle cose da fare per ultimare l'adattamento
--| italiano del modulo dei verbi.
--<

-->todo_checklist(51000.1)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| === Check List Generale
--~-----------------------------------------------------------------------------
--~=============================================================================
--| 
--| Lista della spesa per le varie cosucce da fare:
--<

-->todo_checklist(.665)
--| 
--| === Check List Doxter 
--| 
--| Finisci di trasformare commenti in documentazione Doxter:
--<


-->custom_attributes(100)
--| ////
--|=============================================================================
--| Custom AsciiDoc Attributes for Doxter
--|=============================================================================
--| ////

--| // Traduzione italiana degli attributi predefiniti di Asciidoctor:
--| include::attributes-it.adoc[tag=attributes-it]

--| // Definisci sostituzione di {X} con il carattere Unicode 'heavy check mark'
--| // (U+2714), usato nelle tabelle dei verbi:
--| :X: &#x2714;
--| // E di {B} con emoji 'skull' (U+E11C):
--| :B: &#128128;
--<

---< Fine del File >---

