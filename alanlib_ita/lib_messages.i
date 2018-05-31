-- "lib_messages.i" v0.0.3 (2018/05/31)
--------------------------------------------------------------------------------
-- Alan ITA Alpha Dev | Alan 3.0beta5 | StdLib 2.1
--------------------------------------------------------------------------------

-- ALAN Standard Library v2.1
-- Messages (file name: 'lib_messages.i')


-- All runtime messages are listed below.

-- Many of these messages are not in their default ("built-in") form as described
-- in the ALAN language manual, but have been slightly edited for this library.


MESSAGE

  --@@ NO_WAY: i6: "Non puoi andare in quella direzione."
  --@@ NO_WAY: i7: "Non puoi andare da quella parte."
  NO_WAY:         "Non puoi andare in quella direzione." -- "You can't go that way."

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
--# WAITING TO BE TRANSLATED:
--  =========================

  AFTER_BUT: "You must give at least one object after '$1'."
  AGAIN: ""
  BUT_ALL: "You can only use '$1' AFTER '$2'."
  CAN_NOT_CONTAIN: "$+1 can not contain $+2."
  CANT0: "You can't do that."
     -- note that the fifth token in CANT0 is a zero, not an 'o'.
  CARRIES:
    IF parameter1 IS NOT plural
      THEN "$+1 is carrying"
      ELSE "$+1 are carrying"
    END IF.
  CONTAINMENT_LOOP:
    "Putting $+1 in"
      IF parameter1 IS NOT plural
        THEN "itself"
        ELSE "themselves"
      END IF.
    "is impossible."
  CONTAINMENT_LOOP2: "Putting $+1 in $+2 is impossible since $+2 already"
          IF parameter2 IS NOT plural
            THEN "is"
            ELSE "are"
          END IF.
            "inside $+1."
  'CONTAINS':
    IF parameter1 IS NOT plural
      THEN "$+1 contains"
      ELSE "$+1 contain"
    END IF.
  CONTAINS_COMMA: "$01"
    IF parameter1 ISA CLOTHING
      THEN
        -- the following snippet adds "(being worn)" after all
        -- pieces of clothing worn by an NPC, at 'x [actor]'

        IF parameter1 IS donned
          THEN
            IF parameter1 NOT IN worn
              THEN "(being worn)"
            END IF.
        END IF.
    END IF.
    "$$,"
      CONTAINS_AND: "$01"
    IF parameter1 ISA CLOTHING
      THEN
        -- the following snippet adds "(being worn)" after all
        -- pieces of clothing worn by an NPC, after 'x [actor]'

        IF parameter1 IS donned
          THEN
            IF parameter1 NOT IN worn
              THEN "(being worn)"
            END IF.
        END IF.
    END IF.

    "and"

  CONTAINS_END: "$01"
    IF parameter1 ISA CLOTHING
      THEN
        -- the following snippet adds "(being worn)" after all
        -- pieces of clothing worn by an NPC, after 'x [actor]'

        IF parameter1 IS donned
          THEN
            IF parameter1 NOT IN worn
              THEN "(being worn)"
            END IF.
        END IF.
    END IF.
    "."
  EMPTY_HANDED:
    IF parameter1 IS NOT plural
      THEN "$+1 is empty-handed."
      ELSE "$+1 are empty-handed."
    END IF.

  HAVE_SCORED: "You have scored $1 points out of $2."
  IMPOSSIBLE_WITH: "That's impossible with $+1."
  IS_EMPTY:
    IF parameter1 IS NOT plural
      THEN "$+1 is empty."
      ELSE "$+1 are empty."
    END IF.
  MORE: "<More>"
  MULTIPLE: "You can't refer to multiple objects with '$v'."
  NO_SUCH: "You can't see any $1 here."
  NOUN: "You must supply a noun."
  NOT_MUCH: "That doesn't leave much to $v!"
  

  SEE_START:
    IF parameter1 IS NOT plural
      THEN "There is $01"
      ELSE "There are $01"
    END IF.
  SEE_COMMA: ", $01"
  SEE_AND: "and $01"
  SEE_END: "here."
  NO_UNDO: "No further undo available."
  UNDONE: "'$1' undone."
  UNKNOWN_WORD: "I don't know the word '$1'."
  WHAT: "That was not understood."
  WHAT_WORD: "It is not clear what you mean by '$1'."
  WHICH_PRONOUN_START: "It is not clear if you by '$1'"
  WHICH_PRONOUN_FIRST: "mean $+1"
  WHICH_START: "It is not clear if you mean $+1"
  WHICH_COMMA: ", $+1"
  WHICH_OR: "or $+1."


-- end of file.
