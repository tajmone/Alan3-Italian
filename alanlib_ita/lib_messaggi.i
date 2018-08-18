-- "lib_messaggi.i" v0.5.0 (2018/08/18)
--------------------------------------------------------------------------------
-- Alan ITA Alpha Dev | Alan 3.0beta5 | StdLib 2.1
--------------------------------------------------------------------------------
-- Adapted to Italian from:
-- ALAN Standard Library v2.1
-- "Messages" (original file name: 'lib_messages.i')
--------------------------------------------------------------------------------


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
  BUT_ALL:        "Puoi usare '$1' solo DOPO '$2'."
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



--  =========================
--# xxxxxxxxxxxxxxxxxxxxxxxxx
--  =========================

  AGAIN: "" --> Messaggio da mostrare accanto al nome di luoghi già visistati.
            --  Es. "(già visitato)"

  CAN_NOT_CONTAIN: "$+1 non può contenere $+2." -- "$+1 can not contain $+2."


--==============================================================================
-- ERRORI DI INSERIMENTO IN CONTENITORI
--==============================================================================
-- Questi messaggi riferiscono tentativi di inserire oggetti in sé stessi


  CONTAINMENT_LOOP:
    --   IF parameter1 IS NOT plurale
    --     THEN "itself"
    --     ELSE "themselves"
    --   END IF.
    --   "is impossible."
    "Non è possibile mettere $+1 dentro sé stess$$" -- "Putting $+1 in"
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
  -- CONTAINMENT_LOOP2: "Putting $+1 in $+2 is impossible since $+2 already"
  --   IF parameter2 IS NOT plurale
  --     THEN "is"
  --     ELSE "are"
  --   END IF.
  --   "inside $+1."
--==============================================================================
-- DESCRIZIONE CONTENITORI E LORO CONTENUTI
--==============================================================================
  'CONTAINS':
    IF parameter1 IS NOT plurale
      THEN "$+1 contiene"   -- "contains"
      ELSE "$+1 contengono" -- "contain"
    END IF.
  CONTAINS_COMMA: "$01"
    IF parameter1 IsA indumento
      THEN
        -- the following snippet adds "(being worn)" after all
        -- pieces of clothing worn by an NPC, at 'x [actor]'

        IF parameter1 IS indossato
          THEN
            IF parameter1 NOT IN abbigliamento
              THEN "(indossato)" -- "(being worn)"
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
              THEN "(indossato)" -- "(being worn)"
            END IF.
        END IF.
    END IF.

    "e" -- "and"

  CONTAINS_END: "$01"
    IF parameter1 IsA indumento
      THEN
        -- the following snippet adds "(being worn)" after all
        -- pieces of clothing worn by an NPC, after 'x [actor]'

        IF parameter1 IS indossato
          THEN
            IF parameter1 NOT IN abbigliamento
              THEN "(indossato)" -- "(being worn)"
            END IF.
        END IF.
    END IF.
    "."
--------------------------------------------------------------------------------

  --
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
      -- THEN "$+1 is empty-handed."
      -- ELSE "$+1 are empty-handed."

-- =========================
-- Punteggio
-- =========================


  HAVE_SCORED: "Hai totalizzato $1 punti su $2 possibili."
            -- "You have scored $1 points out of $2."

  ------------------------------------------------------------------------------
  -- If a player action is impossible with a particular parameter combination,
  -- but might be possible otherwise, this message is shown to indicate that it
  -- is the action with the parameter that is impossible.

  IMPOSSIBLE_WITH: "È impossibile farlo con $+1."
                -- "That's impossible with $+1."
  ------------------------------------------------------------------------------
  -- The default messages for empty containers.

  IS_EMPTY:
    IF parameter1 IS NOT plurale
      THEN "$+1 è vuot$$"
        IF parameter1 IS NOT femminile
          THEN "o." -- GNA = msi
          ELSE "a." -- GNA = fsi
        END IF.
      ELSE "$+1 sono vuot$$"
        IF parameter1 IS NOT femminile
          THEN "i." -- GNA = mpi
          ELSE "e." -- GNA = fpi
        END IF.
    END IF.

 -- IF parameter1 IS NOT plurale
 --   THEN "$+1 is empty."
 --   ELSE "$+1 are empty."
 -- END IF.
  ------------------------------------------------------------------------------

  MORE: "<Continua>" -- "<More>"

  NO_UNDO: "Non è possible annullare ulteriormente."
        -- "No further undo available."

  UNDONE: "'$1' annullato."



---< Fine del File >---
