--= Alan StdLib Italian: Messaggi Runtime
--| Tristano Ajmone <tajmone@gmail.com>
--~-----------------------------------------------------------------------------
--~ "lib_messaggi_runtime.i"
--| v0.13.0-Alpha, 2019-02-02: Alan 3.0beta6 build 1866
--|=============================================================================
--| Adattamento italiano del modulo `lib_messages.i` della
--| _ALAN Standard Library_ v2.1, (C) Anssi Räisänen, Artistic License 2.1.
--| Ad opera di Tristano Ajmone,  (C) 2018, Artistic License 2.1.
--|=============================================================================


-->messaggi_runtime(100.1)
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Messaggi runtime di Alan
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--| 
--| Questo modulo della libreria ridefinisce i messaggi runtime di Alan.
--| 
--| [WARNING]
--| ========================================
--| Documentazione non ancora disponibile...
--| ========================================
--<



-- All runtime messages are listed below.

-- Many of these messages are not in their default ("built-in") form as described
-- in the ALAN language manual, but have been slightly edited for this library.


MESSAGE

  --==============================================================================
  -- DESCRIZIONE LUOGO
  --==============================================================================
  SEE_START: "Puoi vedere $01"
  SEE_COMMA: ", $01"
  SEE_AND: "e $01"
  SEE_END: "qui."
  --==============================================================================
  -- COMANDI NEGATI...
  --==============================================================================
  CANT0:          "Non lo puoi fare."
  NO_WAY:         "Non puoi andare in quella direzione." -- "You can't go that way."
  --@@ NO_WAY: i6: "Non puoi andare in quella direzione."
  --@@ NO_WAY: i7: "Non puoi andare da quella parte."
  --==============================================================================
  -- PROBLEMI NEL PARSING DEI COMANDI
  --==============================================================================
  AFTER_BUT:      "Devi specificare almeno un oggetto dopo '$1'."
  
  -- Sostituito '$2' con "TUTTO", se no stampava "all":
  -- BUT_ALL:     "Puoi usare '$1' solo DOPO '$2'."
  BUT_ALL:        "Puoi usare '$1' solo DOPO 'tutto' (es. ""$v tutto $1..."")."
  
  MULTIPLE:       "Non puoi usare più di un oggetto con '$v'."
  NO_SUCH:        "Qui non puoi vedere nulla del genere." -- "You can't see any $1 here."
  NOT_MUCH:       "Così non resta nulla per il verbo '$v'!" -- "That doesn't leave much to $v!"
  NOUN:           "Devi specificare un sostantivo."-- "You must supply a noun."
  UNKNOWN_WORD:   "Non conosco la parola '$1'."
  WHAT:           "Non ho capito la frase."
  WHAT_WORD:      "Non mi è chiaro cosa intendi con '$1'."

  -- Disambiguazione ogetti/attori:
  -- ==============================
  WHICH_START:    "Non mi è chiaro se intendi dire $+1"
  WHICH_COMMA:    ", $+1"
  WHICH_OR:       "o $+1."

  -- Disambiguazione pronomi:
  -- ========================
  WHICH_PRONOUN_START: "Non mi è chiaro se con '$1'"
  WHICH_PRONOUN_FIRST: "intendi dire $+1"
  --============================================================================
  -- RICOMINCIA PARTITA
  --============================================================================
  REALLY:         "Sei sicuro (premi INVIO per confermare)?"
  QUIT_ACTION:    "Cosa vuoi fare: RESTART, RESTORE, QUIT o UNDO? "
  --| NOTA: Le possibili risposte a questo messaggio (RESTART, RESTORE, QUIT e
  --|       UNDO) sono codificate in Alan e non possono essere tradotte, quindi
  --|       per non confondere il giocatore è meglio lasciarle in inglese.
  --============================================================================
  -- SALVA PARTITA
  --============================================================================
  SAVE_FAILED:    "Salvataggio della partita fallito."
  SAVE_OVERWRITE: "Esiste già un file con questo nome. Vuoi sovrascriverlo? (y)"
  SAVE_WHERE:     "Inserisci il nome del file" -- niente "." perché Alan aggiunge
                                               -- il nome di default subito dopo!
  --============================================================================
  -- CARICA PARTITA
  --============================================================================
  NOT_A_SAVEFILE: "Caricamento fallito, il file indicato non è una partita
                   salvata."
  RESTORE_FROM:   "Inserisci il nome del file" -- niente "." perché Alan aggiunge
                                               -- il nome di default subito dopo!
  SAVE_MISSING:   "Caricamento fallito, impossibile aprire il file richiesto."
  SAVE_NAME:      "Caricamento fallito, il file indicato non è una partita salvata
                   di questa avventura."
  SAVE_VERSION:   "Caricamento fallito, il file indicato è stato creato con una
                   versione diversa dell'avventura o dell'interprete."


--==============================================================================
-- LUOGHI GIÀ VISITATI
--==============================================================================


-- @TODO: Questo messaggio potrebbe essere attivabile tramite opzioni           TODO!
--        della libreria (un attributo come 'mia_AT:mostra_già_visitati')
-- 
--        Nota però che per mostrare l'accordo giusto con il nome visualizzato 
--        del luogo servirebbe che l'attributo 'vocale' fosse disponibile anche
--        sulle 'location'. Ovviamente, attivando questa opzione l'autore avrebbe
--        anche l'onore di dover supplire l'articolo per ogni luogo creato.
--        
--        Dato che l'inizializzazione grammaticale di tutta la classe 'entity'  TODO!
--        ottimizzerebbe anche altri messaggi runtime e Check nel codice, dovrei
--        cercare di unificare l'inizializzazione della grammatica in un unico
--        blocco, partendo da 'entity'. Avevo tentato di farlo su 'thing' ma ho
--        riscontrato problemi con gli attori. Dovrei riprovarci!

  AGAIN: "" ---> Messaggio da mostrare accanto al nome di luoghi già visistati.
            --  Es. "(già visitato)"


--==============================================================================
-- ERRORI DI CONTENIMENTO
--==============================================================================

  CAN_NOT_CONTAIN: "$+1 non può contenere $+2."


--==============================================================================
-- ERRORI DI INSERIMENTO IN CONTENITORI
--==============================================================================
-- Questi messaggi riferiscono tentativi di inserire oggetti in sé stessi


  CONTAINMENT_LOOP:
    -- ------------------------------------------------------------------
    -- NOTA: Qui non si può usare 'SAY vocale OF parameter1.' dato che il
    --       parametro non è garantito nel contesto ('entity' non lo ha).
    -- ------------------------------------------------------------------
    "Non è possibile mettere $+1 dentro sé stess$$"
      IF parameter1 IS NOT femminile
        THEN
          IF parameter1 IS NOT plurale
            THEN "o." -- GNA = msi
            ELSE "i." -- GNA = mpi
          END IF.
        ELSE
          IF parameter1 IS NOT plurale
            THEN "a." -- GNA = fsi
            ELSE "e." -- GNA = fpi
          END IF.
      END IF.

  CONTAINMENT_LOOP2: "Non è possibile mettere $+1 in $+2 dato che $+2"
    IF parameter2 IS NOT plurale
      THEN "è"
      ELSE "sono"
    END IF.
    "all'interno di $+1."

--==============================================================================
-- DESCRIZIONE CONTENITORI E LORO CONTENUTI
--==============================================================================
  CONTAINS:
    IF parameter1 IS NOT plurale
      THEN "$+1 contiene"
      ELSE "$+1 contengono"
    END IF.
  CONTAINS_COMMA: "$01"
    IF parameter1 IsA indumento
      THEN
        -- the following snippet adds "(being worn)" after all
        -- pieces of clothing worn by an NPC, at 'x [actor]'

        IF parameter1 IS indossato
          THEN
            IF parameter1 NOT IN abbigliamento
              THEN "(indossat$$" SAY vocale OF parameter1. "$$)"
            END IF.
        END IF.
    END IF.
    "$$,"

  CONTAINS_AND: "$01"
    IF parameter1 IsA indumento
      THEN
        -- the following snippet adds "(being worn)" after all
        -- pieces of clothing worn by an NPC, after 'x [actor]'

        IF parameter1 IS indossato
          THEN
            IF parameter1 NOT IN abbigliamento
              THEN "(indossat$$" SAY vocale OF parameter1. "$$)"
            END IF.
        END IF.
    END IF.
    "e"

  CONTAINS_END: "$01"
    IF parameter1 IsA indumento
      THEN
        -- the following snippet adds "(being worn)" after all
        -- pieces of clothing worn by an NPC, after 'x [actor]'

        IF parameter1 IS indossato
          THEN
            IF parameter1 NOT IN abbigliamento
              THEN "(indossat$$" SAY vocale OF parameter1. "$$)"
            END IF.
        END IF.
    END IF.
    "."
--------------------------------------------------------------------------------

  CARRIES:
    IF parameter1 IS NOT plurale
      THEN "$+1 trasporta"   -- "is carrying"
      ELSE "$+1 trasportano" -- "are carrying"
    END IF.

  EMPTY_HANDED:
    "$+1 non"
    IF parameter1 IS NOT plurale
      THEN "sta"
      ELSE "stanno"
    END IF.
    "trasportando nulla."

-- =========================
-- Punteggio
-- =========================

  HAVE_SCORED: "Hai totalizzato $1 punti su $2 possibili."

  ------------------------------------------------------------------------------
  -- If a player action is impossible with a particular parameter combination,
  -- but might be possible otherwise, this message is shown to indicate that it
  -- is the action with the parameter that is impossible.

  IMPOSSIBLE_WITH: "È impossibile farlo con $+1."

  ------------------------------------------------------------------------------
  -- The default messages for empty containers.

  IS_EMPTY: "$+1"
    IF parameter1 IS NOT plurale
      THEN "è vuot$$"
        -- ------------------------------------------------------------------
        -- NOTA: Qui non si può usare 'SAY vocale OF parameter1.' dato che il
        --       parametro non è garantito nel contesto ('entity' non lo ha).
        -- ------------------------------------------------------------------
        IF parameter1 IS NOT femminile
          THEN "o." -- GNA = msi
          ELSE "a." -- GNA = fsi
        END IF.
      ELSE "sono vuot$$"
        IF parameter1 IS NOT femminile
          THEN "i." -- GNA = mpi
          ELSE "e." -- GNA = fpi
        END IF.
    END IF.


  ------------------------------------------------------------------------------

  MORE: "<Continua>" --> Trad. di "<More>"

  NO_UNDO: "Non è possible annullare ulteriormente."
        -- "No further undo available."

  UNDONE: "'$1' annullato."


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
--| italiano del modulo delle classi.
--<

-->todo_checklist(51000.1)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| === Check-list generale
--~-----------------------------------------------------------------------------
--~=============================================================================
--| 
--| Lista della spesa per le varie cosucce da fare:
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
--<

---< Fine del File >---
