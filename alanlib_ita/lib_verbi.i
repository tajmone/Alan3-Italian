--= Alan StdLib Italian: Verbi
--| Tristano Ajmone <tajmone@gmail.com>
--~-----------------------------------------------------------------------------
--~ "lib_verbi.i"
--| v0.9.11-Alpha, 2018-12-08: Alan 3.0beta6
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
--| == Elenco completo dei verbi
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--|
--| Qui di seguito sono elencati tutti i verbi definiti dalla libreria, divisi
--| in tre diversi gruppi:
--| 
--| 1. <<Meta verbi di partita>>
--| 2. <<Verbi di gioco>>
--| 3. <<Verbi di domande>>
--| 
--| I verbi nelle tabelle sono elencati in ordine alfabetico, per facilitarne la
--| consultazione. Nel codice sorgente i verbi sono invece aggregati in base
--| alla loro affinità, di modo da rendere più facile consultare il codice di
--| verbi correlati tra loro.
--| 
--| ============================================================================
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
--| ============================================================================
--<

-- Le direzioni (nord, sud, su, giù, ecc.) sono definite nel modulo della libreria
-- "`lib_luoghi.i`".


-->comandi_partita(10000)
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Meta verbi di partita
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
--| === Tabella comandi di partita
--| [cols="15m,25d,35d,4*^5d",options="header"]
--| |=============================================================================================================
--| | VERBO              | SINONIMI                     | SINTASSI                         |  M  | A |  O  |  B
--~ +--------------------+------------------------------+----------------------------------+-----+---+-----+-----+
--| | abbandona_partita  | quit, Q                      | abbandona [partita]              | {X} | 0 |     |
--| | carica_partita     | restore                      | carica [partita]                 | {X} | 0 |     |
--| | istruzioni         | help, info                   | istruzioni                       | {X} | 0 |     |
--| | modalità_breve     | brief, modalità corta        | modalità breve                   | {X} | 0 |     | {B}
--| | modalità_lunga     | verbose                      | modalità lunga                   | {X} | 0 |     |
--| | notifica           |                              | notifica                         | {X} | 0 |     |
--| | notifica_off       | notifica off                 | notifica disattivata             | {X} | 0 |     |
--| | notifica_on        | notifica on                  | notifica attivata                | {X} | 0 |     |
--| | ricomincia_partita | restart                      | ricomincia [partita]             | {X} | 0 |     |
--| | ringraziamenti     | autore, copyright, credits   | ringraziamenti                   | {X} | 0 |     |
--| | salva_partita      | save                         | salva [partita]                  | {X} | 0 |     |
--| | suggerimento       | hint, aiutino                | suggerimento                     | {X} | 0 |     |
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
--| === Salvataggio e caricamento
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--|
--| Questo gruppo include i verbi che riguardano il salvataggio ed il carimento
--| della partita.
--<

-->gruppo_file                                      @CARICA_PARTITA <-- @RESTORE
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
    ELSE SAY mia_AT:azione_bloccata.
  DOES
    RESTORE.
END VERB carica_partita.


-->gruppo_file                                          @SALVA_PARTITA <-- @SAVE
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
    ELSE SAY mia_AT:azione_bloccata.
  DOES
    SAVE.
END VERB salva_partita.


-->gruppo_trascrizione(10200)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Trascrizione della partita
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| La libreria definisce tre verbi che controllano l'avvio e l'arresto della
--| trascrizione della partita in un file di log:
--| 
--| [cols="20m,30d,50d",options="header",separator=¦]
--| |===========================================================================
--| ¦ verbo            ¦ sintassi                       ¦ esito
--~ ¦------------------+--------------------------------+-----------------------
--| ¦ trascrizione     ¦ trascrizione                   ¦ Mostra istruzioni.
--| ¦ trascrizione_on  ¦ trascrizione (on|attivata)     ¦ Avvia trascrizione.
--| ¦ trascrizione_off ¦ trascrizione (off|disattivata) ¦ Termina trascrizione.
--| |===========================================================================
--| 
--| È altresì definito come sinonimo di '`trascrizione`' il termine inglese
--| '`transcript`', per facilitare l'uso della direttiva a giocatori non
--| familiarizzati con la libreria di Alan, poiché nelle avventure italiane
--| questa direttiva non viene solitamente tradotta.
--<

SYNTAX  trascrizione     = trascrizione.
        trascrizione_on  = trascrizione 'on'.
        trascrizione_on  = trascrizione attivata.
        trascrizione_off = trascrizione 'off'.
        trascrizione_off = trascrizione disattivata.

SYNONYMS 'transcript' = trascrizione.

-->gruppo_trascrizione 
--| [NOTE]
--| ========================================================================
--| I verbi per la trascrizione ricorrono all'istruzione di Alan `TRANSCRIPT`,
--| il cui comportamento può variare a seconda dell'interprete utilizzato
--| (p.es. aprire una finestra di dialogo in cui viene chiesto il nome del file,
--| oppure operare silenziosamente adottando nomi di file prestabiliti, ecc.).
--| ========================================================================


--~                                                    @TRASCRIZIONE <-- @SCRIPT
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== trascrizione
--~-----------------------------------------------------------------------------
--~=============================================================================
--| 
--| Il verbo `trascrizione` serve principalmente ad intercettare una direttiva
--| di trascrizione digitata in forma incompleta, e mostrare quindi al giocatore
--| istruzioni sull'uso sintatticco corretto delle due direttive per il controllo
--| della trascrizione.
--| 
--| Ma poiché questo comando fornisce anche istruzioni su come invocare
--| l'interprete da riga di comando ARun con le opzioni per la trascrizione
--| automatica dell'intera partita, questa direttiva ha anche un suo valore
--| intrinseco quale promemoria per il giocatore.
--<

META VERB trascrizione
  CHECK mia_AT CAN trascrivere
    ELSE SAY mia_AT:azione_bloccata.
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


-->gruppo_trascrizione                            @TRASCIZIONE ON <-- @SCRIPT ON
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== trascrizione_on
--~-----------------------------------------------------------------------------
--~=============================================================================
--| Questo verbo funge da mera interfaccia tra la direttiva del giocatore e
--| l'istruzione nativa di Alan `TRANSCRIPT ON` e, a parte verificare la presenza
--| di un blocco per quest'azione (tramite l'attributo `trascrivere_on`), la
--| gestionalità della trascrizione viene delegata interamente all'interprete:

--~ @TODO: Potrei usare un attributo per verificare se la trascrizione è        TODO!
--~        già stata attivata, così da produrre un messaggio adeguato ed
--~        evitare di invocare di nuovo TRANSCRIPT ON.

META VERB trascrizione_on
  CHECK mia_AT CAN trascrivere_on
    ELSE SAY mia_AT:azione_bloccata.
  DOES TRANSCRIPT ON. "Trascrizione avviata."
END VERB trascrizione_on.

--| [NOTE]
--| ========================================================================
--| Tentare di avviare una trascrizione già attiva non produrrà errori ma verrà
--| silenziosamente ignorato; lo stesso vale per il tentativo di arrestare una
--| transcrizione non in corso.
--| ========================================================================
--<

-- @NOTA: Dovrei usare un singolo attributo di verb restriction per entrambi    OPTIMIZE!
--        i verbi -- che senso avrebbe bloccare l'uno ma non l'altro?!


-->gruppo_trascrizione                          @TRASCIZIONE OFF <-- @SCRIPT OFF
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== trascrizione_off
--~-----------------------------------------------------------------------------
--~=============================================================================

--| Come con `trascrizione_on`, anche questo verbo funge da mera interfaccia tra
--| il giocatore e l'istruzione nativa di Alan per interrompere la trascrizione
--| in corso:

--~ @TODO: Potrei usare un attributo per verificare se la trascrizione è        TODO!
--~        davvero attivata, così da produrre un messaggio adeguato ed
--~        evitare di invocare TRANSCRIPT OFF inutilmente.

META VERB trascrizione_off
  CHECK mia_AT CAN trascrivere_off
    ELSE SAY mia_AT:azione_bloccata.
  DOES TRANSCRIPT OFF. "Trascrizione terminata."
END VERB trascrizione_off.
--<


-->gruppo_punteggio(10300)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Punteggio e notifiche
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


-->gruppo_punteggio                                        @PUNTEGGIO <-- @SCORE
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
    ELSE SAY mia_AT:azione_bloccata.
  DOES
    SCORE.
    -- Per disabilitare il punteggio, rimpiazza la riga precedente con qualcosa
    -- come:
    -- "In questa avventura non c'è punteggio."
END VERB vedi_punteggio.

-->gruppo_punteggio                                        @NOTIFICA <-- @NOTIFY
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== vedi_punteggio
--~-----------------------------------------------------------------------------
--~=============================================================================
--<

-- Questo verbo è basato sull'esempio "Score notification" di Steve Griffiths.

-- SYNTAX notify = notify.
--        notify_on = notify 'on'.
--        notify_off = notify 'off'.

-- @NOTA: i7 implementa anche i sinonimi:
--        - sipunti
--        - sipunteggio
--        - nopunti
--        - nopunteggio

SYNTAX  notifica = notifica.

-- Anche se è sufficiente usare 'notifica' per passare da uno stato all'altro,
-- questi verbi sono disponibili per le sintassi esplicite:

        notifica_on = notifica 'on'.
        notifica_on = notifica attivata.

        notifica_off = notifica 'off'.
        notifica_off = notifica disattivata.

-->gruppo_punteggio                                        @NOTIFICA <-- @NOTIFY
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
    ELSE SAY mia_AT:azione_bloccata.
  DOES
    IF mia_AT HAS notifiche_attive
      THEN MAKE mia_AT NOT notifiche_attive. SAY mia_AT:notifica_disattivata.
      ELSE MAKE mia_AT     notifiche_attive. SAY mia_AT:notifica_attivata.
    END IF.
END VERB notifica.

-->gruppo_punteggio                                  @NOTIFICA ON <-- @NOTIFY ON
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
    ELSE SAY mia_AT:azione_bloccata.
  DOES
    IF mia_AT HAS notifiche_attive
      THEN "La notifica del punteggio è già attiva."
      ELSE MAKE mia_AT notifiche_attive. SAY mia_AT:notifica_attivata.
    END IF.
END VERB notifica_on.

-->gruppo_punteggio                                @NOTIFICA OFF <-- @NOTIFY OFF
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
    ELSE SAY mia_AT:azione_bloccata.
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
  IF mia_AT:ultimo_punteggio < SCORE
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

      SET mia_AT:ultimo_punteggio TO SCORE.
  END IF.
  -- Ripeti questo evento al prossimo turno:
  SCHEDULE controlla_punteggio AT hero AFTER 1.
END EVENT.


-->gruppo_verbosity(10400)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Descrizioni brevi e lunghe
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| La libreria offre due direttive per controllare la '`verbosità`' delle
--| descrizioni dei luoghi durante il gioco:
--| 
--| [cols="20m,30d,50d",options="header",separator=¦]
--| |===========================================================================
--| ¦ verbo          ¦ sintassi               ¦ esito
--~ ¦----------------+------------------------+---------------------------------
--| ¦ modalità_breve ¦ modalità (breve|corta) ¦ Nascondi descrizioni già lette.
--| ¦ modalità_lunga ¦ modalità lunga         ¦ Mostra sempre le descrizioni.
--| |===========================================================================
--| 
--| Sono disponibili anche le sintassi alternative inglesi `brief` e `verbose`,
--| per facilitare l'uso a giocatori abituati ad altri sistemi di IF.
--| 
--| [WARNING]
--| ============================================================================
--| Allo stato attuale la modalità breve non funziona a causa degli attributi
--| `visitato` e `descritto` che la libreria definisce su ogni `location`.
--| Siccome la libreria aggiorna questi attributi ad ogni visita o descrizione
--| del luogo, Alan resetta il contatore interno utilizzato per onorare `VISITS`,
--| poiché i cambiamenti agli attributi del luogo hanno la precedenza su `VISITS`.
--| 
--| In attesa di una possibile soluzione al problema, questi verbi restano nella
--| libreria, ma verranno rimossi qualora non se ne dovesse trovare una.
--| Per maggiori informazioni, vedi:
--| 
--| * https://github.com/AnssiR66/AlanStdLib/issues/32
--| ============================================================================
--<

-->gruppo_verbosity                                   @MODALITÀ BREVE <-- @BRIEF
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== modalità_breve
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `modalità_breve`.
--<

-- Use "Visits 0." or "Visits 1000." in the START section if you want
-- the game to start in verbose or brief mode. (By default,
-- all games start in the verbose mode.)


SYNTAX  modalità_breve = modalità breve.
        modalità_breve = modalità corta.
        modalità_breve = brief.


META VERB modalità_breve
  CHECK mia_AT CAN modalità_breve
    ELSE SAY mia_AT:azione_bloccata.
  DOES
    VISITS 1000.
    -- "Brief mode is now on. Location descriptions will only be shown
    -- the first time you visit."

    "Il gioco è ora in modalità" STYLE EMPHASIZED. "breve" STYLE NORMAL. ", le
    descrizioni dei luoghi già visitati non saranno più mostrate."
END VERB modalità_breve.

-->gruppo_verbosity                                 @MODALITÀ LUNGA <-- @VERBOSE
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
    ELSE SAY mia_AT:azione_bloccata.
  DOES
    VISITS 0.
    -- "Verbose mode is now on. Location descriptions will be
    -- always shown in full."

    "Il gioco è ora in modalità" STYLE EMPHASIZED. "lunga" STYLE NORMAL. ", le
    descrizioni dei luoghi saranno mostrate sempre (anche se già visitati)."
END VERB modalità_lunga.


-->gruppo_info(10500)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Istruzioni, info e aiuto
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i meta verbi per accedere a informazioni sul gioco,
--| aiuti, ecc.:
--| 
--| * `istruzioni`
--| * `ringraziamenti`
--| 
--| Verbi di questo gruppo non ancora tradotti:
--| 
--| * `hint`
--<


-->gruppo_info                                            @ISTRUZIONI <-- @ABOUT
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== istruzioni
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `istruzioni`.
--<

-- SYNTAX 'about' = 'about'.
-- SYNONYMS help, info = 'about'.

-- @NOTA: istruzioni, info, (ma 'aiuto' lo terrei per hint).

SYNTAX istruzioni = istruzioni.


SYNONYMS help, info = istruzioni.

-- @TODO: Il testo di aiuto dovrei spostarlo in un attributo in messaggi,       TODO!
--        cosicché ogni autore possa personalizzarlo senza dover modificare il
--        sorgente della libreria!

META VERB istruzioni
  CHECK mia_AT CAN mostrare_istruzioni
    ELSE SAY mia_AT:azione_bloccata.
  DOES
 
    "Questa è un'avventura testuale, anche nota come" STYLE EMPHASIZED.
    "interactive fiction" STYLE NORMAL. "(IF). Nel gioco interpreti il ruolo del
     personaggio principale, e l'esito della storia dipenderà dalla tue scelte.
     Per interagire con l'ambiente dovrai impartire dei comandi al tuo personaggio
     digitandoli con la tastiera usando la forma imperativa VERBO + OGGETTO
     (PRENDI MELA, MANGIA LA MELA, ecc.). Per spostarti nel mondo dell'avventura
     usa le direzioni cardinali (NORD, SUD, NORDOVEST, SOPRA, SOTTO, ecc.).

     $pPer osservare l'ambiente digita GUARDA, ti verrà mostrata una descrizione
     del luogo in cui ti trovi e degli oggetti e personaggi che ti circondano.
     Esaminare l'ambiente e gli oggetti è importante al fine di trovare inidizi
     utili a procedere con la storia. Oltre alla descrizione del luogo, anche i
     singoli oggetti e personaggi possono essere esaminati per ottenere una loro
     descrizione dettagliata (ESAMINA IL MOBILE).

     $pEsplorare attivamente l'ambiente (ISPEZIONA L'ARMADIO, GUARDA SOTTO IL
     LETTO, GUARDA DIETRO IL MOBILE, ecc.) può rivelare nuovi indizi o oggetti
     utili a sbloccare situazioni di stallo (trovare una chiave, un passaggio
     segreto, ecc.).

     $pOgni avventura è diversa, così come diversi sono i verbi/comandi disponibili
     in esse. Sii creativo e prova a usare i comandi che ti vengono in mente per
     conseguire i tuoi obiettivi, e leggi attentamente le risposte che ottieni
     dal gioco poiché esse (assieme alle descrizioni dei luoghi e degli oggetti)
     ti indirizzeranno verso gli obiettivi.

     $pL'uso degli articoli nei comandi è sempre facoltativo (APRI PORTA è
     sufficiente). Allo stato attuale non è possibile usare preposizioni
     articolate con l'apostrofo, per cui dovrai inserire uno spazio tra la
     preposizione e il sostantivo (SULL' ALBERO) -- anche omettendo l'apostrofo
     se preferisci (SULL ALBERO). Per comodità puoi usare sempre le preposizioni
     semplici anziché quelle articolate (GUARDA IN FRIGO anziché GUARDA NEL
     FRIGO). Questi piccoli accorgimenti ti consentiranno di digitare più in
     fretta i comandi, rendendo l'esperienza di gioco più scorrevole.

     $pPer maggiori informazioni su questa avventura ed il suo autore, digita
     RINGRAZIAMENTI. Per uscire dal gioco, digita ABBANDONA PARTITA. Per salvare
     la partiata in corso, digita SALVA PARTITA, e per caricare una partita
     salvata digita CARICA PARTITA."

END VERB istruzioni.


-->gruppo_info                                      @RINGRAZIAMENTI <-- @CREDITS
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
    ELSE SAY mia_AT:azione_bloccata.
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


-->gruppo_info                                           @SUGGERIMENTO <-- @HINT
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== suggerimento
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `suggerimento`.
--<
-- SYNTAX hint = hint.
-- SYNONYMS hints = hint.

SYNTAX suggerimento = suggerimento.


SYNONYMS
  hint, aiutino = suggerimento.


META VERB suggerimento
  CHECK mia_AT CAN mostrare_suggerimenti
    ELSE SAY mia_AT:azione_bloccata.
  DOES
    "Nessun suggerimento disponibile (vedi ISTRUZIONI se hai bisogno di aiuto)."
 -- "Unfortunately hints are not available in this game."
END VERB suggerimento.


-->gruppo_misc_meta(19999)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Meta verbi vari
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Qui di seguito sono elencati i vari meta verbi che non rientrano in alcun
--| gruppo specifico.
--| 
--| * `abbandona_partita`
--| * `ricomincia_partita`
--<

-->gruppo_misc_meta                                 @ABBANDONA_PARTITA <-- @QUIT
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
    ELSE SAY mia_AT:azione_bloccata.
  DOES
    QUIT.
END VERB abbandona_partita.


-->gruppo_misc_meta                             @RICOMINCIA_PARTITA <-- @RESTART
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
    ELSE SAY mia_AT:azione_bloccata.
  DOES
    RESTART.
END VERB ricomincia_partita.



-->comandi_gioco(20000)
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Verbi di gioco
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--| 
--| Comandi diretti al personaggio protagonista per interagire con l'avventura.
--<


-->tabella_verbi_gioco(1020)
--| === Tabella comandi di gioco
--| [cols="15m,25d,35d,4*^5d",options="header"]
--| |===================================================================================================================
--| | VERBO              | SINONIMI                     | SINTASSI                               |  M  | A |  O  |  B
--~ +--------------------+------------------------------+----------------------------------------+-----+---+-----+-----+
--| | accendi            |                              | accendi (disp)                         |     | 1 |     |
--| | acchiappa          |                              | acchiappa (ogg)                        |     | 1 | {X} |
--| | agita              | scuoti                       | agita (ogg)                            |     | 1 | {X} |
--| | alzati             |                              | alzati                                 |     | 0 |     |
--| | annusa0            | odora                        | annusa                                 |     | 0 |     |
--| | annusa             | odora                        | annusa (odore)                         |     | 1 |     |
--| | apri               |                              | apri (ogg)                             |     | 1 | {X} |
--| | apri_con           |                              | apri (ogg) con (strum)                 |     | 2 | {X} |
--| | arrampicati        |                              | arrampicati su (superficie)            |     | 1 |     |
--| | ascolta0           |                              | ascolta                                |     | 0 |     |
--| | ascolta            |                              | ascolta (ogg)!                         |     | 1 | {X} |
--| | aspetta            | attendi, Z                   | aspetta                                |     | 0 |     |
--| | assaggia           | lecca                        | assaggia (ogg)                         |     | 1 | {X} |
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
--| | bussa              |                              | bussa (ogg)                            |     | 1 | {X} |
--| | bussa_errore       |                              | bussa                                  |     | 0 |     |
--| | calcia             |                              | calcia (bersaglio)                     |     | 1 |     |
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
--| | entra              |                              | entra                                  |     | 0 |     |
--| | entra_in           |                              | entra in (ogg)                         |     | 1 | {X} |
--| | esamina            | guarda, descrivi, osserva, X | esamina (ogg)                          |     | 1 | {X} |
--| | esci               |                              | esci                                   |     | 0 |     |
--| | esci_da            |                              | esci da (ogg)                          |     | 1 | {X} |
--| | forza              |                              | forza (ogg)                            |     | 1 | {X} |
--| | forza_con          |                              | forza (ogg) con (strum)                |     | 2 | {X} |
--| | gioca_con          |                              | gioca con (ogg)                        |     | 1 | {X} |
--| | gira               |                              | gira (ogg)                             |     | 1 | {X} |
--| | gratta             |                              | gratta (ogg)                           |     | 1 | {X} |
--| | grida              | strilla, urla                | grida                                  |     | 0 |     |
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
--| | ispeziona          | perquisisci                  | ispeziona (ogg)                        |     | 1 | {X} |
--| | lancia             |                              | lancia (proiettile)                    |     | 1 |     |
--| | lancia_a           |                              | lancia (proiettile) a (ricevente)      |     | 2 |     |
--| | lancia_contro      |                              | lancia (proiettile) contro (bersaglio) |     | 2 |     |
--| | lancia_in          |                              | lancia (proiettile) in (cont)          |     | 2 |     |
--| | lascia             | abbandona, metti giù, posa   | lascia (ogg)*                          |     | 1 | {X} |
--| | lega               |                              | lega (ogg)                             |     | 1 | {X} |
--| | lega_a             |                              | lega (ogg) a (bersaglio)               |     | 2 | {X} |
--| | leggi              |                              | leggi (ogg)                            |     | 1 | {X} |
--| | libera             | rilascia                     | libera (ogg)                           |     | 1 | {X} |
--| | mangia             |                              | mangia (cibo)                          |     | 1 |     |
--| | metti              |                              | metti (ogg)                            |     | 1 | {X} |
--| | metti_contro       |                              | metti (ogg) contro (bulk)              |     | 2 | {X} |
--| | metti_dietro       |                              | metti (ogg) dietro (bulk)              |     | 2 | {X} |
--| | metti_in           |                              | metti (ogg) in (cont)                  |     | 2 | {X} |
--| | metti_sotto        |                              | metti (ogg) sotto (bulk)               |     | 2 | {X} |
--| | metti_su           |                              | metti (ogg) su (superficie)            |     | 2 | {X} |
--| | metti_vicino       |                              | metti (ogg) vicino a (bulk)            |     | 2 | {X} |
--| | mordi              |                              | mordi (ogg)                            |     | 1 | {X} |
--| | mostra             |                              | mostra (ogg) a (png)                   |     | 2 | {X} |
--| | nuota              |                              | nuota                                  |     | 0 |     |
--| | nuota_in           |                              | nuota in (liq)                         |     | 1 |     |
--| | parla              |                              | parla                                  |     | 0 |     |
--| | parla_con          |                              | parla con (png)                        |     | 1 |     |
--| | pensa              | pondera, rifletti, medita    | pensa                                  |     | 0 |     |
--| | pensa_a            | rifletti/medita su, pondera  | pensa a (argomento)!                   |     | 1 |     |
--| | prega              |                              | prega                                  |     | 0 |     |
--| | prendi             | afferra, raccogli, trasporta | prendi (ogg)                           |     | 1 | {X} |
--| | prendi_da          | rimuovi, togli               | prendi (ogg) da (detentore)            |     | 2 | {X} |
--| | pulisci            | strofina, lucida             | pulisci (ogg)                          |     | 1 | {X} |
--| | racconta           | informa, dì a, parla a       | racconta a (png) di (argomento)!       |     | 2 |     |
--| | rifai              | ancora, G                    | rifai                                  |     | 0 |     |
--| | riempi             |                              | riempi (cont)                          |     | 1 |     |
--| | riempi_con         |                              | riempi (cont) con (sostanza)           |     | 2 |     |
--| | rompi              | distruggi, spacca, sfonda    | rompi (ogg)                            |     | 1 | {X} |
--| | rompi_con          | distruggi, spacca, sfonda    | rompi (ogg) con (strum)                |     | 2 | {X} |
--| | ripara             | aggiusta                     | ripara (ogg)                           |     | 1 | {X} |
--| | rispondi           |                              | rispondi (argomento)!                  |     | 1 |     |
--| | sali_su            | mettiti                      | sali su (superficie)                   |     | 1 |     |
--| | salta              |                              | salta                                  |     | 0 |     |
--| | salta_in           |                              | salta in (cont)                        |     | 1 |     |
--| | salta_su           |                              | salta su (superficie)                  |     | 1 |     |
--| | sblocca            |                              | sblocca (ogg)                          |     | 1 | {X} |
--| | sblocca_con        |                              | sblocca (ogg) con (chiave)             |     | 2 | {X} |
--| | scava              |                              | scava (ogg)                            |     | 1 | {X} |
--| | scavalca           |                              | scavalca (ogg)                         |     | 1 | {X} |
--| | scendi_da          |                              | scendi da (superficie)                 |     | 1 |     |
--| | scrivi             |                              | scrivi "testo" su (ogg)                |     | 1 | {X} |
--| | sdraiati           |                              | sdraiati                               |     | 0 |     |
--| | sdraiati_in        |                              | sdraiati in (cont)                     |     | 1 |     |
--| | sdraiati_su        |                              | sdraiati su (superficie)               |     | 1 |     |
--| | segui              |                              | segui (png)!                           |     | 1 |     |
--| | sfrega             | massaggia                    | sfrega (ogg)                           |     | 1 | {X} |
--| | siediti            | siedi                        | siediti                                |     | 0 |     |
--| | siediti_su         | siedi                        | siediti su (superficie)                |     | 1 |     |
--| | solleva            | alza                         | solleva (ogg)                          |     | 1 | {X} |
--| | sorseggia          |                              | sorseggia (liq)                        |     | 1 |     |
--| | spara              |                              | spara con (arma)                       |     | 1 |     |
--| | spara_errore       |                              | spara                                  |     | 0 |     |
--| | spara_a            |                              | spara a (bersaglio) con (arma)         |     | 2 |     |
--| | spara_a_errore     |                              | spara a (bersaglio)                    |     | 1 |     |
--| | spegni             |                              | spegni (disp)                          |     | 1 |     |
--| | spingi             |                              | spingi (ogg)                           |     | 1 | {X} |
--| | spingi_con         |                              | spingi (ogg) con (strum)               |     | 2 | {X} |
--| | spogliati          | svestiti                     | spogliati                              |     | 0 |     |
--| | spremi             | strizza                      | spremi (ogg)                           |     | 1 | {X} |
--| | strappa            |                              | strappa (ogg)                          |     | 1 | {X} |
--| | suona              |                              | suona (ogg)                            |     | 1 | {X} |
--| | svuota             |                              | svuota (ogg)                           |     | 1 | {X} |
--| | svuota_in          |                              | svuota (ogg) in (cont)                 |     | 2 | {X} |
--| | svuota_su          |                              | svuota (ogg) su (superficie)           |     | 2 | {X} |
--| | taglia             |                              | taglia (ogg)                           |     | 1 | {X} |
--| | taglia_con         |                              | taglia (ogg) con (strum)               |     | 2 | {X} |
--| | tira               |                              | tira (ogg)                             |     | 1 | {X} |
--| | tocca              | accarezza, carezza           | tocca (ogg)                            |     | 1 | {X} |
--| | tocca_con          | accarezza, carezza           | tocca (ogg) con (strum)                |     | 2 | {X} |
--| | togliti            | sfilati, levati              | togliti (ogg)                          |     | 1 | {X} |
--| | trova              |                              | trova (ogg)                            |     | 1 | {X} |
--| | tuffati            |                              | tuffati                                |     | 0 |     |
--| | tuffati_in         |                              | tuffati in (liq)                       |     | 1 |     |
--| | uccidi             | ammazza                      | uccidi (vittima)                       |     | 1 |     |
--| | uccidi_con         | ammazza                      | uccidi (vittima) con (arma)            |     | 2 |     |
--| | usa                |                              | usa (ogg)                              |     | 1 | {X} |
--| | usa_con            |                              | usa (ogg) con (strum)                  |     | 2 | {X} |
--| | vai_a              |                              | vai a (dest)                           |     | 1 |     |
--| | vendi              |                              | vendi (merce)                          |     | 1 |     |
--| | versa              |                              | versa (ogg)                            |     | 1 | {X} |
--| | versa_in           |                              | versa (ogg) in (cont)                  |     | 2 | {X} |
--| | versa_su           |                              | versa (ogg) su (superficie)            |     | 2 | {X} |
--| |===================================================================================================================
--<

-->gruppo_accendi(20100)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Accensione e spegnimento
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

-->gruppo_accendi                                          @ACCENDI <-- @TURN ON
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
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
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
      ELSE SAY mia_AT:azione_bloccata.
    DOES
      IF disp IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "accendere."
  END VERB accendi.
END ADD TO.

-->gruppo_accendi                                          @SPEGNI <-- @TURN OFF
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== spegni
--~-----------------------------------------------------------------------------
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
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
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
      ELSE SAY mia_AT:azione_bloccata.
    DOES
      IF disp IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "spegnere."
  END VERB spegni.
END ADD TO.

-->gruppo_apri(20200)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Apertura e chiusura
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
--| * `forza`
--| * `forza_con`
--| * `sblocca`
--| * `sblocca_con`
--<

-->gruppo_apri                                                   @APRI <-- @OPEN
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== apri
--~-----------------------------------------------------------------------------
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
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "aprire."


ADD TO EVERY OBJECT
  VERB apri
    CHECK mia_AT CAN aprire
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS apribile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "aprire."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    AND ogg IS NOT aperto
      ELSE
        IF ogg IS NOT femminile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg_già_aperto_ms.
              ELSE SAY mia_AT:ogg_già_aperto_mp.
            END IF.
          ELSE
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg_già_aperto_fs.
              ELSE SAY mia_AT:ogg_già_aperto_fp.
            END IF.
        END IF.
    DOES
      IF ogg IS bloccato
        THEN
          IF ogg:chiave_abbinata IN hero
            THEN MAKE ogg NOT bloccato.
              MAKE ogg aperto.
              "(con" SAY THE chiave_abbinata OF ogg. "$$)
               $nPrima sblocchi $+1 e poi" SAY ogg:articolo. "apri."
          ELSE SAY THE ogg.
            IF ogg IS NOT plurale
              THEN "è"
              ELSE "sono"
            END IF.
            "bloccat$$" SAY ogg:vocale. "."
        END IF.
      ELSIF ogg IS NOT bloccato
        THEN MAKE ogg aperto.
        "Fatto, ora $+1"
        IF ogg IS NOT plurale
          THEN "è"
          ELSE "sono"
        END IF. "apert$$" SAY ogg:vocale. "."
      END IF.
  END VERB apri.
END ADD TO.

-->gruppo_apri                                          @APRI CON <-- @OPEN WITH
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== apri_con
--~-----------------------------------------------------------------------------
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
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
    "aprire."
  AND strum IsA OBJECT
    ELSE
      IF strum IS NOT plurale
        --  "$+1 non [è/sono] qualcosa con cui poter"
        THEN SAY mia_AT:ogg2_inadatto_CON_sg.
        ELSE SAY mia_AT:ogg2_inadatto_CON_pl.
      END IF.
      "aprire." -- @TODO: "aprire altre cose"??                                 IMPROVE!



ADD TO EVERY OBJECT
  VERB apri_con
        WHEN ogg
      CHECK mia_AT CAN aprire_con
        ELSE SAY mia_AT:azione_bloccata.
      AND ogg IS apribile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY mia_AT:ogg1_inadatto_sg.
            ELSE SAY mia_AT:ogg1_inadatto_pl.
          END IF.
          "aprire."
      AND strum IS esaminabile
        ELSE
          IF strum IS NOT plurale
            --  "$+1 non [è/sono] qualcosa con cui poter"
            THEN SAY mia_AT:ogg2_inadatto_CON_sg.
            ELSE SAY mia_AT:ogg2_inadatto_CON_pl.
          END IF.
          "aprire." -- @TODO: ".. altre cose"??                                 IMPROVE!
      AND ogg <> strum
        ELSE SAY mia_AT:azione_insensata.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
              END IF.
          END IF.
      AND strum IN hero
        ELSE SAY mia_AT:non_possiedi_ogg2.
      AND ogg IS NOT aperto
        ELSE
          IF ogg IS NOT femminile
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg_già_aperto_ms.
                ELSE SAY mia_AT:ogg_già_aperto_mp.
              END IF.
            ELSE
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg_già_aperto_fs.
                ELSE SAY mia_AT:ogg_già_aperto_fp.
              END IF.
          END IF.
      DOES
        IF ogg IS bloccato
          THEN
            IF strum = ogg:chiave_abbinata
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

-->gruppo_apri                                                 @BLOCCA <-- @LOCK
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== blocca
--~-----------------------------------------------------------------------------
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
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "bloccare."

SYNONYMS
  serra = blocca.


ADD TO EVERY OBJECT
  VERB blocca
    CHECK mia_AT CAN bloccare
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS bloccabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "bloccare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    AND ogg IS NOT bloccato
      ELSE
        IF ogg IS NOT femminile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg_già_bloccato_ms.
              ELSE SAY mia_AT:ogg_già_bloccato_mp.
            END IF.
          ELSE
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg_già_bloccato_fs.
              ELSE SAY mia_AT:ogg_già_bloccato_fp.
            END IF.
        END IF.
  DOES
    IF ogg:chiave_abbinata IN hero
      THEN MAKE ogg bloccato.
        "(con" SAY THE chiave_abbinata OF ogg. "$$)$n"
        IF ogg IS aperto
          THEN "Prima chiudi $+1 e poi" SAY ogg:articolo. "blocchi."
            MAKE ogg NOT aperto.
        ELSE "Fatto, ora $+1"
          IF ogg IS NOT plurale
            THEN "è"
            ELSE "sono"
          END IF. "bloccat$$" SAY ogg:vocale. "."
        END IF.
    ELSE
      SAY mia_AT:specificare_CON_cosa. "bloccare" SAY THE ogg.
   -- ELSE "Devi specificare con cosa vuoi bloccare" SAY THE ogg.
   -- ELSE "You have to state what you want to lock" SAY THE ogg. "with."
    END IF.

  END VERB blocca.
END ADD TO.

-->gruppo_apri                                        @BLOCCA CON <-- @LOCK WITH
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== blocca_con
--~-----------------------------------------------------------------------------
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
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "bloccare."
  AND chiave IsA OBJECT
    ELSE
      IF chiave IS NOT plurale
        --  "$+1 non [è/sono] qualcosa con cui poter"
        THEN SAY mia_AT:ogg2_inadatto_CON_sg.
        ELSE SAY mia_AT:ogg2_inadatto_CON_pl.
      END IF.
      "bloccare." -- @TODO: ".. altre cose"??                                   IMPROVE!


ADD TO EVERY OBJECT
    VERB blocca_con
        WHEN ogg
      CHECK mia_AT CAN bloccare_con
        ELSE SAY mia_AT:azione_bloccata.
      AND ogg IS bloccabile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY mia_AT:ogg1_inadatto_sg.
            ELSE SAY mia_AT:ogg1_inadatto_pl.
          END IF.
          "bloccare."
      AND chiave IS esaminabile
        ELSE
          IF chiave IS NOT plurale
            --  "$+1 non [è/sono] qualcosa con cui poter"
            THEN SAY mia_AT:ogg2_inadatto_CON_sg.
            ELSE SAY mia_AT:ogg2_inadatto_CON_pl.
          END IF.
          "bloccare." -- @TODO: ".. altre cose"??                               IMPROVE!
      AND ogg <> chiave
        ELSE SAY mia_AT:azione_insensata.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND ogg IS NOT bloccato
        ELSE
          IF ogg IS NOT femminile
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg_già_bloccato_ms.
                ELSE SAY mia_AT:ogg_già_bloccato_mp.
              END IF.
            ELSE
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg_già_bloccato_fs.
                ELSE SAY mia_AT:ogg_già_bloccato_fp.
              END IF.
          END IF.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
              END IF.
          END IF.
      AND chiave IN hero
        ELSE SAY mia_AT:non_possiedi_ogg2.
      AND chiave = ogg:chiave_abbinata -- @TODO:                             TRANSLATE!
        --              "You can't use $+2 to $v $+1.".
        ELSE SAY mia_AT:check_door_matching_key.

      DOES
        MAKE ogg bloccato.
        IF ogg IS aperto
          THEN "Prima chiudi $+1 e poi" SAY ogg:articolo. "blocchi."
            MAKE ogg NOT aperto.
        ELSE "Fatto, ora $+1"
          IF ogg IS NOT plurale
            THEN "è"
            ELSE "sono"
          END IF. "bloccat$$" SAY ogg:vocale. "."
        END IF.
    END VERB blocca_con.
END ADD TO.

-->gruppo_apri                                                @CHIUDI <-- @CLOSE
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== chiudi
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `chiudi`.
--<


SYNTAX chiudi = chiudi (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "chiudere."


-- SYNONYMS shut = close.


ADD TO EVERY OBJECT
  VERB chiudi
    CHECK mia_AT CAN chiudere
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS apribile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "chiudere."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    AND ogg IS aperto
      ELSE
        IF ogg IS NOT femminile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg_già_chiuso_ms.
              ELSE SAY mia_AT:ogg_già_chiuso_mp.
            END IF.
          ELSE
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg_già_chiuso_fs.
              ELSE SAY mia_AT:ogg_già_chiuso_fp.
            END IF.
        END IF.

    DOES
      MAKE ogg NOT aperto.
      "Fatto, ora $+1"
      IF ogg IS NOT plurale
        THEN "è"
        ELSE "sono"
      END IF. "chius$$" SAY ogg:vocale. "."
  END VERB chiudi.
END ADD TO.


-->gruppo_apri                                       @CHIUDI CON <-- @CLOSE WITH
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== chiudi_con
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `chiudi_con`.
--<


SYNTAX chiudi_con = chiudi (ogg) con (strum)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "chiudere."
  AND strum IsA OBJECT
    ELSE
      IF strum IS NOT plurale
        THEN SAY mia_AT:ogg2_inadatto_CON_sg.
        ELSE SAY mia_AT:ogg2_inadatto_CON_pl.
      END IF.
      "chiudere" SAY THE ogg. "." -- TODO:                                      IMPROVE!


ADD TO EVERY OBJECT
  VERB chiudi_con
    WHEN ogg
      CHECK mia_AT CAN chiudere_con
        ELSE SAY mia_AT:azione_bloccata.
      AND ogg IS apribile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY mia_AT:ogg1_inadatto_sg.
            ELSE SAY mia_AT:ogg1_inadatto_pl.
          END IF.
          "chiudere."
      AND strum IS esaminabile
        ELSE
          IF strum IS NOT plurale
            THEN SAY mia_AT:ogg2_inadatto_CON_sg.
            ELSE SAY mia_AT:ogg2_inadatto_CON_pl.
          END IF.
          "chiudere" SAY THE ogg. "."
      AND ogg <> strum
        ELSE SAY mia_AT:azione_insensata.
      AND strum IN hero
        ELSE SAY mia_AT:non_possiedi_ogg2.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
              END IF.
        END IF.
      AND ogg IS aperto
        ELSE
          IF ogg IS NOT femminile
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg_già_chiuso_ms.
                ELSE SAY mia_AT:ogg_già_chiuso_mp.
              END IF.
            ELSE
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg_già_chiuso_fs.
                ELSE SAY mia_AT:ogg_già_chiuso_fp.
              END IF.
          END IF.

      DOES
        "Non puoi chiudere" SAY THE ogg. "con" SAY THE strum. "."
  END VERB chiudi_con.
END ADD TO.



-->gruppo_apri                                                   @FORZA <-- @PRY
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== forza
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `forza`.
--<


SYNTAX forza = forza (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF. "forzare."


ADD TO EVERY OBJECT
  VERB forza
    CHECK mia_AT CAN forzare
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF. "forzare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    DOES
      SAY mia_AT:specificare_CON_cosa. "forzare $+1."
     -- "You must state what you want to pry" SAY THE ogg. "with."
  END VERB forza.
END ADD TO.

-->gruppo_apri                                          @FORZA CON <-- @PRY_WITH
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== forza_con
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `forza_con`.
--<

SYNTAX forza_con = forza (ogg) con (strum)
    WHERE ogg IsA OBJECT
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF. "forzare."
    AND strum IsA OBJECT
      ELSE
        IF strum IS NOT plurale
          THEN SAY mia_AT:ogg2_inadatto_CON_sg.
          ELSE SAY mia_AT:ogg2_inadatto_CON_pl.
        END IF. "forzare $+1."

-- @TODO: Add check if obj is closed?                                           TODO!
ADD TO EVERY OBJECT
  VERB forza_con
    WHEN ogg
      CHECK mia_AT CAN forzare_con
        ELSE SAY mia_AT:azione_bloccata.
      AND ogg IS esaminabile
        ELSE
          IF ogg IS NOT plurale
            THEN SAY mia_AT:ogg1_inadatto_sg.
            ELSE SAY mia_AT:ogg1_inadatto_pl.
          END IF. "forzare."
      AND strum IS esaminabile
        ELSE
          IF strum IS NOT plurale
            THEN SAY mia_AT:ogg2_inadatto_CON_sg.
            ELSE SAY mia_AT:ogg2_inadatto_CON_pl.
          END IF. "forzare $+1."
      AND ogg <> strum
        ELSE SAY mia_AT:azione_insensata.
      AND strum IN hero
        ELSE SAY mia_AT:non_possiedi_ogg2.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
              END IF.
          END IF.
      DOES "Non funzionerebbe."
    END VERB forza_con.
END ADD TO.


-->gruppo_apri                                              @SBLOCCA <-- @UNLOCK
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== sblocca
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `sblocca`.
--<

SYNTAX sblocca = sblocca (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF. "sbloccare."


ADD TO EVERY OBJECT
  VERB sblocca
    CHECK mia_AT CAN sbloccare
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS bloccabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF. "sbloccare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    AND ogg IS bloccato
      ELSE
        IF ogg IS NOT femminile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg_già_sbloccato_ms.
              ELSE SAY mia_AT:ogg_già_sbloccato_mp.
            END IF.
          ELSE
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg_già_sbloccato_fs.
              ELSE SAY mia_AT:ogg_già_sbloccato_fp.
            END IF.
        END IF.
    DOES
      IF ogg:chiave_abbinata IN hero
        THEN MAKE ogg NOT bloccato.
          "(con" SAY THE chiave_abbinata OF ogg. "$$)$n"
          "Fatto, ora $+1"
          IF ogg IS NOT plurale
            THEN "è"
            ELSE "sono"
          END IF. "sbloccat$$" SAY ogg:vocale. "."
        ELSE "Non possiedi la chiave che sblocca" SAY THE ogg. "."
     -- ELSE "You don't have the key that unlocks" SAY THE ogg. "."
      END IF.
  END VERB sblocca.
END ADD TO.


-->gruppo_apri                                     @SBLOCCA CON <-- @UNLOCK WITH
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== sblocca_con
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `sblocca_con`.
--<

SYNTAX sblocca_con = sblocca (ogg) con (chiave)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "sbloccare."
  AND chiave IsA OBJECT
    ELSE
      IF chiave IS NOT plurale
        THEN SAY mia_AT:ogg2_inadatto_CON_sg.
        ELSE SAY mia_AT:ogg2_inadatto_CON_pl.
     END IF.
     "sbloccare" SAY THE ogg. "."


ADD TO EVERY OBJECT
  VERB sblocca_con
    WHEN ogg
      CHECK mia_AT CAN sbloccare_con
        ELSE SAY mia_AT:azione_bloccata.
      AND ogg IS bloccabile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY mia_AT:ogg1_inadatto_sg.
            ELSE SAY mia_AT:ogg1_inadatto_pl.
          END IF.
          "sbloccare."
      AND chiave IS esaminabile
        ELSE
          IF chiave IS NOT plurale
            THEN SAY mia_AT:ogg2_inadatto_CON_sg.
            ELSE SAY mia_AT:ogg2_inadatto_CON_pl.
         END IF.
         "sbloccare" SAY THE ogg. "."
      AND chiave IN hero
          ELSE SAY mia_AT:non_possiedi_ogg2.
      AND ogg <> chiave
        ELSE SAY mia_AT:azione_insensata.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
              END IF.
          END IF.
      AND ogg IS bloccato
        ELSE
          IF ogg IS NOT femminile
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg_già_sbloccato_ms.
                ELSE SAY mia_AT:ogg_già_sbloccato_mp.
              END IF.
            ELSE
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg_già_sbloccato_fs.
                ELSE SAY mia_AT:ogg_già_sbloccato_fp.
              END IF.
          END IF.
--                                                                              TRANSLATE!
      AND chiave = ogg:chiave_abbinata
        --              "You can't use $+2 to $v $+1.".
        ELSE SAY mia_AT:check_door_matching_key.
      DOES
        MAKE ogg NOT bloccato.
        "Fatto, ora $+1"
        IF ogg IS NOT plurale
          THEN "è"
          ELSE "sono"
        END IF. "sbloccat$$" SAY ogg:vocale. "."
    END VERB sblocca_con.
END ADD TO.




-->gruppo_sensi(20300)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Azioni sensoriali
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
--| Il verbo `guarda` andrebbe in questo gruppo o con `esamina`? 
--| 
--| [NOTE]
--| ============================================================================
--| Il verbo `annusa` è anche definito in `lib_classi.i` sulla classe `suono`
--| (per rispondere che i suoni non sono qualcosa che si possa annusare).
--| ============================================================================
--<

-->gruppo_sensi                                             @ANNUSA0 <-- @SMELL0
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== annusa0
--~-----------------------------------------------------------------------------
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
    ELSE SAY mia_AT:azione_bloccata.
  DOES
-- @TODO: Crea un attributo condiviso per la risposta                           OPTIMIZE!
    "Non senti alcun odore particolare." -- preso da i6.
 -- "You smell nothing unusual."
END VERB annusa0.


-->gruppo_sensi                                               @ANNUSA <-- @SMELL
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== annusa
--~-----------------------------------------------------------------------------
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
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "annusare." -- #odorare?


ADD TO EVERY THING
  VERB annusa
    CHECK mia_AT CAN annusare
      ELSE SAY mia_AT:azione_bloccata.
    DOES
    "Non senti alcun odore particolare." -- preso da i6.
 -- "You smell nothing unusual."
  END VERB annusa.
END ADD TO.



-->gruppo_sensi                                            @ASCOLTA0 <-- @LISTEN
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== ascolta0
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `ascolta0`.
--<

-- SYNTAX listen0 = listen.


SYNTAX ascolta0 = ascolta.


VERB ascolta0
  CHECK mia_AT CAN ascoltare
    ELSE SAY mia_AT:azione_bloccata.
  DOES
    "Non odi niente di particolare."
 -- "You hear nothing unusual."
END VERB ascolta0.



-->gruppo_sensi                                    @ASCOLTA (OGG) <-- @LISTEN TO
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== ascolta
--~-----------------------------------------------------------------------------
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
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "ascoltare."


ADD TO EVERY THING
  VERB ascolta
    CHECK mia_AT CAN ascoltare
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg <> hero
      ELSE SAY mia_AT:azione_insensata.
    DOES
      -- @NOTA: Ho invertito 'hero' e 'ogg' se no il verbo non copriva i casi
      --        in cui l'erore è in una locazione annidata, oppure l'ogg è in
      --        un contenitore esterno (es. il cielo o il soffitto)...
   -- IF ogg AT hero
      IF hero AT ogg
        THEN
          IF ogg IsA ACTOR
            THEN SAY THE ogg. "non sta"
              IF ogg IS plurale
                THEN "$$nno"
              END IF.
              "parlando in questo momento."
            ELSE "Non odi niente di particolare."
          END IF.
-- TODO: Se l'oggetto è lontano non produce nessuna risposta, ma forse dovrebbe CHECK!
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

-->gruppo_sensi                                                @TOCCA <-- @TOUCH
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== tocca
--~-----------------------------------------------------------------------------
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
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "toccare."

SYNONYMS accarezza, carezza = tocca.


ADD TO EVERY THING
  VERB tocca
    CHECK mia_AT CAN toccare
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "toccare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
      AND ogg <> hero
        ELSE SAY  mia_AT:azione_futile.
      AND ogg IS inanimato
        ELSE
          IF ogg IS NOT plurale
            THEN SAY mia_AT:png1_non_gradirebbe_sg.
            ELSE SAY mia_AT:png1_non_gradirebbe_pl.
          END IF.
      DOES
        "Tocchi $+1 ma non senti nulla di strano."
  END VERB tocca.
END ADD TO.

-->gruppo_sensi                                       @TOCCA CON <-- @TOUCH WITH
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== tocca_con
--~-----------------------------------------------------------------------------
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
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "toccare."
  AND strum IsA OBJECT
    ELSE
      IF strum IS NOT plurale
        THEN SAY mia_AT:ogg2_inadatto_CON_sg.
        ELSE SAY mia_AT:ogg2_inadatto_CON_pl.
      END IF.
      "toccare" SAY THE ogg. "."


ADD TO EVERY THING
  VERB tocca_con
    WHEN ogg
      CHECK mia_AT CAN toccare_con
        ELSE SAY mia_AT:azione_bloccata.
      AND ogg IS esaminabile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY mia_AT:ogg1_inadatto_sg.
            ELSE SAY mia_AT:ogg1_inadatto_pl.
          END IF.
          "toccare."
      AND strum IS esaminabile
        ELSE
          IF strum IS NOT plurale
            THEN SAY mia_AT:ogg2_inadatto_CON_sg.
            ELSE SAY mia_AT:ogg2_inadatto_CON_pl.
        END IF.
        "toccare" SAY THE ogg. "."
      AND ogg <> strum
        ELSE SAY mia_AT:azione_insensata.
      AND strum <> hero
        ELSE SAY mia_AT:azione_insensata.
      AND strum IN hero
        ELSE SAY mia_AT:non_possiedi_ogg2.
      AND ogg IS inanimato
        ELSE
          IF ogg IS NOT plurale
            THEN SAY mia_AT:png1_non_gradirebbe_sg.
            ELSE SAY mia_AT:png1_non_gradirebbe_pl.
          END IF.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
              END IF.
          END IF.
      DOES "Tocchi $+1 con $+2 ma non succede nulla."
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

-->gruppo_conversare                                        @CHIEDI <-- @ASK FOR
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== chiedi
--~-----------------------------------------------------------------------------
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
        THEN SAY mia_AT:ogg1_non_può_capirti_sg.
        ELSE SAY mia_AT:ogg1_non_può_capirti_pl.
      END IF.
  AND ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
--                                                                              TRANSLATE!
-- @NOTA: Qui servirebbe un messaggio ad hoc!
        THEN SAY mia_AT:illegal_parameter_for_sg.
        ELSE SAY mia_AT:illegal_parameter_for_pl.
      END IF.

        chiedi = chiedi (ogg) a (png).

ADD TO EVERY ACTOR
  VERB chiedi
    WHEN png
      CHECK mia_AT CAN chiedere
        ELSE SAY mia_AT:azione_bloccata.
      AND png <> hero
        ELSE SAY mia_AT:azione_insensata.
      AND png CAN parlare
        ELSE
          IF png IS NOT plurale
            THEN SAY mia_AT:ogg1_non_può_capirti_sg.
            ELSE SAY mia_AT:ogg1_non_può_capirti_pl.
          END IF.
      AND ogg IS esaminabile
        ELSE
          IF ogg IS NOT plurale
--                                                                              TRANSLATE!
-- @NOTA: Qui servirebbe un messaggio ad hoc!
            THEN SAY mia_AT:check_obj2_suitable_for_sg.
            ELSE SAY mia_AT:check_obj2_suitable_for_pl.
          END IF.
      AND ogg NOT IN hero
        ELSE SAY mia_AT:ogg2_già_posseduto.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND png IS NOT distante
        ELSE
          IF png IS NOT plurale
            THEN SAY mia_AT:ogg1_distante_sg.
            ELSE SAY mia_AT:ogg1_distante_pl.
          END IF.
      AND ogg IS prendibile
        ELSE SAY  mia_AT:ogg2_non_ottenibile.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN
                  IF png IS NOT plurale
                    THEN SAY mia_AT:ogg2_sg_non_raggiungibile_png1_sg.
                    ELSE SAY mia_AT:ogg2_sg_non_raggiungibile_png1_pl.
                  END IF.
                ELSE
                  IF png IS NOT plurale
                    THEN SAY mia_AT:ogg2_pl_non_raggiungibile_png1_sg.
                    ELSE SAY mia_AT:ogg2_pl_non_raggiungibile_png1_pl.
                  END IF.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg2_distante_sg.
                ELSE SAY mia_AT:ogg2_distante_pl.
              END IF.
          END IF.
      AND ogg IS NOT scenario
        ELSE
          IF ogg IS NOT plurale
          --              "$+1 non [è/sono] importante ai fini del gioco."
            THEN SAY mia_AT:ogg2_scenario_sg.
            ELSE SAY mia_AT:ogg2_scenario_pl.
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
        "$+1 ti"
        IF png IS NOT plurale
          THEN "dà"
          ELSE "danno"
        END IF.
        "$+2."
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
      SAY mia_AT:per_chiedere_qlco_USA.
    -- "Please use the formulation ASK PERSON FOR THING to ask somebody for
    --  something."


ADD TO EVERY OBJECT
  VERB chiedi_errore
    DOES
      -- "Per chiedere qualcosa a qualcuno usa CHIEDI A PERSONA OGGETTO."
      SAY mia_AT:per_chiedere_qlco_USA.
  END VERB chiedi_errore.
END ADD TO.

-->gruppo_conversare                                                @DÌ <-- @SAY
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== dì
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `dì`.
--<


-- SYNTAX 'say' = 'say' (topic)

SYNTAX dì = dì (argomento)
  WHERE argomento IsA STRING
    ELSE SAY mia_AT:ogg_stringa_richiesto.


ADD TO EVERY STRING
  VERB dì
    CHECK mia_AT CAN dire
      ELSE SAY mia_AT:azione_bloccata.
        DOES
          "Dici ""$1"", ma non succede nulla."
       -- "Nothing happens."
  END VERB dì.
END ADD TO.


-->gruppo_conversare                                           @DÌ A <-- @SAY TO
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== dì_a
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `dì_a`.
--<


-- SYNTAX say_to = 'say' (topic) 'to' (act)

SYNTAX  dì_a = dì (argomento) a (png)
  WHERE argomento IsA STRING
    ELSE SAY mia_AT:ogg_stringa_richiesto.
  AND png IsA ACTOR
    ELSE
      IF png IS NOT plurale
        THEN SAY mia_AT:ogg2_non_può_capirti_sg.
        ELSE SAY mia_AT:ogg2_non_può_capirti_pl.
      END IF.

        dì_a = dì a (png) (argomento).

ADD TO EVERY ACTOR
  VERB dì_a
    WHEN png
      CHECK mia_AT CAN dire_a
        ELSE SAY mia_AT:azione_bloccata.
      AND png <> hero
        ELSE SAY mia_AT:azione_insensata.
      AND png CAN parlare
        ELSE
          IF png IS NOT plurale
            THEN SAY mia_AT:ogg2_non_può_capirti_sg.
            ELSE SAY mia_AT:ogg2_non_può_capirti_pl.
          END IF.
      AND png IS NOT distante
        ELSE
          IF png IS NOT plurale
            THEN SAY mia_AT:ogg1_distante_sg.
            ELSE SAY mia_AT:ogg1_distante_pl.
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


-->gruppo_conversare  @DOMANDA @ASK (= enquire, inquire, interrogate)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== domanda
--~-----------------------------------------------------------------------------
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
        THEN SAY mia_AT:ogg1_non_può_capirti_sg.
        ELSE SAY mia_AT:ogg1_non_può_capirti_pl.
      END IF.
  AND argomento IsA THING
    ELSE
      IF argomento IS NOT plurale
--                                                                              TRANSLATE!
        THEN SAY mia_AT:illegal_parameter_about_sg.
        ELSE SAY mia_AT:illegal_parameter_about_pl.
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
        ELSE SAY mia_AT:azione_bloccata.
      AND png <> hero
        ELSE SAY mia_AT:azione_insensata.
      AND png CAN parlare
        ELSE
          IF png IS NOT plurale
            THEN SAY mia_AT:ogg1_non_può_capirti_sg.
            ELSE SAY mia_AT:ogg1_non_può_capirti_pl.
          END IF.
      AND png IS NOT distante
        ELSE
          IF png IS NOT plurale
            THEN SAY mia_AT:ogg1_distante_sg.
            ELSE SAY mia_AT:ogg1_distante_pl.
          END IF.
      DOES
        "Nessuna risposta." ---> taken from i6
        -- "There is no reply."
    END VERB domanda.
END ADD TO.



----- note that 'consult' is defined separately


-->gruppo_conversare                                            @PARLA <-- @TALK
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== parla
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `parla`.
--<


-- SYNTAX talk = talk.

SYNTAX parla = parla.


VERB parla
  CHECK mia_AT CAN parlare
    ELSE SAY mia_AT:azione_bloccata.
  DOES
    -- "Per parlare a qualcuno, usa DOMANDA A PERSONA DI ARGOMENTO, oppure
    --  RACCONTA A PERSONA DI ARGOMENTO.".    
    SAY mia_AT:per_parlare_con_USA.
-- "To talk to somebody, you can ASK PERSON ABOUT THING
--  or TELL PERSON ABOUT THING."
END VERB parla.


-->gruppo_conversare                                     @PARLA CON <-- @TALK_TO
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== parla_con
--~-----------------------------------------------------------------------------
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
        THEN SAY mia_AT:ogg1_inadatto_CON_sg.
        ELSE SAY mia_AT:ogg1_inadatto_CON_pl.
      END IF. "parlare."

        parla_con = parla a (png).

ADD TO EVERY ACTOR
  VERB parla_con
    CHECK mia_AT CAN parlare_con
      ELSE SAY mia_AT:azione_bloccata.
    DOES
      -- "Per parlare a qualcuno, usa DOMANDA A PERSONA DI ARGOMENTO, oppure
      --  RACCONTA A PERSONA DI ARGOMENTO.".    
      SAY mia_AT:per_parlare_con_USA.
  END VERB parla_con.
END ADD TO.

-->gruppo_conversare                                         @RACCONTA <-- @TELL
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== racconta
--~-----------------------------------------------------------------------------
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
        THEN SAY mia_AT:ogg1_non_può_capirti_sg.
        ELSE SAY mia_AT:ogg1_non_può_capirti_pl.
      END IF.
  AND argomento IsA THING
    ELSE
      IF argomento IS NOT plurale
        THEN SAY mia_AT:illegal_parameter_about_sg.
        ELSE SAY mia_AT:illegal_parameter_about_pl.
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
        ELSE SAY mia_AT:azione_bloccata.
      AND png <> hero
        ELSE SAY mia_AT:azione_insensata.
       AND png CAN parlare
        ELSE
          IF png IS NOT plurale
            THEN SAY mia_AT:ogg1_non_può_capirti_sg.
            ELSE SAY mia_AT:ogg1_non_può_capirti_pl.
          END IF.
      AND png IS NOT distante
        ELSE
          IF png IS NOT plurale
            THEN SAY mia_AT:ogg1_distante_sg.
            ELSE SAY mia_AT:ogg1_distante_pl.
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


-->gruppo_conversare                                       @RISPONDI <-- @ANSWER
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== rispondi
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `rispondi`.
--<


-- SYNTAX answer = answer (topic)
-- SYNONYMS reply = answer.

SYNTAX rispondi = rispondi (argomento)
  WHERE argomento IsA STRING
    ELSE SAY mia_AT:ogg_stringa_richiesto.


ADD TO EVERY STRING
  VERB rispondi
    CHECK mia_AT CAN rispondere
      ELSE SAY mia_AT:azione_bloccata.
    DOES
      "Qual'era la domanda?"
    END VERB rispondi.
END ADD TO.

-->gruppo_mangiabevi(20500)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Mangiare e bere
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi che riguardano mangiare e bere:
--| 
--| * `assaggia`
--| * `bevi`
--| * `mangia`
--| * `mordi`
--| * `sorseggia`
--| 
--| [cols="15m,25d,60d",options="header"]
--| |================================================================
--| | verbo     | sintassi        | parametri
--~ |-----------+-----------------+----------------------------------
--| | assaggia  | assaggia (ogg)  | ogg è `commestibile` o `potabile`
--| | bevi      | bevi (liq)      | liq è `potabile`
--| | mangia    | mangia (cibo)   | cibo è `commestibile`
--| | mordi     | mordi (ogg)     | ogg è `commestibile`
--| | sorseggia | sorseggia (liq) | liq è `potabile`
--| |================================================================
--<


-->gruppo_mangiabevi                              @ASSAGGIA <-- @TASTE (+ @LICK)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== assaggia
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `assaggia`.
--<



SYNTAX assaggia = assaggia (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "assaggiare."


SYNONYMS lecca = assaggia.


ADD TO EVERY OBJECT
  VERB assaggia
    CHECK mia_AT CAN assaggiare
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "assaggiare."
    AND ogg IS commestibile OR ogg IS potabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "assaggiare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES
      "Assaggi $1 ma"
      -- "non senti nessun sapore particolare."
      SAY mia_AT:nessun_sapore.
  END VERB assaggia.
END ADD TO.



-->gruppo_mangiabevi                                            @BEVI <-- @DRINK
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== bevi
--~-----------------------------------------------------------------------------
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
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "bere."


ADD TO EVERY liquido
  VERB bevi
    CHECK mia_AT CAN bere
      ELSE SAY mia_AT:azione_bloccata.
    AND liq IS potabile
      ELSE
        IF liq IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "bere."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND liq IS raggiungibile AND liq IS NOT distante
      ELSE
        IF liq IS NOT raggiungibile
          THEN
            IF liq IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF liq IS distante
          THEN
            IF liq IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES
      IF liq:recipiente = recipiente_fittizio
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
          IF liq:recipiente NOT DIRECTLY IN hero
            THEN
              IF liq:recipiente IS NOT prendibile
                -- L'azione termina qui se il contenitore non è prendibile:
                THEN SAY mia_AT:impossibile_maneggiare_liq1.
              --THEN "You can't carry" SAY THE liq. "around in your bare hands."
                ELSE
                  LOCATE recipiente OF liq IN hero.
                  "(prima prendi" SAY THE THIS:recipiente. SAY THIS:prep_DI. SAY THIS. "$$)$n"
              END IF.

          END IF.
          -- <<< prendi implicito <<<

          IF liq IN hero
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

-->gruppo_mangiabevi                                            @MANGIA <-- @EAT
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== mangia
--~-----------------------------------------------------------------------------
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
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "mangiare."


ADD TO EVERY OBJECT
  VERB mangia
    CHECK mia_AT CAN mangiare
      ELSE SAY mia_AT:azione_bloccata.
    AND cibo IS commestibile
      ELSE
        IF cibo IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "mangiare."
    AND cibo IS prendibile
      ELSE SAY  mia_AT:ogg1_non_posseduto.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND cibo IS raggiungibile AND cibo IS NOT distante
      ELSE
        IF cibo IS NOT raggiungibile
          THEN
            IF cibo IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF cibo IS distante
          THEN
            IF cibo IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
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


-->gruppo_mangiabevi                                            @MORDI <-- @BITE
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== mordi
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `mordi`.
--<

-- SYNONYMS chew = mordi.

-- @NOTE: perché 'ogg' e non 'cibo' dato che deve essere 'commestibile'?

SYNTAX mordi = mordi (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "mordere."



ADD TO EVERY OBJECT
  VERB mordi
    CHECK mia_AT CAN mordere
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS commestibile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "mordere."
    AND ogg IS prendibile
      ELSE SAY  mia_AT:ogg1_non_posseduto.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS NOT distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES
      -- >>> prendi implicito: >>>
      IF ogg NOT DIRECTLY IN hero
        THEN LOCATE ogg IN hero.
          SAY  mia_AT:riferisci_prendi_implicito.
      END IF.
      -- <<< prendi implicito <<<

      "Dai un morso" SAY ogg:prep_A. "$1 ma"
      -- "non senti nessun sapore particolare."
      SAY mia_AT:nessun_sapore.
  END VERB mordi.
END ADD TO.




-->gruppo_mangiabevi                                         @SORSEGGIA <-- @SIP
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== sorseggia
--~-----------------------------------------------------------------------------
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
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "sorseggiare."


ADD TO EVERY liquido
  VERB sorseggia
    CHECK mia_AT CAN sorseggiare
      ELSE SAY mia_AT:azione_bloccata.
    AND liq IS potabile
      ELSE
        IF liq IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "sorseggiare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND liq IS raggiungibile AND liq IS NOT distante
      ELSE
        IF liq IS NOT raggiungibile
          THEN
            IF liq IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF liq IS distante
          THEN
            IF liq IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES
      IF liq:recipiente = recipiente_fittizio
        -- Se il liquido non ha un contenitore (p.es. se l'eroe beve un sorso
        -- dal fiume) l'azione viene eseguita con successo.
        THEN "Bevi un sorso di" SAY liq. "."
          -- "You take a sip of" SAY THE liq. "."
        ELSE
          -- >>> prendi implicito: >>>
          IF liq:recipiente NOT DIRECTLY IN hero
            THEN
              IF liq:recipiente IS NOT prendibile
                -- Se il recipiente non può essere preso, l'azione si ferma qui.
                THEN SAY mia_AT:impossibile_maneggiare_liq1.
                ELSE LOCATE recipiente OF liq IN hero.
                "(prima prendi" SAY THE recipiente OF liq. "$$)$n"
              END IF.
          END IF.
          -- <<< prendi implicito <<<
      END IF.

      IF liq IN hero    -- i.e. if the implicit taking was successful
        THEN
          IF liq:recipiente IS NOT aperto
--                                                                              TRANSLATE!
            THEN "You can't, since" SAY THE recipiente OF liq. "is closed."
            ELSE "Bevi un sorso di" SAY liq. "."
              -- "You take a sip of" SAY THE liq. "."
          END IF.
      END IF.
  END VERB sorseggia.
END ADD TO.


-- See also the verb 'drink'.



-->gruppo_svuota(20600)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Riempire, svuotare e versare
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi per riempire e svuotare i contenitori e versarne
--| il contenuto (a terra o su/in un altro contenitore):
--| 
--| * `riempi`
--| * `riempi_con`
--| * `svuota`
--| * `svuota_in`
--| * `svuota_su`
--| * `versa`
--| * `versa_in`
--| * `versa_su`
--| 
--| In questo modulo, i verbi `svuota` e `versa` hanno sintassi e comportamento
--| simili; tuttavia non sono dichiarati sinonimi (ossia, hanno sintassi
--| indipendenti) poiché il loro uso non si sovrappone del tutto. Per esempio, è
--| possibile versare un liquido ma non svuotarlo.
--| 
--| Questa è la ragione per cui in `lib_classi.i` questi verbi sono ridefiniti
--| nella classe `liquido` affinché si possa utilizzare il verbo `versa` con un
--| liquido ma non il verbo `svuota`.
--<


-->gruppo_svuota                                               @RIEMPI <-- @FILL
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== riempi
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `riempi`.
--<

-- # 'riempi' 'colma'

-- SYNTAX fill = fill (cont)

SYNTAX riempi = riempi (cont)
  WHERE cont IsA OBJECT
    ELSE
      IF cont IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "riempire."
  AND cont IsA CONTAINER
    ELSE
      IF cont IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "riempire."


ADD TO EVERY OBJECT
  VERB riempi
    CHECK mia_AT CAN riempire
      ELSE SAY mia_AT:azione_bloccata.
    AND cont IS esaminabile
      ELSE
        IF cont IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "riempire."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    DOES
      SAY mia_AT:specificare_CON_cosa. "riempire" SAY THE cont.
      -- "You have to say what you want to fill" SAY THE cont. "with."
    END VERB riempi.
END ADD TO.

-->gruppo_svuota                                      @RIEMPI CON <-- @FILL WITH
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== riempi_con
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `riempi_con`.
--<


-- SYNTAX fill_with = fill (cont) 'with' (sostanza)

SYNTAX riempi_con = riempi (cont) con (sostanza)
  WHERE cont IsA OBJECT
    ELSE
      IF cont IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "riempire."
  AND cont IsA CONTAINER
    ELSE
      IF cont IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "riempire."
  AND sostanza IsA OBJECT
    ELSE
      IF sostanza IS NOT plurale
        THEN SAY mia_AT:ogg2_inadatto_CON_sg.
        ELSE SAY mia_AT:ogg2_inadatto_CON_pl.
      END IF.
      "riempire" SAY THE cont. "."


ADD TO EVERY OBJECT
  VERB riempi_con
    WHEN cont
      CHECK mia_AT CAN riempire_con
        ELSE SAY mia_AT:azione_bloccata.
      AND cont <> sostanza
        ELSE SAY mia_AT:azione_insensata.
      AND sostanza IS esaminabile
        ELSE
          IF sostanza IS NOT plurale
            THEN SAY mia_AT:ogg2_inadatto_CON_sg.
            ELSE SAY mia_AT:ogg2_inadatto_CON_pl.
          END IF.
          "riempire" SAY THE cont. "."
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
--                                                                              TRANSLATE!
      AND sostanza NOT IN cont
        ELSE SAY mia_AT:check_obj_not_in_cont2.
      AND sostanza IS prendibile
        ELSE SAY  mia_AT:ogg2_non_posseduto.
     -- ELSE SAY mia_AT:check_obj2_takeable1.
      AND cont IS raggiungibile AND cont IS NOT distante
        ELSE
          IF cont IS NOT raggiungibile
            THEN
              IF cont IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF cont IS distante
            THEN
              IF cont IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg. "."
                ELSE SAY mia_AT:ogg1_distante_pl. "."
              END IF.
          END IF.
      AND sostanza IS raggiungibile AND sostanza IS NOT distante
        ELSE
          IF sostanza IS NOT raggiungibile
            THEN
              IF sostanza IS NOT plurale
                THEN SAY mia_AT:ogg2_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg2_non_raggiungibile_pl.
              END IF.
          ELSIF sostanza IS distante
            THEN
              IF sostanza IS NOT plurale
                THEN SAY mia_AT:ogg2_distante_sg. "."
                ELSE SAY mia_AT:ogg2_distante_pl. "."
              END IF.
          END IF.
      DOES
        -- allow the action at individual substances only!
        "Non puoi riempire" SAY THE cont. "con" SAY THE sostanza. "."
     -- "You can't fill" SAY THE cont. "with" SAY THE sostanza. "."
  END VERB riempi_con.
END ADD TO.

-->gruppo_svuota                             @SVUOTA + @VERSA <-- @EMPTY + @POUR
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== svuota + versa
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `svuota` + `versa`.
--<

-- @NOTE: i6 adotta anche il sinonimo 'rovescia'.

SYNTAX svuota = svuota (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "svuotare."
  AND ogg IsA CONTAINER
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "svuotare."

  versa = versa (ogg)
    WHERE ogg IsA OBJECT
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "versare."
    AND ogg IsA CONTAINER
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "versare."


ADD TO EVERY OBJECT
  VERB svuota, versa
    CHECK mia_AT CAN svuotare AND mia_AT CAN versare
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS prendibile
      ELSE SAY  mia_AT:ogg1_non_posseduto.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    AND ogg IS aperto
      ELSE
        IF ogg IS NOT femminile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:imp_ogg1_chiuso_ms.
              ELSE SAY mia_AT:imp_ogg1_chiuso_mp.
            END IF.
          ELSE
            IF ogg IS NOT plurale
              THEN SAY mia_AT:imp_ogg1_chiuso_fs.
              ELSE SAY mia_AT:imp_ogg1_chiuso_fp.
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
        THEN
     -- THEN "There is nothing in" SAY THE ogg. "."
          IF ogg IS NOT plurale
            --  "ci provi, ma $+1 [era/erano] vuot$$"
            THEN SAY mia_AT:ogg1_vuoto_sg.
            ELSE SAY mia_AT:ogg1_vuoto_pl.
          END IF.
          SAY ogg:vocale. "."
        ELSE
          "Svuoti il contenuto" SAY ogg:prep_DI. SAY ogg.
            IF pavimento HERE -- (ossia, se siamo in una 'stanza')
              THEN "sul pavimento."
              ELSE "in terra."
            END IF.
          EMPTY ogg AT hero.
      END IF.

  END VERB svuota. -- + versa
END ADD TO.

-->gruppo_svuota                 @SVUOTA IN + @VERSA IN <-- @EMPTY IN + @POUR IN
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== svuota_in + versa_in
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `svuota_in` + `versa_in`.
--<

SYNTAX svuota_in = svuota (ogg) 'in' (cont)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "svuotare."
  AND ogg IsA CONTAINER
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "svuotare."
  AND cont IsA OBJECT
    ELSE
      IF cont IsA ACTOR
        THEN SAY mia_AT:azione_insensata.
        ELSE
          IF ogg IS NOT plurale
            THEN SAY mia_AT:ogg2_inadatto_IN_sg.
            ELSE SAY mia_AT:ogg2_inadatto_IN_pl.
          END IF. "svuotare cose."
      END IF.
  AND cont IsA CONTAINER
    ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg2_inadatto_IN_sg.
        ELSE SAY mia_AT:ogg2_inadatto_IN_pl.
      END IF. "svuotare cose."


versa_in = versa (ogg) 'in' (cont)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "versare."
  AND ogg IsA CONTAINER
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "versare."
  AND cont IsA OBJECT
    ELSE
      IF cont IsA ACTOR
        THEN SAY mia_AT:azione_insensata.
        ELSE
          IF ogg IS NOT plurale
            THEN SAY mia_AT:ogg2_inadatto_IN_sg.
            ELSE SAY mia_AT:ogg2_inadatto_IN_pl.
          END IF. "versare cose."
      END IF.
  AND cont IsA CONTAINER
    ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg2_inadatto_IN_sg.
        ELSE SAY mia_AT:ogg2_inadatto_IN_pl.
      END IF. "versare cose."



ADD TO EVERY OBJECT
  VERB svuota_in, versa_in
    WHEN ogg
      CHECK mia_AT CAN svuotare_in AND mia_AT CAN versare_in
        ELSE SAY mia_AT:azione_bloccata.
      AND ogg <> cont
        ELSE SAY mia_AT:azione_insensata.
      AND ogg IS prendibile
        ELSE SAY  mia_AT:ogg1_non_posseduto.
      AND cont NOT IN ogg
        ELSE SAY mia_AT:azione_insensata.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
              END IF.
          END IF.
      AND cont IS raggiungibile AND cont IS NOT distante
        ELSE
          IF cont IS NOT raggiungibile
            THEN
              IF cont IS NOT plurale
                THEN SAY mia_AT:ogg2_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg2_non_raggiungibile_pl.
              END IF.
          ELSIF cont IS distante
            THEN
              IF cont IS NOT plurale
                THEN SAY mia_AT:ogg2_distante_sg.
                ELSE SAY mia_AT:ogg2_distante_pl.
              END IF.
          END IF.
      AND ogg IN consentiti OF cont
        ELSE
          IF ogg IS NOT plurale
--                                                                              TRANSLATE!
            THEN SAY mia_AT:check_obj_allowed_in_sg.
            ELSE SAY mia_AT:check_obj_allowed_in_pl.
          END IF.
      AND ogg IS aperto
        ELSE
          IF ogg IS NOT femminile
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:imp_ogg1_chiuso_ms.
                ELSE SAY mia_AT:imp_ogg1_chiuso_mp.
              END IF.
            ELSE
              IF ogg IS NOT plurale
                THEN SAY mia_AT:imp_ogg1_chiuso_fs.
                ELSE SAY mia_AT:imp_ogg1_chiuso_fp.
              END IF.
          END IF.
      AND cont IS aperto
        ELSE
          IF cont IS NOT femminile
            THEN
              IF cont IS NOT plurale
                THEN SAY mia_AT:imp_ogg2_chiuso_ms.
                ELSE SAY mia_AT:imp_ogg2_chiuso_mp.
              END IF.
            ELSE
              IF cont IS NOT plurale
                THEN SAY mia_AT:imp_ogg2_chiuso_fs.
                ELSE SAY mia_AT:imp_ogg2_chiuso_fp.
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
        THEN
     -- THEN "There is nothing in" SAY THE ogg. "."
          IF ogg IS NOT plurale
            --  "ci provi, ma $+1 [era/erano] vuot$$"
            THEN SAY mia_AT:ogg1_vuoto_sg.
            ELSE SAY mia_AT:ogg1_vuoto_pl.
          END IF.
          SAY ogg:vocale. "."
        ELSE
          EMPTY ogg IN cont.
          "Svuoti il contenuto" SAY ogg:prep_DI. SAY ogg.
          SAY cont:prep_IN. SAY cont. "."
       -- "You $v the contents of" SAY THE ogg.
       -- "in" SAY THE cont. "."
      END IF.
     END VERB svuota_in.
END ADD TO.


-->gruppo_svuota                 @SVUOTA SU + @VERSA SU <-- @EMPTY ON + @POUR ON
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== svuota_su + versa_su
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `svuota_su` + `versa_su`.
--<


SYNTAX svuota_su = svuota (ogg) su (superficie)
    WHERE ogg IsA OBJECT
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "svuotare."
    AND ogg IsA CONTAINER
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "svuotare."
    AND superficie IsA THING
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:ogg2_inadatto_SU_sg.
          ELSE SAY mia_AT:ogg2_inadatto_SU_pl.
        END IF. "svuotare cose."
    AND superficie IsA CONTAINER
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:ogg2_inadatto_SU_sg.
          ELSE SAY mia_AT:ogg2_inadatto_SU_pl.
        END IF. "svuotare cose."

  versa_su = versa (ogg) su (superficie)
    WHERE ogg IsA OBJECT
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "versare."
    AND ogg IsA CONTAINER
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "versare."
    AND superficie IsA OBJECT
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:ogg2_inadatto_SU_sg.
          ELSE SAY mia_AT:ogg2_inadatto_SU_pl.
        END IF. "versare cose."
    AND superficie IsA CONTAINER
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:ogg2_inadatto_SU_sg.
          ELSE SAY mia_AT:ogg2_inadatto_SU_pl.
        END IF. "svuotare cose."


ADD TO EVERY THING
  VERB svuota_su, versa_su
      WHEN ogg
      CHECK mia_AT CAN svuotare_su AND mia_AT CAN versare_su
        ELSE SAY mia_AT:azione_bloccata.
      AND ogg <> superficie
        ELSE SAY mia_AT:azione_insensata.
      AND ogg IS prendibile
        ELSE SAY  mia_AT:ogg1_non_posseduto.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
              END IF.
          END IF.
      AND superficie IS raggiungibile AND superficie IS NOT distante
        ELSE
          IF superficie IS NOT raggiungibile
            THEN
              IF superficie IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF superficie IS distante
            THEN
              IF superficie IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
              END IF.
          END IF.
      AND ogg IS aperto
        ELSE
          IF ogg IS NOT femminile
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:imp_ogg1_chiuso_ms.
                ELSE SAY mia_AT:imp_ogg1_chiuso_mp.
              END IF.
            ELSE
              IF ogg IS NOT plurale
                THEN SAY mia_AT:imp_ogg1_chiuso_fs.
                ELSE SAY mia_AT:imp_ogg1_chiuso_fp.
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
          THEN
       -- THEN "There is nothing in" SAY THE ogg. "."
            IF ogg IS NOT plurale
              --  "ci provi, ma $+1 [era/erano] vuot$$"
              THEN SAY mia_AT:ogg1_vuoto_sg.
              ELSE SAY mia_AT:ogg1_vuoto_pl.
            END IF.
            SAY ogg:vocale. "."
          ELSE
            IF superficie = pavimento OR superficie = suolo
              THEN EMPTY ogg AT hero.
              ELSE EMPTY ogg IN superficie.
            END IF.
--                                                                              TRANSLATE!
            "Svuoti il contenuto" SAY ogg:prep_DI. SAY ogg.
            SAY superficie:prep_SU. SAY superficie. "."
         -- "You $v the contents of" SAY THE ogg.
         -- "on" SAY THE superficie. "."
        END IF.
  END VERB svuota_su.
END ADD TO.

-->gruppo_guarda(20700)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Guardare ed esaminare
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo raccoglie i verbi '`eamina`' e '`guarda`', con le loro varianti:
--| 
--| * `esamina`
--| * `guarda`
--| * `guarda_attraverso`
--| * `guarda_dietro`
--| * `guarda_fuori_da`
--| * `guarda_in`
--| * `guarda_sotto`
--| * `guarda_su`
--| * `ispeziona`
--| 
--| Verbi di questo gruppo non ancora tradotti:
--| 
--| * `search` (non sono certo se appartenga a questo gruppo o meno)
--<


-->gruppo_guarda                              @ESAMINA <-- @EXAMINE (+ @LOOK AT)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== esamina
--~-----------------------------------------------------------------------------
--~=============================================================================
--| 
--| Se l'oggetto esaminato è `leggibile` e l'attributo `xDesc` è una stringa
--| vuota, allora `esamina` si comporterà come il verbo `leggi` e mostrerà il
--| contenuto del'attributo `testo`. Se invece la `xDesc` dell'oggetto contiene
--| del testo, allora `esamina` lo tratterà come qualsiasi altro oggetto e
--| mostrerà il testo di `xDesc`.
--| 
--| Questo comportamento è stato modificato rispetto alla libreria originale
--| inglese, dove `esamina` si comportava sempre come `leggi` in presenza
--| dell'attributo `leggibile`. Questa modifica è stata apportata al fine di
--| consentire all'autore di rendere un oggetto leggibile anche esaminabile --
--| p.es. se creiamo un antico libro magico, ci piacerebbe che esaminandolo il
--| giocatore possa ottenere una descrizione del manufatto ("`Un manoscritto
--| rilegato in pelle, sembra molto antico.`") al fine di rafforzare l'atmosfera
--| del gioco e valorizzare l'oggetto.
--| 
--| Qualora non fosse importante fornire una descrizione dell'oggetto (p.es.
--| un semplice post-it o un foglio di carta) e si preferisse che esaminare
--| l'oggetto equivalesse a leggerlo, sarà sufficiente non fornire all'oggetto
--| l'attributo `xDesc` (che di default è una stringa vuota).
--<
-->todo_checklist(.666) Doxter
--| * [x] Descrizione `esamina` (da completare).
--<


-- SYNTAX examine = examine (obj)
--        examine = 'look' 'at' (obj).
--        examine = 'look' (obj).  -- note that this formulation is allowed, too
-- SYNONYMS
--   'check', inspect, observe, x = examine.

SYNTAX esamina = esamina (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:illegal_parameter_examine_sg.
        ELSE SAY mia_AT:illegal_parameter_examine_pl.
      END IF.

       esamina = 'guarda' (ogg).

SYNONYMS
  descrivi, osserva, X = esamina.


ADD TO EVERY THING
  VERB esamina
    CHECK mia_AT CAN esaminare
      ELSE SAY mia_AT:azione_bloccata.
        AND ogg IS esaminabile
          ELSE
            IF ogg IS NOT plurale
    --                                                                              TRANSLATE!
              THEN SAY mia_AT:check_obj_suitable_examine_sg.
              ELSE SAY mia_AT:check_obj_suitable_examine_pl.
            END IF.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS NOT scenario
      ELSE
        IF ogg IS NOT plurale
          --              "$+1 non [è/sono] importante ai fini del gioco."
          THEN SAY mia_AT:ogg1_scenario_sg.
          ELSE SAY mia_AT:ogg1_scenario_pl.
        END IF.

    DOES
      IF ogg:xDesc <> ""
        THEN SAY ogg:xDesc.
      ELSIF ogg IS leggibile AND ogg:testo <> ""
      --+-----------------------------------------------------------------------
      --| Se la stringa 'xDesc' è vuota, e si tratta di un oggetto leggibile
      --| contenente del 'testo', allora ESAMINA si comporterà come LEGGI:
      --+-----------------------------------------------------------------------
        THEN "Leggi" SAY THE ogg. "."
          IF ogg IS NOT plurale
            THEN "Dice"
            ELSE "Dicono"
          END IF.
          """$$" SAY ogg:testo. "$$""."
      ELSIF ogg = hero
--  @TODO: Servirà vocale di Hero per PG femminile!                             FIXME!
        THEN "Non noti niente di insolito in te stesso."
        ELSE SAY mia_AT:descrizione_standard_ogg1.
     END IF.
  END VERB esamina.
END ADD TO.


-->gruppo_guarda                                               @GUARDA <-- @LOOK
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== guarda
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `guarda`.
--<

-- SYNTAX 'look' = 'look'.
-- SYNONYMS l = 'look'.


SYNTAX guarda = guarda.


SYNONYMS l = guarda.


VERB guarda
  CHECK mia_AT CAN guardare
    ELSE SAY mia_AT:azione_bloccata.
  DOES
    INCREASE descritto OF CURRENT LOCATION.
    -- vedi 'lib_luoghi.i', attributo 'descritto'.
    LOOK.
END VERB guarda.


-->gruppo_guarda                            @GUARDA ATTRAVERSO <-- @LOOK THROUGH
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== guarda_attraverso
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `guarda_attraverso`.
--<


-- SYNTAX look_through = 'look' through (bulk)


SYNTAX guarda_attraverso = guarda attraverso (bulk)
  WHERE bulk IsA OBJECT
--                                                                              TRANSLATE!
    ELSE SAY mia_AT:illegal_parameter_look_through.


ADD TO EVERY OBJECT
  VERB guarda_attraverso
    CHECK mia_AT CAN guardare_attraverso
      ELSE SAY mia_AT:azione_bloccata.
--                                                                              TRANSLATE!
    AND bulk IS esaminabile
      ELSE SAY mia_AT:check_obj_suitable_look_through.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    DOES
--                                                                              TRANSLATE!
      "You can't see through" SAY THE bulk. "."
  END VERB guarda_attraverso.
END ADD TO.


-->gruppo_guarda                                 @GUARDA_DIETRO <-- @LOOK BEHIND
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== guarda_dietro
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `guarda_dietro`.
--<

-- SYNTAX look_behind = 'look' behind (bulk)


SYNTAX guarda_dietro = guarda dietro (bulk)
--                                                                              TRANSLATE!
  WHERE bulk IsA THING
    ELSE SAY mia_AT:illegal_parameter_there.
-- @TODO: Aggiungi controllo per suoni, oppure implementa il verbo sulla classe
--        dei suoni.                                                            FIXME!

ADD TO EVERY THING
  VERB guarda_dietro
    CHECK mia_AT CAN guardare_dietro
      ELSE SAY mia_AT:azione_bloccata.
    AND bulk IS esaminabile
      ELSE SAY  mia_AT:impossibile_guardare. "dietro $+1."
             -- check_obj_suitable_there  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
--                                                                              TRANSLATE!
    AND bulk <> hero
      ELSE SAY mia_AT:check_obj_not_hero7.
    DOES
      IF bulk IN hero
        THEN "Giri $+1 ma non noti niente di particolare."
          -- "You turn" SAY THE bulk. "in your hands but notice nothing unusual about it."
        ELSE "Non noti nulla di insolito dietro $+1."
          -- "You notice nothing unusual behind" SAY THE bulk. "."
      END IF.
  END VERB guarda_dietro.
END ADD TO.

-->gruppo_guarda                               @GUARDA FUORI DA <-- @LOOK OUT OF
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== guarda_fuori_da
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `guarda_fuori_da`.
--<


-- SYNTAX look_out_of = 'look' 'out' 'of' (ogg)


SYNTAX guarda_fuori_da = guarda fuori da (ogg)
  WHERE ogg IsA OBJECT
    ELSE
-- @TODO: Add checks for Hero!                                                  FIXME!
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_DA_sg.
        ELSE SAY mia_AT:ogg1_inadatto_DA_pl.
      END IF.
      "guardare fuori."

ADD TO EVERY OBJECT
  VERB guarda_fuori_da
    CHECK mia_AT CAN guardare_fuori_da
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:ogg1_inadatto_DA_sg.
          ELSE SAY mia_AT:ogg1_inadatto_DA_pl.
        END IF.
        "guardare fuori."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    DOES
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_DA_sg.
        ELSE SAY mia_AT:ogg1_inadatto_DA_pl.
      END IF.
      "guardare fuori."
  END VERB guarda_fuori_da.
END ADD TO.

-->gruppo_guarda                                         @GUARDA IN <-- @LOOK IN
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== guarda_in
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `guarda_in`.
--<


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
      ELSE SAY mia_AT:azione_bloccata.
    AND cont IS esaminabile
      ELSE SAY  mia_AT:impossibile_guardare. "dentro $+1."
            --  check_obj_suitable_there  OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND cont IS aperto
      ELSE
        IF cont IS NOT femminile
          THEN
            IF cont IS NOT plurale
              THEN SAY mia_AT:imp_ogg1_chiuso_ms.
              ELSE SAY mia_AT:imp_ogg1_chiuso_mp.
            END IF.
          ELSE
            IF cont IS NOT plurale
              THEN SAY mia_AT:imp_ogg1_chiuso_fs.
              ELSE SAY mia_AT:imp_ogg1_chiuso_fp.
            END IF.
        END IF.
    DOES
      LIST cont.
  END VERB guarda_in.
END ADD TO.


-->gruppo_guarda                                   @GUARDA SOTTO <-- @LOOK UNDER
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== guarda_sotto
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `guarda_sotto`.
--<

-- SYNTAX look_under = 'look' under (bulk)


SYNTAX guarda_sotto = guarda sotto (bulk)
  WHERE bulk IsA THING
--                                                                              TRANSLATE!
    ELSE SAY mia_AT:illegal_parameter_there.



ADD TO EVERY THING
  VERB guarda_sotto
    CHECK mia_AT CAN guardare_sotto
      ELSE SAY mia_AT:azione_bloccata.
--                                                                              TRANSLATE!
    AND bulk IS esaminabile
      ELSE SAY mia_AT:check_obj_suitable_there.
--                                                                              TRANSLATE!
    AND bulk <> hero
      ELSE SAY mia_AT:check_obj_not_hero8.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    DOES
-- @NOTE: Perché non controlla se l'oggeto è posseduto dal giocatore (come fa in look_behind)?
      "Non noti nulla di insolito sotto $+1."
  --  "You notice nothing unusual under" SAY THE bulk. "."
  END VERB guarda_sotto.
END ADD TO.


-->gruppo_guarda                                         @GUARDA SU <-- @LOOK UP   
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== guarda_su
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `guarda_su`.
--<

-- SYNTAX look_up = 'look' up.
-- (see also CONSULT)

SYNTAX guarda_su = guarda su.


VERB guarda_su
  CHECK mia_AT CAN guardare_su
    ELSE SAY mia_AT:azione_bloccata.
  DOES "Guardando su non noti nulla di interessante."
    -- "Looking up, you see nothing unusual."
END VERB guarda_su.



-->gruppo_guarda                                          @ISPEZIONA <-- @SEARCH
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== ispeziona
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `ispeziona`.
--<

SYNTAX ispeziona = ispeziona (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF. "ispezionare."

SYNONYMS perquisisci = ispeziona.


ADD TO EVERY THING
  VERB ispeziona
    CHECK mia_AT CAN ispezionare
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg <> hero
      ELSE LIST hero.
    AND ogg IS inanimato
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:png1_non_gradirebbe_sg.
          ELSE SAY mia_AT:png1_non_gradirebbe_pl.
        END IF.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES
      "Non hai trovato niente di interessante." -- preso da i6
  END VERB ispeziona.
END ADD TO.



-->gruppo_commercio(20800)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Commerciare
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi per la compravendita:
--| 
--| * `compra`
--| * `vendi`
--| 
--<


-->gruppo_commercio                                             @COMPRA <-- @BUY
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== compra
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `compra`.
--<

-- SYNONYMS purchase = buy.

SYNTAX compra = compra (merce)
  WHERE merce IsA OBJECT
    ELSE
      IF merce IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "comprare."

SYNONYMS acquista = compra.


ADD TO EVERY OBJECT
  VERB compra
    CHECK mia_AT CAN comprare
      ELSE SAY mia_AT:azione_bloccata.
    AND merce IS esaminabile
      ELSE
        IF merce IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
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


-->gruppo_commercio                                             @VENDI <-- @SELL
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== vendi
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `vendi`.
--<

SYNTAX vendi = vendi (merce)
  WHERE merce IsA OBJECT
    ELSE
      IF merce IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "vendere."


ADD TO EVERY OBJECT
    VERB vendi
    CHECK mia_AT CAN vendere
      ELSE SAY mia_AT:azione_bloccata.
    AND merce IS esaminabile
      ELSE
        IF merce IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "vendere."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    DOES
      "Qui nessuno è interessanto ad acquistare" SAY THE merce. "."
   -- "There's nobody here who would be interested in buying" SAY THE merce. "."
    END VERB vendi.
END ADD TO.

-- Depending on the situation, it might be good to add a check whether the item is carried
-- by the hero or not, etc.


-->gruppo_rompi_aggiusta(20900)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Rompere, strappare, tagliare e riparare
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi per rompere, danneggiare, dividiere, spezzare
--| e riparare cose:
--| 
--| * `ripara`
--| * `rompi`
--| * `rompi_con`
--| * `strappa`
--| * `taglia`
--| * `taglia_con`
--<

-->gruppo_rompi_aggiusta                                        @RIPARA <-- @FIX
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== ripara
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `ripara`.
--<

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
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "riparare."

SYNONYMS aggiusta = ripara.


ADD TO EVERY OBJECT
  VERB ripara
    CHECK mia_AT CAN riparare
      ELSE SAY mia_AT:azione_bloccata.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
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
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES
      "Sii più specifico. Come intendi ripararl$$" SAY ogg:vocale. "?"
   -- "Please be more specific. How do you intend to fix it?"
  END VERB ripara.
END ADD TO.


-->gruppo_rompi_aggiusta                                       @ROMPI <-- @BREAK
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== rompi
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `rompi`.
--<


SYNTAX rompi = rompi (ogg)
    WHERE ogg IsA OBJECT
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "rompere."


SYNONYMS distruggi, spacca, sfonda = rompi.


ADD TO EVERY OBJECT
  VERB rompi
    CHECK mia_AT CAN rompere
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "rompere."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES
      -- "La violenza non è la giusta risposta a questo." ---> taken from i6
      SAY mia_AT:la_violenza_non_è_la_risposta.
  END VERB rompi.
END ADD TO.

-->gruppo_rompi_aggiusta                              @ROMPI_CON <-- @BREAK WITH
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== rompi_con
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `rompi_con`.
--<

-- SYNTAX break_with = break (obj) 'with' (instr)

SYNTAX rompi_con = rompi (ogg) con (strum)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "rompere."
  AND strum IsA OBJECT
    ELSE
      IF strum IS NOT plurale
        THEN SAY mia_AT:ogg2_inadatto_CON_sg.
        ELSE SAY mia_AT:ogg2_inadatto_CON_pl.
      END IF.
      "rompere" SAY THE ogg. "."


ADD TO EVERY OBJECT
  VERB rompi_con
    WHEN ogg
      CHECK mia_AT CAN rompere_con
        ELSE SAY mia_AT:azione_bloccata.
      AND ogg IS esaminabile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY mia_AT:ogg1_inadatto_sg.
            ELSE SAY mia_AT:ogg1_inadatto_pl.
          END IF.
          "rompere."
      AND strum IS esaminabile
        ELSE
          IF strum IS NOT plurale
            THEN SAY mia_AT:ogg2_inadatto_CON_sg.
            ELSE SAY mia_AT:ogg2_inadatto_CON_pl.
          END IF.
          "rompere" SAY THE ogg. "."
      AND ogg <> strum
        ELSE SAY mia_AT:azione_insensata.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND strum IN hero
        ---> @TODO!!                                                            TRANSLATE!
        ELSE SAY mia_AT:non_possiedi_ogg2.
        ---> @TODO!!                                                            TRANSLATE!
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
              END IF.
          END IF.
      DOES
        "Tentare di rompere" SAY THE ogg. "con" SAY THE strum.
        "non risolverebbe nulla."
      -- "Trying to break" SAY THE obj. "with" SAY THE strum.
      -- "wouldn't accomplish anything."
  END VERB rompi_con.
END ADD TO.


-->gruppo_rompi_aggiusta                                      @STRAPPA <-- @TEAR
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== strappa
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `strappa`.
--<

-- SYNTAX  tear = tear (ogg)
-- SYNONYMS rip = tear.

SYNTAX strappa = strappa (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "strappare."


ADD TO EVERY OBJECT
  VERB strappa
    CHECK mia_AT CAN strappare
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "strappare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES
      "Trying to $v" SAY THE ogg. "would be futile."
  END VERB strappa.
END ADD TO.


-->gruppo_rompi_aggiusta                                        @TAGLIA <-- @CUT
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== taglia
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `taglia`.
--<

-- NOTA: i6 Italian accetta questi sinomini di 'taglia':
--       'affetta' 'sfronda' 'sfoltisci' 'spacca' 'strappa'

-- SYNTAX cut = cut (ogg)

SYNTAX taglia = taglia (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "tagliare."


ADD TO EVERY OBJECT
  VERB taglia
    CHECK mia_AT CAN tagliare
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "tagliare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    DOES
      SAY mia_AT:specificare_CON_cosa. "tagliare" SAY THE ogg.
    -- "You need to specify what you want to cut" SAY THE ogg. "with."
    END VERB taglia.
END ADD TO.



-->gruppo_rompi_aggiusta                               @TAGLIA CON <-- @CUT WITH
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== taglia_con
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `taglia_con`.
--<

SYNTAX taglia_con = taglia (ogg) con (strum)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "tagliare."
  AND strum IsA OBJECT
    ELSE
      IF strum IS NOT plurale
        THEN SAY mia_AT:ogg2_inadatto_CON_sg.
        ELSE SAY mia_AT:ogg2_inadatto_CON_pl.
      END IF.
      "tagliare" SAY THE ogg. "."


ADD TO EVERY OBJECT
  VERB taglia_con
    WHEN ogg
      CHECK mia_AT CAN tagliare_con
        ELSE SAY mia_AT:azione_bloccata.
      AND ogg <> strum
        ELSE SAY mia_AT:azione_insensata.
      AND ogg IS esaminabile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY mia_AT:ogg1_inadatto_sg.
            ELSE SAY mia_AT:ogg1_inadatto_pl.
          END IF.
          "tagliare."
      AND strum IS esaminabile
        ELSE
          IF strum IS NOT plurale
            THEN SAY mia_AT:ogg2_inadatto_CON_sg.
            ELSE SAY mia_AT:ogg2_inadatto_CON_pl.
          END IF.
          "tagliare" SAY THE ogg. "."
      AND strum IN hero
        ELSE SAY mia_AT:non_possiedi_ogg2.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
              END IF.
          END IF.
      DOES
        "Non puoi tagliare" SAY THE ogg. "con" SAY THE strum. "."
     -- "You can't cut" SAY THE ogg. "with" SAY THE strum. "."
  END VERB taglia_con.
END ADD TO.



-->gruppo_dare(21000)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Dare e prendere
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo riguarda i verbi per dare, prendere e lasciare oggetti:
--| 
--| * `dai_a`
--| * `lascia`
--| * `prendi`
--| * `prendi_da`
--<


-->gruppo_dare                                                  @DAI_A <-- @GIVE  
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== dai_a
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `dai_a`.
--<


-- #NOTA: Aggiungere anche "'dai' 'a' (ricevente) (obj)"?

-- SYNTAX give_to = 'give' (obj) 'to' (recipient)

SYNTAX dai_a = 'dai' (ogg) 'a' (ricevente)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg = hero
        THEN SAY mia_AT:azione_insensata.
-- @NOTA: Qui serve una risposta ad hoc:                                        TRANSLATE!
        ELSE SAY mia_AT:illegal_parameter_obj.
      END IF.
  AND ricevente IsA ACTOR
    ELSE
      IF ricevente IS NOT plurale
        ---> @TODO!!                                                            TRANSLATE!
        THEN SAY mia_AT:illegal_parameter2_to_sg.
        ELSE SAY mia_AT:illegal_parameter2_to_pl.
      END IF.


SYNONYMS porgi, offri = dai.
-- SYNONYMS hand, offer = give.


ADD TO EVERY OBJECT
  VERB dai_a
        WHEN ogg
      CHECK mia_AT CAN dare -- (was CAN give)
        ELSE SAY mia_AT:azione_bloccata.
      AND ogg IS prendibile
        ELSE SAY  mia_AT:ogg1_non_posseduto.
      AND ogg <> ricevente
        ELSE SAY mia_AT:azione_insensata.
--                                                                              TRANSLATE!
      AND ricevente <> hero
        ELSE SAY mia_AT:check_obj2_not_hero3.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND ogg NOT IN ricevente
        ELSE
          IF ricevente IS NOT plurale
            THEN SAY mia_AT:ogg1_già_posseduto_da_png2_sg.
            ELSE SAY mia_AT:ogg1_già_posseduto_da_png2_pl.
          END IF.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
              END IF.
          END IF.
      AND ricevente IS raggiungibile AND ricevente IS NOT distante
        ELSE
          IF ricevente IS NOT raggiungibile
            THEN
              IF ricevente IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF ricevente IS distante
            THEN
              IF ricevente IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
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
        "Consegni $+1" SAY ricevente:prep_A. "$2."
  END VERB dai_a.
END ADD TO.


-->gruppo_dare                                                 @LASCIA <-- @DROP
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== lascia
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `lascia`.
--<

-- i6: lascia, lancia, abbandona, posa, metti giù

SYNTAX  lascia = lascia (ogg)*
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "lasciare." -- @TODO: "maneggiare"??                                      IMPROVE!

        lascia = abbandona (ogg)*.
        lascia = metti giù (ogg)*.
        lascia = posa (ogg)*.



ADD TO EVERY OBJECT
  VERB lascia
    CHECK mia_AT CAN lasciare
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IN hero
      ELSE
        IF ogg IN abbigliamento
          THEN SAY mia_AT:indumento_andrebbe_rimosso.
          ELSE SAY mia_AT:non_possiedi_ogg1.
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




-->gruppo_dare                                                 @PRENDI <-- @TAKE
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== prendi
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `prendi`.
--<


-- TAKE (+ carry, get, grab, hold, obtain, pick up)

SYNTAX prendi = prendi (ogg)
      WHERE ogg IsA THING
        ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
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
      ELSE SAY mia_AT:azione_bloccata. --#-> "Non puoi farlo."
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "prendere."
    AND ogg <> hero
      ELSE SAY mia_AT:azione_insensata.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS NOT scenario
      ELSE
        IF THIS IS NOT plurale
          --              "$+1 non [è/sono] importante ai fini del gioco."
          THEN SAY mia_AT:ogg1_scenario_sg.
          ELSE SAY mia_AT:ogg1_scenario_pl.
        END IF.
    AND ogg IS spostabile
   -- ELSE SAY mia_AT:check_obj_movable. --#-> "It's not possible to $v $+1."
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
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "prendere."
    AND ogg NOT DIRECTLY IN hero
      -- ossia, l'oggetto da prendere non è già tra le cose possedute dall'eroe
      ELSE
        --         "Possiedi già $+1."
        SAY mia_AT:ogg1_già_posseduto.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
        AND peso Of ogg < 50
          ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:ogg1_troppo_pesante_sg.
          ELSE SAY mia_AT:ogg1_troppo_pesante_pl.
        END IF. "."
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
                THEN EXCLUDE ogg FROM hero:indossati.
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



-->gruppo_dare                                         @PRENDI DA <-- @TAKE FROM
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== prendi_da
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `prendi_da`.
--<

--------------------------------------------------------------------------------
-- NOTE: Alternative 'dai' prepositions must be implement separately because
--       these can't be covered by synonyms due to conflicts with verb "dai"!!!
--------------------------------------------------------------------------------

SYNTAX prendi_da = 'prendi' (ogg) 'da' (detentore)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "prendere." -- @TODO: "maneggiare"??                                      IMPROVE
  AND detentore IsA THING
    ELSE
      IF detentore IS NOT plurale
        ---> @TODO!!                                                            TRANSLATE!
        THEN SAY mia_AT:illegal_parameter2_from_sg. ---> "That's not something you can take things from."
        ELSE SAY mia_AT:illegal_parameter2_from_pl. ---> "Those are not something you can take things from."
      END IF.
  AND detentore IsA CONTAINER
    ELSE
      IF detentore IS NOT plurale
        ---> @TODO!!                                                            TRANSLATE!
        THEN SAY mia_AT:illegal_parameter2_from_sg.
        ELSE SAY mia_AT:illegal_parameter2_from_pl.
      END IF.

-- @TODO: Devo verificare la sintassi onnipotente!                              CHECK!

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
        ELSE SAY mia_AT:azione_bloccata.
      AND ogg <> hero
        ELSE SAY mia_AT:azione_insensata.
      AND detentore <> hero
        ELSE SAY mia_AT:azione_insensata.
      AND ogg NOT DIRECTLY IN hero
        ELSE
        --         "Possiedi già $+1."
          SAY mia_AT:ogg1_già_posseduto.
      AND ogg <> detentore
        ELSE SAY mia_AT:azione_insensata.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND ogg IS NOT scenario
        ELSE
          IF ogg IS NOT plurale
          --              "$+1 non [è/sono] importante ai fini del gioco."
            THEN SAY mia_AT:ogg1_scenario_sg.
            ELSE SAY mia_AT:ogg1_scenario_pl.
          END IF.
      AND detentore IS NOT scenario
        ELSE
          IF detentore IS NOT plurale
          --              "$+1 non [è/sono] importante ai fini del gioco."
            THEN SAY mia_AT:ogg2_scenario_sg.
            ELSE SAY mia_AT:ogg2_scenario_pl.
          END IF.
--                                                                              TRANSLATE!
      AND ogg IS spostabile
        ELSE SAY mia_AT:check_obj_movable.
      AND ogg IS prendibile
            ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY mia_AT:ogg1_inadatto_sg.
            ELSE SAY mia_AT:ogg1_inadatto_pl.
          END IF.
          "prendere."
      AND detentore IS raggiungibile AND detentore IS NOT distante
        ELSE
          IF detentore IS NOT raggiungibile
            THEN
              IF detentore IS NOT plurale
                THEN SAY mia_AT:ogg2_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg2_non_raggiungibile_pl.
              END IF.
          ELSIF detentore IS distante
            THEN
              IF detentore IS NOT plurale
                THEN SAY mia_AT:ogg2_distante_sg.
                ELSE SAY mia_AT:ogg2_distante_pl.
              END IF.
          END IF.
      AND peso Of ogg < 50
            ELSE
          IF ogg IS NOT plurale
            THEN SAY mia_AT:ogg1_troppo_pesante_sg.
            ELSE SAY mia_AT:ogg1_troppo_pesante_pl.
          END IF. "."
          AND ogg IN detentore
        ELSE
          IF detentore IS inanimato
            THEN
              IF detentore IsA supporto
                THEN
                  IF ogg IS NOT plurale
--                                                                              TRANSLATE!
                    THEN SAY mia_AT:check_obj_on_surface_sg.
                    ELSE SAY mia_AT:check_obj_on_surface_pl.
                  END IF.
                ELSE
                  IF ogg IS NOT plurale
--                                                                              TRANSLATE!
                    THEN SAY mia_AT:check_obj_in_cont_sg.
                    ELSE SAY mia_AT:check_obj_in_cont_pl.
                  END IF.
              END IF.
            ELSE
              IF detentore IS NOT plurale
--                                                                              TRANSLATE!
                THEN SAY mia_AT:check_obj_in_act_sg.
                ELSE SAY mia_AT:check_obj_in_act_pl.
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

-->gruppo_vestirsi(21100)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Vestirsi e svestirsi
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo raccoglie i verbi riguardanti il vestiario e denudarsi:
--| 
--| * `indossa`
--| * `togliti`
--| * `spogliati`
--<


-->gruppo_vestirsi                                            @INDOSSA <-- @WEAR
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== indossa
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `indossa`.
--<


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
            THEN SAY mia_AT:ogg1_inadatto_sg.
            ELSE SAY mia_AT:ogg1_inadatto_pl.
          END IF.
          "indossare."
        ELSE SAY mia_AT:azione_insensata.
      END IF.

        indossa = mettiti (ogg).


ADD TO EVERY OBJECT
  VERB indossa
    CHECK mia_AT CAN indossare
        ELSE SAY mia_AT:azione_bloccata.
    AND ogg NOT IN abbigliamento
      ELSE SAY mia_AT:ogg1_già_indossato.
    AND ogg IS prendibile
      ELSE SAY  mia_AT:ogg1_non_posseduto.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.

    DOES
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "indossare."

  END VERB indossa.
END ADD TO.


-->gruppo_vestirsi                                          @TOGLITI <-- @REMOVE
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== togliti
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `togliti`.
--<

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
            THEN SAY mia_AT:ogg1_inadatto_sg.
            ELSE SAY mia_AT:ogg1_inadatto_pl.
          END IF.
          "indossare o toglierti."
        ELSE SAY mia_AT:azione_insensata.
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
      ELSE SAY mia_AT:azione_bloccata.
    DOES
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "indossare o toglierti."
  END VERB togliti.
END ADD TO.


-->gruppo_vestirsi                                       @SPOGLIATI <-- @UNDRESS
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== spogliati
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `spogliati`.
--<

-- @ALTRI SINONIMI: 'denudati'

SYNTAX spogliati = spogliati.


SYNONYMS svestiti = spogliati.


VERB spogliati
  CHECK mia_AT CAN spogliarsi
    ELSE SAY mia_AT:azione_bloccata.   --# "Non puoi farlo."
  AND CURRENT LOCATION IS illuminato
    ELSE SAY mia_AT:imp_luogo_buio. --# "È troppo buio."
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

-->gruppo_mettere(21200)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Mettere
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include il verbo '`mettere`' e simili:
--| 
--| * `metti`
--| * `metti_contro`
--| * `metti_dietro`
--| * `metti_in`
--| * `metti_sotto`
--| * `metti_su`
--| * `metti_vicino`
--| 
--| Verbi di questo gruppo non ancora tradotti:
--| 
--<


-->gruppo_mettere                                                @METTI <-- @PUT
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== metti
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `metti`.
--<

-- SYNTAX put = put (ogg)
-- SYNONYMS lay, place = put.

SYNTAX metti = metti (ogg)
-- @NOTA: Qui serve una risposta ad hoc:                                        TRANSLATE!
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg = hero
        THEN SAY mia_AT:azione_insensata.
        ELSE SAY mia_AT:illegal_parameter_obj.
      END IF.


ADD TO EVERY OBJECT
  VERB metti
    CHECK mia_AT CAN mettere
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IN HERO
      ELSE SAY mia_AT:non_possiedi_ogg1.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    DOES
      -- "Devi specificare dove vorresti"
      SAY mia_AT:specificare_DOVE. "metterl$$" SAY ogg:vocale. "."
  END VERB metti.
END ADD TO.

-->gruppo_mettere   @METTI CONTRO | @METTI DIETRO <-- @PUT AGAINST | @PUT BEHIND
--~                 @METTI VICINO | @METTI SOTTO  <-- @PUT NEAR    | @PUT UNDER
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== metti_contro + metti_dietro + metti_vicino + metti_sotto
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `metti_contro` + `metti_dietro` + `metti_vicino` + `metti_sotto`.
--<


SYNTAX metti_contro = metti (ogg) contro (bulk)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg = hero
        THEN SAY mia_AT:azione_insensata.
-- @NOTA: Qui serve una risposta ad hoc:                                        TRANSLATE!
        ELSE SAY mia_AT:illegal_parameter_obj.
      END IF.
  AND bulk IsA THING
    ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg2_inadatto_CONTRO_sg.
        ELSE SAY mia_AT:ogg2_inadatto_CONTRO_pl.
      END IF. "mettere cose."



SYNTAX metti_dietro = metti (ogg) dietro (bulk)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg = hero
        THEN SAY mia_AT:azione_insensata.
-- @NOTA: Qui serve una risposta ad hoc:                                        TRANSLATE!
        ELSE SAY mia_AT:illegal_parameter_obj.
      END IF.
  AND bulk IsA THING
    ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg2_inadatto_DIETRO_sg.
        ELSE SAY mia_AT:ogg2_inadatto_DIETRO_pl.
      END IF. "mettere cose."



SYNTAX metti_vicino = metti (ogg) vicino a (bulk)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg = hero
        THEN SAY mia_AT:azione_insensata.
-- @NOTA: Qui serve una risposta ad hoc:                                        TRANSLATE!
        ELSE SAY mia_AT:illegal_parameter_obj.
      END IF.
  AND bulk IsA THING
    ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg2_inadatto_VICINO_A_sg.
        ELSE SAY mia_AT:ogg2_inadatto_VICINO_A_pl.
      END IF. "mettere cose."



SYNTAX  metti_sotto = metti (ogg) sotto (bulk)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg = hero
        THEN SAY mia_AT:azione_insensata.
-- @NOTA: Qui serve una risposta ad hoc:                                        TRANSLATE!
        ELSE SAY mia_AT:illegal_parameter_obj.
      END IF.
  AND bulk IsA THING
    ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg2_inadatto_SOTTO_sg.
        ELSE SAY mia_AT:ogg2_inadatto_SOTTO_pl.
      END IF. "mettere cose."

        metti_sotto = metti (ogg) sotto a (bulk).


ADD TO EVERY OBJECT
  VERB metti_contro, metti_dietro, metti_vicino, metti_sotto
    WHEN ogg
      CHECK mia_AT CAN mettere_contro AND mia_AT CAN mettere_dietro
      AND mia_AT CAN mettere_vicino AND mia_AT CAN mettere_sotto
        ELSE SAY mia_AT:azione_bloccata.
      AND bulk NOT IN hero
        ELSE SAY mia_AT:azione_futile.
      AND ogg <> bulk
        ELSE SAY mia_AT:azione_insensata.
      AND ogg IS prendibile
        ELSE SAY  mia_AT:ogg1_non_posseduto.
      AND bulk <> hero
        ELSE SAY mia_AT:azione_futile.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
              END IF.
          END IF.
      AND bulk IS raggiungibile AND bulk IS NOT distante
        ELSE
          IF bulk IS NOT raggiungibile
            THEN
              IF bulk IS NOT plurale
                THEN SAY mia_AT:ogg2_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg2_non_raggiungibile_pl.
              END IF.
          ELSIF bulk IS distante
            THEN
              IF bulk IS NOT plurale
                THEN SAY mia_AT:ogg2_distante_sg.
                ELSE SAY mia_AT:ogg2_distante_pl.
              END IF.
          END IF.
      DOES SAY mia_AT:azione_futile.
  END VERB metti_contro.
END ADD TO.



-->gruppo_mettere                                          @METTI IN <-- @PUT IN
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== metti_in
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `metti_in`.
--<


-- SYNTAX put_in = put (ogg) 'in' (cont)
-- put_in = insert (ogg) 'in' (cont).


SYNTAX metti_in = metti (ogg) 'in' (cont)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg = hero
        THEN SAY mia_AT:azione_insensata.
-- @NOTA: Qui serve una risposta ad hoc:                                        TRANSLATE!
        ELSE SAY mia_AT:illegal_parameter_obj.
      END IF.
  AND cont IsA OBJECT
    ELSE
      IF cont IsA ACTOR
        THEN SAY mia_AT:azione_insensata.
        ELSE
          IF ogg IS NOT plurale
            THEN SAY mia_AT:ogg2_inadatto_IN_sg.
            ELSE SAY mia_AT:ogg2_inadatto_IN_pl.
          END IF. "mettere cose."
      END IF.
  AND cont IsA CONTAINER
    ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg2_inadatto_IN_sg.
        ELSE SAY mia_AT:ogg2_inadatto_IN_pl.
      END IF. "mettere cose."


  -- metti_in = insert (ogg) 'in' (cont).


ADD TO EVERY OBJECT
  VERB metti_in
    WHEN ogg
      CHECK mia_AT CAN mettere_in
        ELSE SAY mia_AT:azione_bloccata.
      AND ogg <> cont
        ELSE SAY mia_AT:azione_insensata.
      AND ogg IS prendibile
        ELSE SAY  mia_AT:ogg1_non_posseduto.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
              END IF.
          END IF.
      AND ogg NOT IN cont
        ELSE
--                                                                              TRANSLATE!
          IF cont IsA supporto
            THEN SAY mia_AT:check_cont_not_supporter.
          ELSE
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_sg_già_dentro_cont2.
              ELSE SAY mia_AT:ogg1_pl_già_dentro_cont2.
            END IF.
          END IF.
      AND cont IS raggiungibile AND cont IS NOT distante
        ELSE
          IF cont IS NOT raggiungibile
            THEN
              IF cont IS NOT plurale
                THEN SAY mia_AT:ogg2_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg2_non_raggiungibile_pl.
              END IF.
          ELSIF cont IS distante
            THEN
              IF cont IS NOT plurale
                THEN SAY mia_AT:ogg2_distante_sg.
                ELSE SAY mia_AT:ogg2_distante_pl.
              END IF.
          END IF.
-- @NOTE: This should not apply if 'ogg' is an oggetto_stanza like pavimento    CHECK!
--        or suolo, otherwise the DOES ONLY part declared in those objects will
--        never be executed!
      AND ogg IN consentiti OF cont
        ELSE
          IF ogg IS NOT plurale
--                                                                              TRANSLATE!
            THEN SAY mia_AT:check_obj_allowed_in_sg.
            ELSE SAY mia_AT:check_obj_allowed_in_pl.
          END IF.
      AND cont IS aperto
        ELSE
          IF cont IS NOT femminile
            THEN
              IF cont IS NOT plurale
                THEN SAY mia_AT:imp_ogg2_chiuso_ms.
                ELSE SAY mia_AT:imp_ogg2_chiuso_mp.
              END IF.
            ELSE
              IF cont IS NOT plurale
                THEN SAY mia_AT:imp_ogg2_chiuso_fs.
                ELSE SAY mia_AT:imp_ogg2_chiuso_fp.
              END IF.
          END IF.
      DOES
        LOCATE ogg IN cont.
        "Fatto, ora $+1 è" SAY cont:prep_IN. "$2."
        -- "You put" SAY THE ogg. "into" SAY THE cont. "."
  END VERB metti_in.
END ADD TO.



-->gruppo_mettere                                          @METTI SU <-- @PUT_ON
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== metti_su
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `metti_su`.
--<

-- You can put things on the floor/ground (= drop them). In other
-- cases, the action will fail by default. Allow the action with
-- individual instances only.

-- @TODO: Sinonimi/sintassi "sopra"?

SYNTAX metti_su = metti (ogg) su (superficie)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg = hero
        THEN SAY mia_AT:azione_insensata.
-- @NOTA: Qui serve una risposta ad hoc:                                        TRANSLATE!
        ELSE SAY mia_AT:illegal_parameter_obj.
      END IF.
  AND superficie IsA supporto
    ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg2_inadatto_SU_sg.
        ELSE SAY mia_AT:ogg2_inadatto_SU_pl.
      END IF. "mettere cose."


ADD TO EVERY OBJECT
  VERB metti_su
    WHEN ogg
      CHECK mia_AT CAN mettere_su
        ELSE SAY mia_AT:azione_bloccata.
      AND ogg <> superficie
        ELSE SAY mia_AT:azione_insensata.
      AND ogg IS prendibile
        ELSE SAY  mia_AT:ogg1_non_posseduto.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND ogg NOT IN superficie
        ELSE
          "$+1"
          IF ogg IS NOT plurale
            THEN "è"
            ELSE "sono"
          END IF.
          "già" SAY superficie:prep_SU. "$2."
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
              END IF.
          END IF.
      AND superficie IS raggiungibile AND superficie IS NOT distante
        ELSE
          IF superficie IS NOT raggiungibile
            THEN
              IF superficie IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF superficie IS distante
            THEN
              IF superficie IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
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

        "Posi" SAY THE ogg. SAY superficie:prep_SU. SAY superficie. "."
        -- "You put" SAY THE ogg. "on" SAY THE superficie. "."

    END VERB metti_su.
END ADD TO.


-->gruppo_saltare(21300)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Saltare
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi per saltare:
--| 
--| * `salta`
--| * `salta_in`
--| * `salta_su`
--<


-->gruppo_saltare                                               @SALTA <-- @JUMP
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== salta
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `salta`.
--<

SYNTAX salta = salta.


VERB salta
  CHECK mia_AT CAN saltare
    ELSE SAY mia_AT:azione_bloccata.
  AND hero IS NOT seduto
    ELSE SAY mia_AT:impossibile_da_seduto.
  AND hero IS NOT sdraiato
    ELSE SAY mia_AT:impossibile_da_sdraiato.
  DOES "Salti sul posto, senza risultato." -- preso da i6
    -- "You jump on the spot, to no avail."
END VERB salta.




-->gruppo_saltare                                         @SALTA IN <-- @JUMP IN
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== salta_in
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `salta_in`.
--<

SYNTAX salta_in = salta 'in' (cont)
  WHERE cont IsA OBJECT
    ELSE
      IF cont IS NOT plurale
        --       "$+1 non [è/sono] qualcosa in cui poter"
        THEN SAY mia_AT:ogg1_inadatto_IN_sg.
        ELSE SAY mia_AT:ogg1_inadatto_IN_pl.
      END IF. "saltare."
  AND cont IsA CONTAINER
    ELSE
      IF cont IS NOT plurale
        --       "$+1 non [è/sono] qualcosa in cui poter"
        THEN SAY mia_AT:ogg1_inadatto_IN_sg.
        ELSE SAY mia_AT:ogg1_inadatto_IN_pl.
      END IF. "saltare."


ADD TO EVERY OBJECT
  VERB salta_in
    CHECK mia_AT CAN saltare_in
      ELSE SAY mia_AT:azione_bloccata.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND cont IS raggiungibile AND cont IS NOT distante
      ELSE
        IF cont IS NOT raggiungibile
          THEN
            IF cont IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF cont IS distante
          THEN
            IF cont IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    AND hero IS NOT seduto
      ELSE SAY mia_AT:impossibile_da_seduto.
    AND hero IS NOT sdraiato
      ELSE SAY mia_AT:impossibile_da_sdraiato.
    DOES
      IF cont IS NOT plurale
        --       "$+1 non [è/sono] qualcosa in cui poter"
        THEN SAY mia_AT:ogg1_inadatto_IN_sg.
        ELSE SAY mia_AT:ogg1_inadatto_IN_pl.
      END IF. "saltare."
    END VERB salta_in.
END ADD TO.



-->gruppo_saltare                                         @SALTA SU <-- @JUMP ON
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== salta_su
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `salta_su`.
--<

SYNTAX salta_su = salta su (superficie)
  WHERE superficie IsA supporto
    ELSE
      IF superficie IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_SU_sg.
        ELSE SAY mia_AT:ogg1_inadatto_SU_pl.
      END IF. "saltare."


ADD TO EVERY OBJECT
  VERB salta_su
    CHECK mia_AT CAN saltare_su
      ELSE SAY mia_AT:azione_bloccata.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND hero IS NOT seduto
      ELSE SAY mia_AT:impossibile_da_seduto.
    AND hero IS NOT sdraiato
      ELSE SAY mia_AT:impossibile_da_sdraiato.
    DOES
      IF superficie IS NOT plurale
        --       "$+1 non [è/sono] qualcosa in cui poter"
        THEN SAY mia_AT:ogg1_inadatto_SU_sg.
        ELSE SAY mia_AT:ogg1_inadatto_SU_pl.
      END IF. "saltare."
    END VERB salta_su.
END ADD TO.


-->gruppo_sedersi(21400)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Posizionarsi su superfici
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi per sedersi, sdraiarsi ed alazarsi:
--| 
--| * `alzati`
--| * `arrampicati`
--| * `sali_su`
--| * `scendi_da`
--| * `siediti`
--| * `siediti_su`
--| * `sdraiati`
--| * `sdraiati_in`
--| * `sdraiati_su`
--<



-->gruppo_sedersi                                             @ALZATI <-- @STAND
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== alzati
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `alzati`.
--<

-- SYNTAX stand = stand.
--        stand = stand 'up'.


SYNTAX alzati = alzati.

VERB alzati
  CHECK mia_AT CAN alzarsi
    ELSE SAY mia_AT:azione_bloccata.
  DOES
    IF hero IS seduto OR hero IS sdraiato
      THEN "Ti alzi in piedi."
        MAKE hero NOT seduto.
        MAKE hero NOT sdraiato.
      ELSE "Sei già in piedi."
    END IF.
END VERB alzati.


-->gruppo_sedersi                                     @ARRAMPICATI <-- @CLIMB ON
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== arrampicati
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `arrampicati`.
--<


SYNTAX arrampicati = arrampicati su (superficie)
  WHERE superficie IsA supporto
    ELSE
      IF superficie IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_SU_sg.
        ELSE SAY mia_AT:ogg1_inadatto_SU_pl.
      END IF. "$$si arrampicare."


ADD TO EVERY supporto
  VERB arrampicati
    CHECK mia_AT CAN arrampicarsi
      ELSE SAY mia_AT:azione_bloccata.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND superficie IS raggiungibile AND superficie IS NOT distante
      ELSE
        IF superficie IS NOT raggiungibile
          THEN
            IF superficie IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF superficie IS NOT distante
          THEN
            IF superficie IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
--                                                                              TODO!
    AND hero IS NOT seduto
      ELSE SAY mia_AT:check_hero_not_sitting3.
--                                                                              TODO!
    AND hero IS NOT sdraiato
      ELSE SAY mia_AT:check_hero_not_lying_down3.
    DOES
      IF superficie IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_SU_sg.
        ELSE SAY mia_AT:ogg1_inadatto_SU_pl.
      END IF. "$$si arrampicare."
  END VERB arrampicati.
END ADD TO.


-->gruppo_sedersi                                         @SALI SU <-- @STAND_ON
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== sali_su
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `sali_su`.
--<


-- SYNTAX  stand_on = stand 'on' (superficie)
--         stand_on = get 'on' (superficie).
        
SYNTAX  sali_su = sali su (superficie)
  WHERE superficie IsA supporto
    ELSE
      IF superficie IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_SU_sg.
        ELSE SAY mia_AT:ogg1_inadatto_SU_pl.
      END IF.
      "salire."

        sali_su = mettiti su (superficie).


ADD TO EVERY supporto
  VERB sali_su
    CHECK mia_AT CAN salire_su
      ELSE SAY mia_AT:azione_bloccata.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND superficie IS raggiungibile AND superficie IS NOT distante
      ELSE
        IF superficie IS NOT raggiungibile
          THEN
            IF superficie IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF superficie IS distante
          THEN
            IF superficie IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES
--                                                                              TODO!
      "You feel no urge to stand on" SAY THE superficie. "."
--                                                                              TODO!
      -- or, to make it work, use the following instead of the above:
      -- "You get on" SAY THE surface. "."
      -- (Make an attribute for the hero to check that he's on the surface.
      -- It is not possible to actually locate him on the surface (unless
      -- you implement a nested location.)
      --   MAKE hero NOT sitting. MAKE hero NOT lying_down.
  END VERB sali_su.
END ADD TO.



-->gruppo_sedersi                                        @SCENDI_DA <-- @GET OFF
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== scendi_da
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `scendi_da`.
--<

SYNTAX scendi_da = scendi da (superficie)
  WHERE superficie IsA supporto
    ELSE
      IF superficie IS NOT plurale
--                                                                              TRANSLATE!
        THEN SAY mia_AT:illegal_parameter_off_sg.
        ELSE SAY mia_AT:illegal_parameter_off_pl.
      END IF.

ADD TO EVERY supporto
  VERB scendi_da
    CHECK mia_AT CAN scendere_da
      ELSE SAY mia_AT:azione_bloccata.
    DOES
--                                                                              TRANSLATE!
      IF hero IS seduto OR hero IS sdraiato
        THEN "Ti alzi" SAY superficie:prep_DA. SAY superficie. "."
          MAKE hero NOT sdraiato.
          MAKE hero NOT seduto.
--      @TODO: create common attribute:                                         OPTIMIZE!
        ELSE "Sei già in piedi."
      END IF.
   -- IF hero IS seduto OR hero IS sdraiato
   --   THEN "You get off" SAY THE superficie. "."
   --     MAKE hero NOT sdraiato.
   --     MAKE hero NOT seduto.
   --   ELSE "You're standing up already."
   -- END IF.
    END VERB scendi_da.
END ADD TO.



-->gruppo_sedersi                                        @SDRAIATI <-- @LIE DOWN
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== sdraiati
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `sdraiati`.
--<


SYNTAX sdraiati = sdraiati.

SYNONYMS coricati = sdraiati.


VERB sdraiati
  CHECK mia_AT CAN sdraiarsi
    ELSE SAY mia_AT:azione_bloccata.
--                                                                              TRANSLATE!
  AND hero IS NOT sdraiato
    ELSE SAY mia_AT:check_hero_not_lying_down4.
  DOES
--                                                                              TRANSLATE!
    "There's no need to lie down right now."

    -- Affinché l'azione abbia effetto, si sostituisca la riga precedente con:
    --  DOES "You lie down."
    --    MAKE hero sdraiato.
    --    MAKE hero NOT seduto.
END VERB sdraiati.


--                                                                              TRANSLATE!
-- When the hero is sitting or lying down, it will be impossible for her/him to
-- perform certain actions, as numerous verbs in the library have checks for this.
-- For example, if the hero is lying down and the player types 'attack [something]',
-- the response will be "It will be difficult to attack anything while
-- lying down."

-- Also, it is often essential to make certain objects NOT reachable when you are sitting
-- or lying down.


-->gruppo_sedersi                                       @SDRAIATI IN <-- @LIE IN
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== sdraiati_in
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `sdraiati_in`.
--<


SYNTAX  sdraiati_in = sdraiati 'in' (cont)
  WHERE cont IsA OBJECT
    ELSE
--                                                                              TRANSLATE!
      IF cont IS NOT plurale
        THEN SAY mia_AT:illegal_parameter_in_sg.
        ELSE SAY mia_AT:illegal_parameter_in_pl.
      END IF.
  AND cont IsA CONTAINER
    ELSE
--                                                                              TRANSLATE!
      IF cont IS NOT plurale
        THEN SAY mia_AT:illegal_parameter_in_sg.
        ELSE SAY mia_AT:illegal_parameter_in_pl.
      END IF.


ADD TO EVERY OBJECT
  VERB sdraiati_in
    CHECK mia_AT CAN sdraiarsi_in
      ELSE SAY mia_AT:azione_bloccata.
--                                                                              TRANSLATE!
    AND hero IS NOT sdraiato
      ELSE SAY mia_AT:check_hero_not_lying_down4.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND cont IS raggiungibile AND cont IS NOT distante
      ELSE
        IF cont IS NOT raggiungibile
          THEN
            IF cont IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF cont IS distante
          THEN
            IF cont IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES
--                                                                              TRANSLATE!
      "There's no need to lie down in" SAY THE cont. "."
--                                                                              TRANSLATE!
      -- If you need this to work, make a nested location
      -- (for example THE in_bed IsA LOCATION AT bedroom; etc.)
      -- Remember to: MAKE hero lying_down.
      -- Presently, an actor cannot be located inside a container object.
  END VERB sdraiati_in.
END ADD TO.


--                                                                              TRANSLATE!
-- When the hero is sitting or lying down, it will be impossible for her/him to
-- perform certain actions, as numerous verbs in the library have checks for this.
-- For example, if the hero is lying down and the player types 'attack [something]',
-- the response will be "It will be difficult to attack anything while
-- lying down."

-- Also, it is often essential to make certain objects NOT reachable when you are sitting
-- or lying down.

-->gruppo_sedersi                                       @SDRAIATI SU <-- @LIE ON
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== sdraiati_su
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `sdraiati_su`.
--<

-- SYNTAX lie_on = lie 'on' (surface)
--        lie_on = lie 'down' 'on' (surface).


SYNTAX sdraiati_su = sdraiati su (superficie)
  WHERE superficie IsA supporto
    ELSE
      IF superficie IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_SU_sg.
        ELSE SAY mia_AT:ogg1_inadatto_SU_pl.
      END IF.
      "$$si sdraiare."


ADD TO EVERY OBJECT
  VERB sdraiati_su
    CHECK mia_AT CAN sdraiarsi_su
      ELSE SAY mia_AT:azione_bloccata.
--                                                                              TRANSLATE!
    AND hero IS NOT sdraiato
      ELSE SAY mia_AT:check_hero_not_lying_down4.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND superficie IS raggiungibile AND superficie IS NOT distante
      ELSE
        IF superficie IS NOT raggiungibile
          THEN
            IF superficie IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF superficie IS distante
          THEN
            IF superficie IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES
--                                                                              TRANSLATE!
      "There's no need to lie down on" SAY THE superficie. "."
--                                                                              TRANSLATE!
      -- If you need this to work, make a nested location
      -- (for example THE on_bed IsA LOCATION AT bedroom; etc.)
      -- Remember to: MAKE hero lying_down.
                -- Presently, an actor cannot be located inside a container object
      -- or on a supporter.
  END VERB sdraiati_su.
END ADD TO.


--                                                                              TRANSLATE!

-- When the hero is sitting or lying down, it will be impossible for her/him to
-- perform certain actions, as numerous verbs in the library have checks for this.
-- For example, if the hero is lying down and the player types 'attack [something]',
-- the response will be "It will be difficult to attack anything while
-- lying down."

-- Also, it is often essential to make certain objects NOT reachable when you are sitting
-- or lying down.


-->gruppo_sedersi                                              @SIEDITI <-- @SIT
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== siediti
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `siediti`.
--<

-- SYNTAX sit = sit.
--        sit = sit 'down'.


SYNTAX siediti = siediti.

SYNONYMS siedi = siediti.


VERB siediti
  CHECK mia_AT CAN sedersi
    ELSE SAY mia_AT:azione_bloccata.
    --                                                                          TRANSLATE
  AND hero IS NOT seduto
    ELSE SAY mia_AT:check_hero_not_sitting4.
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


-->gruppo_sedersi                                        @SIEDITI SU <-- @SIT_ON
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== siediti_su
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `siediti_su`.
--<

SYNTAX siediti_su = siediti su (superficie)
  WHERE superficie IsA supporto
    ELSE
      IF superficie IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_SU_sg.
        ELSE SAY mia_AT:ogg1_inadatto_SU_pl.
      END IF.
      "$$si sedere."


ADD TO EVERY supporto
  VERB siediti_su
    CHECK mia_AT CAN sedersi_su
      ELSE SAY mia_AT:azione_bloccata.
      --                                                                        TRANSLATE
    AND hero IS NOT seduto
      ELSE SAY mia_AT:check_hero_not_sitting4.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND superficie IS raggiungibile AND superficie IS NOT distante
      ELSE
        IF superficie IS NOT raggiungibile
          THEN
            IF superficie IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF superficie IS distante
          THEN
            IF superficie IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
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



-->gruppo_lanciare(21500)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Lanciare
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi per lanciare oggetti:
--| 
--| * `lancia`
--| * `lancia_a`
--| * `lancia_contro`
--| * `lancia_in`
--<


-->gruppo_lanciare                                            @LANCIA <-- @THROW
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== lancia
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `lancia`.
--<


SYNTAX lancia = lancia (proiettile)
  WHERE proiettile IsA OBJECT
--                                                                              TRANSLATE!
    ELSE
      IF proiettile = hero
        THEN SAY mia_AT:azione_insensata.
        ELSE SAY mia_AT:illegal_parameter_obj.
      END IF.


ADD TO EVERY OBJECT
  VERB lancia
    CHECK mia_AT CAN lanciare
      ELSE SAY mia_AT:azione_bloccata.
    AND proiettile IS esaminabile
      ELSE
        IF proiettile IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.  "lanciare."
    AND proiettile IS prendibile
      ELSE SAY  mia_AT:ogg1_non_posseduto.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND proiettile IS raggiungibile AND proiettile IS NOT distante
      ELSE
        IF proiettile IS NOT raggiungibile
          THEN
            IF proiettile IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF proiettile IS distante
          THEN
            IF proiettile IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES
      -- >>> prendi implicito: >>>
      IF proiettile NOT DIRECTLY IN hero
        THEN LOCATE proiettile IN hero.
          SAY  mia_AT:riferisci_prendi_implicito.
      END IF.
      -- <<< prendi implicito <<<
      "Non lanci molto lontano, $+1 finisc$$"
      IF proiettile IS NOT plurale
        THEN "e"
        ELSE "ono"
      END IF.

      IF pavimento HERE
        THEN "sul pavimento."
      ELSIF suolo HERE
        THEN "a terra."
      END IF.
      LOCATE proiettile AT hero.

  END VERB lancia.
END ADD TO.


-->gruppo_lanciare                                       @LANCIA A <-- @THROW TO
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== lancia_a
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `lancia_a`.
--<


SYNTAX lancia_a = lancia (proiettile) a (ricevente)
--                                                                              TRANSLATE!
  WHERE proiettile IsA OBJECT
    ELSE
      IF proiettile = hero
        THEN SAY mia_AT:azione_insensata.
        ELSE SAY mia_AT:illegal_parameter_obj.
      END IF.
--                                                                              TRANSLATE!
  AND ricevente IsA ACTOR
    ELSE
      IF ricevente IS NOT plurale
        THEN SAY mia_AT:ogg2_inadatto_A_sg.
        ELSE SAY mia_AT:ogg2_inadatto_A_pl.
      END IF. "lanciare cose."


ADD TO EVERY OBJECT
  VERB lancia_a
    WHEN proiettile
      CHECK mia_AT CAN lanciare_a
        ELSE SAY mia_AT:azione_bloccata.
      AND proiettile IS esaminabile
        ELSE
          IF proiettile IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY mia_AT:ogg1_inadatto_sg. "lanciare."
            ELSE SAY mia_AT:ogg1_inadatto_pl. "lanciare."
          END IF.
      AND proiettile IS prendibile
        ELSE SAY  mia_AT:ogg1_non_posseduto.
--                                                                              TRANSLATE!
      AND ricevente IS esaminabile
        ELSE SAY mia_AT:check_obj_suitable_at.
      AND proiettile <> ricevente
        ELSE SAY mia_AT:azione_insensata.
-- @NOTA: Come è possibile che ricevente possa essere IN hero dato che          CHECK!
--        è sempre un attore?
--                                                                              TRANSLATE!
      AND ricevente NOT IN hero
        --              "You are carrying $+2."
        ELSE SAY mia_AT:check_obj2_not_in_hero1.
      AND ricevente <> hero
        ELSE SAY mia_AT:azione_insensata.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND proiettile IS raggiungibile AND proiettile IS NOT distante
        ELSE
          IF proiettile IS NOT raggiungibile
            THEN
              IF proiettile IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF proiettile IS distante
            THEN
              IF proiettile IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
              END IF.
          END IF.
      AND ricevente IS NOT distante
        ELSE
          IF ricevente IS NOT plurale
            THEN SAY mia_AT:ogg2_distante_sg.
            ELSE SAY mia_AT:ogg2_distante_pl.
          END IF.
      DOES
        -- >>> prendi implicito: >>>
        IF proiettile NOT DIRECTLY IN hero
          THEN LOCATE proiettile IN hero.
            SAY  mia_AT:riferisci_prendi_implicito.
        END IF.
        -- <<< prendi implicito <<<

--                                                                              TRANSLATE!
        "It wouldn't accomplish anything trying to throw"
        SAY the proiettile. "to" SAY THE ricevente. "."

  END VERB lancia_a.
END ADD TO.


-->gruppo_lanciare                                  @LANCIA CONTRO <-- @THROW AT
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== lancia_contro
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `lancia_contro`.
--<


SYNTAX lancia_contro = lancia (proiettile) contro (bersaglio)
--                                                                              TRANSLATE!
  WHERE proiettile IsA OBJECT
    ELSE
      IF proiettile = hero
        THEN SAY mia_AT:azione_insensata.
        ELSE SAY mia_AT:illegal_parameter_obj.
      END IF.
--                                                                              TRANSLATE!
  AND bersaglio IsA THING
    ELSE SAY mia_AT:illegal_parameter_at.



ADD TO EVERY OBJECT
  VERB lancia_contro
    WHEN proiettile
      CHECK mia_AT CAN lanciare_contro
        ELSE SAY mia_AT:azione_bloccata.
      AND proiettile IS esaminabile
        ELSE
          IF proiettile IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY mia_AT:ogg1_inadatto_sg. "lanciare."
            ELSE SAY mia_AT:ogg1_inadatto_pl. "lanciare."
          END IF.
      AND proiettile IS prendibile
        ELSE SAY  mia_AT:ogg1_non_posseduto.
--                                                                              TRANSLATE!
      AND bersaglio IS esaminabile
        ELSE SAY mia_AT:check_obj_suitable_at.
      AND proiettile <> bersaglio
        ELSE SAY mia_AT:azione_insensata.
--                                                                              TRANSLATE!
      AND bersaglio NOT IN hero
        --              "You are carrying $+2."
        ELSE SAY mia_AT:check_obj2_not_in_hero1.
      AND bersaglio <> hero
        ELSE SAY mia_AT:azione_insensata.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND proiettile IS raggiungibile AND proiettile IS NOT distante
        ELSE
          IF proiettile IS NOT raggiungibile
            THEN
              IF proiettile IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF proiettile IS distante
            THEN
              IF proiettile IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
              END IF.
          END IF.
      AND bersaglio IS NOT distante
        -- it is possible to throw something at an (otherwise) not reachable bersaglio
        ELSE
          IF bersaglio IS NOT plurale
            THEN SAY mia_AT:ogg2_distante_sg.
            ELSE SAY mia_AT:ogg2_distante_pl.
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
--                                                                              TRANSLATE!
            IF bersaglio NOT DIRECTLY AT hero
              -- for example the bersaglio is inside a box
              THEN "It wouldn't accomplish anything trying to throw
                 something at" SAY THE bersaglio. "."
--                                                                              TRANSLATE!
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

--                                                                              TRANSLATE!
          ELSE SAY THE bersaglio. "wouldn't probably appreciate that."
            -- Throwing objects at actors is not disabled in the checks
            -- as in some situations this might be desired, for example
            -- when attacking enemies.
          END IF.

  END VERB lancia_contro.
END ADD TO.


-->gruppo_lanciare                                      @LANCIA IN <-- @THROW IN
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== lancia_in
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `lancia_in`.
--<


SYNTAX lancia_in = lancia (proiettile) 'in' (cont)
--                                                                              TRANSLATE!
  WHERE proiettile IsA OBJECT
    ELSE
      IF proiettile = hero
        THEN SAY mia_AT:azione_insensata.
        ELSE SAY mia_AT:illegal_parameter_obj.
      END IF.
  AND cont IsA OBJECT
    ELSE
      IF cont IsA ACTOR
        THEN SAY mia_AT:azione_insensata.
        ELSE
          IF cont IS NOT plurale
            THEN SAY mia_AT:ogg2_inadatto_IN_sg.
            ELSE SAY mia_AT:ogg2_inadatto_IN_pl.
          END IF. "lanciare cose."
        END IF.
--                                                                              TRANSLATE!
  AND cont IsA CONTAINER
    ELSE
      IF cont IS NOT plurale
        THEN SAY mia_AT:ogg2_inadatto_IN_sg.
        ELSE SAY mia_AT:ogg2_inadatto_IN_pl.
      END IF. "lanciare cose."


ADD TO EVERY OBJECT
  VERB lancia_in
    WHEN proiettile
      CHECK mia_AT CAN lanciare_in
        ELSE SAY mia_AT:azione_bloccata.
      AND proiettile IS esaminabile
        ELSE
          IF proiettile IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY mia_AT:ogg1_inadatto_sg. "lanciare."
            ELSE SAY mia_AT:ogg1_inadatto_pl. "lanciare."
          END IF.
      AND proiettile IS prendibile
          ELSE SAY  mia_AT:ogg1_non_posseduto.
--                                                                              TRANSLATE!
      AND cont IS esaminabile
          ELSE SAY mia_AT:check_obj2_suitable_there.
      AND proiettile <> cont
        ELSE SAY mia_AT:azione_insensata.
      AND cont <> hero
        ELSE SAY mia_AT:azione_insensata.
--                                                                              TRANSLATE!
      AND cont NOT IN hero
        --              "You are carrying $+2."
        ELSE SAY mia_AT:check_obj2_not_in_hero1.
      AND CURRENT LOCATION IS illuminato
          ELSE SAY mia_AT:imp_luogo_buio.
      AND proiettile NOT IN cont
        ELSE
          IF proiettile IS NOT plurale
            THEN SAY mia_AT:ogg1_sg_già_dentro_cont2.
            ELSE SAY mia_AT:ogg1_pl_già_dentro_cont2.
          END IF.
      AND proiettile IS raggiungibile AND proiettile IS NOT distante
        ELSE
          IF proiettile IS NOT raggiungibile
            THEN
              IF proiettile IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF proiettile IS distante
            THEN
              IF proiettile IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
              END IF.
          END IF.
      AND cont IS NOT distante
        ELSE
          IF cont IS NOT plurale
            THEN SAY mia_AT:ogg2_distante_sg.
            ELSE SAY mia_AT:ogg2_distante_pl.
          END IF.
      AND proiettile IN consentiti OF cont
        ELSE
          IF proiettile IS NOT plurale
--                                                                              TRANSLATE!
            THEN SAY mia_AT:check_obj_allowed_in_sg.
            ELSE SAY mia_AT:check_obj_allowed_in_pl.
          END IF.
      AND cont IS aperto
        ELSE
          IF cont IS NOT femminile
            THEN
              IF cont IS NOT plurale
                THEN SAY mia_AT:imp_ogg2_chiuso_ms.
                ELSE SAY mia_AT:imp_ogg2_chiuso_mp.
              END IF.
            ELSE
              IF cont IS NOT plurale
                THEN SAY mia_AT:imp_ogg2_chiuso_fs.
                ELSE SAY mia_AT:imp_ogg2_chiuso_fp.
              END IF.
          END IF.
      DOES
        -- >>> prendi implicito: >>>
        IF proiettile NOT DIRECTLY IN hero
          THEN LOCATE proiettile IN hero.
            SAY  mia_AT:riferisci_prendi_implicito.
        END IF.
        -- <<< prendi implicito <<<
        "Non otterresti nulla lanciando $+1" SAY proiettile:prep_IN. "$2."

        -- L'azione di lanciare oggetti in contenitori è prevenuta di default,
        -- anche se l'oggetto rientra nei 'consentiti' del contitore. Questo al
        -- fine di prevenire azioni come "lancia il piatto nell'armadietto".

  END VERB lancia_in.
END ADD TO.

-->gruppo_nuotare(21600)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Nuotare e tuffarsi
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi per tuffarsi e nuotare in liquidi:
--| 
--| * `nuota`
--| * `nuota_in`
--| * `tuffati`
--| * `tuffati_in`
--<


-->gruppo_nuotare                                               @NUOTA <-- @SWIM
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== nuota
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `nuota`.
--<


SYNTAX nuota = nuota.


VERB nuota
  CHECK mia_AT CAN nuotare
    ELSE SAY mia_AT:azione_bloccata.
  AND hero IS NOT seduto
    ELSE SAY mia_AT:impossibile_da_seduto.
  AND hero IS NOT sdraiato
    ELSE SAY mia_AT:impossibile_da_sdraiato.
  AND CURRENT LOCATION IS illuminato
    ELSE SAY mia_AT:imp_luogo_buio.
--                                                                              TRANSLATE!
  DOES
    "There is no water suitable for swimming here."
END VERB nuota.



-->gruppo_nuotare                                         @NUOTA IN <-- @SWIM IN
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== nuota_in
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `nuota_in`.
--<


SYNTAX nuota_in = nuota 'in' (liq)
  WHERE liq IsA liquido
    ELSE
--                                                                              TRANSLATE!
      IF liq IS NOT plurale
        THEN SAY mia_AT:illegal_parameter_in_sg.
        ELSE SAY mia_AT:illegal_parameter_in_pl.
      END IF.



ADD TO EVERY OBJECT
  VERB nuota_in
    CHECK mia_AT CAN nuotare_in
      ELSE SAY mia_AT:azione_bloccata.
--                                                                              TRANSLATE!
    AND hero IS NOT seduto
      ELSE SAY mia_AT:check_hero_not_sitting3.
--                                                                              TRANSLATE!
    AND hero IS NOT sdraiato
      ELSE SAY mia_AT:check_hero_not_lying_down3.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND liq IS raggiungibile AND liq IS NOT distante
      ELSE
        IF liq IS NOT raggiungibile
          THEN
            IF liq IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF liq IS distante
          THEN
            IF liq IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES
--                                                                              TRANSLATE!
      IF liq IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.
      "something you can swim in."
  END VERB nuota_in.
END ADD TO.


-->gruppo_nuotare                                             @TUFFATI <-- @DIVE
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== tuffati
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `tuffati`.
--<


SYNTAX tuffati = tuffati.


VERB tuffati
  CHECK mia_AT CAN tuffarsi
    ELSE SAY mia_AT:azione_bloccata.
  AND CURRENT LOCATION IS illuminato
    ELSE SAY mia_AT:imp_luogo_buio.
--                                                                              TRANSLATE!
  AND hero IS NOT seduto
    ELSE SAY mia_AT:check_hero_not_sitting3.
--                                                                              TRANSLATE!
  AND hero IS NOT sdraiato
    ELSE SAY mia_AT:check_hero_not_lying_down3.
  DOES
--                                                                              TRANSLATE!
    "There is no water suitable for swimming here."
END VERB tuffati.


-->gruppo_nuotare                                       @TUFFATI IN <-- @DIVE IN
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== tuffati_in
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `tuffati_in`.
--<


-- @NOTA | dive 'in' (liq) coprirebbe "tuffati in acqua" ma non
--       | "tuffati nella piscina". In teoria, servirebbe un'altra
--       | sintassi del tipo dive 'in' (recipiente) che controlli un attributo che
--       | specifica se il contenitore contiene liquidi e se è grande abbastanza
--       | per potervici tuffare. Se no, usando "piscina" come sinonimo di "acqua"
--       | per far sì che ci si possa tuffare in essa, crerebbe il problema che
--       | i verbi riguardanti i liquidi si applicherebbero anche alla piscina.
--       | Magari in realtà il problema non sussiste, ma devo tenerne conto.


SYNTAX tuffati_in = tuffati 'in' (liq)
  WHERE liq IsA liquido    -- see 'classes.i'
    ELSE
 --                                                                              TRANSLATE!
     IF liq IS NOT plurale
        THEN SAY mia_AT:illegal_parameter_in_sg.
        ELSE SAY mia_AT:illegal_parameter_in_pl.
      END IF.


ADD TO EVERY OBJECT
  VERB tuffati_in
    CHECK mia_AT CAN tuffarsi_in
      ELSE SAY mia_AT:azione_bloccata.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
--                                                                              TRANSLATE!
    AND hero IS NOT seduto
      ELSE SAY mia_AT:check_hero_not_sitting3.
--                                                                              TRANSLATE!
    AND hero IS NOT sdraiato
      ELSE SAY mia_AT:check_hero_not_lying_down3.
    -- notice that, unlike 'swim_in', it is possible to dive in a
    -- not reachable object (for example from a clifftop into a river)
    -- but not to a distant object:
    AND liq IS NOT distante
      ELSE
        IF liq IS NOT plurale
          THEN SAY mia_AT:ogg1_distante_sg.
          ELSE SAY mia_AT:ogg1_distante_pl.
        END IF.
    DOES
--                                                                              TRANSLATE!
      IF liq IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.
      "something you can dive in."
  END VERB tuffati_in.
END ADD TO.

-->gruppo_spingere(21700)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Spingere, tirare e sollevare
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi per spostare oggetti oggetti:
--| 
--| * `solleva`
--| * `spingi`
--| * `spingi_con`
--| * `tira`
--<


-->gruppo_spingere                                           @SOLLEVA <--  @LIFT
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== solleva
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `solleva`.
--<


SYNTAX solleva = solleva (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "sollevare." --# alzare?


SYNONYMS alza = solleva.


ADD TO EVERY OBJECT
  VERB solleva
    CHECK mia_AT CAN sollevare
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "sollevare." --# alzare?
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
--                                                                              TRANSLATE!
    AND ogg NOT IN hero
      ELSE SAY mia_AT:check_obj_not_in_hero1.
--                                                                              TRANSLATE!
    AND ogg IS spostabile
      ELSE SAY mia_AT:check_obj_movable.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    AND ogg:peso < 50
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:ogg1_troppo_pesante_sg.
          ELSE SAY mia_AT:ogg1_troppo_pesante_pl.
        END IF. "da sollevare."
    DOES SAY mia_AT:azione_futile.
  END VERB solleva.
END ADD TO.


-->gruppo_spingere                                             @SPINGI <-- @PUSH
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== spingi
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `spingi`.
--<

-- SYNTAX   push = push (ogg)
-- SYNONYMS press = push.

SYNTAX spingi = spingi (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "spingere."


ADD TO EVERY THING
  VERB spingi
    CHECK mia_AT CAN spingere
      ELSE SAY mia_AT:azione_bloccata.
--                                                                              TRANSLATE!
    AND ogg IS spostabile
      ELSE SAY mia_AT:check_obj_movable.
    AND ogg <> hero
      ELSE SAY mia_AT:azione_insensata.
    AND ogg IS inanimato
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:png1_non_gradirebbe_sg.
          ELSE SAY mia_AT:png1_non_gradirebbe_pl.
        END IF.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES
--                                                                              TRANSLATE!
          "You give" SAY THE ogg. "a little push. Nothing happens."
  END VERB spingi.
END ADD TO.



-->gruppo_spingere                                    @SPINGI CON <-- @PUSH WITH
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== spingi_con
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `spingi_con`.
--<


SYNTAX spingi_con = spingi (ogg) con (strum)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "spingere."
  AND strum IsA OBJECT
    ELSE
      IF strum IS NOT plurale
        THEN SAY mia_AT:ogg2_inadatto_CON_sg.
        ELSE SAY mia_AT:ogg2_inadatto_CON_pl.
      END IF.
      "spingere" SAY THE ogg. "."


ADD TO EVERY THING
  VERB spingi_con
    WHEN ogg
      CHECK mia_AT CAN spingere_con
        ELSE SAY mia_AT:azione_bloccata.
--                                                                              TRANSLATE!
      AND ogg IS spostabile
        ELSE SAY mia_AT:check_obj_movable.
      AND ogg <> strum
        ELSE SAY mia_AT:azione_insensata.
      AND strum IS esaminabile
        ELSE
          IF strum IS NOT plurale
            THEN SAY mia_AT:ogg2_inadatto_CON_sg.
            ELSE SAY mia_AT:ogg2_inadatto_CON_pl.
          END IF.
          "spingere" SAY THE ogg. "."
      AND strum IN hero
        ELSE SAY mia_AT:non_possiedi_ogg2.
      AND ogg <> hero
        ELSE SAY mia_AT:azione_insensata.
      AND ogg IS inanimato
        ELSE
          IF ogg IS NOT plurale
            THEN SAY mia_AT:png1_non_gradirebbe_sg.
            ELSE SAY mia_AT:png1_non_gradirebbe_pl.
          END IF.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
              END IF.
          END IF.
      DOES SAY mia_AT:azione_futile.
  END VERB spingi_con.
END ADD TO.


-->gruppo_spingere                                               @TIRA <-- @PULL
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== tira
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `tira`.
--<


-- i6 accetta come sinonimo di 'tira': 'trascina'.

-- SYNTAX pull = pull (ogg)

SYNTAX tira = tira (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "tirare." --@NOTA: ambiguità con "lanciare"


ADD TO EVERY OBJECT
  VERB tira
    CHECK mia_AT CAN tirare
      ELSE SAY mia_AT:azione_bloccata.
--                                                                              TRANSLATE!
    AND ogg IS spostabile
      ELSE SAY mia_AT:check_obj_movable.
    AND ogg <> hero
      ELSE SAY mia_AT:azione_insensata.
    AND ogg IS inanimato
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:png1_non_gradirebbe_sg.
          ELSE SAY mia_AT:png1_non_gradirebbe_pl.
        END IF.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES SAY mia_AT:azione_futile.
  END VERB tira.
END ADD TO.

-->gruppo_attaccare(21800)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Attaccare e simili
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi di violenza come attaccare, uccidere, prendere
--| a calci, colpire e simili:
--| 
--| * `attacca`
--| * `attacca_con`
--| * `calcia`
--| * `uccidi`
--| * `uccidi_con`
--<


-->gruppo_attaccare                                         @ATTACCA <-- @ATTACK
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== attacca
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `attacca`.
--<

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
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "attaccare."


SYNONYMS combatti, picchia = attacca.

-- Note that 'kick' is defined separately, to avoid absurd commands such as
-- 'kick man with sword' (see 'attack_with' below)


ADD TO EVERY THING
  VERB attacca
    CHECK mia_AT CAN attaccare
      ELSE SAY mia_AT:azione_bloccata.
    AND bersaglio IS esaminabile
      ELSE
        IF bersaglio IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "attaccare."
    AND bersaglio <> hero
      ELSE SAY mia_AT:azione_insensata.
--                                                                              TRANSLATE!
    AND bersaglio NOT IN hero
      ELSE SAY mia_AT:check_obj_not_in_hero1.
--                                                                              TRANSLATE!
    AND bersaglio NOT IN abbigliamento
      ELSE SAY mia_AT:check_obj_not_in_worn2.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND bersaglio IS raggiungibile AND bersaglio IS NOT distante
      ELSE
        IF bersaglio IS NOT raggiungibile
          THEN
            IF bersaglio IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF bersaglio IS distante
          THEN
            IF bersaglio IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
--                                                                              TRANSLATE!
    AND hero IS NOT seduto
      ELSE SAY mia_AT:check_hero_not_sitting2.
--                                                                              TRANSLATE!
    AND hero IS NOT sdraiato
      ELSE SAY mia_AT:check_hero_not_lying_down2.
        DOES
          -- "La violenza non è la giusta risposta a questo." ---> taken from i6
          SAY mia_AT:la_violenza_non_è_la_risposta.
          -- "Resorting to brute force is not the solution here."
    END VERB attacca.
END ADD TO.




-->gruppo_attaccare                                @ATTACCA CON <-- @ATTACK WITH
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== attacca_con
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `attacca_con`.
--<

-- SYNTAX attack_with = attack (bersaglio) 'with' (arma)

SYNTAX attacca_con = attacca (bersaglio) con (arma)
  WHERE bersaglio IsA THING
    ELSE
      IF bersaglio IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "attaccare."
  AND arma IsA arma
    ELSE
      IF arma IS NOT plurale
        THEN SAY mia_AT:ogg2_non_arma_adatta_per_sg.
        ELSE SAY mia_AT:ogg2_non_arma_adatta_per_pl.
      END IF. "attaccare" SAY THE bersaglio. "."


ADD TO EVERY THING
  VERB attacca_con
    WHEN bersaglio
      CHECK mia_AT CAN attaccare_con
        ELSE SAY mia_AT:azione_bloccata.
      AND bersaglio IS esaminabile
        ELSE
          IF bersaglio IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY mia_AT:ogg1_inadatto_sg.
            ELSE SAY mia_AT:ogg1_inadatto_pl.
          END IF.
          "attaccare."
      AND bersaglio <> arma
        ELSE SAY mia_AT:azione_insensata.
      AND bersaglio <> hero
        ELSE SAY mia_AT:azione_insensata.
--                                                                              TRANSLATE!
      AND bersaglio NOT IN hero
        ELSE SAY mia_AT:check_obj_not_in_hero1.
--                                                                              TRANSLATE!
      AND bersaglio NOT IN abbigliamento
        ELSE SAY mia_AT:check_obj_not_in_worn2.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND bersaglio IS raggiungibile AND bersaglio IS NOT distante
        ELSE
          IF bersaglio IS NOT raggiungibile
            THEN
              IF bersaglio IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF bersaglio IS distante
            THEN
              IF bersaglio IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
              END IF.
          END IF.
--                                                                              TRANSLATE!
      AND hero IS NOT seduto
        ELSE SAY mia_AT:check_hero_not_sitting2.
--                                                                              TRANSLATE!
      AND hero IS NOT sdraiato
        ELSE SAY mia_AT:check_hero_not_lying_down2.
          DOES
            -- "La violenza non è la giusta risposta a questo." ---> taken from i6
            SAY mia_AT:la_violenza_non_è_la_risposta.
            -- "Resorting to brute force is not the solution here."
  END VERB attacca_con.
END ADD TO.


-->gruppo_attaccare                                            @CALCIA <-- @KICK
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== calcia
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `calcia`.
--<


SYNTAX calcia = calcia (bersaglio)
  WHERE bersaglio IsA THING
    ELSE
      IF bersaglio IS NOT plurale
      -- @NOTA: Servirà messaggio ad hoc qui!                                   TRANSLATE!
        THEN SAY mia_AT:illegal_parameter_sg.
        ELSE SAY mia_AT:illegal_parameter_pl.
      END IF.


ADD TO EVERY THING
  VERB calcia
    CHECK mia_AT CAN calciare
      ELSE SAY mia_AT:azione_bloccata.
    AND bersaglio IS esaminabile
      ELSE
        IF bersaglio IS NOT plurale
--                                                                              TRANSLATE!
          THEN SAY mia_AT:check_obj_suitable_sg.
          ELSE SAY mia_AT:check_obj_suitable_pl.
        END IF.
    AND bersaglio <> hero
      ELSE SAY mia_AT:azione_insensata.
--                                                                              TRANSLATE!
    AND bersaglio NOT IN hero
      ELSE SAY mia_AT:check_obj_not_in_hero1.
--                                                                              TRANSLATE!
    AND bersaglio NOT IN abbigliamento
      ELSE SAY mia_AT:check_obj_not_in_worn2.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND bersaglio IS raggiungibile AND bersaglio IS NOT distante
      ELSE
        IF bersaglio IS NOT raggiungibile
          THEN
            IF bersaglio IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF bersaglio IS distante
          THEN
            IF bersaglio IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES
      -- "La violenza non è la giusta risposta a questo." ---> taken from i6
      SAY mia_AT:la_violenza_non_è_la_risposta.
   -- "Resorting to brute force is not the solution here."
  END VERB calcia.
END ADD TO.

-->gruppo_attaccare                                            @UCCIDI <-- @KILL
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== uccidi
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `uccidi`.
--<


-- KILL (+ murder)
-- SYNTAX kill = kill (vittima)

SYNTAX uccidi = uccidi (vittima)
  WHERE vittima IsA ACTOR
    ELSE
      IF vittima IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "uccidere."

SYNONYMS ammazza = uccidi.

ADD TO EVERY ACTOR
  VERB uccidi
    CHECK mia_AT CAN uccidere
      ELSE SAY mia_AT:azione_bloccata.
    AND vittima IS esaminabile
      ELSE
        IF vittima IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "uccidere."
    AND vittima <> hero
      ELSE SAY mia_AT:no_suicidio.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    DOES
      SAY mia_AT:specificare_CON_cosa. "uccidere" SAY THE vittima. "."
  END VERB uccidi.
END ADD TO.



-->gruppo_attaccare                                   @UCCIDI CON <-- @KILL WITH
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== uccidi_con
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `uccidi_con`.
--<

-- SYNTAX kill_with = kill (vittima) 'with' (arma)

SYNTAX uccidi_con = uccidi (vittima) con (arma)
  WHERE vittima IsA ACTOR
    ELSE
      IF vittima IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "uccidere."
  AND arma IsA arma
    ELSE
      IF arma IS NOT plurale
        THEN SAY mia_AT:ogg2_non_arma_adatta_per_sg.
        ELSE SAY mia_AT:ogg2_non_arma_adatta_per_pl.
      END IF. "uccidere" SAY THE vittima. "."


ADD TO EVERY ACTOR
  VERB uccidi_con
    WHEN vittima
      CHECK mia_AT CAN uccidere_con
        ELSE SAY mia_AT:azione_bloccata.
      AND vittima <> hero
        ELSE SAY mia_AT:no_suicidio.
      AND arma IN hero
        ELSE SAY mia_AT:non_possiedi_ogg2.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND vittima IS NOT distante
        ELSE
          IF vittima IS NOT plurale
            THEN SAY mia_AT:ogg1_distante_sg.
            ELSE SAY mia_AT:ogg1_distante_pl.
          END IF.
      DOES "Sarebbe un atto di inutile brutalità."
  END VERB uccidi_con.
END ADD TO.

-->gruppo_leggere(21900)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Leggere e scrivere
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi per leggere e scrivere:
--| 
--| * `leggi`
--| * `scrivi`
--<


-->gruppo_leggere                                               @LEGGI <-- @READ
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== leggi
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `leggi`.
--<

SYNTAX leggi = leggi (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "leggere."


ADD TO EVERY OBJECT
    VERB leggi
    CHECK mia_AT CAN leggere
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS leggibile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "leggere."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:ogg1_distante_sg.
          ELSE SAY mia_AT:ogg1_distante_pl.
        END IF.
    DOES
      IF ogg:testo = ""
     -- THEN "There is nothing written on" SAY THE ogg. "."
        THEN "Non c'è nulla da leggere" SAY ogg:prep_SU. SAY ogg. "."
          ELSE "Leggi" SAY THE ogg. "."
            IF ogg IS NOT plurale
              THEN "Dice"
              ELSE "Dicono"
          END IF.
          """$$" SAY ogg:testo. "$$""."
      END IF.
    END VERB leggi.
END ADD TO.



-->gruppo_leggere                                             @SCRIVI <-- @WRITE
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== scrivi
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `scrivi`.
--<
-- @TODO: Handle when (txt) is and empty string: should not add anything,
--        and/or report error!

-- SYNTAX write = write (txt) 'on' (obj)
--        write = write (txt) 'in' (obj).

SYNTAX  scrivi = scrivi (testo) su (ogg)
    WHERE testo IsA STRING
      ELSE SAY mia_AT:ogg_stringa_richiesto.
    AND ogg IsA OBJECT
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:ogg2_inadatto_SU_sg.
          ELSE SAY mia_AT:ogg2_inadatto_SU_pl.
        END IF. "scrivere."

        scrivi = scrivi (testo) 'in' (ogg).


ADD TO EVERY OBJECT
  VERB scrivi
    WHEN ogg
      CHECK mia_AT CAN scrivere
        ELSE SAY mia_AT:azione_bloccata.
      AND ogg IS scrivibile
        ELSE
          IF ogg IS NOT plurale
            THEN SAY mia_AT:ogg2_inadatto_SU_sg.
            ELSE SAY mia_AT:ogg2_inadatto_SU_pl.
          END IF. "scrivere."
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
              END IF.
          END IF.

      DOES
--       @NOTA: Questa risposta non mi piace, non sappiamo se l'eroe            FIXME!
--              possiede o meno oggetti idonei alla scrittura!
        "Non hai nulla con cui scrivere."

        -- Per eseguire la scrittura:
        -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
        -- IF ogg:testo = ""
        --   THEN SET ogg:testo TO testo.
        --   ELSE SET ogg:testo TO ogg:testo + " " + testo.
        -- END IF.
        -- "Hai scritto ""$1""" SAY ogg:prep_SU. "$2."
        -- MAKE ogg leggibile.
        -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    END VERB scrivi.
END ADD TO.


-- A couple of other formulations are understood but they guide the player to
-- use the correct syntax:


SYNTAX  scrivi_errore1 = scrivi su (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      -- "Per scrivere su qualcosa, usa SCRIVI ""TESTO"" SU (IN) OGGETTO.".
      SAY mia_AT:per_scrivere_USA.
  -- "Please use the formulation WRITE ""TEXT"" ON (IN) OBJECT
  --  to write something."

        scrivi_errore1 = scrivi 'in' (ogg).

ADD TO EVERY OBJECT
  VERB scrivi_errore1
    DOES
      -- "Per scrivere su qualcosa, usa SCRIVI ""TESTO"" SU (IN) OGGETTO.".
      SAY mia_AT:per_scrivere_USA.

  END VERB scrivi_errore1.
END ADD TO.


SYNTAX scrivi_errore2 = scrivi.

VERB scrivi_errore2
  DOES
    -- "Per scrivere su qualcosa, usa SCRIVI ""TESTO"" SU (IN) OGGETTO.".
    SAY mia_AT:per_scrivere_USA.
END VERB scrivi_errore2.


SYNTAX scrivi_errore3 = scrivi (testo)
  WHERE testo IsA STRING
    ELSE
      -- "Per scrivere su qualcosa, usa SCRIVI ""TESTO"" SU (IN) OGGETTO.".
      SAY mia_AT:per_scrivere_USA.


ADD TO EVERY STRING
  VERB scrivi_errore3
    DOES
      -- "Per scrivere su qualcosa, usa SCRIVI ""TESTO"" SU (IN) OGGETTO.".
      SAY mia_AT:per_scrivere_USA.
  END VERB scrivi_errore3.
END ADD TO.

-->gruppo_bruciare(22000)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Bruciare
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi per bruciare le cose:
--| 
--| * `brucia`
--| * `brucia_con`
--<


-->gruppo_bruciare                                             @BRUCIA <-- @BURN
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== brucia
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `brucia`.
--<

-- @NOTA: In i6 "incendia" è sinonimo di "brucia" e "brucia con".
--        Inoltre, "col" è sinonimo di "con".

SYNTAX brucia = brucia (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "bruciare."

ADD TO EVERY OBJECT
  VERB brucia
    CHECK mia_AT CAN bruciare
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "bruciare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    DOES
      SAY mia_AT:specificare_CON_cosa. "bruciare" SAY THE ogg. "."
   -- "You must state what you want to burn" SAY THE ogg. "with."
  END VERB brucia.
END ADD TO.


-->gruppo_bruciare                                                   @BRUCIA_CON
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== brucia_con
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `brucia_con`.
--<


SYNTAX brucia_con = brucia (ogg) con (strum)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "bruciare."
  AND strum IsA OBJECT
    ELSE
      IF strum IS NOT plurale
        THEN SAY mia_AT:ogg2_inadatto_CON_sg.
        ELSE SAY mia_AT:ogg2_inadatto_CON_pl.
      END IF.
      "bruciare." -- @TODO: ".. altre cose"??                                   IMPROVE!


ADD TO EVERY OBJECT
  VERB brucia_con
    WHEN ogg
      CHECK mia_AT CAN bruciare_con
        ELSE SAY mia_AT:azione_bloccata.
      AND ogg IS esaminabile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY mia_AT:ogg1_inadatto_sg.
            ELSE SAY mia_AT:ogg1_inadatto_pl.
          END IF.
          "bruciare."
      AND strum IS esaminabile
        ELSE
          IF strum IS NOT plurale
            THEN SAY mia_AT:ogg2_inadatto_CON_sg.
            ELSE SAY mia_AT:ogg2_inadatto_CON_pl.
          END IF.
          "bruciare" SAY THE ogg. "."
      AND ogg <> strum
        ELSE SAY mia_AT:azione_insensata.
      AND strum IN hero
        ELSE SAY mia_AT:non_possiedi_ogg2.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
              END IF.
          END IF.

      DOES
        "Non puoi bruciare" SAY THE ogg. "con" SAY THE strum. "."
     -- "You can't burn" SAY THE ogg. "with" SAY THE strum. "."
  END VERB brucia_con.
END ADD TO.


-->gruppo_usare(22100)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Usare
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi per usare:
--| 
--| * `usa`
--| * `usa_con`
--<


-->gruppo_usare                                                    @USA <-- @USE
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== usa
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `usa`.
--<


SYNTAX usa = usa (ogg)
  WHERE ogg IsA OBJECT
    ELSE "Solo gli oggetti sono utilizzabili!"
 -- ELSE SAY mia_AT:illegal_parameter_obj.

-- @TODO: Valutare se usare un messagio my_game per qui sopra!

ADD TO EVERY OBJECT
  VERB usa
    CHECK mia_AT CAN usare
      ELSE SAY mia_AT:azione_bloccata.
    DOES
   -- "Please be more specific. How do you intend to use"
      "Sii più specifico. Come vorresti usarl$$" SAY ogg:vocale. "?"
    END VERB usa.
END ADD TO.


-->gruppo_usare                                           @USA CON <-- @USE WITH
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== usa_con
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `usa_con`.
--<

-- Qui andrebbe usato un attributo per la risposta:                             TODO!
SYNTAX usa_con = usa (ogg) con (strum)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg = hero
        THEN SAY mia_AT:azione_insensata.
        ELSE "Solo gli oggetti sono utilizzabili!"
     -- ELSE SAY mia_AT:illegal_parameter_obj.
      END IF.
  AND strum IsA OBJECT
    ELSE "Solo gli oggetti sono utilizzabili!"
 -- ELSE SAY mia_AT:illegal_parameter_obj.

-- @NOTA: Non ho messo 'azione_insensata' per il parametro strum, poiché non
--        sarebbe del tutto insensato. Ma dovrei comunque pensare a un messaggio
--        apposito nel caso si tratta dell'eroe.


ADD TO EVERY OBJECT
  VERB usa_con
    WHEN ogg
      CHECK mia_AT CAN usare_con
        ELSE SAY mia_AT:azione_bloccata.
      AND ogg <> strum
        ELSE SAY mia_AT:azione_insensata.
      DOES
     -- "Please be more specific. How do you intend to use them together?"
        "Sii più specifico. Come vorresti usarl$$"
        IF ogg IS NOT femminile OR strum IS NOT femminile
          THEN "i?" --| Se anche solo uno dei due è maschile useremo il maschile,
          ELSE "e?" --| altrimenti il femminile.
        END IF.
    END VERB usa_con.
END ADD TO.

-->gruppo_pensare(22200)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Pensare
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi per ZZZZ:
--| 
--| * `pensa`
--| * `pensa_a`
--<


-->gruppo_pensare                                              @PENSA <-- @THINK
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== pensa
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `pensa`.
--<

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
    ELSE SAY mia_AT:azione_bloccata.
  DOES
    "Nothing helpful comes to your mind."
END VERB pensa.



-->gruppo_pensare                                      @PENSA A <-- @THINK ABOUT
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== pensa_a
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `pensa_a`.
--<

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
        THEN SAY mia_AT:illegal_parameter_about_sg.
        ELSE SAY mia_AT:illegal_parameter_about_pl.
      END IF.

        pensa_a = rifletti su (argomento)!.
        pensa_a = pondera (argomento)!.

ADD TO EVERY THING
  VERB pensa_a
    CHECK mia_AT CAN pensare_a
      ELSE SAY mia_AT:azione_bloccata.
    DOES
      "Nothing helpful comes to your mind."
  END VERB pensa_a.
END ADD TO.

-->gruppo_entrare(22300)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Entrare e uscire
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| La libreria definisce i seguenti verbi per entrare e uscire da un oggetto:
--| 
--| * `entra`
--| * `entra_in`
--| * `esci`
--| * `esci_da`
--| 
--| 
--| Poiché in Alan non è consentito collocare un attore dentro ad un contenitore,
--| si dovrà ricorrere ad un luogo annidato in quello attuale per creare tale
--| illusione.
--| 
--| Ad esempio, volendo implementare una cabina telefonica in cui il giocatore
--| possa entrare, si creerà un oggetto `cabina_telefonica` che rappresenti la
--| cabina nel luogo attuale, e si creerà anche il luogo annidato `interno_cabina`
--| in cui spostare l'eroe quando questi entra nella cabina.
--| 
--| Sull'oggetto `cabina_telefonica` si implementeranno i verbi `entra` ed
--| `esci` affinché questi collochino l'eroe dentro e fuori il luogo annidato
--| `interno_cabina`. Quando l'eroe si troverà in `interno_cabina` sarà comunque
--| _anche_ dentro il luogo che ospita la cabina (contenimento transitivo), perciò
--| gli oggetti di entrambi i luoghi saranno alla sua portata.
--| 
--| Intervenendo sull'istanza `interno_cabina` sarà infine possibile controllare
--| quali azioni saranno consentite dall'interno della cabina e quali no -- p.es.
--| fare in modo che dalla cabina sia visibile tutto ciò che si trova nel luogo
--| principale, impedire interazioni che richiedano contatto fisico con gli
--| oggetti al di fuori di essa, rendere accessibili il telefono e la guida
--| telefonica, ecc.
--<

-- In the present version of ALAN, actors cannot enter containers.
-- You can simulate the hero entering a container by making the 'container'
-- a nested location and locating the hero there in the DOES ONLY
-- section of this verb under the instance at hand.



-->gruppo_entrare                                              @ENTRA <-- @ENTER
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== entra + entra_in
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `entra` + `entra_in`.
--<



-- La versione semplice del verbo `entra` serve a indirizzare il giocatore verso
-- la sintassi corretta del verbo.

SYNTAX entra = entra.


VERB entra
  DOES SAY mia_AT:specificare_IN_cosa. "vorresti entrare."
END VERB entra.


SYNTAX entra_in = entra 'in' (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      -- "$+1 non [è/sono] qualcosa in cui poter"
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_IN_sg.
        ELSE SAY mia_AT:ogg1_inadatto_IN_pl.
      END IF. "entrare."


ADD TO EVERY OBJECT
  VERB entra_in
    CHECK mia_AT CAN entrare
      ELSE SAY mia_AT:azione_bloccata.
--                                                                              TRANSLATE!
    AND hero IS NOT seduto
      ELSE SAY mia_AT:check_hero_not_sitting2.
--                                                                              TRANSLATE!
    AND hero IS NOT sdraiato
      ELSE SAY mia_AT:check_hero_not_lying_down2.
    DOES
      -- "$+1 non [è/sono] qualcosa in cui poter"
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_IN_sg.
        ELSE SAY mia_AT:ogg1_inadatto_IN_pl.
      END IF. "entrare."
  END VERB entra_in.
END ADD TO.


-->gruppo_entrare                                                @ESCI <-- @EXIT
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== esci + esci_da
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `esci` + `esci_da`.
--<


--- another 'exit' formulation added to guide players to use the right formulation:


SYNTAX esci = esci.


VERB esci
  DOES SAY mia_AT:specificare_DA_cosa. "vorresti uscire."
END VERB esci.


SYNTAX esci_da = esci da (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      -- "$+1 non [è/sono] qualcosa da cui poter"
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_DA_sg.
        ELSE SAY mia_AT:ogg1_inadatto_DA_pl.
      END IF. "uscire."


ADD TO EVERY OBJECT
  VERB esci_da
    CHECK mia_AT CAN uscire
      ELSE SAY mia_AT:azione_bloccata.
    DOES
      -- "$+1 non [è/sono] qualcosa da cui poter"
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_DA_sg.
        ELSE SAY mia_AT:ogg1_inadatto_DA_pl.
      END IF. "uscire."
    END VERB esci_da.
END ADD TO.

-->gruppo_sparare(22400)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Sparare
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi per sparare con armi da fuoco (o comunque armi
--| in grado di espellere proiettili di qualche tipo):
--| 
--| * `spara`
--| * `spara_errore`
--| * `spara_a`
--| * `spara_a_errore`
--| 
--| L'arma del parametro deve avere l'attributo `sparabile`.
--<


-->gruppo_sparare                                               @SPARA <-- @FIRE
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== spara
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `spara`.
--<

SYNTAX spara = spara con (arma)
  WHERE arma IsA arma
    ELSE
      IF arma IS NOT plurale
        THEN SAY mia_AT:ogg1_non_arma_da_fuoco_sg.
        ELSE SAY mia_AT:ogg1_non_arma_da_fuoco_pl.
      END IF.


ADD TO EVERY arma
  VERB spara
    CHECK mia_AT CAN sparare
      ELSE SAY mia_AT:azione_bloccata.
    AND arma can sparare
      ELSE
        IF arma IS NOT plurale
        THEN SAY mia_AT:ogg1_non_arma_da_fuoco_sg.
        ELSE SAY mia_AT:ogg1_non_arma_da_fuoco_pl.
        END IF.

  AND CURRENT LOCATION IS illuminato
    ELSE SAY mia_AT:imp_luogo_buio.
  DOES
    "Spari un colpo in aria con" SAY THE arma. "."
  END VERB spara.
END ADD TO.


-->gruppo_sparare                                               @SPARA <-- @FIRE
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== spara_errore
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `spara_errore`.
--<
SYNTAX spara_errore = spara.

VERB spara_errore
  CHECK COUNT IsA ARMA, can sparare, DIRECTLY IN hero > 0
    ELSE SAY mia_AT:non_hai_armi_da_fuoco.
  DOES
    SAY mia_AT:specificare_CON_cosa. "sparare."
END VERB spara_errore.



-->gruppo_sparare                                          @SPARA A <-- @FIRE AT
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== spara_a
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `spara_a`.
--<


SYNTAX  spara_a = spara con (arma) a (bersaglio)
  WHERE arma IsA arma
    ELSE
      IF arma IS NOT plurale
        THEN SAY mia_AT:ogg1_non_arma_da_fuoco_sg.
        ELSE SAY mia_AT:ogg1_non_arma_da_fuoco_pl.
      END IF.
  AND bersaglio IsA THING
    ELSE
      IF arma IS NOT plurale
        THEN SAY mia_AT:ogg2_inadatto_A_sg.
        ELSE SAY mia_AT:ogg2_inadatto_A_pl.
      END IF. "sparare"

        spara_a = spara a (bersaglio) con (arma).


ADD TO EVERY arma
  VERB spara_a
    WHEN arma
      CHECK mia_AT CAN sparare_a
        ELSE SAY mia_AT:azione_bloccata.
      AND arma can sparare
        ELSE
          IF arma IS NOT plurale
            THEN SAY mia_AT:ogg1_non_arma_da_fuoco_sg.
            ELSE SAY mia_AT:ogg1_non_arma_da_fuoco_pl.
          END IF.
      AND bersaglio IS esaminabile
        ELSE
          IF arma IS NOT plurale
            THEN SAY mia_AT:ogg2_inadatto_A_sg.
            ELSE SAY mia_AT:ogg2_inadatto_A_pl.
          END IF. "sparare"
      AND arma <> bersaglio
        ELSE SAY mia_AT:azione_insensata.
      AND bersaglio <> hero
        ELSE SAY mia_AT:no_autolesionismo.
      AND bersaglio IS NOT distante
        -- note that it is possible to fire at a "not reachable" bersaglio
        ELSE
          IF bersaglio IS NOT plurale
            THEN SAY mia_AT:ogg1_distante_sg.
            ELSE SAY mia_AT:ogg1_distante_pl.
          END IF.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      DOES
        -- "La violenza non è la giusta risposta a questo." ---> taken from i6
        SAY mia_AT:la_violenza_non_è_la_risposta.
  END VERB spara_a.
END ADD TO.

-->gruppo_sparare                                          @SPARA A <-- @FIRE AT
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== spara_a_errore
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `spara_a_errore`.
--<


-- another formulation added:


SYNTAX spara_a_errore = spara a (bersaglio)
  WHERE bersaglio IsA THING
    ELSE
      IF bersaglio IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_A_sg.
        ELSE SAY mia_AT:ogg1_inadatto_A_pl.
      END IF. "sparare."


ADD TO EVERY THING
  VERB spara_a_errore
    CHECK COUNT IsA ARMA, can sparare, DIRECTLY IN hero > 0
      ELSE SAY mia_AT:non_hai_armi_da_fuoco.
    AND bersaglio <> hero
      ELSE SAY mia_AT:no_autolesionismo.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    DOES
      -- "La violenza non è la giusta risposta a questo." ---> taken from i6
      SAY mia_AT:la_violenza_non_è_la_risposta.
  END VERB spara_a_errore.
END ADD TO.




--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- VERBI NON ANCORA RAGGRUPPATI 
-------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================

-->gruppo_sfusi(29999)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Verbi sfusi
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo raccoglie i verbi per i quali non è ancora stato creato un:
--| gruppo di appartenenza, o quei verbi che sono destinati a restare isolati:
--| 
--| * `acchiappa`
--| * `agita`
--| * `aspetta`
--| * `attraversa`
--| * `bacia`
--| * `balla`
--| * `bussa`
--| * `canta`
--| * `consulta`
--| * `dormi`
--| * `gioca_con`
--| * `gira`
--| * `gratta`
--| * `grida`
--| * `guida`
--| * `inventario`
--| * `lega`
--| * `lega_a`
--| * `libera`
--| * `mostra`
--| * `pulisci`
--| * `prega`
--| * `rifai`
--| * `scava`
--| * `scavalca`
--| * `segui`
--| * `sfrega`
--| * `spremi`
--| * `suona`
--| * `trova`
--| * `vai_a`
--<


-->gruppo_sfusi                                            @ACCHIAPPA <-- @CATCH
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== acchiappa
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `acchiappa`.
--<


-- 'catch' = 'acchiappare' (una cosa al volo) ma anche 'catturare' (un animale).

SYNTAX acchiappa = acchiappa (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF. "acchiappare."

ADD TO EVERY THING
  VERB acchiappa
    CHECK mia_AT CAN acchiappare
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF. "acchiappare."
    AND ogg <> hero
      ELSE SAY mia_AT:azione_insensata.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
--                                                                              TRANSLATE!
    AND hero IS NOT seduto
      ELSE SAY mia_AT:check_hero_not_sitting2.
--                                                                              TRANSLATE!
    AND hero IS NOT sdraiato
      ELSE SAY mia_AT:check_hero_not_lying_down2.
    DOES
      IF ogg IS NOT plurale
        THEN "That doesn't"
        ELSE "Those don't"
      END IF.

          "need to be caught."
  END VERB acchiappa.
END ADD TO.


-->gruppo_sfusi                                                @AGITA <-- @SHAKE
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== agita
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `agita`.
--<

-- @NOTA1: possibili traduzioni: scuoti + agita
--         Il verbo principale dovrebbe essere "scuoti" perché è puù generico e
--         va bene in tutte le risposte:
--         - "scuoti albero"  -> "scuoti l'albero..."
--         - "agita flaccone" -> "scuoti il flaccone..."
-- @NOTA2: La risposta inglese tiene conto se l'oggetto è posseduto o meno:
--            "You shake XXX cautiously in your hands."


SYNTAX agita = agita (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF. "agitare."

SYNONYMS scuoti = agita.


ADD TO EVERY OBJECT
  VERB agita
    CHECK mia_AT CAN agitare
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF. "agitare."
--                                                                              TRANSLATE!
    AND ogg IS spostabile
      ELSE SAY mia_AT:check_obj_movable.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES
      IF ogg IN hero
        THEN
          "Agiti cautamente $+1 con la mano, ma senza risultato."
        -- "You shake" SAY THE ogg. "cautiously in your hands. Nothing happens."
        ELSE "Non c'è motivo di scuotere $+1."
        -- "There is no reason to start shaking" SAY THE ogg. "."
      END IF.
  END VERB agita.
END ADD TO.


-->gruppo_sfusi                                                @ASPETTA <-- WAIT
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== aspetta
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `aspetta`.
--<

SYNTAX aspetta = aspetta.

SYNONYMS
  z, attendi = aspetta.

VERB aspetta
  CHECK mia_AT CAN aspettare
    ELSE SAY mia_AT:azione_bloccata.
  DOES
    "Il tempo passa."
END VERB aspetta.


-->gruppo_sfusi                                    @ATTRAVERSA <-- CLIMB THROUGH
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== attraversa
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `attraversa`.
--<

-- SYNTAX climb_through = climb through (obj)

SYNTAX attraversa = attraversa (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "attraversare."

ADD TO EVERY OBJECT
  VERB attraversa
    CHECK mia_AT CAN attraversare
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "attraversare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
--                                                                              TRANSLATE!
    AND hero IS NOT seduto
      ELSE SAY mia_AT:check_hero_not_sitting3.
--                                                                              TRANSLATE!
    AND hero IS NOT sdraiato
      ELSE SAY mia_AT:check_hero_not_lying_down3.
    DOES
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "attraversare."
   -- IF ogg IS NOT plurale
   --   THEN "That's not"
   --   ELSE "Those are not"
   -- END IF.
   -- "something you can climb through."
  END VERB attraversa.
END ADD TO.


-->gruppo_sfusi                                                 @BACIA <-- @KISS
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== bacia
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `bacia`.
--<

-- SYNTAX kiss = kiss (ogg)
-- SYNONYMS hug, embrace = kiss.

SYNTAX bacia = bacia (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "$vre." -- baciare/abbracciare

SYNONYMS abbraccia = bacia.



ADD TO EVERY THING
  VERB bacia
    CHECK mia_AT CAN baciare
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "$vre." -- baciare/abbracciare
    AND ogg <> hero
      ELSE SAY mia_AT:azione_irrelevante.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES
      IF ogg IsA ACTOR
        THEN SAY THE ogg. "respinge le tue avances."
        ELSE SAY mia_AT:azione_futile.
      END IF.
  END VERB bacia.
END ADD TO.

-->gruppo_sfusi                                                @BALLA <-- @DANCE
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== balla
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `balla`.
--<

SYNTAX balla = balla.

SYNONYMS danza = balla.


VERB balla
  CHECK mia_AT CAN ballare
    ELSE SAY mia_AT:azione_bloccata.
  AND CURRENT LOCATION IS illuminato
    ELSE SAY mia_AT:imp_luogo_buio.
  AND hero IS NOT seduto
    ELSE SAY mia_AT:impossibile_da_seduto.
  AND hero IS NOT sdraiato
    ELSE SAY mia_AT:impossibile_da_sdraiato.
  DOES
    SAY mia_AT:non_senti_bisogno_di. "ballare."
 -- "How about a waltz?"
END VERB balla.

-->gruppo_sfusi                                                @BUSSA <-- @KNOCK
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== bussa
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `bussa`.
--<


SYNTAX bussa = bussa a (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_A_sg.
        ELSE SAY mia_AT:ogg1_inadatto_A_pl.
      END IF. "bussare."

       bussa = bussa (ogg).


ADD TO EVERY OBJECT
  VERB bussa
    CHECK mia_AT CAN bussare
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:ogg1_inadatto_A_sg.
          ELSE SAY mia_AT:ogg1_inadatto_A_pl.
        END IF. "bussare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES
      "Bussi" SAY ogg:prep_A. "$1 ma non succedde nulla."
  END VERB bussa.
END ADD TO.


--- another 'knock' formulation added to guide players to use the right phrasing:


SYNTAX bussa_errore = bussa.


VERB bussa_errore
  DOES
    "Per bussare a qualcosa, usa BUSSA A OGGETTO."
 -- "Please use the formulation KNOCK ON SOMETHING to knock on something."
END VERB bussa_errore.


-->gruppo_sfusi                                                 @CANTA <-- @SING
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== canta
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `canta`.
--<

-- SYNTAX sing = sing.
-- SYNONYMS hum, whistle = sing.

SYNTAX canta = canta.


VERB canta
  CHECK mia_AT CAN cantare
    ELSE SAY mia_AT:azione_bloccata.
  DOES
    "Canticchi una melodia."
 -- "You $v a little tune."
END VERB canta.

-->gruppo_sfusi                                           @CONSULTA --> @CONSULT
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== consulta
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `consulta`.
--<


-- SYNTAX consult = consult (fonte) about (argomento)!
-- consult = 'look' 'up' (argomento) 'in' (fonte).

-- NOTA:  'CIRCA' è sinonimo di 'RIGUARDO' (definito altrove).


SYNTAX  consulta = consulta (fonte) riguardo (argomento)!
  WHERE fonte IsA OBJECT
    -- you can only consult an inanimate source, not a person.
    ELSE
      IF fonte IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "consultare."
  AND argomento IsA THING
    ELSE
      IF argomento IS NOT plurale
--                                                                              TRANSLATE!
        --              "That's not something you can find information about."
        THEN SAY mia_AT:illegal_parameter_consult_sg.
        ELSE SAY mia_AT:illegal_parameter_consult_pl.
      END IF.

        consulta = guarda (argomento) 'in' (fonte).
        consulta = cerca (argomento) 'in' (fonte).
        consulta = ricerca (argomento) 'in' (fonte).


ADD TO EVERY THING
  VERB consulta
    WHEN fonte
      CHECK mia_AT CAN consultare
        ELSE SAY mia_AT:azione_bloccata.
      AND fonte IS esaminabile
        ELSE
          IF fonte IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY mia_AT:ogg1_inadatto_sg.
            ELSE SAY mia_AT:ogg1_inadatto_pl.
          END IF.
          "consultare."
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND fonte IS raggiungibile AND fonte IS NOT distante
        ELSE
          IF fonte IS NOT raggiungibile
            THEN
              IF fonte IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF fonte IS distante
            THEN
              IF fonte IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
              END IF.
          END IF.
      DOES
        "Non scopri niente di utile" SAY argomento:prep_SU. "$2 cosultando $+1."
  END VERB consulta.
END ADD TO.


--- another 'consult' formulation added to guide players to use the right phrasing:

-- @NOTA: Qui servirebbero sintassi alternative o sinonimi                      TODO!

SYNTAX consulta_error = consulta (fonte)
  WHERE fonte IsA THING
    ELSE SAY mia_AT:per_consultare_qlco_USA.


ADD TO EVERY THING
  VERB consulta_error
    DOES SAY mia_AT:per_consultare_qlco_USA.
  END VERB consulta_error.
END ADD TO.


-->gruppo_sfusi                                                @DORMI <-- @SLEEP
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== dormi
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `dormi`.
--<

-- SLEEP (+ rest)

SYNTAX dormi = dormi.

SYNONYMS riposa = dormi.

VERB dormi
  CHECK mia_AT CAN dormire
    ELSE SAY mia_AT:azione_bloccata.
  DOES
    "Non è il momento di riposare."
END VERB dormi.


-->gruppo_sfusi                                        @GIOCA CON <-- @PLAY WITH
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== gioca_con
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `gioca_con`.
--<

-- SYNTAX play_with = 'play' 'with' (ogg)


SYNTAX gioca_con = gioca con (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_CON_sg.
        ELSE SAY mia_AT:ogg1_inadatto_CON_pl.
      END IF. "giocare."


ADD TO EVERY THING
  VERB gioca_con
    CHECK mia_AT CAN giocare_con
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:ogg1_inadatto_CON_sg.
          ELSE SAY mia_AT:ogg1_inadatto_CON_pl.
        END IF. "giocare."
    AND ogg <> hero
      ELSE SAY mia_AT:azione_irrelevante.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES
      "Ripensandoci, non vedi alcuna utilità nel giocare con" SAY THE ogg. "."
   -- "After second thought you don't find it purposeful to start
   --  playing with" SAY THE ogg. "."
  END VERB gioca_con.
END ADD TO.


-->gruppo_sfusi                                                  @GIRA <-- @TURN
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== gira
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `gira`.
--<

-- TURN  (+ rotate)

SYNTAX gira = gira (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF mia_AT CAN NOT girare
        THEN
          "The verb '$v' is not in your vocabulary."
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY mia_AT:ogg1_inadatto_sg.
            ELSE SAY mia_AT:ogg1_inadatto_pl.
          END IF.
          "girare." --# ruotare?
      END IF.

ADD TO EVERY OBJECT
  VERB gira
    CHECK mia_AT CAN girare
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
--                                                                              TRANSLATE!
          THEN SAY mia_AT:check_obj_suitable_sg.
          ELSE SAY mia_AT:check_obj_suitable_pl.
        END IF.
    AND ogg IS spostabile
      ELSE
        IF ogg IS NOT plurale
--                                                                              TRANSLATE!
          THEN SAY mia_AT:check_obj_suitable_sg.
          ELSE SAY mia_AT:check_obj_suitable_pl.
        END IF.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.

    DOES
      IF ogg DIRECTLY IN hero
        THEN "You turn" SAY THE ogg. "in your hands, noticing nothing special."
        ELSE "That wouldn't accomplish anything."
      END IF.
  END VERB gira.
END ADD TO.


-->gruppo_sfusi                                             @GRATTA --> @SCRATCH
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== gratta
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `gratta`.
--<

-- SYNTAX scratch = scratch (ogg)

-- Non è chiaro se il verbo è inteso come "gratta" o "graffia"! Vedi:
-- https://github.com/AnssiR66/AlanStdLib/issues/30

SYNTAX gratta = gratta (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "grattare." -- #graffiare?


ADD TO EVERY THING
  VERB gratta
    CHECK mia_AT CAN grattare
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "grattare." -- #graffiare?
    AND ogg <> hero
      ELSE SAY  mia_AT:azione_futile.
    AND ogg IS inanimato
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:png1_non_gradirebbe_sg.
          ELSE SAY mia_AT:png1_non_gradirebbe_pl.
        END IF.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES SAY mia_AT:azione_futile.
  END VERB gratta.
END ADD TO.



-->gruppo_sfusi                                                @GRIDA <-- @SHOUT
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== grida
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `grida`.
--<

-- SYNTAX shout = shout.
-- SYNONYMS scream, yell = shout.


SYNTAX grida = grida.


SYNONYMS strilla, urla = grida.


VERB grida
  CHECK mia_AT CAN gridare
    ELSE SAY mia_AT:azione_bloccata.
  DOES
    "Le tue grida non sono servite a nulla."
 -- "Nothing results from your $ving."
END VERB grida.


-->gruppo_sfusi                                                @GUIDA <-- @DRIVE
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== guida
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `guida`.
--<


SYNTAX guida = guida (veicolo)
  WHERE veicolo IsA OBJECT
    ELSE
      IF veicolo IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "guidare."

ADD TO EVERY OBJECT
  VERB guida
    CHECK mia_AT CAN guidare
      ELSE SAY mia_AT:azione_bloccata.
    AND veicolo IS esaminabile
      ELSE
        IF veicolo IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "guidare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND veicolo IS raggiungibile AND veicolo IS NOT distante
      ELSE
        IF veicolo IS NOT raggiungibile
          THEN
            IF veicolo IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF veicolo IS distante
          THEN
            IF veicolo IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    AND hero IS NOT sdraiato
--                                                                              TRANSLATE!
      ELSE SAY mia_AT:check_hero_not_lying_down3.
    DOES
      IF veicolo IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
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



-->gruppo_sfusi                                        @INVENTARIO <- @INVENTORY
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== inventario
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `inventario`.
--<

--------------------------------------------------------------------------------
-- META VERBO? Inventariare è un'azione mentale più che fisica, perciò pur
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
    ELSE SAY mia_AT:azione_bloccata.
  DOES
    LIST hero.

    IF COUNT DIRECTLY IN abbigliamento > 0   -- See the file 'classes.i', subclass 'clothing'.
      THEN LIST abbigliamento.     -- This code will list what the hero is wearing.
    END IF.

END VERB inventario.

-->gruppo_sfusi                                                   @LEGA <-- @TIE
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== lega
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `lega`.
--<

-- @NOTA: in i6: lega, fissa, congiungi, unisci, allaccia, annoda, attacca.

-- SYNTAX tie = tie (ogg)

SYNTAX lega = lega (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "legare."


ADD TO EVERY OBJECT
  VERB lega
    CHECK mia_AT CAN legare
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "legare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    DOES
      SAY mia_AT:specificare_A_cosa. "vorresti legare $+1."
   -- "You must state where you want to tie" SAY THE ogg. "."
    END VERB lega.
END ADD TO.

-->gruppo_sfusi                                              @LEGA A <-- @TIE TO
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== lega_a
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `lega_a`.
--<

-- @NOTA: In questo verbo non ho messo il controllo 'IF ogg = hero', perché in
--        fondo non è del tutto insensato cercare di usare "lega me a Mario";
--        quindi anche se l'azione è bloccata non bisognerebbe dichiararla una
--        richiesta insensata!

SYNTAX lega_a = lega (ogg) a (bersaglio)
  WHERE ogg IsA OBJECT
    ELSE SAY mia_AT:illegal_parameter_obj.
  AND bersaglio IsA THING
    ELSE SAY mia_AT:illegal_parameter_obj.



ADD TO EVERY THING
  VERB lega_a
    WHEN ogg
      CHECK mia_AT CAN legare_a
        ELSE SAY mia_AT:azione_bloccata.
      AND ogg IS esaminabile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY mia_AT:ogg1_inadatto_sg. "legare."
            ELSE SAY mia_AT:ogg1_inadatto_pl. "legare."
          END IF.
--                                                                              TRANSLATE!
      AND bersaglio IS esaminabile
        ELSE SAY mia_AT:check_obj2_suitable_there.
      AND ogg <> bersaglio
        ELSE SAY mia_AT:azione_insensata.
      AND ogg IS prendibile
        ELSE SAY  mia_AT:ogg1_non_posseduto.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.
                ELSE SAY mia_AT:ogg1_distante_pl.
              END IF.
          END IF.
      AND bersaglio IS raggiungibile AND bersaglio IS NOT distante
        ELSE
          IF bersaglio IS NOT raggiungibile
            THEN
              IF bersaglio IS NOT plurale
                THEN SAY mia_AT:ogg2_non_raggiungibile_sg.
                ELSE SAY mia_AT:ogg2_non_raggiungibile_pl.
              END IF.
          ELSIF bersaglio IS distante
            THEN
              IF bersaglio IS NOT plurale
                THEN SAY mia_AT:ogg2_distante_sg.
                ELSE SAY mia_AT:ogg2_distante_pl.
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



-->gruppo_sfusi                                                 @LIBERA <-- @FREE
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== libera
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `libera`.
--<

-- SYNTAX free = free (ogg)
-- SYNONYMS release = free.

SYNTAX libera = libera (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "liberare."


SYNONYMS rilascia = libera.


ADD TO EVERY THING
  VERB libera
    CHECK mia_AT CAN liberare
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF.
        "liberare."
    AND ogg <> hero
      ELSE SAY mia_AT:check_obj_not_hero5.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
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

-->gruppo_sfusi                                                @MOSTRA <-- @SHOW
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== mostra
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `mostra`.
--<

-- SYNTAX  'show' = 'show' (ogg) 'to' (png)
-- SYNONYMS reveal = 'show'.


SYNTAX mostra = mostra (ogg) a (png)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg = hero
        THEN SAY mia_AT:azione_insensata.
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF. "mostrare."
      END IF.
  AND png IsA ACTOR
    ELSE
      IF png IS NOT plurale
        THEN SAY mia_AT:ogg2_inadatto_A_sg.
        ELSE SAY mia_AT:ogg2_inadatto_A_pl.
      END IF. "mostrare $+1."


ADD TO EVERY OBJECT
  VERB mostra
    WHEN ogg
      CHECK mia_AT CAN mostrare
        ELSE SAY mia_AT:azione_bloccata.
      AND png <> hero
        ELSE SAY mia_AT:azione_insensata.
      AND ogg IN hero
        ELSE SAY mia_AT:non_possiedi_ogg1.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY mia_AT:imp_luogo_buio.
      AND png IS NOT distante
        ELSE
          IF png IS NOT plurale
            THEN SAY mia_AT:ogg2_distante_sg.
            ELSE SAY mia_AT:ogg2_distante_pl.
          END IF.
      DOES
        SAY THE png. "non sembra"
        IF png IS plurale
          THEN "$$no"
        END IF.
        "interessat$$" SAY png:vocale. "."
  END VERB mostra.
END ADD TO.


-->gruppo_sfusi                                                 @PREGA <-- @PRAY
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== prega
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `prega`.
--<

SYNTAX prega = prega.


VERB prega
  CHECK mia_AT CAN pregare
    ELSE SAY mia_AT:azione_bloccata.
  DOES "Sembra che le tue preghiere non siano state esaudite." ---> da i6
  -- DOES "Your prayers don't seem to help right now."
END VERB prega.

-->gruppo_sfusi                                              @PULISCI <-- @CLEAN
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== pulisci
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `pulisci`.
--<

-- SYNTAX clean = clean (ogg)
-- SYNONYMS wipe, polish = clean.

SYNTAX pulisci = pulisci (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "pulire."


SYNONYMS strofina, lucida = pulisci.

----- notice that 'rub' is defined separately

ADD TO EVERY OBJECT
  VERB pulisci
    CHECK mia_AT CAN pulire
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF. "pulire."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES SAY mia_AT:azione_futile.
  END VERB pulisci.
END ADD TO.





-->gruppo_sfusi                                                @RIFAI <-- @AGAIN
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== rifai
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `rifai`.
--<

-- #NOTA: Aggiungere anche "ripeti"?

SYNTAX
  rifai = rifai.
  rifai = ancora.


SYNONYMS g = rifai.


VERB rifai
  CHECK mia_AT CAN rifare
    ELSE SAY mia_AT:azione_bloccata.
  DOES
    "[Il comando ANCORA non è supportato in questo gioco. In alternativa, prova
    ad usare i tasti 'su' e 'giù' per navigare tra i comandi precedenti.]"
    -- "[The AGAIN command is not supported in this game. As a workaround, try using
    --  the 'up' and 'down' arrow keys to scroll through your previous commands.]"
END VERB rifai.

-->gruppo_sfusi                                                  @SCAVA <-- @DIG
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== scava
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `scava`.
--<


-- NOTA: Dovrei aggiungere una versione globale del verbo (scava0) per poter
--       intercettare comandi come 'scava' e chiedere al giocatore cosa vorrebbe
--       scavare? Oppure è troppo?

-- SYNTAX dig = dig (ogg)

SYNTAX scava = scava (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "scavare."


ADD TO EVERY OBJECT
  VERB scava
    CHECK mia_AT CAN scavare
      ELSE SAY mia_AT:azione_bloccata.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
--                                                                              TRANSLATE!
    AND hero IS NOT seduto
      ELSE SAY mia_AT:check_hero_not_sitting2.
--                                                                              TRANSLATE!
    AND hero IS NOT sdraiato
      ELSE SAY mia_AT:check_hero_not_lying_down2.
    DOES
      "Qui non c'è nulla da scavare."
   -- "There is nothing suitable to dig here."
  END VERB scava.
END ADD TO.


-->gruppo_sfusi                                             @SCAVALCA <-- @CLIMB
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== scavalca
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `scavalca`.
--<

-- @NOTA: Ho scelto arbitrariamente di tradurre questo verbo con 'scavalca'
--        poiché altri usi più consoni all'originale sarebbero stati meno utili
--        ai fini delle avventure.

SYNTAX scavalca = scavalca (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
      --@NOTA: Qui dovrò usare un messaggio personalizzato (prep_SU)            TRANSLATE!
        THEN SAY mia_AT:illegal_parameter_sg.
        ELSE SAY mia_AT:illegal_parameter_pl.
      END IF.


ADD TO EVERY OBJECT
  VERB scavalca
  CHECK mia_AT CAN scavalcare
    ELSE SAY mia_AT:azione_bloccata.
  AND ogg IS esaminabile
    ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF. "scavalcare."
  AND CURRENT LOCATION IS illuminato
    ELSE SAY mia_AT:imp_luogo_buio.
  AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
--                                                                              TRANSLATE!
  AND hero IS NOT seduto
    ELSE SAY mia_AT:check_hero_not_sitting3.
--                                                                              TRANSLATE!
  AND hero IS NOT sdraiato
    ELSE SAY mia_AT:check_hero_not_lying_down3.
  DOES
    IF ogg IS NOT plurale
      THEN SAY mia_AT:ogg1_inadatto_sg.
      ELSE SAY mia_AT:ogg1_inadatto_pl.
    END IF. "scavalcare."
  END VERB scavalca.
END ADD TO.



-->gruppo_sfusi                                               @SEGUI <-- @FOLLOW
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== segui
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `segui`.
--<

-- @NOTA: possibili sinonimi: insegui, pedina, rincorri.

SYNTAX segui = segui (png)!
  WHERE png IsA ACTOR
    ELSE
      IF png IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF. "seguire."


ADD TO EVERY THING
  VERB segui
    CHECK mia_AT CAN seguire
      ELSE SAY mia_AT:azione_bloccata.
    AND png <> hero
      ELSE SAY mia_AT:azione_insensata.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND png NOT AT hero
      ELSE
        IF png IS NOT plurale
          THEN SAY mia_AT:ogg1_già_qui_sg.
          ELSE SAY mia_AT:ogg1_già_qui_pl.
        END IF.
--                                                                              TRANSLATE!
    AND hero IS NOT seduto
      ELSE SAY mia_AT:check_hero_not_sitting2.
--                                                                              TRANSLATE!
    AND hero IS NOT sdraiato
      ELSE SAY mia_AT:check_hero_not_lying_down2.
    AND png NEAR hero
      ELSE
        IF png IS NOT plurale
          THEN SAY mia_AT:impossibile_seguire_png1_sg.
          ELSE SAY mia_AT:impossibile_seguire_png1_pl.
        END IF.
    DOES
      LOCATE hero AT png.
--    @NOTA: potrei migliorare la risposta, così sempre solo ripetere a         IMPROVE!
--           pappagallo quello che ha digitato il giocatore.
      "Segui" SAY THE png. "."
    END VERB segui.
END ADD TO.



-->gruppo_sfusi                                                 @SFREGA <-- @RUB
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== sfrega
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `sfrega`.
--<

-- SYNTAX rub = rub (ogg)
-- SYNONYMS massage = rub.

SYNTAX sfrega = sfrega (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF. "sfregare."

SYNONYMS massaggia = sfrega.

ADD TO EVERY THING
  VERB sfrega
    CHECK mia_AT CAN sfregare
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF. "sfregare."
    AND ogg <> hero
      ELSE SAY mia_AT:azione_irrelevante.
    AND ogg IS inanimato
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:png1_non_gradirebbe_sg.
          ELSE SAY mia_AT:png1_non_gradirebbe_pl.
        END IF.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES SAY mia_AT:azione_futile.
  END VERB sfrega.
END ADD TO.


-->gruppo_sfusi                                             @SPREMI <-- @SQUEEZE
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== spremi
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `spremi`.
--<

-- @NOTA: Questo verbo è difficile da tradurre poiché i vari significati inglesi
--        non si sovrappongono in Italiano, tranne "spremi:
--        - "squeeze lemon" -> "spremi limone"
--        Ma che utilità avrebbe questo verbo di base?
--        Sarebbe più utile implementare "premi", "schiaccia", che almeno è usato
--        spesso (pulsanti, ecc.).
--        Il vero problema qui è la risposta che si ottiene: se uno usa "premi" o
--        "schiaccia" e nella risposta poi legge "spremi" (o viceversa) non ha
--        senso, quindi "spremi" e "schiaccia/premi" si escludono tra loro.
--        Purtroppo abbiamo a che fare con verbi il cui infinito non può essere
--        formato dall'imperativo tramite '$v'.

SYNTAX spremi = spremi (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF. "spremere."

SYNONYMS strizza = spremi.


ADD TO EVERY THING
  VERB spremi
    CHECK mia_AT CAN spremere
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF. "spremere."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES
      "Tentare si spremere $+1 non servirebbe a nulla."
    -- "Trying to squeeze" SAY THE ogg. "wouldn't accomplish anything."
  END VERB spremi.
END ADD TO.



-->gruppo_sfusi                                                 @SUONA <-- @PLAY
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== suona
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `suona`.
--<

-- SYNTAX 'play' = 'play' (ogg)

SYNTAX suona = suona (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF. "suonare."


ADD TO EVERY OBJECT
  VERB suona
    CHECK mia_AT CAN suonare
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:ogg1_inadatto_sg.
          ELSE SAY mia_AT:ogg1_inadatto_pl.
        END IF. "suonare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES
      IF ogg IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "suonare."
   -- IF ogg IS NOT plurale
   --   THEN "That's not"
   --   ELSE "Those are not"
   -- END IF.
   -- "something you can play."
  END VERB suona.
END ADD TO.

-->gruppo_sfusi                                                 @TROVA <-- @FIND
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== trova
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `trova`.
--<


-- SYNTAX find = find (ogg)!
-- SYNONYMS 'locate' = find.

SYNTAX trova = trova (ogg)!
  WHERE ogg IsA THING
    ELSE
    -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    -- @NOTA: Qui serve un messaggio ad hoc perché con ENTITY e LOCATION la     FIXME!
    --        risposta non gestisce bene gli articoli! (es "The l'ufficio...")
    --        Il vero problema qui è il '!' onnipotente che accetta anche le
    --        LOCATION come parametro.
    -- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF.
      "trovare."

-- SYNONYMS 'locate' = trova.
-- # 'scova', 'rintraccia'???


ADD TO EVERY THING
  VERB trova
    CHECK mia_AT CAN trovare
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg <> hero
      ELSE SAY mia_AT:sei_già_qui.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND ogg NOT AT hero
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:ogg1_già_qui_sg.
          ELSE SAY mia_AT:ogg1_già_qui_pl.
        END IF.
    DOES
      "Dovrai trovarlo da te!"
   -- "You'll have to $v it yourself."
  END VERB trova.
END ADD TO.


-->gruppo_sfusi                                                 @VAI A <- @GO TO
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== vai_a
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `vai_a`.
--<


-- SYNTAX go_to = 'to' (dest)!

SYNTAX vai_a = 'a' (dest)!
  -- Because 'go' is predefined in the parser, it can't be used in verb definitions.
  -- The player will still be able to type 'go to [dest]' successfully.
  WHERE dest IsA THING
    ELSE SAY mia_AT:destinazione_invalida.


SYNONYMS vai = go.


-- SYNONYMS walk = go.
  -- here we define a synonym for the predefined parser word 'go'
  -- which is not visible in the syntax itself.
  -- Thus, you will be able to say for example both 'go to shop' and 'walk to shop'
  -- (as well as for example both 'go east' and 'walk east').


ADD TO EVERY THING
  VERB vai_a
    CHECK mia_AT CAN andare_a
      ELSE SAY mia_AT:azione_bloccata.
    AND dest <> hero
      -- @NOTA: Potrei fare a meno dell'attr. messaggio, e personalizzarlo qui!
      ELSE SAY mia_AT:sei_già_qui.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
--                                                                              TRANSLATE!
    AND hero IS NOT seduto
      ELSE SAY mia_AT:check_hero_not_sitting3.
--                                                                              TRANSLATE!
    AND hero IS NOT sdraiato
      ELSE SAY mia_AT:check_hero_not_lying_down3.
    AND dest NOT AT hero
      ELSE
        IF dest IS NOT plurale
          THEN SAY mia_AT:ogg1_già_qui_sg.
          ELSE SAY mia_AT:ogg1_già_qui_pl.
        END IF.
    AND dest IS raggiungibile AND dest IS NOT distante
      ELSE
        IF dest IS NOT raggiungibile
          THEN
            IF dest IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF dest IS distante
          THEN
            IF dest IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES --                                                                     TRANSLATE
      "You can't see" SAY THE dest. "anywhere nearby. You must state a
       direction where you want to go."
    END VERB vai_a.
END ADD TO.




-->comandi_domande(30000)
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Verbi di domande
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
--| === Tabella comandi domande
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


-->comandi_domande
--|
--| [WARNING]
--| ============================================================================
--| *BUG!*  Per qualche ragione, Alan non riesce a preservare la `è` grave nelle
--| sintassi e nei sinonimi (il problema non si verifica nelle istanze e nei
--| parametri). Tutte le altre lettere accentate (`à`, `é`, `ì`, `ò` e `ù`)
--| funzionano correttamente, solo la `è` grave causa problemi.
--|
--| Questo implica che tutti i verbi di domande che contengono la `è` grave non
--| funzionano allo stato attuale poiché l'interprete non riesce a riconoscere
--| la `è` della sintassi:
--|
--| * `chi_è`
--| * `cosa_è`
--| * `dove_è`
--|
--| Per ora si dovrà ripiegare sull'uso della `é` acuta, finché il problema non
--| è risolto a monte tramite un bugfix. Più che una soluzione è un compromesso
--| (orribile, oltre che inutile), ma è giusto per andare avanti con il lavoro e
--| preservare il codice di questi verbi.
--| ============================================================================
--<


-->gruppo_chi(30100)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Domanda chi
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi:
--| 
--| * `chi_è`
--| * `chi_sono_io`
--<


-->gruppo_chi                                                 @CHI È <-- @WHO IS
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== chi_è
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `chi_è`.
--<


-- SYNTAX who_is = 'who' 'is' (png)!
--        who_is = 'who' 'are' (png)!.

SYNTAX  chi_è = chi è (png)!   ---> BUG: La 'è' non viene riconosciuta!         BUG!
  WHERE png IsA ACTOR
    ELSE
      IF png IS NOT plurale
        THEN SAY mia_AT:illegal_parameter_who_sg.
        ELSE SAY mia_AT:illegal_parameter_who_pl.
      END IF.

        chi_è = chi é (png)!.     ---> RIPIEGO ('é' anziché 'è'!)               FIXME!
        chi_è = chi sono (png)!.


ADD TO EVERY ACTOR
  VERB chi_è
    CHECK mia_AT CAN domandare_chi_è
      ELSE SAY mia_AT:azione_bloccata.
    DOES
      "Dovrai scoprirlo da te!"
   -- "You'll have to find it out yourself."
    END VERB chi_è.
END ADD TO.

-->gruppo_chi                                            @CHI SONO <-- @WHO AM I
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== chi_sono_io
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `chi_sono_io`.
--<

-- SYNTAX who_am_i = who am i.

SYNTAX chi_sono_io = chi sono io.
       chi_sono_io = chi sono.


VERB chi_sono_io
  CHECK mia_AT CAN domandare_chi_sono_io
    ELSE SAY mia_AT:azione_bloccata.
  DOES
    "Hai provato a esaminare te stesso? Forse ti aiuterebbe."
 -- "Maybe examining yourself might help."
END VERB chi_sono_io.


-->gruppo_cosa(30200)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Domanda cosa
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi:
--| 
--| * `cosa_è`
--| * `cosa_sono_io`
--<


-->gruppo_cosa                                              @COSA È <-- @WHAT IS
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== cosa_è
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `cosa_è`.
--<

-- SYNTAX what_is = 'what' 'is' (ogg)!

SYNTAX  cosa_è = cosa è (ogg)!  ---> BUG: La 'è' non viene riconosciuta!        BUG!
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:illegal_parameter_what_sg.
        ELSE SAY mia_AT:illegal_parameter_what_pl.
      END IF.

        cosa_è = cosa é (ogg)!.        ---> RIPIEGO ('é' anziché 'è'!)          FIXME!
        cosa_è = che cosa é (ogg)!.    ---> RIPIEGO
        cosa_è = 'cos''é' (ogg)!.      ---> RIPIEGO
        cosa_è = che 'cos''é' (ogg)!.  ---> RIPIEGO

        cosa_è = che cosa è (ogg)!.
        cosa_è = 'cos''è' (ogg)!.
        cosa_è = che 'cos''è' (ogg)!.
        cosa_è = cosa sono (ogg)!.
        cosa_è = che cosa sono (ogg)!.



ADD TO EVERY THING
  VERB cosa_è
    CHECK mia_AT CAN domandare_cosa_è
      ELSE SAY mia_AT:azione_bloccata.
    DOES
      "Dovrai scoprirlo da te!"
   -- "You'll have to find it out yourself."
    END VERB cosa_è.
END ADD TO.



-->gruppo_cosa                                     @COSA SONO IO? <-- @WHAT AM I
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== cosa_sono_io
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `cosa_sono_io`.
--<

-- SYNTAX what_am_i = 'what' am i.

SYNTAX  cosa_sono_io = cosa sono.
        cosa_sono_io = cosa sono io.
        cosa_sono_io = che sono.
        cosa_sono_io = che sono io.
        cosa_sono_io = che cosa sono.
        cosa_sono_io = che cosa sono io.


VERB cosa_sono_io
  CHECK mia_AT CAN domandare_cosa_sono_io
    ELSE SAY mia_AT:azione_bloccata.
  DOES
    "Hai provato a esaminare te stesso? Forse ti aiuterebbe."
 -- "Maybe examining yourself might help."
END VERB cosa_sono_io.


-->gruppo_dove(30300)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Domanda dove
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi:
--| 
--| * `dove_è`
--| * `dove_mi_trovo`
--<


-->gruppo_dove                                             @DOVE È <-- @WHERE IS
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== dove_è
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `dove_è`.
--<


-- SYNTAX where_is = 'where' 'is' (ogg)!
--        where_is = 'where' 'are' (ogg)!.

SYNTAX  dove_è = dove è (ogg)!  ---> BUG: La 'è' non viene riconosciuta!        BUG!
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        THEN SAY mia_AT:illegal_parameter_what_sg.
        ELSE SAY mia_AT:illegal_parameter_what_pl.
      END IF.

        dove_è = dove é (ogg)!.     ---> RIPIEGO ('é' anziché 'è'!)             FIXME!
        dove_è = 'dov''é' (ogg)!.   ---> RIPIEGO
        
        dove_è = 'dov''è' (ogg)!.
        dove_è = dove sono (ogg)!.
        dove_è = dove si trova (ogg)!.
        dove_è = dove si trovano (ogg)!.


ADD TO EVERY THING
  VERB dove_è
    CHECK mia_AT CAN domandare_dove_è
      ELSE SAY mia_AT:azione_bloccata.
    AND ogg NOT AT hero
      ELSE
        IF ogg IS NOT plurale
          THEN SAY mia_AT:ogg1_già_qui_sg.
          ELSE SAY mia_AT:ogg1_già_qui_pl.
        END IF.
    DOES
      "Dovrai scoprirlo da te!"
   -- "You'll have to find it out yourself."
  END VERB dove_è.
END ADD TO.


-->gruppo_dove                                    @DOVE MI TROVO <-- @WHERE AM I
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== dove_mi_trovo
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `dove_mi_trovo`.
--<

-- Ha to change it because the 'i' here was conflicting with the 'i' synonym
-- for NOISE WORDS. (befor 'i' was the default syntax for "inventory", so it
-- didn't conflict because it was not a synonym but a verb and syntax).

-- SYNTAX where_am_i = 'where' am i.

SYNTAX  dove_mi_trovo = dove mi trovo.
        dove_mi_trovo = dove sono io.
        dove_mi_trovo = dove sono.


VERB dove_mi_trovo
  CHECK mia_AT CAN domandare_dove_mi_trovo
    ELSE SAY mia_AT:azione_bloccata.
  DOES
    LOOK.
END VERB dove_mi_trovo.


-->gruppo_risposte(30400)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Risposte
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questo gruppo include i verbi:
--| 
--| * `rispondi_No`
--| * `rispondi_Sì`
--<


-->gruppo_risposte                                          @RISPONDI NO <-- @NO
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== rispondi_No
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `rispondi_No`.
--<


-- SYNTAX 'no' = 'no'.

SYNTAX rispondi_No = 'no'.


VERB rispondi_No
  CHECK mia_AT CAN rispondere_No
    ELSE SAY mia_AT:azione_bloccata.
  DOES "Davvero?"
    -- "Really?"
END VERB rispondi_No.

-->gruppo_risposte                                         @RISPONDI SÌ <-- @YES
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== rispondi_Sì
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `rispondi_Sì`.
--<

-- SYNTAX yes = yes.

SYNTAX rispondi_Sì = sì.


VERB rispondi_Sì
  CHECK mia_AT CAN rispondere_Sì
    ELSE SAY mia_AT:azione_bloccata.
  DOES "Davvero?"
    -- "Really?"
END VERB rispondi_Sì.



-->todo(50000.1)
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == TODO
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--| 
--| Questa sezione contiene l'elenco delle cose da fare per ultimare l'adattamento
--| italiano del modulo dei verbi.
--<

-->todo_checklist(51000.1)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| === Check-list generale
--~-----------------------------------------------------------------------------
--~=============================================================================
--| 
--| Lista della spesa per le varie cosucce da fare:
--| 
--| * [ ] Ragruppa i vari verbi in maniera intuitiva e pratica in modo da tenere
--|       vicini tra loro verbi correlati, simmetrici e/o complementari.
--<

-->todo_checklist(.665)
--| 
--| === Check-list per Doxter
--| 
--| Finisci di trasformare commenti in documentazione Doxter:
--<


-->custom_attributes(100)
--| ////
--| ============================================================================
--| Custom AsciiDoc Attributes for Doxter
--| ============================================================================
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

