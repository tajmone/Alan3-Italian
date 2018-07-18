-- "lib_verbi.i" v0.2.20 (2018/07/18)
--------------------------------------------------------------------------------
-- Alan ITA Alpha Dev | Alan 3.0beta5 | StdLib 2.1
--------------------------------------------------------------------------------
-- Adapted to Italian from:
-- ALAN Standard Library v2.1
-- "Verbs" (original file name: 'lib_verbs.i')
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
----- Tabella dei Verbi --------------------------------------------------------
--------------------------------------------------------------------------------
-- Elenco alfabetico dei verbi tradotti, suddivisi in comandi di partita (prima)
-- e comandi di gioco (dopo il divisorio orizzontale di tabella).
 
--+--------------------+------------------------------+--------------------------+---+---+---+
--| VERBO              | SINONIMI                     | SINTASSI                 | M | A | O |
--|--------------------|------------------------------|--------------------------|---|---|---|
--| abbandona_partita  | quit, Q                      | abbandona [partita]      | x | 0 |   |
--| carica_partita     | restore                      | carica [partita]         | x | 0 |   |
--| ricomincia_partita | restart                      | ricomincia [partita]     | x | 0 |   |
--| salva_partita      | save                         | salva [partita]          | x | 0 |   |
--+--------------------+------------------------------+--------------------------+---+---+---+
--| aspetta            | attendi, Z                   | aspetta                  |   | 0 |   |
--| attraversa         |                              | attraversa (ogg)         |   | 1 | x |
--| bevi               |                              | bevi (liq)               |   | 1 |   |
--| brucia             |                              | brucia (ogg)             |   | 1 | x |
--| brucia_con         |                              | brucia (ogg) con (instr) |   | 2 | x |
--| compra             | acquista                     | compra (item)            |   | 1 |   |
--| dai_a              | porgi, offri                 | dai (ogg) a (recipient)  |   | 2 | x |
--| inventario         | inv                          | inventario               | x | 0 |   |
--| mangia             |                              | mangia (cibo)            |   | 1 |   |
--| prega              |                              | prega                    |   | 0 |   |
--| prendi             | afferra, raccogli, trasporta | prendi (ogg)             |   | 1 | x |
--| prendi_da          | rimuovi, togli               | prendi (ogg) da (holder) |   | 2 | x |
--| rifai              | ancora, G                    | rifai                    |   | 0 |   |
--| rompi              | distruggi, spacca, sfonda    | rompi (ogg)              |   | 1 | x |
--| rompi_con          | distruggi, spacca, sfonda    | rompi (ogg) con (instr)  |   | 2 | x |
--| spogliati          | svestiti                     | spogliati                |   | 0 |   |
--| vai_a              |                              | vai a (dest)             |   | 1 |   |
--+--------------------+------------------------------+--------------------------+---+---+---+
--|                    |                              |                          |   | 0 | x |

-- Legenda Colonne:
--   [M] Meta Verbo : 'x' = Sì
--   [A] Arietà     : <n> = numero di parametri
--   [O] Oggetto    : 'x' = Sì

-- L'ordine di apparizione dei verbi nella tabella rispecchia l'ordine in cui
-- appaiono nel codice sorgente qui di seguito.

-- Le direzioni (nord, sud, su, giù, ecc.) sono definite in "lib_luoghi.i".

--------------------------------------------------------------------------------
----- Tabella dei Verbi Originali Inglesi
--------------------------------------------------------------------------------
----- This library file defines common verbs needed in gameplay. The verbs
----- are listed alphabetically. This file also includes common commands which are not
----- actually verbs, such as "inventory", "verbose" and "again".
----- Verbs originally defined in this file are the following:

--# NOTA: i verbi preceduti da "--->" sono stati già tradotti.

----- VERB        SYNONYMS                                 SYNTAX                              ARITY   OBJ

----- about       (+ help, info)                           about                               0
----> again       (+ g)                                    again                               0
----- answer      (+ reply)                                answer (topic)                      1
----- ask         (+ enquire, inquire, interrogate)        ask (act) about (topic)             2
----- ask_for                                              ask (act) for (obj)                 2       x
----- attack      (+ beat, fight, hit, punch)              attack (target)                     1
----- attack_with                                          attack (target) with (weapon)       2
----- bite        (+ chew)                                 bite (obj)                          1       x
----> break       (+ destroy)                              break (obj)                         1       x
----> break_with                                           break (obj) with (instr)            2       x
----- brief                                                brief                               0
----> burn                                                 burn (obj)                          1       x
----> burn_with                                            burn (obj) with (instr)             2       x
----> buy         (+ purchase)                             buy (item)                          1
----- catch                                                catch (obj)                         1       x
----- clean       (+ polish, wipe)                         clean (obj)                         1       x
----- climb                                                climb (obj)                         1       x
----- climb_on                                             climb on (surface)                  1
----> climb_through                                        climb through (obj)                 1       x
----- close       (+ shut)                                 close (obj)                         1       x
----- close_with                                           close (obj) with (instr)            2       x
----- consult                                              consult (source) about (topic)      2
----- credits     (+ acknowledgments, author, copyright)   credits                             2
----- cut                                                  cut (obj)                           1       x
----- cut_with                                             cut (obj) with (instr)              2       x
----- dance                                                dance                               0
----- dig                                                  dig (obj)                           1       x
----- dive                                                 dive                                0
----- dive_in                                              dive in (liq)                       1
----> drink                                                drink (liq)                         1
----- drive                                                drive (vehicle)                     1
----- drop        (+ discard, dump, reject)                drop (obj)                          1       x
----> eat                                                  eat (food)                          1
----- empty                                                empty (obj)                         1       x
----- empty_in                                             empty (obj) in (cont)               2       x
----- empty_on                                             empty (obj) on (surface)            2       x
----- enter                                                enter (obj)                         1
----- examine     (+ check, inspect, observe, x)           examine (obj)                       1       x
----- exit                                                 exit (obj)                          1
----- extinguish  (+ put out, quench)                      extinguish (obj)                    1       x
----- fill                                                 fill (cont)                         1
----- fill_with                                            fill (cont) with (substance)        1
----- find        (+ locate)                               find (obj)                          1       x
----- fire                                                 fire (weapon)                       1
----- fire_at                                              fire (weapon) at (target)           1
----- fix         (+ mend, repair)                         fix (obj)                           1       x
----- follow                                               follow (act)                        1
----- free        (+ release)                              free (obj)                          1       x
----- get_up                                               get up                              0
----- get_off                                              get off (obj)                       1       x
----> give                                                 give (obj) to (recipient)           1       x
----> go_to                                                go to (dest)                        1
----- hint        (+ hints)                                hint                                0
----> i           (+ inv, inventory)                       inventory                           0
----- jump                                                 jump                                0
----- jump_in                                              jump in (cont)                      1
----- jump_on                                              jump on (surface)                   1
----- kick                                                 kick (target)                       1
----- kill        (+ murder)                               kill (victim)                       1
----- kill_with                                            kill (victim) with (weapon)         2
----- kiss        (+ hug, embrace)                         kiss (obj)                          1       x
----- knock (on)                                           knock on (obj)                      1       x
----- lie_down                                             lie down                            0
----- lie_in                                               lie in (cont)                       1
----- lie_on                                               lie on (surface)                    1
----- lift                                                 lift (obj)                          1       x
----- light       (+ lit)                                  light (obj)                         1       x
----- listen0                                              listen                              0
----- listen                                               listen to (obj)                     1       x
----- lock                                                 lock (obj)                          1       x
----- lock_with                                            lock (obj) with (key)               2       x
----- look        (+ gaze, peek)                           look                                0
----- look_at                                              look at (obj)                       1       x
----- look_behind                                          look behind (bulk)                  1
----- look_in                                              look in (cont)                      1
----- look_out_of                                          look out of (obj)                   1       x
----- look_through                                         look through (bulk)                 1
----- look_under                                           look under (bulk)                   1
----- look_up                                              look up                             0
----- no                                                   no                                  0
----- notify (on, off)                                     notify. notify on. notify off       0
----- open                                                 open (obj)                          1       x
----- open_with                                            open (obj) with (instr)             2       x
----- play                                                 play (obj)                          1       x
----- play_with                                            play with (obj)                     1       x
----- pour        (= defined at the verb 'empty')          pour (obj)                          1       x
----- pour_in     (= defined at the verb 'emtpy_in')       pour (obj) in (cont)                2       x
----- pour_on     (= defined at the verb 'empty_on')       pour (obj) on (surface)             2       x
----> pray                                                 pray                                0
----- pry                                                  pry (obj)                           1       x
----- pry_with                                             pry (obj) with (instr)              2       x
----- pull                                                 pull (obj)                          1       x
----- push                                                 push (obj)                          1       x
----- push_with                                            push (obj) with (instr)             2       x
----- put         (+ lay, place)                           put (obj)                           1       x
----- put_against                                          put (obj) against (bulk))           2       x
----- put_behind                                           put (obj) behind (bulk)             2       x
----- put_down                                             put down (obj)                      1       x
----- put_in      (+ insert)                               put (obj) in (cont)                 2       x
----- put_near                                             put (obj) near (bulk)               2       x
----- put_on                                               put (obj) on (surface)              2       x
----- put_under                                            put (obj) under (bulk)              2       x
----- read                                                 read (obj)                          1       x
----- remove                                               remove (obj)                        1       x
----> restart                                              restart                             0
----> restore                                              restore                             0
----- rub                                                  rub (obj)                           1       x
----> save                                                 save                                0
----- say                                                  say (topic)                         1
----- say_to                                               say (topic) to (act)                2
----- score                                                score                               0
----- scratch                                              scratch (obj)                       1       x
----- script                                               script. script on. script off.      0
----- search                                               search (obj)                        1       x
----- sell                                                 sell (item)                         1
----- shake                                                shake (obj)                         1       x
----- shoot (at)                                           shoot at (target)                   1
----- shoot_with                                           shoot (target) with (weapon)        2
----- shout       (+ scream, yell)                         shout                               0
----- show        (+ reveal)                               show (obj) to (act)                 2       x
----- sing                                                 sing                                0
----- sip                                                  sip (liq)                           1
----- sit (down)                                           sit.  sit down.                     0
----- sit_on                                               sit on (surface)                    1
----- sleep       (+ rest)                                 sleep                               0
----- smell0                                               smell                               0
----- smell                                                smell (odour)                       1
----- squeeze                                              squeeze (obj)                       1       x
----- stand (up)                                           stand.  stand up.                   0
----- stand_on                                             stand on (surface)                  1
----- swim                                                 swim                                0
----- swim_in                                              swim in (liq)                       1
----- switch                                               switch (obj)                        1       x
----- switch_on   (defined at the verb 'turn_on')          switch on (app)                     1
----- switch_off  (defined at the verb 'turn_off')         switch off (app)                    1
----> take        (+ carry, get, grab, hold, obtain)       take (obj)                          1       x
----> take_from   (+ remove from)                          take (obj) from (holder)            2       x
----- talk                                                 talk                                0
----- talk_to     (+ speak)                                talk to (act)                       1
----- taste       (+ lick)                                 taste (obj)                         1       x
----- tear        (+ rip)                                  tear (obj)                          1       x
----- tell        (+ enlighten, inform)                    tell (act) about (topic)            2
----- think                                                think                               0
----- think_about                                          think about (topic)                 1
----- throw                                                throw (projectile)                  1
----- throw_at                                             throw (projectile) at (target)      2
----- throw_in                                             throw (projectile) in (cont)        2
----- throw_to                                             throw (projectile) to (recipient)   2
----- tie                                                  tie (obj)                           1       x
----- tie_to                                               tie (obj) to (target)               2       x
----- touch       (+ feel)                                 touch (obj)                         1       x
----- turn        (+ rotate)                               turn (obj)                          1       x
----- turn_on                                              turn on (app)                       1
----- turn_off                                             turn off (app)                      1
----> undress                                              undress                             0
----- unlock                                               unlock (obj)                        1       x
----- unlock_with                                          unlock (obj) with (key)             2       x
----- use                                                  use (obj)                           1       x
----- use_with                                             use (obj) with (instr)              2       x
----- verbose                                              verbose                             0
----> wait        (+ z)                                    wait                                0
----- wear                                                 wear (obj)                          1       x
----- what_am_i                                            what am i                           0
----- what_is                                              what is (obj)                       1       x
----- where_am_i                                           where am i                          0
----- where_is                                             where is (obj)                      1       x
----- who_am_i                                             who am i                            0
----- who_is                                               who is (obj)                        1       x
----- write                                                write (txt) on (obj)                2       x
----- yes                                                  yes                                 0




----- Directions (north, south, up, etc.) are declared in the file 'locations.i'.


-- *****************************************************************************
-- *                                                                           *
-- *                         META COMANDI DI PARTITA                           *
-- *                                                                           *
-- *****************************************************************************
-- Comandi che riguardano aspetti della partita (salvare, uscire, ecc.) e non il
-- mondo dell'avventura. Perlopiù META VERBS, il cui uso non fa scorrere il
-- conteggio del tempo nell'avventura (turni).

-- ==============================================================


----- @ABBANDONA_PARTITA -> @QUIT (VERB + SYNTAX)


-- ==============================================================
--#NOTA: A questo verbo diamo l'ID "abbandona_partita" per lasciare
--       libero l'ID "abbandona" nel caso l'utente volesse creare un
--       verbo "abbandona" nel gioco.
-- MESSAGGI DI SISTEMA CORRELATI (alcuni visibili solo in ARun):
--    QUIT_ACTION      -- "Do you want to RESTART, RESTORE, QUIT or UNDO? ".


SYNTAX
  abbandona_partita = abbandona.
  abbandona_partita = abbandona partita.
  abbandona_partita = 'quit'. --> Bisogna conservare anche l'inglese!

SYNONYMS q = 'quit'.

META VERB abbandona_partita
  CHECK my_game CAN abbandonare_partita
    ELSE SAY azione_bloccata OF my_game.
  DOES
    QUIT.
END VERB.


-- ==============================================================


----- @CARICA_PARTITA -> @RESTORE (VERB + SYNTAX)


-- ==============================================================
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
       carica_partita = 'restore'. --> Bisogna conservare anche l'inglese!

META VERB carica_partita
  CHECK my_game CAN caricare_partita
    ELSE SAY azione_bloccata OF my_game.
  DOES
    RESTORE.
END VERB.


-- ==============================================================


----- @RICOMINCIA_PARTITA -> @RESTART (VERB + SYNTAX)


-- ==============================================================
--#NOTA: A questo verbo diamo l'ID "ricomincia_partita" per lasciare
--       libero l'ID "ricomincia" nel caso l'utente volesse creare un
--       verbo "ricomincia" nel gioco.
-- MESSAGGI DI SISTEMA CORRELATI (alcuni visibili solo in ARun):
--    REALLY         -- Richiesta di conferma.

SYNTAX ricomincia_partita = ricomincia.
SYNTAX ricomincia_partita = ricomincia partita.
       ricomincia_partita = 'restart'. --> Bisogna conservare anche l'inglese!

META VERB ricomincia_partita
  CHECK my_game CAN ricominciare_partita
    ELSE SAY azione_bloccata OF my_game.
  DOES
    RESTART.
END VERB.


-- ==============================================================


----- @SALVA_PARTITA -> @SAVE (VERB + SYNTAX)


-- ==============================================================
--#NOTA: A questo verbo diamo l'ID "salva_partita" per lasciare
--       libero l'ID "salva" nel caso l'utente volesse creare un
--       verbo "salva" nel gioco.
-- MESSAGGI DI SISTEMA CORRELATI (alcuni visibili solo in ARun):
--    SAVE_FAILED    -- Se il salvataggio fallisce.
--    SAVE_OVERWRITE -- Conferma sovrascrittura file.
--    SAVE_WHERE     -- Nome del file di salvataggio
SYNTAX salva_partita = salva.
       salva_partita = salva partita.
       salva_partita = 'save'. --> Meglio conservare anche l'inglese, dato che
                               --  dobbiamo conservare RESTART, RESTORE e QUIT!


META VERB salva_partita
  CHECK my_game CAN salvare_partita
    ELSE SAY azione_bloccata OF my_game.
  DOES
    SAVE.
END VERB.



-- *****************************************************************************
-- *                                                                           *
-- *                             COMANDI DI GIOCO                              *
-- *                                                                           *
-- *****************************************************************************
-- Comandi diretti al personaggio protagonista per interagire con l'avventura.

-- ==============================================================


----- @ASPETTA --> WAIT (= z)


-- ==============================================================


SYNTAX aspetta = aspetta.

SYNONYMS
  z, attendi = aspetta.

VERB aspetta
  CHECK my_game CAN aspettare
    ELSE SAY azione_bloccata OF my_game.
  DOES
    "Il tempo passa."
END VERB.


-- ==============================================================


----- @ATTRAVERSA --> CLIMB THROUGH


-- ==============================================================

-- SYNTAX climb_through = climb through (obj)

SYNTAX attraversa = attraversa (obj)
    WHERE obj ISA OBJECT
      ELSE
        IF obj IS NOT plurale
          THEN SAY ogg1_inadatto_sg OF my_game.
          ELSE SAY ogg1_inadatto_pl OF my_game.
        END IF.
        "attraversare."

ADD TO EVERY OBJECT
  VERB attraversa
    CHECK my_game CAN attraversare
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          THEN SAY ogg1_inadatto_sg OF my_game.
          ELSE SAY ogg1_inadatto_pl OF my_game.
        END IF.
        "attraversare."
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              --> @TODO!!                                                       TRANSLATE!
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    AND hero IS NOT seduto
      --> @TODO!!                                                               TRANSLATE!
      ELSE SAY check_hero_not_sitting3 OF my_game.
    AND hero IS NOT sdraiato
      --> @TODO!!                                                               TRANSLATE!
      ELSE SAY check_hero_not_lying_down3 OF my_game.
    DOES
      IF obj IS NOT plurale
        THEN SAY ogg1_inadatto_sg OF my_game.
        ELSE SAY ogg1_inadatto_pl OF my_game.
      END IF.
      "attraversare."
   -- IF obj IS NOT plurale
   --   THEN "That's not"
   --   ELSE "Those are not"
   -- END IF.
   -- "something you can climb through."
  END VERB.
END ADD TO.


-- ==============================================================


----- @BEVI -- @DRINK


-- ==============================================================

-- SYNTAX drink = drink (liq)

SYNTAX bevi = bevi (liq)
  WHERE liq ISA LIQUID    -- see 'classes.i'
    ELSE
      IF liq IS NOT plurale
        THEN SAY ogg1_inadatto_sg OF my_game.
        ELSE SAY ogg1_inadatto_pl OF my_game.
   -- THEN SAY illegal_parameter_sg OF my_game.
   -- ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
      "bere."


ADD TO EVERY LIQUID
  VERB bevi
    CHECK my_game CAN bere
      ELSE SAY azione_bloccata OF my_game.
    AND liq IS potabile
      ELSE
        IF liq IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "bere."
          ELSE SAY ogg1_inadatto_pl OF my_game. "bere."
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND liq IS reachable AND liq IS NOT distant
      ELSE
        IF liq IS NOT reachable
          THEN
            IF liq IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF liq IS distant
          THEN
            IF liq IS NOT plurale
              --> @TODO!!                                                       TRANSLATE!
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
      IF vessel OF liq = null_vessel
        -- Se liquido non è in un contenitore, l'eroe ne berrà solo un po' (e il
        -- liquido non verrà consumato). Questo serve a consentire di bere da
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
          IF vessel OF liq NOT DIRECTLY IN hero
            THEN
              IF vessel OF liq IS NOT takeable
                --> @TODO!!                                                     TRANSLATE!
                THEN "You can't carry" SAY THE liq. "around in your bare hands."
                  -- the action stops here if the container is not takeable.
                ELSE
                  LOCATE vessel OF liq IN hero.
                  --> @TODO!!                                                   TRANSLATE!
                  "(taking" SAY THE vessel OF THIS. "of" SAY THIS. "first)$n"
              END IF.

          END IF.
          -- <<< prendi implicito <<<

          IF liq IN hero
            -- i.e. if the implicit taking was successful
            -- Se il prendi implicito è andato in porto:
            THEN "Bevi tutt$$"
          -- "You drink all of" SAY THE liq. "."
              IF liq IS NOT femminile
                THEN
                  IF liq IS NOT plurale
                    THEN SAY "o.". -- GNA = msi
                    ELSE SAY "i.". -- GNA = mpi
                  END IF.
                ELSE
                  IF liq IS NOT plurale
                    THEN SAY "a.". -- GNA = fsi
                    ELSE SAY "e.". -- GNA = fpi
                  END IF.
              END IF.
              SAY THE liq. "."
              LOCATE liq AT nowhere.
          END IF.
      END IF.

  END VERB.
END ADD TO.


-- Note that the verb 'sip' is defined separately, with a slightly different behaviour.



-- =================================================================

----- @BRUCIA --> @BURN (VERB + SYNTAX)

----- BURN


-- =================================================================
-- @NOTA: In i6 "incendia" è sinonimo di "brucia" e "brucia con".
--        Inoltre, "col" è sinonimo di "con".

SYNTAX brucia = brucia (obj)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY ogg1_inadatto_sg OF my_game.
        ELSE SAY ogg1_inadatto_pl OF my_game. 
     -- THEN SAY illegal_parameter_sg OF my_game.
     -- ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
      "bruciare."

ADD TO EVERY OBJECT
  VERB brucia
    CHECK my_game CAN bruciare
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game.
          ELSE SAY ogg1_inadatto_pl OF my_game.
        END IF.
        "bruciare."
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    DOES
      SAY specificare_CON_cosa OF my_game. "bruciare" SAY THE obj. "."
   -- "You must state what you want to burn" SAY THE obj. "with."
  END VERB.
END ADD TO.



-- =================================================================

----- @RBRUCIA_CON --> @BURN_WITH (VERB + SYNTAX)

----- BURN WITH


-- =================================================================


SYNTAX brucia_con = brucia (obj) 'con' (instr)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY ogg1_inadatto_sg OF my_game.
        ELSE SAY ogg1_inadatto_pl OF my_game.
     -- THEN SAY illegal_parameter_sg OF my_game.
     -- ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
      "bruciare."
  AND instr ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY parametro2_illegale_CON_sg OF my_game.
        ELSE SAY parametro2_illegale_CON_pl OF my_game.
     -- THEN SAY illegal_parameter2_with_sg OF my_game.
     -- ELSE SAY illegal_parameter2_with_pl OF my_game.
      END IF.
      "bruciare."


ADD TO EVERY OBJECT
  VERB brucia_con
    WHEN obj
      CHECK my_game CAN bruciare_con
        ELSE SAY azione_bloccata OF my_game.
      AND obj IS examinable
        ELSE
          IF obj IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY ogg1_inadatto_sg OF my_game.
            ELSE SAY ogg1_inadatto_pl OF my_game.
          END IF.
          "bruciare."
      AND instr IS examinable
        ELSE
          IF obj IS NOT plurale
            --> @TODO!!                                                         TRANSLATE!
            THEN SAY check_obj2_suitable_with_sg OF my_game.
            ELSE SAY check_obj2_suitable_with_pl OF my_game.
          END IF.
      AND obj <> instr
        --> @TODO!!                                                             TRANSLATE!
        ELSE SAY check_obj_not_obj2_with OF my_game.
      AND instr IN hero
        --> @TODO!!                                                             TRANSLATE!
        ELSE SAY check_obj2_in_hero OF my_game.
      AND CURRENT LOCATION IS lit
        ELSE SAY check_locazione_illuminata OF my_game.
      AND obj IS reachable AND obj IS NOT distant
        ELSE
          IF obj IS NOT reachable
            THEN
              IF obj IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF obj IS distant
            THEN
              IF obj IS NOT plurale
                --> @TODO!!                                                     TRANSLATE!
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.

      DOES
        "Non puoi bruciare" SAY THE obj. "con" SAY THE instr. "."
     -- "You can't burn" SAY THE obj. "with" SAY THE instr. "."
  END VERB.
END ADD TO.


-- ==================================================================


----- @COMPRA --> @BUY (+ purchase)


-- ==================================================================


SYNTAX compra = compra (item)
  WHERE item ISA OBJECT
    ELSE
      IF item IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF my_game.
        ELSE SAY ogg1_inadatto_pl OF my_game.
     -- THEN SAY illegal_parameter_sg OF my_game.
     -- ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
      "comprare."

SYNONYMS acquista = compra.

-- SYNONYMS purchase = buy.

ADD TO EVERY OBJECT
  VERB compra
    CHECK my_game CAN comprare
      ELSE SAY azione_bloccata OF my_game.
    AND item IS examinable
      ELSE
        IF item IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game.
          ELSE SAY ogg1_inadatto_pl OF my_game.
        END IF.
        "comprare."
    DOES
      SAY the item.
      IF item IS NOT plurale
        THEN "non è"
        ELSE "non sono"
        -- THEN "That's not"
        -- ELSE "Those are not"
      END IF.
      "in vendita."
      -- "for sale."
  END VERB.
END ADD TO.



-- ==============================================================

-- @DAI_A -> @GIVE (SYNTAX HEADER)

----- GIVE (+ hand, offer)


-- ==============================================================
-- #NOTA: Aggiungere anche "'dai' 'a' (recipient) (obj)"?

-- SYNTAX dai_a = 'give' (obj) 'to' (recipient)
SYNTAX dai_a = 'dai' (obj) 'a' (recipient)
      WHERE obj ISA OBJECT
        --> @TODO!!                                                             TRANSLATE!
        ELSE SAY illegal_parameter_obj OF my_game.
      AND recipient ISA ACTOR
        ELSE
      IF obj IS NOT plurale
        --> @TODO!!                                                             TRANSLATE!
        THEN SAY illegal_parameter2_to_sg OF my_game.
        ELSE SAY illegal_parameter2_to_pl OF my_game.
      END IF.



ADD TO EVERY OBJECT
  VERB dai_a
        WHEN obj
      CHECK my_game CAN dare -- (was CAN give)
        ELSE SAY azione_bloccata OF my_game.
      AND obj IS takeable
        --> @TODO!!                                                             TRANSLATE!
        ELSE SAY check_obj_takeable OF my_game.
      AND obj <> recipient
        --> @TODO!!                                                             TRANSLATE!
        ELSE SAY check_obj_not_obj2_to OF my_game.
      AND recipient <> hero
        --> @TODO!!                                                             TRANSLATE!
        ELSE SAY check_obj2_not_hero3 OF my_game.
      AND CURRENT LOCATION IS lit
        ELSE SAY check_locazione_illuminata OF my_game.
      AND obj NOT IN recipient
        ELSE
          IF recipient IS NOT plurale
            --> @TODO!!                                                        TRANSLATE!
            THEN SAY check_obj_not_in_act_sg OF my_game.
            ELSE SAY check_obj_not_in_act_pl OF my_game.
          END IF.
      AND obj IS reachable AND obj IS NOT distant
        ELSE
          IF obj IS NOT reachable
            THEN
              IF obj IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF obj IS distant
            THEN
              IF obj IS NOT plurale
                --> @TODO!!                                                     TRANSLATE!
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.
      AND recipient IS reachable AND recipient IS NOT distant
        ELSE
          IF recipient IS NOT reachable
            THEN
              IF recipient IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF recipient IS distant
            THEN
              IF recipient IS NOT plurale
                --> @TODO!!                                                     TRANSLATE!
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.
          DOES
        -- implicit taking:
        IF obj NOT DIRECTLY IN hero
          --> @TODO!!                                                           TRANSLATE!
          THEN SAY implicit_taking_message OF my_game.
          LOCATE obj IN hero.
        END IF.
        -- end of implicit taking.

        LOCATE obj IN recipient.
        --> @TODO!!                                                             TRANSLATE!
        "You give" SAY THE obj. "to" SAY THE recipient. "."


  END VERB.
END ADD TO.


SYNONYMS porgi, offri = dai.
-- SYNONYMS hand, offer = give.




-- ==============================================================

-- @INVENTARIO -> @INVENTORY (SYNTAX HEADER)
----- INVENTORY (+ i, inv)


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


META VERB inventario
  CHECK my_game CAN inventariare
    ELSE SAY azione_bloccata OF my_game.
  DOES
    LIST hero.

    IF COUNT DIRECTLY IN worn > 0   -- See the file 'classes.i', subclass 'clothing'.
      THEN LIST worn.     -- This code will list what the hero is wearing.
    END IF.

END VERB.


SYNONYMS inv = inventario.

-- ==============================================================


----- @MANGIA -> @EAT


-- ==============================================================


-- SYNTAX eat = eat (food)

SYNTAX mangia = mangia (cibo)
  WHERE cibo ISA OBJECT
    ELSE
      IF cibo IS NOT plurale
        --> @TODO!!                                                             TRANSLATE!
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
  VERB mangia
    CHECK my_game CAN mangiare
      ELSE SAY azione_bloccata OF my_game.
    AND cibo IS commestibile
      ELSE
        IF cibo IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game.
          ELSE SAY ogg1_inadatto_pl OF my_game.
        END IF.
        "mangiare."
    AND cibo IS takeable
      --> @TODO!!                                                               TRANSLATE!
      ELSE SAY check_obj_takeable OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND cibo IS reachable AND cibo IS NOT distant
      ELSE
        IF cibo IS NOT reachable
          THEN
            IF cibo IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF cibo IS distant
          THEN
            IF cibo IS NOT plurale
              --> @TODO!!                                                       TRANSLATE!
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
      -- implicit taking:
      IF cibo NOT DIRECTLY IN hero
        THEN LOCATE cibo IN hero.
          --> @TODO!!                                                           TRANSLATE!
          SAY implicit_taking_message OF my_game.
      END IF.
      -- end of implicit taking.

      "Mangi" SAY THE cibo. "."
   -- "You eat all of" SAY THE cibo. "."
      LOCATE cibo AT nowhere.

  END VERB.
END ADD.




-- ==============================================================


----- @PREGA --> @PRAY (VERB + SYNTAX)


-- ==============================================================


SYNTAX prega = prega.


VERB prega
  CHECK my_game CAN pregare
    ELSE SAY azione_bloccata OF my_game.
  DOES "Sembra che le tue preghiere non siano state esaudite." --> da i6
  -- DOES "Your prayers don't seem to help right now."
END VERB.


-- ==============================================================


-- @PRENDI -> @TAKE (SYNTAX HEADER)
----- TAKE  (+ carry, get, grab, hold, obtain, pick up)

----- PRENDI  (+ afferra, raccogli, trasporta)


-- ==============================================================

-- @PRENDI -> @TAKE (SYNTAX)         => take (obj)
SYNTAX prendi = prendi (obj)
      WHERE obj ISA THING
        ELSE
      IF obj IS NOT plurale
        --> @TODO!!                                                             TRANSLATE!
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.

-- @TODO: Cleanup, these might not need an alternative syntax but just synonym!

    prendi = afferra (obj).
    prendi = raccogli (obj).
    prendi = trasporta (obj).

--| ORIGINAL EN:
--| ============
--| SYNTAXES:
--|   take = take    (obj)
--|   take = get     (obj)
--|   take = pick up (obj)
--|   take = pick    (obj) up
--| SYNONYMS:
--|   carry, grab, hold, obtain = take

ADD TO EVERY THING
-- @PRENDI -> @TAKE (VERB) => ADD TO EVERY THING
  VERB prendi
    CHECK my_game CAN prendere --> CAN take
      ELSE SAY azione_bloccata OF my_game. --#-> "Non puoi farlo."
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game.
          ELSE SAY ogg1_inadatto_pl OF my_game.
        END IF.
        "prendere."
    AND obj <> hero
      --> @TODO!!                                                               TRANSLATE!
      ELSE SAY check_obj_not_hero1 OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS NOT scenery
      ELSE
        IF THIS IS NOT plurale
          --> @TODO!!                                                           TRANSLATE!
          THEN SAY check_obj_not_scenery_sg OF my_game. --#-> "$+1 is not important."
          ELSE SAY check_obj_not_scenery_pl OF my_game. --#-> "$+1 are not important."
        END IF.
    AND obj IS movable
   -- ELSE SAY check_obj_movable OF my_game. --#-> "It's not possible to $v $+1."
      ELSE
      --#i6/7: "È/Sono fissat* al proprio posto"
        IF obj IS NOT femminile
          THEN
            IF obj IS NOT plurale
              THEN SAY "È fissato al suo posto.".
              ELSE SAY "Sono fissati al loro posto.".
            END IF.
          ELSE
            IF obj IS NOT plurale
              THEN SAY "È fissata al suo posto.".
              ELSE SAY "Sono fissate al loro posto.".
            END IF.
        END IF.
        AND obj IS takeable
          ELSE
        IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game.
          ELSE SAY ogg1_inadatto_pl OF my_game.
        END IF.
        "prendere."
    AND obj NOT DIRECTLY IN hero
      -- i.e. the object to be taken is not carried by the hero already
      --> @TODO!!                                                               TRANSLATE!
      ELSE SAY check_obj_not_in_hero2 OF my_game.
        AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              --> @TODO!!                                                       TRANSLATE!
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
        AND weight Of obj < 50
          ELSE
        IF obj IS NOT plurale
          --> @TODO!!                                                           TRANSLATE!
          THEN SAY check_obj_weight_sg OF my_game.
          ELSE SAY check_obj_weight_pl OF my_game.
        END IF.
        DOES
      IF obj ISA ACTOR
        --> @TODO!!                                                             TRANSLATE!
        THEN SAY THE obj. "would probably object to that."
      -- actors are not prohibited from being taken in the checks; this is to
      -- allow for example a dog to be picked up, or a bird to be taken out of
      -- a cage, etc.


      ELSIF obj ISA OBJECT
        THEN IF obj DIRECTLY IN worn
            THEN LOCATE obj IN hero.
              --> @TODO!!                                                       TRANSLATE!
              "You take off" SAY THE obj. "and carry it in your hands."
              IF obj ISA CLOTHING
                THEN EXCLUDE obj FROM wearing OF hero.
              END IF.
            ELSE LOCATE obj IN hero.
              --@ "Taken." => "Pres[o|a|i|e]."
              "Pres$$"
              IF obj IS NOT femminile
                THEN
                  IF obj IS NOT plurale
                    THEN SAY "o.". -- GNA = msi
                    ELSE SAY "i.". -- GNA = mpi
                  END IF.
                ELSE
                  IF obj IS NOT plurale
                    THEN SAY "a.". -- GNA = fsi
                    ELSE SAY "e.". -- GNA = fpi
                  END IF.
              END IF.
          END IF.
      END IF.

        -- Objects held by NPCs cannot be taken by the hero by default.
        -- The hero must *ask for* the object to obtain it.

  END VERB.
END ADD TO.


-- @PRENDI -> @TAKE (SYNONYMS)
SYNONYMS
  carry, grab, hold, obtain = prendi. --@TODO: Translate IT synonims



-- ==============================================================

-- @PRENDI_DA -> @TAKE_FROM (SYNTAX HEADER)

-----  TAKE FROM


-- ==============================================================

-- @PRENDI_DA -> @TAKE_FROM (SYNTAX)

--------------------------------------------------------------------------------
-- NOTE: Alternative 'dai' prepositions must be implement separately because
--       these can't be covered by synonyms due to conflicts with verb "dai"!!!
--------------------------------------------------------------------------------

SYNTAX prendi_da = 'prendi' (obj) 'da' (holder)
      WHERE obj ISA THING
        ELSE
      IF obj IS NOT plurale
        --> @TODO!!                                                             TRANSLATE!
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
      AND holder ISA THING
        ELSE
      IF holder IS NOT plurale
        --> @TODO!!                                                             TRANSLATE!
        THEN SAY illegal_parameter2_from_sg OF my_game. --> "That's not something you can take things from."
        ELSE SAY illegal_parameter2_from_pl OF my_game. --> "Those are not something you can take things from."
      END IF.
      AND holder ISA CONTAINER
        ELSE
      IF holder IS NOT plurale
        --> @TODO!!                                                             TRANSLATE!
        THEN SAY illegal_parameter2_from_sg OF my_game.
        ELSE SAY illegal_parameter2_from_pl OF my_game.
      END IF.

  prendi_da = prendi  (obj)  'dai' (holder).
  prendi_da = rimuovi (obj)* 'da'  (holder).
  prendi_da = rimuovi (obj)* 'dai' (holder).
  prendi_da = togli   (obj)  'da'  (holder).
  prendi_da = togli   (obj)  'dai' (holder).

--| ORIGINAL EN:
--| ============
--| SYNTAXES:
--|   take_from = 'take' (obj)  'from' (holder)
--|   take_from = remove (obj)* 'from' (holder)
--|   take_from = get    (obj)  'from' (holder)


ADD TO EVERY THING
    VERB prendi_da
        WHEN obj
      CHECK my_game CAN prendere_da --> CAN take_from
        ELSE SAY azione_bloccata OF my_game.
      AND obj <> hero
        --> @TODO!!                                                             TRANSLATE!
        ELSE SAY check_obj_not_hero1 OF my_game.
      AND holder <> hero
        --> @TODO!!                                                             TRANSLATE!
        ELSE SAY check_obj2_not_hero1 OF my_game.
          AND obj NOT DIRECTLY IN hero
          ELSE  SAY check_obj_not_in_hero2 OF my_game. --#-> "You already have $+1."
      AND obj <> holder
        --> @TODO!!                                                             TRANSLATE!
        ELSE SAY check_obj_not_obj2_from OF my_game.  --#-> "It doesn't make sense to $v something from itself."
      AND CURRENT LOCATION IS lit
        ELSE SAY check_locazione_illuminata OF my_game.
      AND obj IS NOT scenery
        ELSE
          IF obj IS NOT plurale
            --> @TODO!!                                                         TRANSLATE!
            THEN SAY check_obj_not_scenery_sg OF my_game.
            ELSE SAY check_obj_not_scenery_pl OF my_game.
          END IF.
      AND holder IS NOT scenery
        ELSE
          IF obj IS NOT plurale
            --> @TODO!!                                                         TRANSLATE!
            THEN SAY check_obj2_not_scenery_sg OF my_game.
            ELSE SAY check_obj2_not_scenery_pl OF my_game.
          END IF.
      AND obj IS movable
        --> @TODO!!                                                             TRANSLATE!
        ELSE SAY check_obj_movable OF my_game.
      AND obj IS takeable
            ELSE
          IF obj IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY ogg1_inadatto_sg OF my_game.
            ELSE SAY ogg1_inadatto_pl OF my_game.
          END IF.
          "prendere."
      AND holder IS reachable AND holder IS NOT distant
        ELSE
          IF holder IS NOT reachable
            THEN
              IF holder IS NOT plurale
                THEN SAY ogg2_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg2_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF holder IS distant
            THEN
              IF holder IS NOT plurale
                --> @TODO!!                                                     TRANSLATE!
                THEN SAY check_obj2_not_distant_sg OF my_game.
                ELSE SAY check_obj2_not_distant_pl OF my_game.
              END IF.
          END IF.
      AND weight Of obj < 50
            ELSE
          IF obj IS NOT plurale
            --> @TODO!!                                                         TRANSLATE!
            THEN SAY check_obj_weight_sg OF my_game.
            ELSE SAY check_obj_weight_pl OF my_game.
          END IF.
          AND obj IN holder
        ELSE
          IF holder IS inanimate
            THEN
              IF holder ISA SUPPORTER
                THEN
                  IF obj IS NOT plurale
                    --> @TODO!!                                                 TRANSLATE!
                    THEN SAY check_obj_on_surface_sg OF my_game.
                    ELSE SAY check_obj_on_surface_pl OF my_game.
                  END IF.
                ELSE
                  IF obj IS NOT plurale
                    --> @TODO!!                                                 TRANSLATE!
                    THEN SAY check_obj_in_cont_sg OF my_game.
                    ELSE SAY check_obj_in_cont_pl OF my_game.
                  END IF.
              END IF.
            ELSE
              IF holder IS NOT plurale
                --> @TODO!!                                                     TRANSLATE!
                THEN SAY check_obj_in_act_sg OF my_game.
                ELSE SAY check_obj_in_act_pl OF my_game.
              END IF.
          END IF.
      DOES
        IF obj ISA ACTOR
          --> @TODO!!                                                           TRANSLATE!
          THEN SAY THE obj. "would probably object to that."
            -- actors are not prohibited from being taken in the checks; this is to
            -- allow for example a dog to be picked up, or a bird to be taken out of
            -- a cage, etc.
        ELSIF obj ISA OBJECT
          THEN
            IF holder ISA LISTED_CONTAINER AND holder IS NOT open
              --> @TODO!!                                                       TRANSLATE!
              THEN "You can't;" SAY THE holder.
                  IF holder IS NOT plurale
                    THEN "is"
                    ELSE "are"
                  END IF.
                "closed."
              ELSE
                LOCATE obj IN hero.
                --> @TODO!!                                                     TRANSLATE!
                "You take" SAY THE obj. "from" SAY THE holder. "."
            END IF.
        END IF.

          -- Objects held by NPCs cannot be taken by the hero by default.
          -- The hero must *ask for* the object to obtain it.


    END VERB.
END ADD TO.



-- =============================================================


----- @RIFAI --> @AGAIN (VERB + SYNTAX)

----- AGAIN (= g)


-- =============================================================
-- #NOTA: Aggiungere anche "ripeti"?

SYNTAX
  rifai = rifai.
  rifai = ancora.


VERB rifai
  CHECK my_game CAN rifare
    ELSE SAY azione_bloccata OF my_game.
  DOES
    "[Il comando ANCORA non è supportato in questo gioco. In alternativa, prova
    ad usare i tasti 'su' e 'giù' per navigare tra i comandi precedenti.]"
    -- "[The AGAIN command is not supported in this game. As a workaround, try using
    --  the 'up' and 'down' arrow keys to scroll through your previous commands.]"
END VERB.


SYNONYMS g = rifai.




-- ===============================================================


----- @ROMPI --> @BREAK (VERB + SYNTAX)


-- ===============================================================


SYNTAX rompi = rompi (obj)
    WHERE obj ISA OBJECT
      ELSE
        IF obj IS NOT plurale
          --> @TODO!!                                                           TRANSLATE!
          THEN SAY illegal_parameter_sg OF my_game.
          ELSE SAY illegal_parameter_pl OF my_game.
        END IF.


ADD TO EVERY OBJECT
  VERB rompi
    CHECK my_game CAN rompere
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game.
          ELSE SAY ogg1_inadatto_pl OF my_game.
        END IF.
        "rompere."
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              --> @TODO!!                                                       TRANSLATE!
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
    --@TODO: Rivedi frase (magari "forza bruta")
      "La violenza non è la giusta risposta a questo." -- presa da i6!
      -- "Resorting to brute force is not the solution here."
  END VERB.
END ADD TO.


SYNONYMS distruggi, spacca, sfonda = rompi.



-- ===============================================================


----- @ROMPI_CON --> @BREAK WITH (VERB + SYNTAX)


-- ===============================================================


-- SYNTAX break_with = break (obj) 'with' (instr)
SYNTAX rompi_con = rompi (obj) 'con' (instr)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF my_game.
        ELSE SAY ogg1_inadatto_pl OF my_game.
        -- THEN SAY illegal_parameter_sg OF my_game.
        -- ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
      "rompere."
  AND instr ISA OBJECT
    ELSE
      IF instr IS NOT plurale
        --> @TODO!!                                                             TRANSLATE!
        THEN SAY illegal_parameter2_with_sg OF my_game.
        ELSE SAY illegal_parameter2_with_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
  VERB rompi_con
    WHEN obj
      CHECK my_game CAN rompere_con
        ELSE SAY azione_bloccata OF my_game.
      AND obj IS examinable
        ELSE
          IF obj IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY ogg1_inadatto_sg OF my_game.
            ELSE SAY ogg1_inadatto_pl OF my_game.
          END IF.
          "rompere."
      AND instr IS examinable
        ELSE
          IF obj IS NOT plurale
            --> @TODO!!                                                         TRANSLATE!
            THEN SAY check_obj2_suitable_with_sg OF my_game.
            ELSE SAY check_obj2_suitable_with_pl OF my_game.
          END IF.
      AND obj <> instr
        --> @TODO!!                                                             TRANSLATE!
        ELSE SAY check_obj_not_obj2_with OF my_game.
      AND CURRENT LOCATION IS lit
        ELSE SAY check_locazione_illuminata OF my_game.
      AND instr IN hero
        --> @TODO!!                                                             TRANSLATE!
        ELSE SAY check_obj2_in_hero OF my_game.
        --> @TODO!!                                                             TRANSLATE!
      AND obj IS reachable AND obj IS NOT distant
        ELSE
          IF obj IS NOT reachable
            THEN
              IF obj IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF obj IS distant
            THEN
              IF obj IS NOT plurale
                --> @TODO!!                                                     TRANSLATE!
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.
      DOES
        "Tentare di rompere" SAY THE obj. "con" SAY THE instr.
        "non risolverebbe nulla."
      -- "Trying to break" SAY THE obj. "with" SAY THE instr.
      -- "wouldn't accomplish anything."
  END VERB.
END ADD TO.




-- ==============================================================


----- @SPOGLIATI -> @UNDRESS (SYNTAX + VERB)


-- ==============================================================


SYNTAX spogliati = spogliati.

SYNONYMS svestiti = spogliati.

VERB spogliati
  CHECK my_game CAN spogliarsi
    ELSE SAY azione_bloccata OF my_game.   --# "Non puoi farlo."
  AND CURRENT LOCATION IS lit
    ELSE SAY check_locazione_illuminata OF my_game. --# "È troppo buio."
  --@TODO: modifica frase (non mi piace):
  DOES "Ripensandoci, spogliarsi qui e ora non è una buona idea."
--DOES "You don't feel like undressing is a good idea right now."

 -- To make it work, use the following lines instead:
--@TODO: sintassi 'desempio commentata (da verificare e testare)!
--| Per implementare l'azione di spogliarsi, usa:
--|--------------------------------------------------------
--| IF COUNT DIRECTLY IN worn, ISA CLOTHING > 0
--|   THEN EMPTY worn IN hero.
--|     "Fatto. Ora non indossi più nulla."
--|     -- "You remove all the items you were wearing."
--|   ELSE "Non indossi nulla di cui potresti spogliarti."
--|   -- ELSE "You're not wearing anything you can remove."
--| END IF.
--|--------------------------------------------------------
END VERB.



-- ==============================================================


----- @VAI A -> @GO TO


-- ==============================================================


-- SYNTAX go_to = 'to' (dest)!

SYNTAX vai_a = 'a' (dest)!
  -- Because 'go' is predefined in the parser, it can't be used in verb definitions.
  -- The player will still be able to type 'go to [dest]' successfully.
  WHERE dest ISA THING
    ELSE SAY illegal_parameter_go OF my_game.

SYNONYMS vai = go.

-- SYNONYMS walk = go.
  -- here we define a synonym for the predefined parser word 'go'
  -- which is not visible in the syntax itself.
  -- Thus, you will be able to say for example both 'go to shop' and 'walk to shop'
  -- (as well as for example both 'go east' and 'walk east').


ADD TO EVERY THING
  VERB vai_a
    CHECK my_game CAN andare_a
      ELSE SAY azione_bloccata OF my_game.
    AND dest <> hero
      ELSE SAY check_obj_not_hero4 OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND hero IS NOT seduto
      ELSE SAY check_hero_not_sitting3 OF my_game.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down3 OF my_game.
    AND dest NOT AT hero
      ELSE
        IF dest IS NOT plurale
          THEN SAY check_obj_not_at_hero_sg OF my_game.
          ELSE SAY check_obj_not_at_hero_pl OF my_game.
        END IF.
    AND dest IS reachable AND dest IS NOT distant
      ELSE
        IF dest IS NOT reachable
          THEN
            IF dest IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF dest IS distant
          THEN
            IF dest IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
      "You can't see" SAY THE dest. "anywhere nearby. You must state a
      direction where you want to go."
    END VERB.
END ADD TO.





-- *****************************************************************************
-- *                                                                           *
-- *                            UNTRANSLATED VERBS                             *
-- *                                                                           *
-- *****************************************************************************



----- The verbs and commands:



-- =============================================================


----- ABOUT


-- =============================================================


SYNTAX 'about' = 'about'.


VERB 'about'
  CHECK my_game CAN about
    ELSE SAY azione_bloccata OF my_game.
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
END VERB.


SYNONYMS help, info = 'about'.


-- =============================================================


----- ANSWER    (+ reply)


-- =============================================================


SYNTAX answer = answer (topic)
  WHERE topic ISA STRING
    ELSE SAY illegal_parameter_string OF my_game.

SYNONYMS reply = answer.

ADD TO EVERY STRING
  VERB answer
    CHECK my_game CAN answer
      ELSE SAY azione_bloccata OF my_game.
    DOES
      "What was the question?"
    END VERB.
END ADD TO.



-- =============================================================


----- ASK (= enquire, inquire, interrogate)


-- =============================================================


SYNTAX ask = ask (act) about (topic)!
      WHERE act ISA ACTOR
        ELSE
      IF act IS NOT plurale
        THEN SAY illegal_parameter_talk_sg OF my_game.
        ELSE SAY illegal_parameter_talk_pl OF my_game.
      END IF.
      AND topic ISA THING
        ELSE
      IF topic IS NOT plurale
        THEN SAY illegal_parameter_about_sg OF my_game.
        ELSE SAY illegal_parameter_about_pl OF my_game.
      END IF.

   ask = enquire (act) about (topic)!.

   ask = inquire (act) about (topic)!.

   ask = interrogate (act) about (topic)!.

  -- Above, we define the alternative verbs in the syntax rather than as synonyms,
  -- as the verb 'ask_for' below doesn't sound correct with these alternatives allowed.


ADD TO EVERY ACTOR
  VERB ask
        WHEN act
      CHECK my_game CAN ask
        ELSE SAY azione_bloccata OF my_game.
      AND act <> hero
        ELSE SAY check_obj_not_hero1 OF my_game.
          AND act CAN talk
              ELSE
          IF act IS NOT plurale
            THEN SAY check_act_can_talk_sg OF my_game.
            ELSE SAY check_act_can_talk_pl OF my_game.
          END IF.
      AND act IS NOT distant
        ELSE
          IF act IS NOT plurale
            THEN SAY check_obj_not_distant_sg OF my_game.
            ELSE SAY check_obj_not_distant_pl OF my_game.
          END IF.
          DOES
        "Nessuna risposta." --> taken from i6
        -- "There is no reply."
    END VERB.
END ADD TO.



----- note that 'consult' is defined separately



-- =============================================================


----- ASK FOR


-- =============================================================


SYNTAX ask_for = ask (act) 'for' (obj)
  WHERE act ISA ACTOR
    ELSE
      IF act IS NOT plurale
        THEN SAY illegal_parameter_talk_sg OF my_game.
        ELSE SAY illegal_parameter_talk_pl OF my_game.
      END IF.
  AND obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_for_sg OF my_game.
        ELSE SAY illegal_parameter_for_pl OF my_game.
      END IF.


ADD TO EVERY ACTOR
  VERB ask_for
      WHEN act
      CHECK my_game CAN ask_for
        ELSE SAY azione_bloccata OF my_game.
      AND act <> hero
        ELSE SAY check_obj_not_hero1 OF my_game.
          AND act CAN talk
              ELSE
          IF act IS NOT plurale
            THEN SAY check_act_can_talk_sg OF my_game.
            ELSE SAY check_act_can_talk_pl OF my_game.
          END IF.
      AND obj IS examinable
        ELSE
          IF obj IS NOT plurale
            THEN SAY check_obj2_suitable_for_sg OF my_game.
            ELSE SAY check_obj2_suitable_for_pl OF my_game.
          END IF.
      AND obj NOT IN hero
        ELSE SAY check_obj2_not_in_hero3 OF my_game.
      AND CURRENT LOCATION IS lit
        ELSE SAY check_locazione_illuminata OF my_game.
      AND act IS NOT distant
        ELSE
          IF act IS NOT plurale
            THEN SAY check_obj_not_distant_sg OF my_game.
            ELSE SAY check_obj_not_distant_pl OF my_game.
          END IF.
      AND obj IS takeable
        ELSE SAY check_obj2_takeable2 OF my_game.

      AND obj IS reachable AND obj IS NOT distant
        ELSE
          IF obj IS NOT reachable
            THEN SAY check_obj_reachable_ask OF my_game.
          ELSIF obj IS distant
            THEN
              IF obj IS NOT plurale
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.
      AND obj IS NOT scenery
        ELSE
          IF obj IS NOT plurale
            THEN SAY check_obj2_not_scenery_sg OF my_game.
            ELSE SAY check_obj2_not_scenery_pl OF my_game.
          END IF.
      DOES
        MAKE act compliant.
        -- It is only possible to get something from an NPC
        -- if the NPC is 'compliant'.
        LOCATE obj IN hero.
        SAY THE act. "gives" SAY THE obj. "to you."
        MAKE act NOT compliant.
  END VERB.
END ADD TO.



--- another 'ask_for' formulation added to guide players to use the right phrasing:


SYNTAX ask_for_error = ask 'for' (obj)
  WHERE obj ISA OBJECT
    ELSE "Please use the formulation ASK PERSON FOR THING to ask somebody for
       something."


ADD TO EVERY OBJECT
  VERB ask_for_error
    DOES
      "Please use the formulation ASK PERSON FOR THING to ask somebody for
             something."
  END VERB.
END ADD TO.



-- =============================================================


----- ATTACK (+ beat, fight, hit, punch)


-- =============================================================


SYNTAX attack = attack (target)
      WHERE target ISA THING
        ELSE
      IF target IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.

SYNONYMS beat, fight, hit, punch = attack.

-- Note that 'kick' is defined separately, to avoid absurd commands such as
-- 'kick man with sword' (see 'attack_with' below)


ADD TO EVERY THING
  VERB attack
    CHECK my_game CAN attack
      ELSE SAY azione_bloccata OF my_game.
    AND target IS examinable
      ELSE
        IF target IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "attaccare."
          ELSE SAY ogg1_inadatto_pl OF my_game. "attaccare."
        END IF.
    AND target <> hero
      ELSE SAY check_obj_not_hero1 OF my_game.
    AND target NOT IN hero
      ELSE SAY check_obj_not_in_hero1 OF my_game.
    AND target NOT IN worn
      ELSE SAY check_obj_not_in_worn2 OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND target IS reachable AND target IS NOT distant
      ELSE
        IF target IS NOT reachable
          THEN
            IF target IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF target IS distant
          THEN
            IF target IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    AND hero IS NOT seduto
      ELSE SAY check_hero_not_sitting2 OF my_game.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down2 OF my_game.
        DOES
          "La violenza non è la giusta risposta a questo." --> taken from i6
          -- "Resorting to brute force is not the solution here."
    END VERB.
END ADD TO.




-- ==============================================================


----- ATTACK WITH


-- ==============================================================


SYNTAX attack_with = attack (target) 'with' (weapon)
      WHERE target ISA THING
    ELSE
      IF target IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
      AND weapon ISA WEAPON
        ELSE
      IF weapon IS NOT plurale
        THEN SAY illegal_parameter2_with_sg OF my_game.
        ELSE SAY illegal_parameter2_with_pl OF my_game.
      END IF.



ADD TO EVERY THING
  VERB attack_with
        WHEN target
      CHECK my_game CAN attack_with
        ELSE SAY azione_bloccata OF my_game.
      AND target IS examinable
          ELSE
          IF target IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY ogg1_inadatto_sg OF my_game. "attaccare."
            ELSE SAY ogg1_inadatto_pl OF my_game. "attaccare."
          END IF.
      AND target <> weapon
        ELSE SAY check_obj_not_obj2_with OF my_game.
      AND target <> hero
        ELSE SAY check_obj_not_hero1 OF my_game.
      AND target NOT IN hero
        ELSE SAY check_obj_not_in_hero1 OF my_game.
      AND target NOT IN worn
        ELSE SAY check_obj_not_in_worn2 OF my_game.
      AND CURRENT LOCATION IS lit
        ELSE SAY check_locazione_illuminata OF my_game.
      AND target IS reachable AND target IS NOT distant
        ELSE
          IF target IS NOT reachable
            THEN
              IF target IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF target IS distant
            THEN
              IF target IS NOT plurale
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.
      AND hero IS NOT seduto
        ELSE SAY check_hero_not_sitting2 OF my_game.
      AND hero IS NOT sdraiato
        ELSE SAY check_hero_not_lying_down2 OF my_game.
          DOES
            "La violenza non è la giusta risposta a questo." --> taken from i6
            -- "Resorting to brute force is not the solution here."
  END VERB.
END ADD TO.



-- ===============================================================


----- BITE  (+ chew)


-- ===============================================================


SYNTAX bite = bite (obj)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.



ADD TO EVERY OBJECT
  VERB bite
    CHECK my_game CAN bite
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS commestibile
      ELSE
        IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "mordere."
          ELSE SAY ogg1_inadatto_pl OF my_game. "mordere."
        END IF.
    AND obj IS takeable
      ELSE SAY check_obj_takeable OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS NOT distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
      -- This if-statement takes care of implicit taking; i.e. if the hero
      -- doesn't have the object, (s)he will take it automatically first
      -- - unless it's carried by another actor.
      -- This same if-statement is found in numerous other verbs throughout
      -- the library, as well.

      -- implicit taking:
      IF obj NOT DIRECTLY IN hero
        THEN LOCATE obj IN hero.
             SAY implicit_taking_message OF my_game.
      END IF.
      -- end of implicit taking.

      "You take a bite of" SAY THE obj. "$$."
        IF obj IS NOT plurale
          THEN "It tastes nothing out of the ordinary."
          ELSE "They taste nothing out of the ordinary."
        END IF.

  END VERB.
END ADD TO.


SYNONYMS chew = bite.



-- ================================================================


----- BRIEF


-- ================================================================


-- Use "Visits 0." or "Visits 1000." in the START section if you want
-- the game to start in verbose or brief mode. (By default,
-- all games start in the verbose mode.)


SYNTAX brief = brief.


VERB brief
  CHECK my_game CAN modalità_breve
    ELSE SAY azione_bloccata OF my_game.
  DOES
    Visits 1000.
    -- "Brief mode is now on. Location descriptions will only be shown
    -- the first time you visit."

    "Il gioco è ora in modalità" STYLE EMPHASIZED. "breve" STYLE NORMAL. ", le
    descrizioni dei luoghi già visitati non saranno più mostrate."
END VERB.







-- ==================================================================


----- CATCH


-- ==================================================================


SYNTAX catch = catch (obj)
  WHERE obj ISA THING
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY THING
  VERB catch
    CHECK my_game CAN catch
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "catturare." -- afferrare?
          ELSE SAY ogg1_inadatto_pl OF my_game. "catturare." -- afferrare?
        END IF.
    AND obj <> hero
      ELSE SAY check_obj_not_hero1 OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND hero IS NOT seduto
      ELSE SAY check_hero_not_sitting2 OF my_game.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down2 OF my_game.
    DOES
      IF obj IS NOT plurale
        THEN "That doesn't"
        ELSE "Those don't"
      END IF.

          "need to be caught."
  END VERB.
END ADD TO.



-- ==================================================================


----- CLEAN ( + wipe, polish)


-- ==================================================================


SYNTAX clean = clean (obj)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


SYNONYMS wipe, polish = clean.

----- notice that 'rub' is defined separately

ADD TO EVERY OBJECT
  VERB clean
    CHECK my_game CAN pulire
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "pulire."
          ELSE SAY ogg1_inadatto_pl OF my_game. "pulire."
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
      "Farlo non servirebbe a nulla."
      -- "Nothing would be achieved by that."
  END VERB.
END ADD TO.





-- ==============================================================


----- CLIMB


-- ==============================================================


SYNTAX climb = climb (obj)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.



ADD TO EVERY OBJECT
  VERB climb
  CHECK my_game CAN climb
    ELSE SAY azione_bloccata OF my_game.
  AND obj IS examinable
    ELSE
      IF obj IS NOT plurale
      --------------------------------------------------------------------------
      --@NOTA: Qui dovrò usare un messaggio personalizzato, del tipo:
      --       "$+1 non [è/sono] qualcosa su cui potersi arrampicare"
      --------------------------------------------------------------------------
        THEN SAY check_obj_suitable_sg OF my_game.
        ELSE SAY check_obj_suitable_pl OF my_game.
      END IF.
  AND CURRENT LOCATION IS lit
    ELSE SAY check_locazione_illuminata OF my_game.
  AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
  AND hero IS NOT seduto
    ELSE SAY check_hero_not_sitting3 OF my_game.
  AND hero IS NOT sdraiato
    ELSE SAY check_hero_not_lying_down3 OF my_game.
  DOES
    IF obj IS NOT plurale
      THEN "That's not"
      ELSE "Those are not"
    END IF.
    "something you can climb."
  END VERB.
END ADD TO.



-- ==============================================================


----- CLIMB ON


-- ==============================================================


SYNTAX climb_on = climb 'on' (surface)
  WHERE surface ISA SUPPORTER
    ELSE
      IF surface IS NOT plurale
        THEN SAY illegal_parameter_on_sg OF my_game.
        ELSE SAY illegal_parameter_on_pl OF my_game.
      END IF.


ADD TO EVERY SUPPORTER
  VERB climb_on
    CHECK my_game CAN climb_on
      ELSE SAY azione_bloccata OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND surface IS reachable AND surface IS NOT distant
      ELSE
        IF surface IS NOT reachable
          THEN
            IF surface IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF surface IS NOT distant
          THEN
            IF surface IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    AND hero IS NOT seduto
      ELSE SAY check_hero_not_sitting3 OF my_game.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down3 OF my_game.
    DOES
      IF surface IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.
      "something you can climb on."
  END VERB.
END ADD TO.





-- ==============================================================


----- CLOSE (+ shut)


-- ==============================================================


SYNTAX close = close (obj)
        WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
  VERB close
    CHECK my_game CAN chiudere
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS openable
          ELSE
        IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "chiudere."
          ELSE SAY ogg1_inadatto_pl OF my_game. "chiudere."
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    AND obj IS open
          ELSE
        IF obj IS NOT plurale
          THEN SAY check_obj_open1_sg OF my_game.
          ELSE SAY check_obj_open1_pl OF my_game.
        END IF.

    DOES
          MAKE obj NOT open.
          "You close the" SAY THE obj. "."
  END VERB.
END ADD TO.


SYNONYMS shut = close.



-- ==============================================================


----- CLOSE WITH


-- ==============================================================


SYNTAX close_with = close (obj) 'with' (instr)
  WHERE obj ISA OBJECT
      ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
  AND instr ISA OBJECT
        ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter2_with_sg OF my_game.
        ELSE SAY illegal_parameter2_with_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
  VERB close_with
    WHEN obj
      CHECK my_game CAN chiudere_con
        ELSE SAY azione_bloccata OF my_game.
      AND obj IS openable
        ELSE
          IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "chiudere."
          ELSE SAY ogg1_inadatto_pl OF my_game. "chiudere."
          END IF.
      AND instr IS examinable
        ELSE
          IF obj IS NOT plurale
            THEN SAY check_obj2_suitable_with_sg OF my_game.
            ELSE SAY check_obj2_suitable_with_pl OF my_game.
          END IF.
      AND obj <> instr
        ELSE SAY check_obj_not_obj2_with OF my_game.
      AND instr IN hero
        ELSE SAY check_obj2_in_hero OF my_game.
      AND CURRENT LOCATION IS lit
        ELSE SAY check_locazione_illuminata OF my_game.
      AND obj IS reachable AND obj IS NOT distant
        ELSE
          IF obj IS NOT reachable
            THEN
              IF obj IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF obj IS distant
            THEN
              IF obj IS NOT plurale
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
        END IF.
      AND obj IS open
            ELSE
          IF obj IS NOT plurale
            THEN SAY check_obj_open1_sg OF my_game.
            ELSE SAY check_obj_open1_pl OF my_game.
          END IF.

      DOES
            "You can't $v" SAY THE obj. "with" SAY THE instr. "."
  END VERB.
END ADD TO.



-- ==============================================================


----- CONSULT


-- ==============================================================


SYNTAX consult = consult (source) about (topic)!
  WHERE source ISA OBJECT
    -- you can only consult an inanimate source, not a person.
    ELSE
      IF source IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
  AND topic ISA THING
    ELSE
      IF topic IS NOT plurale
        THEN SAY illegal_parameter_consult_sg OF my_game.
        ELSE SAY illegal_parameter_consult_pl OF my_game.
      END IF.

  consult = 'look' 'up' (topic) 'in' (source).


ADD TO EVERY THING
  VERB consult
    WHEN source
      CHECK my_game CAN consultare
        ELSE SAY azione_bloccata OF my_game.
      AND source IS examinable
        ELSE
          IF source IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "consultare."
          ELSE SAY ogg1_inadatto_pl OF my_game. "consultare."
          END IF.
      AND CURRENT LOCATION IS lit
        ELSE SAY check_locazione_illuminata OF my_game.
      AND source IS reachable AND source IS NOT distant
        ELSE
          IF source IS NOT reachable
            THEN
              IF source IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF source IS distant
            THEN
              IF source IS NOT plurale
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.
      DOES
        "You find nothing useful about" SAY THE topic. "in" SAY THE source. "."

  END VERB.
END ADD TO.


--- another 'consult' formulation added to guide players to use the right phrasing:


SYNTAX consult_error = consult (source)
  WHERE source ISA THING
    ELSE "To consult something, please use the
      formulation CONSULT THING ABOUT PERSON/THING."


ADD TO EVERY THING
  VERB consult_error
    DOES "To consult something, please use the formulation CONSULT THING
      ABOUT PERSON/THING."
    END VERB.
END ADD TO.



-- ==============================================================


----- CREDITS (+ acknowledgments, author, copyright)


-- ==============================================================


SYNTAX credits = credits.


VERB credits
  CHECK my_game CAN credits
    ELSE SAY azione_bloccata OF my_game.
  DOES
    "The author retains the copyright to this game.
    $pThis game was written using the ALAN Adventure Language. ALAN is
    an interactive fiction authoring system by Thomas Nilsson.
    $nE-mail address: thomas@alanif.se $pFurther information
    about the ALAN system can be obtained from
    the World Wide Web Internet site
    $ihttp://www.alanif.se$p"
END VERB.


SYNONYMS acknowledgments, author, copyright = credits.



-- ==============================================================


----- CUT


-- ==============================================================


SYNTAX cut = cut (obj)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
  VERB cut
    CHECK my_game CAN tagliare
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "tagliare."
          ELSE SAY ogg1_inadatto_pl OF my_game. "tagliare."
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    DOES "You need to specify what you want to cut" SAY THE obj. "with."
    END VERB.
END ADD TO.



-- ==============================================================


----- CUT WITH


-- ==============================================================


SYNTAX cut_with = cut (obj) 'with' (instr)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
  AND instr ISA OBJECT
    ELSE
      IF instr IS NOT plurale
        THEN SAY illegal_parameter2_with_sg OF my_game.
        ELSE SAY illegal_parameter2_with_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
  VERB cut_with
    WHEN obj
      CHECK my_game CAN tagliare_con
        ELSE SAY azione_bloccata OF my_game.
      AND obj <> instr
        ELSE SAY check_obj_not_obj2_with OF my_game.
      AND obj IS examinable
        ELSE
          IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "tagliare."
          ELSE SAY ogg1_inadatto_pl OF my_game. "tagliare."
          END IF.
      AND instr IS examinable
        ELSE
          IF obj IS NOT plurale
            THEN SAY check_obj2_suitable_with_sg OF my_game.
            ELSE SAY check_obj2_suitable_with_pl OF my_game.
          END IF.
      AND instr IN hero
        ELSE SAY check_obj2_in_hero OF my_game.
      AND CURRENT LOCATION IS lit
        ELSE SAY check_locazione_illuminata OF my_game.
      AND obj IS reachable AND obj IS NOT distant
        ELSE
          IF obj IS NOT reachable
            THEN
              IF obj IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF obj IS distant
            THEN
              IF obj IS NOT plurale
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.
      DOES
        "You can't cut" SAY THE obj. "with" SAY THE instr. "."
  END VERB.
END ADD TO.



-- ==============================================================


----- DANCE


-- ==============================================================


SYNTAX dance = dance.


VERB dance
  CHECK my_game CAN danzare
    ELSE SAY azione_bloccata OF my_game.
  AND CURRENT LOCATION IS lit
    ELSE SAY check_locazione_illuminata OF my_game.
  AND hero IS NOT seduto
    ELSE SAY check_hero_not_sitting1 OF my_game.
  AND hero IS NOT sdraiato
    ELSE SAY check_hero_not_lying_down1 OF my_game.
    DOES
        "How about a waltz?"
END VERB.



-- ==============================================================


----- DIG


-- ==============================================================


SYNTAX dig = dig (obj)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
  VERB dig
    CHECK my_game CAN scavare
      ELSE SAY azione_bloccata OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    AND hero IS NOT seduto
      ELSE SAY check_hero_not_sitting2 OF my_game.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down2 OF my_game.
    DOES
      "There is nothing suitable to dig here."
  END VERB.
END ADD TO.



-- ==============================================================


----- DIVE


-- ==============================================================


SYNTAX dive = dive.


VERB dive
  CHECK my_game CAN dive
    ELSE SAY azione_bloccata OF my_game.
  AND CURRENT LOCATION IS lit
    ELSE SAY check_locazione_illuminata OF my_game.
  AND hero IS NOT seduto
    ELSE SAY check_hero_not_sitting3 OF my_game.
  AND hero IS NOT sdraiato
    ELSE SAY check_hero_not_lying_down3 OF my_game.
  DOES
    "There is no water suitable for swimming here."
END VERB.



-- ==============================================================


----- DIVE IN


-- ==============================================================
-- @NOTA | dive 'in' (liq) coprirebbe "tuffati in acqua" ma non
--       | "tuffati nella piscina". In teoria, servirebbe un'altra
--       | sintassi del tipo dive 'in' (vessel) che controlli un attributo che
--       | specifica se il contenitore contiene liquidi e se è grande abbastanza
--       | per potervici tuffare. Se no, usando "piscina" come sinonimo di "acqua"
--       | per far sì che ci si possa tuffare in essa, crerebbe il problema che
--       | i verbi riguardanti i liquidi si applicherebbero anche alla piscina.
--       | Magari in realtà il problema non sussiste, ma devo tenerne conto.


SYNTAX dive_in = dive 'in' (liq)
  WHERE liq ISA LIQUID    -- see 'classes.i'
    ELSE
      IF liq IS NOT plurale
        THEN SAY illegal_parameter_in_sg OF my_game.
        ELSE SAY illegal_parameter_in_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
  VERB dive_in
    CHECK my_game CAN dive_in
      ELSE SAY azione_bloccata OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND hero IS NOT seduto
      ELSE SAY check_hero_not_sitting3 OF my_game.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down3 OF my_game.
    -- notice that, unlike 'swim_in', it is possible to dive in a
    -- not reachable object (for example from a clifftop into a river)
    -- but not to a distant object:
    AND liq IS NOT distant
      ELSE
        IF liq IS NOT plurale
          THEN SAY check_obj_not_distant_sg OF my_game.
          ELSE SAY check_obj_not_distant_pl OF my_game.
        END IF.
    DOES
      IF liq IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.

      "something you can dive in."
  END VERB.
END ADD TO.




-- ==============================================================


----- DRIVE


-- ==============================================================


SYNTAX drive = drive (vehicle)
  WHERE vehicle ISA OBJECT
    ELSE
      IF vehicle IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
  VERB drive
    CHECK my_game CAN drive
      ELSE SAY azione_bloccata OF my_game.
    AND vehicle IS examinable
      ELSE
        IF vehicle IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "guidare."
          ELSE SAY ogg1_inadatto_pl OF my_game. "guidare."
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND vehicle IS reachable AND vehicle IS NOT distant
      ELSE
        IF vehicle IS NOT reachable
          THEN
            IF vehicle IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF vehicle IS distant
          THEN
            IF vehicle IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down3 OF my_game.
    DOES
      IF vehicle IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.

      "something you can drive."
  END VERB.
END ADD TO.


-- another 'drive' formulation added to guide players to use the right phrasing:


SYNTAX drive_error = drive.


VERB drive_error
  DOES "To drive something, use the phrasing DRIVE SOMETHING."
END VERB.



-- ==============================================================


----- DROP


-- ==============================================================


SYNTAX drop = drop (obj)*
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.

  drop = put (obj) * down.

  drop = put down (obj)*.


ADD TO EVERY OBJECT
  VERB drop
    CHECK my_game CAN lasciare
      ELSE SAY azione_bloccata OF my_game.
      AND obj IN hero
          ELSE
        IF obj IN worn
          THEN SAY check_obj_not_in_worn3 OF my_game.
          ELSE SAY check_obj_in_hero OF my_game.
            END IF.
    DOES
          LOCATE obj HERE.
          "Dropped."
    END VERB.
END ADD TO.


SYNONYMS
  discard, dump, reject = drop.





-- ==============================================================


----- EMPTY   (+ POUR)


-- ==============================================================


-- The verbs 'empty' and 'pour' have similar syntaxes and behaviour here. They are, however,
-- not declared as synonyms but kept separate, as their usage doesn't overlap 100%; for example
-- you can pour liquids but not empty them.
-- That's why in 'classes.i', liquids are defined only to work with the verb 'pour',
-- and the verb 'empty' is disabled for liquids.




SYNTAX 'empty' = 'empty' (obj)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
  AND obj ISA CONTAINER
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.

  pour = pour (obj)
    WHERE obj ISA OBJECT
      ELSE
        IF obj IS NOT plurale
          THEN SAY illegal_parameter_sg OF my_game.
          ELSE SAY illegal_parameter_pl OF my_game.
        END IF.
    AND obj ISA CONTAINER
      ELSE
        IF obj IS NOT plurale
          THEN SAY illegal_parameter_sg OF my_game.
          ELSE SAY illegal_parameter_pl OF my_game.
        END IF.


ADD TO EVERY OBJECT
  VERB 'empty', pour
    CHECK my_game CAN 'empty' AND my_game CAN versare
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS takeable
      ELSE SAY check_obj_takeable OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    AND obj IS open
      ELSE
        IF obj IS NOT plurale
          THEN SAY check_obj_open2_sg OF my_game.
          ELSE SAY check_obj_open2_pl OF my_game.
        END IF.
    DOES

      -- implicit taking:
      IF obj NOT DIRECTLY IN hero
        THEN LOCATE obj IN hero.
          SAY implicit_taking_message OF my_game.
      END IF.
      -- end of implicit taking.

      IF COUNT ISA OBJECT, DIRECTLY IN obj = 0
        THEN "There is nothing in" SAY THE obj. "."
        ELSE
          "You $v the contents of" SAY THE obj.
            IF floor HERE
              THEN "on the floor."
              ELSE "on the ground."
            END IF.
          EMPTY obj AT hero.
      END IF.

  END VERB.
END ADD TO.



-- ==============================================================


----- EMPTY IN  (+ POUR IN)


-- ==============================================================



SYNTAX empty_in = 'empty' (obj) 'in' (cont)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
  AND obj ISA CONTAINER
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
  AND cont ISA OBJECT
    ELSE
      IF cont ISA ACTOR
        THEN SAY illegal_parameter_act OF my_game.
        ELSE SAY illegal_parameter2_there OF my_game.
      END IF.
  AND cont ISA CONTAINER
    ELSE SAY illegal_parameter2_there OF my_game.



pour_in = pour (obj) 'in' (cont)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
  AND obj ISA CONTAINER
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
  AND cont ISA OBJECT
    ELSE
      IF cont ISA ACTOR
        THEN SAY illegal_parameter_act OF my_game.
        ELSE SAY illegal_parameter2_there OF my_game.
      END IF.
  AND cont ISA CONTAINER
    ELSE SAY illegal_parameter2_there OF my_game.




ADD TO EVERY OBJECT
  VERB empty_in, pour_in
    WHEN obj
      CHECK my_game CAN empty_in AND my_game CAN versare_in
        ELSE SAY azione_bloccata OF my_game.
      AND obj <> cont
        ELSE SAY check_obj_not_obj2_in OF my_game.
      AND obj IS takeable
        ELSE SAY check_obj_takeable OF my_game.
      AND cont NOT IN obj
        ELSE SAY check_cont_not_in_obj OF my_game.
      AND CURRENT LOCATION IS lit
        ELSE SAY check_locazione_illuminata OF my_game.
      AND obj IS reachable AND obj IS NOT distant
        ELSE
          IF obj IS NOT reachable
            THEN
              IF obj IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF obj IS distant
            THEN
              IF obj IS NOT plurale
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.
      AND cont IS reachable AND cont IS NOT distant
        ELSE
          IF cont IS NOT reachable
            THEN
              IF cont IS NOT plurale
                THEN SAY ogg2_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg2_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF cont IS distant
            THEN
              IF obj IS NOT plurale
                THEN SAY check_obj2_not_distant_sg OF my_game.
                ELSE SAY check_obj2_not_distant_pl OF my_game.
              END IF.
          END IF.
      AND obj IN allowed OF cont
        ELSE
          IF obj IS NOT plurale
            THEN SAY check_obj_allowed_in_sg OF my_game.
            ELSE SAY check_obj_allowed_in_pl OF my_game.
          END IF.
      AND obj IS open
        ELSE
          IF obj IS NOT plurale
            THEN SAY check_obj_open2_sg OF my_game.
            ELSE SAY check_obj_open2_pl OF my_game.
          END IF.
      AND cont IS open
        ELSE
          IF obj IS NOT plurale
            THEN SAY check_obj2_open_sg OF my_game.
            ELSE SAY check_obj2_open_pl OF my_game.
          END IF.
      DOES

      -- implicit taking:
      IF obj NOT DIRECTLY IN hero
        THEN LOCATE obj IN hero.
          SAY implicit_taking_message OF my_game.
      END IF.
      -- end of implicit taking.

      IF COUNT ISA OBJECT, DIRECTLY IN obj = 0
        THEN "There is nothing in" SAY THE obj. "."
        ELSE
          EMPTY obj IN cont.
          "You $v the contents of" SAY THE obj.
          "in" SAY THE cont. "."
      END IF.
     END VERB.
END ADD TO.



-- ==============================================================


----- EMPTY ON  (+ POUR ON)


-- ==============================================================



SYNTAX empty_on = 'empty' (obj) 'on' (surface)
    WHERE obj ISA OBJECT
      ELSE
        IF obj IS NOT plurale
          THEN SAY illegal_parameter_sg OF my_game.
          ELSE SAY illegal_parameter_pl OF my_game.
        END IF.
    AND obj ISA CONTAINER
      ELSE
        IF obj IS NOT plurale
          THEN SAY illegal_parameter_sg OF my_game.
          ELSE SAY illegal_parameter_pl OF my_game.
        END IF.
    AND surface ISA THING
      ELSE SAY illegal_parameter2_there OF my_game.
    AND surface ISA CONTAINER
      ELSE SAY illegal_parameter2_there OF my_game.

  pour_on = pour (obj) 'on' (surface)
    WHERE obj ISA OBJECT
      ELSE
        IF obj IS NOT plurale
          THEN SAY illegal_parameter_sg OF my_game.
          ELSE SAY illegal_parameter_pl OF my_game.
        END IF.
    AND obj ISA CONTAINER
      ELSE
        IF obj IS NOT plurale
          THEN SAY illegal_parameter_sg OF my_game.
          ELSE SAY illegal_parameter_pl OF my_game.
        END IF.
    AND surface ISA OBJECT
      ELSE SAY illegal_parameter2_there OF my_game.
    AND surface ISA CONTAINER
      ELSE SAY illegal_parameter2_there OF my_game.


ADD TO EVERY THING
  VERB empty_on, pour_on
      WHEN obj
      CHECK my_game CAN empty_on AND my_game CAN versare_su
        ELSE SAY azione_bloccata OF my_game.
      AND obj <> surface
        ELSE SAY check_obj_not_obj2_on OF my_game.
      AND obj IS takeable
        ELSE SAY check_obj_takeable OF my_game.
      AND CURRENT LOCATION IS lit
        ELSE SAY check_locazione_illuminata OF my_game.
      AND obj IS reachable AND obj IS NOT distant
        ELSE
          IF obj IS NOT reachable
            THEN
              IF obj IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF obj IS distant
            THEN
              IF obj IS NOT plurale
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.
      AND surface IS reachable AND surface IS NOT distant
        ELSE
          IF surface IS NOT reachable
            THEN
              IF surface IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF surface IS distant
            THEN
              IF surface IS NOT plurale
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.
      AND obj IS open
        ELSE
          IF obj IS NOT plurale
            THEN SAY check_obj_open2_sg OF my_game.
            ELSE SAY check_obj_open2_pl OF my_game.
          END IF.
      DOES
        -- implicit taking:
        IF obj NOT DIRECTLY IN hero
          THEN LOCATE obj IN hero.
            SAY implicit_taking_message OF my_game.
        END IF.
        -- end of implicit taking.

        IF COUNT ISA OBJECT, DIRECTLY IN obj = 0
          THEN "There is nothing in" SAY THE obj. "."
          ELSE
            IF surface = floor OR surface = ground
              THEN EMPTY obj AT hero.
              ELSE EMPTY obj IN surface.
            END IF.
            "You $v the contents of" SAY THE obj.
            "on" SAY THE surface. "."
        END IF.
  END VERB.
END ADD TO.



-- ==============================================================


----- ENTER


-- ==============================================================


-- In the present version of ALAN, actors cannot enter containers.
-- You can simulate the hero entering a container by making the 'container'
-- a nested location and locating the hero there in the DOES ONLY
-- section of this verb under the instance at hand.


SYNTAX enter = enter (obj)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.



ADD TO EVERY OBJECT
  VERB enter
    CHECK my_game CAN entrare
      ELSE SAY azione_bloccata OF my_game.
    AND hero IS NOT seduto
      ELSE SAY check_hero_not_sitting2 OF my_game.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down2 OF my_game.
      DOES
      IF obj IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.
      "something you can enter."
  END VERB.
END ADD TO.


--- another 'enter' formulation declared to guide players to use the right formulation:


SYNTAX enter_error = enter.


VERB enter_error
  DOES "You must state what you want to enter."
END VERB.



-- ==============================================================


----- EXAMINE (+ look at)


-- ==============================================================


SYNTAX examine = examine (obj)
  WHERE obj ISA THING
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_examine_sg OF my_game.
        ELSE SAY illegal_parameter_examine_pl OF my_game.
      END IF.


  examine = 'look' 'at' (obj).

  examine = 'look' (obj).
    -- note that this formulation is allowed, too


ADD TO EVERY THING
  VERB examine
    CHECK my_game CAN esaminare
      ELSE SAY azione_bloccata OF my_game.
        AND obj IS examinable
          ELSE
        IF obj IS NOT plurale
          THEN SAY check_obj_suitable_examine_sg OF my_game.
          ELSE SAY check_obj_suitable_examine_pl OF my_game.
        END IF.
        AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS NOT scenery
      ELSE
        IF obj IS NOT plurale
          THEN SAY check_obj_not_scenery_sg OF my_game. --> "$+1 non è importante ai fini del gioco."
          ELSE SAY check_obj_not_scenery_pl OF my_game. --> "$+1 non sono importanti ai fini del gioco."
        END IF.
        DOES
      IF obj IS readable
      -- for readable objects, 'examine' behaves just as 'read'
        THEN
          IF text OF obj = ""
            THEN "There is nothing written on" SAY THE obj. "."
            ELSE "You read" SAY THE obj. "."
              IF obj IS NOT plurale
                THEN "It says"
                ELSE "They say"
              END IF.
              """$$" SAY text OF obj. "$$""."
          END IF.
            ELSE
          IF ex OF obj <> ""
            THEN SAY ex OF obj.
          ELSIF obj = hero
            THEN "You notice nothing unusual about yourself."
            --#i7: "Non [trovi] nulla di particolare [inp the noun]."
            --#i6: "Esamini ", (the) x1, ", ma non noti niente di speciale."
            ELSE "Esamini" SAY THE obj. ", ma non noti niente di speciale."
            -- ELSE "You notice nothing unusual about" SAY THE obj. "."
          END IF.
      END IF.
  END VERB.
END ADD TO.


SYNONYMS
  'check', inspect, observe, x = examine.



-- ==============================================================


----- EXIT


-- ==============================================================

-- In the present version of ALAN, actors are not allowed inside containers.

-- You can simulate the hero exiting something by modifying the default
-- response below in the DOES ONLY part of this verb under the instance at hand.


SYNTAX 'exit' = 'exit' (obj)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.



ADD TO EVERY OBJECT
  VERB 'exit'
    CHECK my_game CAN 'exit'
      ELSE SAY azione_bloccata OF my_game.
    DOES
      IF obj IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.
      "something you can exit."
    END VERB.
END ADD TO.


--- another 'exit' formulation added to guide players to use the right formulation:


SYNTAX exit_error = 'exit'.


VERB exit_error
  DOES
    "You must state what you want to exit."
END VERB.



-- ==============================================================


----- EXTINGUISH  (+ put out)


-- ==============================================================



SYNTAX extinguish = extinguish (obj)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.

  extinguish = put 'out' (obj).

  extinguish = put (obj) 'out'.


ADD TO EVERY OBJECT
  VERB extinguish
    CHECK my_game CAN extinguish
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "estinguere."
          ELSE SAY ogg1_inadatto_pl OF my_game. "estinguere."
        END IF.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
      IF obj IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.
      "on fire."
    END VERB.
END ADD TO.


SYNONYMS quench = extinguish.



-- ==============================================================


----- FILL


-- ==============================================================


SYNTAX fill = fill (cont)
  WHERE cont ISA OBJECT
    ELSE
      IF cont IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
  AND cont ISA CONTAINER
    ELSE
      IF cont IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
  VERB fill
    CHECK my_game CAN fill
      ELSE SAY azione_bloccata OF my_game.
    AND cont IS examinable
      ELSE
        IF cont IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "riempire."
          ELSE SAY ogg1_inadatto_pl OF my_game. "riempire."
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    DOES
      "You have to say what you want to fill" SAY THE cont. "with."
    END VERB.
END ADD TO.



-- ==============================================================


----- FILL WITH


-- ==============================================================


SYNTAX fill_with = fill (cont) 'with' (substance)
  WHERE cont ISA OBJECT
    ELSE
      IF cont IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
  AND cont ISA CONTAINER
    ELSE
      IF cont IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
  AND substance ISA OBJECT
    ELSE
      IF substance IS NOT plurale
        THEN SAY illegal_parameter2_with_sg OF my_game.
        ELSE SAY illegal_parameter2_with_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
  VERB fill_with
        WHEN cont
      CHECK my_game CAN fill_with
        ELSE SAY azione_bloccata OF my_game.
      AND cont <> substance
        ELSE SAY check_obj_not_obj2_with OF my_game.
      AND substance IS examinable
        ELSE
          IF substance IS NOT plurale
            THEN SAY check_obj2_suitable_with_sg OF my_game.
            ELSE SAY check_obj2_suitable_with_pl OF my_game.
          END IF.
      AND CURRENT LOCATION IS lit
        ELSE SAY check_locazione_illuminata OF my_game.
      AND substance NOT IN cont
        ELSE SAY check_obj_not_in_cont2 OF my_game.
      AND substance IS takeable
        ELSE SAY check_obj2_takeable1 OF my_game.
      AND cont IS reachable AND cont IS NOT distant
        ELSE
          IF cont IS NOT reachable
            THEN
              IF cont IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF cont IS distant
            THEN
              IF cont IS NOT plurale
                THEN SAY check_obj_not_distant_sg OF my_game. "."
                ELSE SAY check_obj_not_distant_pl OF my_game. "."
              END IF.
          END IF.
      AND substance IS reachable AND substance IS NOT distant
        ELSE
          IF substance IS NOT reachable
            THEN
              IF substance IS NOT plurale
                THEN SAY ogg2_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg2_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF substance IS distant
            THEN
              IF substance IS NOT plurale
                THEN SAY check_obj2_not_distant_sg OF my_game. "."
                ELSE SAY check_obj2_not_distant_pl OF my_game. "."
              END IF.
          END IF.
      DOES
        "You can't fill" SAY THE cont. "with" SAY THE substance. "."
        -- allow the action at individual substances only
  END VERB.
END ADD TO.



-- ==============================================================


----- FIND


-- ==============================================================


SYNTAX
  find = find (obj)!
    WHERE obj ISA THING
      ELSE
        IF obj IS NOT plurale
          THEN SAY illegal_parameter_sg OF my_game.
          ELSE SAY illegal_parameter_pl OF my_game.
        END IF.


ADD TO EVERY THING
  VERB find
    CHECK my_game CAN trovare
      ELSE SAY azione_bloccata OF my_game.
    AND obj <> hero
      ELSE SAY check_obj_not_hero4 OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj NOT AT hero
      ELSE
        IF obj IS NOT plurale
          THEN SAY check_obj_not_at_hero_sg OF my_game.
          ELSE SAY check_obj_not_at_hero_pl OF my_game.
        END IF.
    DOES
      "You'll have to $v it yourself."
  END VERB.
END ADD TO.


SYNONYMS 'locate' = find.



-- ==============================================================


----- FIRE


-- ==============================================================


SYNTAX fire = fire (weapon)
  WHERE weapon ISA WEAPON
    ELSE
      IF weapon IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY WEAPON
  VERB fire
    CHECK my_game CAN fire
      ELSE SAY azione_bloccata OF my_game.
    AND weapon IS fireable
      ELSE
        IF weapon IS NOT plurale
          THEN SAY check_obj_suitable_sg OF my_game.
          ELSE SAY check_obj_suitable_pl OF my_game.
        END IF.

  AND CURRENT LOCATION IS lit
    ELSE SAY check_locazione_illuminata OF my_game.
  DOES
    "You fire" SAY THE weapon. "into the air."
  END VERB.
END ADD TO.



-- ==============================================================


----- FIRE AT


-- ==============================================================


SYNTAX fire_at = fire (weapon) 'at' (target)
  WHERE weapon ISA WEAPON
    ELSE
      IF weapon IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
  AND target ISA THING
    ELSE SAY illegal_parameter_at OF my_game.



ADD TO EVERY WEAPON
  VERB fire_at
    WHEN weapon
      CHECK my_game CAN fire_at
        ELSE SAY azione_bloccata OF my_game.
      AND weapon IS fireable
        ELSE
          IF weapon IS NOT plurale
            THEN SAY check_obj_suitable_sg OF my_game.
            ELSE SAY check_obj_suitable_pl OF my_game.
          END IF.
      AND target IS examinable
        ELSE SAY check_obj_suitable_at OF my_game.
      AND weapon <> target
        ELSE SAY check_obj_not_obj2_at OF my_game.
      AND target <> hero
        ELSE SAY check_obj_not_hero2 OF my_game.
      AND target IS NOT distant
        -- note that it is possible to fire at a "not reachable" target
        ELSE
          IF target IS NOT plurale
            THEN SAY check_obj_not_distant_sg OF my_game.
            ELSE SAY check_obj_not_distant_pl OF my_game.
          END IF.
      AND CURRENT LOCATION IS lit
        ELSE SAY check_locazione_illuminata OF my_game.
      DOES
        "Resorting to violence is not the solution here."
  END VERB.
END ADD TO.


-- another formulation added:


SYNTAX fire_at_error = fire 'at' (target)
  WHERE target ISA THING
    ELSE
      IF target IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY THING
  VERB fire_at_error
    CHECK COUNT ISA WEAPON, IS fireable, DIRECTLY IN hero > 0
      ELSE SAY check_count_weapon_in_hero OF my_game.
    AND target <> hero
      ELSE SAY check_obj_not_hero2 OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    DOES
      "Resorting to violence is not the solution here."
END VERB.
END ADD TO.



-- ==============================================================


----- FIX (mend, repair)


-- ==============================================================


SYNTAX fix = fix (obj)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
  VERB fix
    CHECK my_game CAN fix
      ELSE SAY azione_bloccata OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS broken
      ELSE
        IF obj IS NOT plurale
          THEN SAY check_obj_broken_sg OF my_game.
          ELSE SAY check_obj_broken_pl OF my_game.
        END IF.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
      "Please be more specific. How do you intend to fix it?"
  END VERB.
END ADD TO.


SYNONYMS mend, repair = fix.



-- ==============================================================


----- FOLLOW


-- ==============================================================


SYNTAX follow = follow (act)!
  WHERE act ISA ACTOR
    ELSE
      IF act IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY THING
  VERB follow
    CHECK my_game CAN seguire
      ELSE SAY azione_bloccata OF my_game.
    AND act <> hero
      ELSE SAY check_obj_not_hero1 OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND act NOT AT hero
      ELSE
        IF act IS NOT plurale
          THEN SAY check_obj_not_at_hero_sg OF my_game.
          ELSE SAY check_obj_not_at_hero_pl OF my_game.
        END IF.
    AND hero IS NOT seduto
      ELSE SAY check_hero_not_sitting2 OF my_game.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down2 OF my_game.
    AND act NEAR hero
      ELSE SAY check_act_near_hero OF my_game.
    DOES
      LOCATE hero AT act.
      "You follow" SAY THE act. "."
    END VERB.
END ADD TO.



-- ==============================================================


----- FREE (+ release)


-- ==============================================================


SYNTAX free = free (obj)
  WHERE obj ISA THING
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY THING
  VERB free
    CHECK my_game CAN liberare
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "liberare."
          ELSE SAY ogg1_inadatto_pl OF my_game. "liberare."
        END IF.
    AND obj <> hero
      ELSE SAY check_obj_not_hero5 OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
      IF obj IS NOT plurale
        THEN "That doesn't need to be $vd."
        ELSE "Those don't need to be $vd."
      END IF.
  END VERB.
END ADD TO.


SYNONYMS release = free.



-- ==============================================================


------ GET OFF


-- ==============================================================


SYNTAX get_off = get off (surface)
  WHERE surface ISA SUPPORTER
    ELSE
      IF surface IS NOT plurale
        THEN SAY illegal_parameter_off_sg OF my_game.
        ELSE SAY illegal_parameter_off_pl OF my_game.
      END IF.

ADD TO EVERY SUPPORTER
  VERB get_off
    CHECK my_game CAN get_off
      ELSE SAY azione_bloccata OF my_game.
    DOES
      IF hero IS seduto OR hero IS sdraiato
        THEN "You get off" SAY THE surface. "."
          MAKE hero NOT sdraiato.
          MAKE hero NOT seduto.
        ELSE "You're standing up already."
      END IF.
    END VERB.
END ADD TO.


-- ==============================================================


------ GET UP


-- ==============================================================


SYNTAX get_up = get up.


VERB get_up
  CHECK my_game CAN get_up
    ELSE SAY azione_bloccata OF my_game.
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
END VERB.





-- ==============================================================


----- HELP -> see ABOUT


-- ==============================================================





-- ==============================================================


----- HINT (+ hints)


-- ==============================================================


SYNTAX hint = hint.


VERB hint
  CHECK my_game CAN hint
    ELSE SAY azione_bloccata OF my_game.
  DOES
    "Unfortunately hints are not available in this game."
END VERB.


SYNONYMS
  hints = hint.


-- ==============================================================


----- JUMP


-- ==============================================================


SYNTAX jump = jump.


VERB jump
  CHECK my_game CAN saltare
    ELSE SAY azione_bloccata OF my_game.
  AND hero IS NOT seduto
    ELSE SAY check_hero_not_sitting1 OF my_game.
  AND hero IS NOT sdraiato
    ELSE SAY check_hero_not_lying_down1 OF my_game.
  DOES
    "You jump on the spot, to no avail."
END VERB.



-- ==============================================================


----- JUMP IN


-- ==============================================================


SYNTAX jump_in = jump 'in' (cont)
  WHERE cont ISA OBJECT
    ELSE
      IF cont IS NOT plurale
        THEN SAY illegal_parameter_in_sg OF my_game.
        ELSE SAY illegal_parameter_in_pl OF my_game.
      END IF.
  AND cont ISA CONTAINER
    ELSE
      IF cont IS NOT plurale
        THEN SAY illegal_parameter_in_sg OF my_game.
        ELSE SAY illegal_parameter_in_pl OF my_game.
      END IF.



ADD TO EVERY OBJECT
  VERB jump_in
    CHECK my_game CAN saltare_in
      ELSE SAY azione_bloccata OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND cont IS reachable AND cont IS NOT distant
      ELSE
        IF cont IS NOT reachable
          THEN
            IF cont IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF cont IS distant
          THEN
            IF cont IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    AND hero IS NOT seduto
      ELSE SAY check_hero_not_sitting1 OF my_game.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down1 OF my_game.
    DOES
      IF cont IS NOT plurale
        THEN "That's not something you can jump into."
        ELSE "Those are not something you can jump into."
      END IF.
    END VERB.
END ADD TO.



-- ==============================================================


----- JUMP ON


-- ==============================================================


SYNTAX jump_on = jump 'on' (surface)
  WHERE surface ISA SUPPORTER
    ELSE
      IF surface IS NOT plurale
        THEN SAY illegal_parameter_on_sg OF my_game.
        ELSE SAY illegal_parameter_on_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
  VERB jump_on
    CHECK my_game CAN saltare_su
      ELSE SAY azione_bloccata OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND hero IS NOT seduto
      ELSE SAY check_hero_not_sitting1 OF my_game.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down1 OF my_game.
    DOES
      IF surface IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.
      "something you can jump onto."
    END VERB.
END ADD TO.



-- =============================================================


----- KICK


-- =============================================================


SYNTAX kick = kick (target)
      WHERE target ISA THING
        ELSE
      IF target IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY THING
  VERB kick
    CHECK my_game CAN kick
      ELSE SAY azione_bloccata OF my_game.
    AND target IS examinable
      ELSE
        IF target IS NOT plurale
          THEN SAY check_obj_suitable_sg OF my_game.
          ELSE SAY check_obj_suitable_pl OF my_game.
        END IF.
    AND target <> hero
      ELSE SAY check_obj_not_hero1 OF my_game.
    AND target NOT IN hero
      ELSE SAY check_obj_not_in_hero1 OF my_game.
    AND target NOT IN worn
      ELSE SAY check_obj_not_in_worn2 OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND target IS reachable AND target IS NOT distant
      ELSE
        IF target IS NOT reachable
          THEN
            IF target IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF target IS distant
          THEN
            IF target IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
        DOES
          "La violenza non è la giusta risposta a questo." --> taken from i6
          -- "Resorting to brute force is not the solution here."
  END VERB.
END ADD TO.



-- ==============================================================


-- KILL (+ murder)


-- ==============================================================


SYNTAX kill = kill (victim)
  WHERE victim ISA ACTOR
    ELSE
      IF victim IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY ACTOR
  VERB kill
    CHECK my_game CAN uccidere
      ELSE SAY azione_bloccata OF my_game.
    AND victim IS examinable
      ELSE
        IF victim IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "uccidere."
          ELSE SAY ogg1_inadatto_pl OF my_game. "uccidere."
        END IF.
    AND victim <> hero
      ELSE SAY check_obj_not_hero2 OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    DOES "You have to state what you want to kill" SAY THE victim. "with."
    END VERB.
END ADD TO.



-- ==============================================================


-- KILL WITH


-- ==============================================================


SYNTAX kill_with = kill (victim) 'with' (weapon)
  WHERE victim ISA ACTOR
    ELSE
      IF victim IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
  AND weapon ISA WEAPON
    ELSE
      IF weapon IS NOT plurale
        THEN SAY illegal_parameter_with_sg OF my_game.
        ELSE SAY illegal_parameter_with_pl OF my_game.
      END IF.


ADD TO EVERY ACTOR
  VERB kill_with
    WHEN victim
      CHECK my_game CAN uccidere_con
        ELSE SAY azione_bloccata OF my_game.
      AND victim <> hero
        ELSE SAY check_obj_not_hero2 OF my_game.
      AND weapon IN hero
        ELSE SAY check_obj2_in_hero OF my_game.
      AND CURRENT LOCATION IS lit
        ELSE SAY check_locazione_illuminata OF my_game.
      AND victim IS NOT distant
        ELSE
          IF victim IS NOT plurale
            THEN SAY check_obj_not_distant_sg OF my_game.
            ELSE SAY check_obj_not_distant_pl OF my_game.
          END IF.
      DOES
        "That would be needlessly brutal."
    END VERB.
END ADD TO.



-- ==============================================================


----- KISS (+ hug, embrace)


-- ==============================================================


SYNTAX kiss = kiss (obj)
  WHERE obj ISA THING
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY THING
  VERB kiss
    CHECK my_game CAN baciare
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "baciare."
          ELSE SAY ogg1_inadatto_pl OF my_game. "baciare."
        END IF.
    AND obj <> hero
      ELSE SAY check_obj_not_hero6 OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
      IF obj ISA ACTOR
        THEN SAY THE obj. "avoids your advances."
        ELSE
          "Farlo non servirebbe a nulla."
          -- "Nothing would be achieved by that."
      END IF.
    END VERB.
END ADD TO.


SYNONYMS hug, embrace = kiss.



-- ==============================================================


----- KNOCK


-- ==============================================================


SYNTAX knock = knock 'on' (obj)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_on_sg OF my_game.
        ELSE SAY illegal_parameter_on_pl OF my_game.
      END IF.

       knock = knock (obj).


ADD TO EVERY OBJECT
  VERB knock
    CHECK my_game CAN knock
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          THEN SAY check_obj_suitable_on_sg OF my_game.
          ELSE SAY check_obj_suitable_on_pl OF my_game.
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
      "You knock on" SAY THE obj. "$$. Nothing happens."
    END VERB.
END ADD TO.


--- another 'knock' formulation added to guide players to use the right phrasing:


SYNTAX knock_error = knock.


VERB knock_error
  DOES
    "Please use the formulation KNOCK ON SOMETHING to knock on something."
END VERB.



-- ==============================================================


----- LIE DOWN


-- ==============================================================


SYNTAX lie_down = lie 'down'.

    lie_down = lie.


VERB lie_down
  CHECK my_game CAN lie_down
    ELSE SAY azione_bloccata OF my_game.
  AND hero IS NOT sdraiato
    ELSE SAY check_hero_not_lying_down4 OF my_game.
  DOES
    "There's no need to lie down right now."
    -- If you need this to work, insert the following lines instead of the above:
        -- DOES "You lie down."
        -- MAKE hero lying_down.
        -- MAKE hero NOT sitting_down.
END VERB.


-- When the hero is sitting or lying down, it will be impossible for her/him to
-- perform certain actions, as numerous verbs in the library have checks for this.
-- For example, if the hero is lying down and the player types 'attack [something]',
-- the response will be "It will be difficult to attack anything while
-- lying down."

-- Also, it is often essential to make certain objects NOT reachable when you are sitting
-- or lying down.



-- ==============================================================


----- LIE IN


-- ==============================================================


SYNTAX lie_in = lie 'in' (cont)
  WHERE cont ISA OBJECT
    ELSE
      IF cont IS NOT plurale
        THEN SAY illegal_parameter_in_sg OF my_game.
        ELSE SAY illegal_parameter_in_pl OF my_game.
      END IF.
  AND cont ISA CONTAINER
    ELSE
      IF cont IS NOT plurale
        THEN SAY illegal_parameter_in_sg OF my_game.
        ELSE SAY illegal_parameter_in_pl OF my_game.
      END IF.

       lie_in = lie 'down' 'in' (cont).


ADD TO EVERY OBJECT
  VERB lie_in
    CHECK my_game CAN lie_in
      ELSE SAY azione_bloccata OF my_game.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down4 OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND cont IS reachable AND cont IS NOT distant
      ELSE
        IF cont IS NOT reachable
          THEN
            IF cont IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF cont IS distant
          THEN
            IF cont IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
      "There's no need to lie down in" SAY THE cont. "."
      -- If you need this to work, make a nested location
      -- (for example THE in_bed ISA LOCATION AT bedroom; etc.)
      -- Remember to: MAKE hero lying_down.
      -- Presently, an actor cannot be located inside a container object.
  END VERB.
END ADD TO.


-- When the hero is sitting or lying down, it will be impossible for her/him to
-- perform certain actions, as numerous verbs in the library have checks for this.
-- For example, if the hero is lying down and the player types 'attack [something]',
-- the response will be "It will be difficult to attack anything while
-- lying down."

-- Also, it is often essential to make certain objects NOT reachable when you are sitting
-- or lying down.



-- ==============================================================


----- LIE ON


-- ==============================================================


SYNTAX lie_on = lie 'on' (surface)
  WHERE surface ISA SUPPORTER
    ELSE
      IF surface IS NOT plurale
        THEN SAY illegal_parameter_on_sg OF my_game.
        ELSE SAY illegal_parameter_on_pl OF my_game.
      END IF.

   lie_on = lie 'down' 'on' (surface).


ADD TO EVERY OBJECT
  VERB lie_on
    CHECK my_game CAN lie_on
      ELSE SAY azione_bloccata OF my_game.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down4 OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND surface IS reachable AND surface IS NOT distant
      ELSE
        IF surface IS NOT reachable
          THEN
            IF surface IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF surface IS distant
          THEN
            IF surface IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
      "There's no need to lie down on" SAY THE surface. "."
      -- If you need this to work, make a nested location
      -- (for example THE on_bed ISA LOCATION AT bedroom; etc.)
      -- Remember to: MAKE hero lying_down.
                -- Presently, an actor cannot be located inside a container object
      -- or on a supporter.
    END VERB.
END ADD TO.



-- When the hero is sitting or lying down, it will be impossible for her/him to
-- perform certain actions, as numerous verbs in the library have checks for this.
-- For example, if the hero is lying down and the player types 'attack [something]',
-- the response will be "It will be difficult to attack anything while
-- lying down."

-- Also, it is often essential to make certain objects NOT reachable when you are sitting
-- or lying down.



-- ==============================================================


----- LIFT


-- ==============================================================


SYNTAX lift = lift (obj)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
  VERB lift
    CHECK my_game CAN lift
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "sollevare." --# alzare?
          ELSE SAY ogg1_inadatto_pl OF my_game. "sollevare."
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj NOT IN hero
      ELSE SAY check_obj_not_in_hero1 OF my_game.
    AND obj IS movable
      ELSE SAY check_obj_movable OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    AND weight OF obj < 50
      ELSE
        IF obj IS NOT plurale
          THEN SAY check_obj_weight_sg OF my_game.
          ELSE SAY check_obj_weight_pl OF my_game.
        END IF.
  DOES
    "That wouldn't accomplish anything."
  END VERB.
END ADD TO.


SYNONYMS raise = lift.


-- ==============================================================


----- LIGHT (+ lit)


-- ==============================================================


SYNTAX light = light (obj)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
  VERB light
  CHECK my_game CAN light
      ELSE SAY azione_bloccata OF my_game.
  AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          THEN SAY check_obj_suitable_sg OF my_game.
          ELSE SAY check_obj_suitable_pl OF my_game.
        END IF.
  AND obj IS reachable AND obj IS NOT distant
    ELSE
      IF obj IS NOT reachable
        THEN
          IF obj IS NOT plurale
            THEN SAY ogg1_non_raggiungibile_sg OF my_game.
            ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
          END IF.
      ELSIF obj IS distant
        THEN
          IF obj IS NOT plurale
            THEN SAY check_obj_not_distant_sg OF my_game.
            ELSE SAY check_obj_not_distant_pl OF my_game.
          END IF.
      END IF.
  DOES
    IF obj IS NOT plurale
      THEN "That's not"
      ELSE "Those are not"
    END IF.
    "something you can $v."
  END VERB.
END ADD TO.


SYNONYMS lit = light.



-- ==============================================================


----- LISTEN


-- ==============================================================


SYNTAX listen0 = listen.


VERB listen0
  CHECK my_game CAN listen0
    ELSE SAY azione_bloccata OF my_game.
  DOES
    "You hear nothing unusual."
END VERB.



-- ==============================================================


----- LISTEN TO


-- ==============================================================


SYNTAX listen = listen 'to' (obj)!
  WHERE obj ISA THING
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_to_sg OF my_game.
        ELSE SAY illegal_parameter_to_pl OF my_game.
      END IF.


ADD TO EVERY THING
  VERB listen
    CHECK my_game CAN listen
      ELSE SAY azione_bloccata OF my_game.
    AND obj <> hero
      ELSE SAY check_obj_not_hero1 OF my_game.
    DOES
      IF obj AT hero
        THEN
          IF obj ISA ACTOR
            THEN SAY THE obj.
              IF obj IS NOT plurale
                THEN "is"
                ELSE "are"
              END IF.
              "not talking right now."
            ELSE "You hear nothing unusual."
          END IF.
      ELSIF obj NEAR hero
        THEN "You can't hear" SAY THE obj. "very well from here."
      END IF.
    END VERB.
END ADD TO.



-- ==============================================================


----- LOCK


-- ==============================================================


SYNTAX lock = lock (obj)
      WHERE obj ISA OBJECT
        ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
  VERB lock
    CHECK my_game CAN lock
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS lockable
          ELSE
        IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "bloccare."
          ELSE SAY ogg1_inadatto_pl OF my_game. "bloccare."
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    AND obj IS NOT locked
          ELSE
        IF obj IS NOT plurale
          THEN SAY check_obj_not_locked_sg OF my_game.
          ELSE SAY check_obj_not_locked_pl OF my_game.
      END IF.
  DOES
    IF matching_key OF obj IN hero
      THEN MAKE obj locked.
        "(with" SAY THE matching_key OF obj. "$$)$n"
        "You"

        IF obj IS open
          THEN "close and"
            MAKE obj NOT open.
        END IF.

        "lock" SAY THE obj. "."
          ELSE  "You have to state what you want to lock" SAY THE obj. "with."
    END IF.

  END VERB.
END ADD TO.



-- ==============================================================


----- LOCK WITH


-- ==============================================================


SYNTAX lock_with = lock (obj) 'with' (key)
  WHERE obj ISA OBJECT
      ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
  AND key ISA OBJECT
      ELSE
      IF key IS NOT plurale
        THEN SAY illegal_parameter2_with_sg OF my_game.
        ELSE SAY illegal_parameter2_with_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
    VERB lock_with
        WHEN obj
      CHECK my_game CAN lock_with
        ELSE SAY azione_bloccata OF my_game.
          AND obj IS lockable
        ELSE
          IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "bloccare."
          ELSE SAY ogg1_inadatto_pl OF my_game. "bloccare."
          END IF.
      AND key IS examinable
        ELSE
          IF obj IS NOT plurale
            THEN SAY check_obj2_suitable_with_sg OF my_game.
            ELSE SAY check_obj2_suitable_with_pl OF my_game.
          END IF.
      AND obj <> key
        ELSE SAY check_obj_not_obj2_with OF my_game.
          AND CURRENT LOCATION IS lit
        ELSE SAY check_locazione_illuminata OF my_game.
          AND obj IS NOT locked
        ELSE
          IF obj IS NOT plurale
            THEN SAY check_obj_not_locked_sg OF my_game.
            ELSE SAY check_obj_not_locked_pl OF my_game.
          END IF.
          AND obj IS reachable AND obj IS NOT distant
        ELSE
          IF obj IS NOT reachable
            THEN
              IF obj IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF obj IS distant
            THEN
              IF obj IS NOT plurale
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.
          AND key IN hero
        ELSE SAY check_obj2_in_hero OF my_game.
          AND key = matching_key OF obj
        ELSE SAY check_door_matching_key OF my_game.
         DOES
        MAKE obj locked. "You"

        IF obj IS open
          THEN "close and"
            MAKE obj NOT open.
        END IF.

        "lock" SAY THE obj. "with" SAY THE key. "."
    END VERB.
END ADD TO.



-- ==============================================================


----- LOOK


-- ==============================================================


SYNTAX 'look' = 'look'.


VERB 'look'
  CHECK my_game CAN 'look'
    ELSE SAY azione_bloccata OF my_game.
  DOES
    INCREASE described OF CURRENT LOCATION.
    -- see 'locations.i', attribute 'described'.
    LOOK.
END VERB.


SYNONYMS l = 'look'.



-- ==============================================================


----- LOOK AT -> see EXAMINE


-- ==============================================================





-- ==============================================================


----- LOOK BEHIND


-- ==============================================================


SYNTAX look_behind = 'look' behind (bulk)
  WHERE bulk ISA THING
    ELSE SAY illegal_parameter_there OF my_game.


ADD TO EVERY THING
  VERB look_behind
    CHECK my_game CAN look_behind
      ELSE SAY azione_bloccata OF my_game.
    AND bulk IS examinable
      ELSE SAY check_obj_suitable_there OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND bulk <> hero
      ELSE SAY check_obj_not_hero7 OF my_game.
    DOES
      IF bulk IN hero
        THEN "You turn" SAY THE bulk. "in your hands but notice nothing unusual about it."
        ELSE "You notice nothing unusual behind" SAY THE bulk. "."
      END IF.
    END VERB.
END ADD TO.



-- ==============================================================


----- LOOK IN


-- ==============================================================


SYNTAX
  look_in = 'look' 'in' (cont)
    WHERE cont ISA OBJECT
      ELSE SAY illegal_parameter_there OF my_game.
    AND cont ISA CONTAINER
      ELSE SAY illegal_parameter_there OF my_game.


ADD TO EVERY OBJECT
  VERB look_in
    CHECK my_game CAN look_in
      ELSE SAY azione_bloccata OF my_game.
    AND cont IS examinable
      ELSE SAY check_obj_suitable_there OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND cont IS open
      ELSE
        IF cont IS NOT plurale
          THEN SAY check_obj_open2_sg OF my_game.
          ELSE SAY check_obj_open2_pl OF my_game.
        END IF.
    DOES
      LIST cont.
    END VERB.
END ADD TO.



-- ==============================================================


----- LOOK OUT OF


-- ==============================================================


SYNTAX look_out_of = 'look' 'out' 'of' (obj)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_look_out_sg OF my_game.
        ELSE SAY illegal_parameter_look_out_pl OF my_game.
      END IF.



ADD TO EVERY OBJECT
  VERB look_out_of
    CHECK my_game CAN look_out_of
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          THEN SAY check_obj_suitable_look_out_sg OF my_game.
          ELSE SAY check_obj_suitable_look_out_pl OF my_game.
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    DOES
      IF obj IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.
      "something you can look out of."
    END VERB.
END ADD TO.



-- ==============================================================


----- LOOK THROUGH


-- ==============================================================


SYNTAX look_through = 'look' through (bulk)
  WHERE bulk ISA OBJECT
    ELSE SAY illegal_parameter_look_through OF my_game.



ADD TO EVERY OBJECT
  VERB look_through
    CHECK my_game CAN look_through
      ELSE SAY azione_bloccata OF my_game.
    AND bulk IS examinable
      ELSE SAY check_obj_suitable_look_through OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    DOES
      "You can't see through" SAY THE bulk. "."
  END VERB.
END ADD TO.



-- ==============================================================


----- LOOK UNDER


-- ==============================================================


SYNTAX look_under = 'look' under (bulk)
  WHERE bulk ISA THING
    ELSE SAY illegal_parameter_there OF my_game.



ADD TO EVERY THING
  VERB look_under
    CHECK my_game CAN look_under
      ELSE SAY azione_bloccata OF my_game.
    AND bulk IS examinable
      ELSE SAY check_obj_suitable_there OF my_game.
    AND bulk <> hero
      ELSE SAY check_obj_not_hero8 OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    DOES
      "You notice nothing unusual under" SAY THE bulk. "."
    END VERB.
END ADD TO.



-- ==============================================================


----- LOOK UP   (-> see also CONSULT)


-- ==============================================================


SYNTAX look_up = 'look' up.


VERB look_up
  CHECK my_game CAN look_up
    ELSE SAY azione_bloccata OF my_game.
  DOES "Looking up, you see nothing unusual."
END VERB.



-- ==============================================================


----- NO


-- ==============================================================


SYNTAX 'no' = 'no'.


VERB 'no'
  CHECK my_game CAN 'no'
    ELSE SAY azione_bloccata OF my_game.
  DOES "Really?"
END VERB.



-- ==============================================================


----- NOTIFY


-- ==============================================================


-- Thanks to Steve Griffiths whose 'Score notification' sample was used
-- in declaring this verb.



SYNTAX notify = notify.

   notify_on = notify 'on'.
    -- The instructions tell the player that mere 'notify'
    -- is enough, but these two verbs are implemented
   notify_off = notify 'off'.
    -- In case (s)he adds the prepositions to the end anyway.


VERB notify
  CHECK my_game CAN notify
    ELSE SAY azione_bloccata OF my_game.
  DOES
    IF my_game HAS notify_turned_on
      THEN MAKE my_game NOT notify_turned_on.
        "Score notification is now disabled. (You can turn it back on
        using the NOTIFY command again.)"
      ELSE MAKE my_game notify_turned_on. "Score notification is now enabled.
        (You can turn it off using the NOTIFY command again.)"
    END IF.
END VERB.


VERB notify_on
  CHECK my_game CAN notify_on
    ELSE SAY azione_bloccata OF my_game.
  DOES
    IF my_game HAS notify_turned_on
      THEN "Score notification is already enabled."
      ELSE MAKE my_game notify_turned_on.
        "Score notification is now enabled.
        (You can turn it off using the NOTIFY command again.)"
    END IF.
END VERB.


VERB notify_off
  CHECK my_game CAN notify_off
    ELSE SAY azione_bloccata OF my_game.
  DOES
    IF my_game HAS notify_turned_on
      THEN MAKE my_game NOT notify_turned_on.
        "Score notification is now disabled. (You can turn it back on
        using the NOTIFY command again.)"
      ELSE "Score notification is already disabled."
    END IF.
END VERB.


-- The 'notify' verb allows the players to disable the score change
-- messages. (Some players find such messages annoying.)
-- The verb toggles the hero's 'notify_on' attribute on and off. That
-- attribute is checked by the 'checkscore' event to determine whether
-- to display the score msg or not.

-- The following event is run each turn to check if the game score is greater than
-- the last recorded score (which is stored in the Hero's 'oldscore'
-- attribute). If the score is greater, then the 'Score has gone up...'
-- text is displayed (as long as the player hasn't disabled it by using the
-- 'notify' verb - which sets 'notify_on' to off
-- - i.e. the hero 'IS NOT notify_on'.)

-- NOTE: The ALAN scoring system records the game score in a thing called
-- score. It isn't called score OF anything; its just 'score'.

-- NOTE: This event assumes score can only increase, if score can go
-- down then you would need to modify this code a bit.


EVENT check_score
  IF oldscore OF my_game < score
    THEN
      IF my_game HAS notify_turned_on
        THEN
          -- ie: the player wants to see score msgs
          "$p(Your score has just gone up by" SAY (score - oldscore OF my_game).
          IF (score - oldscore OF my_game) = 1
            THEN "point.)"
            ELSE "points.)"
          END IF.
          -- this msg only displayed the first time player is notified
          -- of a score change
          IF my_game HAS NOT seen_notify
            THEN MAKE my_game seen_notify.
              "$p(You can use the NOTIFY command to disable score change messages.)"
          END IF.
      END IF.

      SET oldscore OF my_game TO score.
  END IF.
  -- run the 'check_score' event again next turn:
  SCHEDULE check_score AT hero AFTER 1.
END EVENT.




-- ==============================================================


----- OPEN


-- ==============================================================


SYNTAX open = open (obj)
      WHERE obj ISA OBJECT
        ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
  VERB open
    CHECK my_game CAN aprire
      ELSE SAY azione_bloccata OF my_game.
        AND obj IS openable
          ELSE
        IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "aprire."
          ELSE SAY ogg1_inadatto_pl OF my_game. "aprire."
        END IF.
        AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
        AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
        AND obj IS NOT open
          ELSE
        IF obj IS NOT plurale
          THEN SAY check_obj_not_open_sg OF my_game.
          ELSE SAY check_obj_not_open_pl OF my_game.
        END IF.
        DOES
      IF obj IS locked
        THEN
          IF matching_key OF obj IN hero
            THEN MAKE obj NOT locked.
              MAKE obj open.
              "(with" SAY THE matching_key OF obj. "$$)
              $nYou unlock and open" SAY THE obj. "."
            ELSE SAY THE obj. "appears to be locked."
          END IF.
      ELSIF obj IS NOT locked
        THEN MAKE obj open.
        "You open" SAY THE obj. "."
      END IF.
  END VERB.
END ADD TO.



-- ==============================================================


----- OPEN WITH


-- ==============================================================


SYNTAX open_with = open (obj) 'with' (instr)
      WHERE obj ISA OBJECT
        ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
      AND instr ISA OBJECT
        ELSE
      IF instr IS NOT plurale
        THEN SAY illegal_parameter2_with_sg OF my_game.
        ELSE SAY illegal_parameter2_with_pl OF my_game.
      END IF.



ADD TO EVERY OBJECT
  VERB open_with
        WHEN obj
      CHECK my_game CAN aprire_con
        ELSE SAY azione_bloccata OF my_game.
          AND obj IS openable
          ELSE
          IF obj IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY ogg1_inadatto_sg OF my_game. "aprire."
            ELSE SAY ogg1_inadatto_pl OF my_game. "aprire."
          END IF.
      AND instr IS examinable
        ELSE
          IF obj IS NOT plurale
            THEN SAY check_obj2_suitable_with_sg OF my_game.
            ELSE SAY check_obj2_suitable_with_pl OF my_game.
          END IF.
      AND obj <> instr
        ELSE SAY check_obj_not_obj2_with OF my_game.
          AND CURRENT LOCATION IS lit
        ELSE SAY check_locazione_illuminata OF my_game.
          AND obj IS reachable AND obj IS NOT distant
        ELSE
          IF obj IS NOT reachable
            THEN
              IF obj IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF obj IS distant
            THEN
              IF obj IS NOT plurale
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.
          AND instr IN hero
        ELSE SAY check_obj2_in_hero OF my_game.
          AND obj IS NOT open
          ELSE
          IF obj IS NOT plurale
            THEN SAY check_obj_not_open_sg OF my_game.
            ELSE SAY check_obj_not_open_pl OF my_game.
          END IF.
          DOES
        IF obj IS locked
          THEN
            IF instr = matching_key OF obj
              THEN MAKE obj NOT locked.
                MAKE obj open.
                "You unlock  and open" SAY THE obj.
                "with" SAY THE instr. "."
              ELSE SAY THE obj.
                IF obj IS NOT plurale
                  THEN "is locked."
                  ELSE "are locked."
                END IF.
            END IF.
          ELSE "You can't open" SAY THE obj. "with" SAY THE instr. "."
        END IF.


    END VERB.
END ADD TO.



-- ==============================================================


----- PLAY


-- ==============================================================


SYNTAX 'play' = 'play' (obj)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
  VERB 'play'
    CHECK my_game CAN 'play'
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          THEN SAY check_obj_suitable_with_sg OF my_game.
          ELSE SAY check_obj_suitable_with_pl OF my_game.
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
      IF obj IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.
      "something you can play."
    END VERB.
END ADD TO.



-- ==============================================================


----- PLAY WITH


-- ==============================================================


SYNTAX play_with = 'play' 'with' (obj)
  WHERE obj ISA THING
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_with_sg OF my_game.
        ELSE SAY illegal_parameter_with_pl OF my_game.
      END IF.



ADD TO EVERY THING
  VERB play_with
    CHECK my_game CAN play_with
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          THEN SAY check_obj_suitable_with_sg OF my_game.
          ELSE SAY check_obj_suitable_with_pl OF my_game.
        END IF.
    AND obj <> hero
      ELSE SAY check_obj_not_hero6 OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
      "After second thought you don't find it purposeful to start
       playing with" SAY THE obj. "."
    END VERB.
END ADD TO.



-- ==============================================================


----- POUR, POUR IN, POUR ON


-- ==============================================================



-- => SEE EMPTY, EMPTY IN, EMPTY ON




-- ==============================================================


----- PRY


-- ==============================================================


SYNTAX pry = pry (obj)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
  VERB pry
    CHECK my_game CAN pry
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          THEN SAY check_obj_suitable_sg OF my_game.
          ELSE SAY check_obj_suitable_pl OF my_game.
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    DOES "You must state what you want to pry" SAY THE obj. "with."
  END VERB.
END ADD TO.



-- ==============================================================


----- PRY_WITH


-- ==============================================================


SYNTAX pry_with = pry (obj) 'with' (instr)
    WHERE obj ISA OBJECT
      ELSE
        IF obj IS NOT plurale
          THEN SAY illegal_parameter_sg OF my_game.
          ELSE SAY illegal_parameter_pl OF my_game.
        END IF.
    AND instr ISA OBJECT
      ELSE
        IF obj IS NOT plurale
          THEN SAY illegal_parameter2_with_sg OF my_game.
          ELSE SAY illegal_parameter2_with_pl OF my_game.
        END IF.


ADD TO EVERY OBJECT
VERB pry_with
   WHEN obj
  CHECK my_game CAN pry_with
    ELSE SAY azione_bloccata OF my_game.
  AND obj IS examinable
    ELSE
      IF obj IS NOT plurale
        THEN SAY check_obj_suitable_sg OF my_game.
        ELSE SAY check_obj_suitable_pl OF my_game.
      END IF.
  AND instr IS examinable
    ELSE
      IF obj IS NOT plurale
        THEN SAY check_obj2_suitable_with_sg OF my_game.
        ELSE SAY check_obj2_suitable_with_pl OF my_game.
      END IF.
  AND obj <> instr
    ELSE SAY check_obj_not_obj2_with OF my_game.
  AND instr IN hero
    ELSE SAY check_obj2_in_hero OF my_game.
  AND CURRENT LOCATION IS lit
    ELSE SAY check_locazione_illuminata OF my_game.
  AND obj IS reachable AND obj IS NOT distant
    ELSE
      IF obj IS NOT reachable
        THEN
          IF obj IS NOT plurale
            THEN SAY ogg1_non_raggiungibile_sg OF my_game.
            ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
          END IF.
      ELSIF obj IS distant
        THEN
          IF obj IS NOT plurale
            THEN SAY check_obj_not_distant_sg OF my_game.
            ELSE SAY check_obj_not_distant_pl OF my_game.
          END IF.
      END IF.
  DOES "That doesn't work."
END VERB.
END ADD TO.



-- ==============================================================


----- PULL


-- ==============================================================


SYNTAX pull = pull (obj)
  WHERE obj ISA THING
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
  VERB pull
    CHECK my_game CAN tirare
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS movable
      ELSE SAY check_obj_movable OF my_game.
    AND obj <> hero
      ELSE SAY check_obj_not_hero1 OF my_game.
    AND obj IS inanimate
      ELSE SAY check_obj_inanimate1 OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
      "That wouldn't accomplish anything."
  END VERB.
END ADD TO.



-- ==============================================================


----- PUSH


-- ==============================================================


SYNTAX push = push (obj)
  WHERE obj ISA THING
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY THING
  VERB push
    CHECK my_game CAN spingere
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS movable
          ELSE SAY check_obj_movable OF my_game.
    AND obj <> hero
      ELSE SAY check_obj_not_hero1 OF my_game.
    AND obj IS inanimate
      ELSE SAY check_obj_inanimate1 OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
          "You give" SAY THE obj. "a little push. Nothing happens."
    END VERB.
END ADD TO.


SYNONYMS press = push.



-- ==============================================================


----- PUSH WITH


-- ==============================================================


SYNTAX push_with = push (obj) 'with' (instr)
  WHERE obj ISA THING
      ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
  AND instr ISA OBJECT
      ELSE SAY illegal_parameter2_with_sg OF my_game.


ADD TO EVERY THING
  VERB push_with
    WHEN obj
      CHECK my_game CAN spingere_con
        ELSE SAY azione_bloccata OF my_game.
      AND obj IS movable
          ELSE SAY check_obj_movable OF my_game.
      AND obj <> instr
        ELSE SAY check_obj_not_obj2_with OF my_game.
      AND instr IS examinable
        ELSE
          IF obj IS NOT plurale
            THEN SAY check_obj2_suitable_with_sg OF my_game.
            ELSE SAY check_obj2_suitable_with_pl OF my_game.
          END IF.
      AND instr IN hero
        ELSE SAY check_obj2_in_hero OF my_game.
      AND obj <> hero
        ELSE SAY check_obj_not_hero1 OF my_game.
      AND obj IS inanimate
        ELSE SAY check_obj_inanimate1 OF my_game.
      AND CURRENT LOCATION IS lit
        ELSE SAY check_locazione_illuminata OF my_game.
      AND obj IS reachable AND obj IS NOT distant
        ELSE
          IF obj IS NOT reachable
            THEN
              IF obj IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF obj IS distant
            THEN
              IF obj IS NOT plurale
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.
      DOES
        "That wouldn't accomplish anything."
    END VERB.
END ADD TO.



-- ==============================================================


----- PUT (+ lay, locate, place)


-- ==============================================================


SYNTAX put = put (obj)
  WHERE obj ISA OBJECT
    ELSE SAY illegal_parameter_obj OF my_game.



ADD TO EVERY OBJECT
  VERB put
    CHECK my_game CAN put
      ELSE SAY azione_bloccata OF my_game.
    AND obj IN HERO
      ELSE SAY check_obj_in_hero OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    DOES
      "You must state where you want to put"

      IF obj IS NOT plurale
        THEN "it."
        ELSE "them."
      END IF.
    END VERB.
END ADD TO.


SYNONYMS lay, place = put.



-- ==============================================================


----- PUT DOWN  (works as  'drop')


-- ==============================================================


----- The syntax for 'put down' has been declared in the 'drop' verb.




-- ==============================================================


----- PUT IN  (+ insert)


-- ==============================================================


SYNTAX put_in = put (obj) 'in' (cont)
  WHERE obj ISA OBJECT
    ELSE SAY illegal_parameter_obj OF my_game.
  AND cont ISA OBJECT
    ELSE
      IF cont ISA ACTOR
        THEN SAY illegal_parameter_act OF my_game.
        ELSE SAY illegal_parameter2_there OF my_game.
      END IF.
  AND cont ISA CONTAINER
    ELSE SAY illegal_parameter2_there OF my_game.


  put_in = insert (obj) 'in' (cont).


ADD TO EVERY OBJECT
  VERB put_in
    WHEN obj
      CHECK my_game CAN put_in
        ELSE SAY azione_bloccata OF my_game.
      AND obj <> cont
        ELSE SAY check_obj_not_obj2_in OF my_game.
          AND obj IS takeable
          ELSE SAY check_obj_takeable OF my_game.
          AND CURRENT LOCATION IS lit
        ELSE SAY check_locazione_illuminata OF my_game.
      AND obj IS reachable AND obj IS NOT distant
        ELSE
          IF obj IS NOT reachable
            THEN
              IF obj IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF obj IS distant
            THEN
              IF obj IS NOT plurale
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.
          AND obj NOT IN cont
          ELSE
          IF cont ISA SUPPORTER
            THEN SAY check_cont_not_supporter OF my_game.
            ELSE
              IF obj IS NOT plurale
                THEN SAY check_obj_not_in_cont_sg OF my_game.
                ELSE SAY check_obj_not_in_cont_pl OF my_game.
              END IF.
          END IF.
          AND cont IS reachable AND cont IS NOT distant
        ELSE
          IF cont IS NOT reachable
            THEN
              IF cont IS NOT plurale
                THEN SAY ogg2_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg2_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF cont IS distant
            THEN
              IF cont IS NOT plurale
                THEN SAY check_obj2_not_distant_sg OF my_game.
                ELSE SAY check_obj2_not_distant_pl OF my_game.
              END IF.
          END IF.
      AND obj IN allowed OF cont
        ELSE
          IF obj IS NOT plurale
            THEN SAY check_obj_allowed_in_sg OF my_game.
            ELSE SAY check_obj_allowed_in_pl OF my_game.
          END IF.
      AND cont IS open
          ELSE
          IF cont IS NOT plurale
            THEN SAY check_obj2_open_sg OF my_game.
            ELSE SAY check_obj2_open_pl OF my_game.
          END IF.
          DOES
        LOCATE obj IN cont.
        "You put" SAY THE obj. "into" SAY THE cont. "."
  END VERB.
END ADD TO.




-- ==============================================================


----- PUT AGAINST, BEHIND, NEAR, UNDER


-- ==============================================================


SYNTAX put_against = put (obj) against (bulk)
  WHERE obj ISA OBJECT
    ELSE SAY illegal_parameter_obj OF my_game.
  AND bulk ISA THING
        ELSE SAY illegal_parameter2_there OF my_game.



SYNTAX put_behind = put (obj) behind (bulk)
  WHERE obj ISA OBJECT
    ELSE SAY illegal_parameter_obj OF my_game.
  AND bulk ISA THING
        ELSE SAY illegal_parameter2_there OF my_game.



SYNTAX put_near = put (obj) 'near' (bulk)
  WHERE obj ISA OBJECT
        ELSE SAY illegal_parameter_obj OF my_game.
  AND bulk ISA THING
      ELSE SAY illegal_parameter2_there OF my_game.



SYNTAX put_under = put (obj) under (bulk)
  WHERE obj ISA OBJECT
      ELSE SAY illegal_parameter_obj OF my_game.
  AND bulk ISA THING
      ELSE SAY illegal_parameter2_there OF my_game.



ADD TO EVERY OBJECT
  VERB put_against, put_behind, put_near, put_under
    WHEN obj
      CHECK my_game CAN put_against AND my_game CAN put_behind
        AND my_game CAN put_near AND my_game CAN put_under
        ELSE SAY azione_bloccata OF my_game.
          AND bulk NOT IN hero
          ELSE SAY check_obj2_not_in_hero2 OF my_game.
      AND obj <> bulk
          ELSE SAY check_obj_not_obj2_put OF my_game.
          AND obj IS takeable
          ELSE SAY check_obj_takeable OF my_game.
          AND bulk <> hero
          ELSE SAY check_obj2_not_hero2 OF my_game.
          AND CURRENT LOCATION IS lit
            ELSE SAY check_locazione_illuminata OF my_game.
          AND obj IS reachable AND obj IS NOT distant
        ELSE
          IF obj IS NOT reachable
            THEN
              IF obj IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF obj IS distant
            THEN
              IF obj IS NOT plurale
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.
      AND bulk IS reachable AND bulk IS NOT distant
        ELSE
          IF bulk IS NOT reachable
            THEN
              IF bulk IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF bulk IS distant
            THEN
              IF bulk IS NOT plurale
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.
          DOES
          "That wouldn't accomplish anything."

    END VERB.
END ADD TO.



-- ==============================================================


----- PUT_ON


-- ==============================================================


-- To use this verb in the meaning 'wear', see the file 'classes.i',
-- class 'clothing', verb 'wear'.

-- You can put things on the floor/ground (= drop them). In other
-- cases, the action will fail by default. Allow the action with
-- individual instances only.



SYNTAX put_on = put (obj) 'on' (surface)
  WHERE obj ISA OBJECT
      ELSE SAY illegal_parameter_obj OF my_game.
  AND surface ISA SUPPORTER
    ELSE SAY illegal_parameter2_there OF my_game.



ADD TO EVERY OBJECT
  VERB put_on
    WHEN obj
      CHECK my_game CAN put_on
        ELSE SAY azione_bloccata OF my_game.
      AND obj <> surface
          ELSE SAY check_obj_not_obj2_on OF my_game.
          AND obj IS takeable
          ELSE SAY check_obj_takeable OF my_game.
          AND CURRENT LOCATION IS lit
            ELSE SAY check_locazione_illuminata OF my_game.
          AND obj NOT IN surface
          ELSE
          IF obj IS NOT plurale
            THEN SAY check_obj_not_on_surface_sg OF my_game.
            ELSE SAY check_obj_not_on_surface_pl OF my_game.
          END IF.
          AND obj IS reachable AND obj IS NOT distant
        ELSE
          IF obj IS NOT reachable
            THEN
              IF obj IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF obj IS distant
            THEN
              IF obj IS NOT plurale
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.
          AND surface IS reachable AND surface IS NOT distant
        ELSE
          IF surface IS NOT reachable
            THEN
              IF surface IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF surface IS distant
            THEN
              IF surface IS NOT plurale
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.
          DOES
        -- implicit taking:
        IF obj NOT DIRECTLY IN hero
          THEN LOCATE obj IN hero.
               SAY implicit_taking_message OF my_game.
        END IF.
        -- end of implicit taking.

        IF surface = floor OR surface = ground
          THEN LOCATE obj AT hero.
          ELSE LOCATE obj IN surface.
        END IF.

        "Posi" SAY THE obj. SAY prep_SU of surface. SAY surface. "."
        -- "You put" SAY THE obj. "on" SAY THE surface. "."

    END VERB.
END ADD TO.



-- ==============================================================


----- PUT OUT  (works as -> EXTINGUISH)


-- ==============================================================


----- The syntax for 'put out' has been declared in the 'extinguish' verb.





-- ==============================================================


----- READ


-- ==============================================================


SYNTAX read = read (obj)
  WHERE obj ISA OBJECT
      ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
    VERB read
    CHECK my_game CAN leggere
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS readable
          ELSE
        IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "leggere."
          ELSE SAY ogg1_inadatto_pl OF my_game. "leggere."
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS NOT distant
      ELSE
        IF obj IS NOT plurale
          THEN SAY check_obj_not_distant_sg OF my_game.
          ELSE SAY check_obj_not_distant_pl OF my_game.
        END IF.
    DOES
      IF text OF obj = ""
        THEN "There's nothing written on" SAY THE obj. "."
        ELSE "You read" SAY THE obj. "."

          IF obj IS NOT plurale
            THEN "It says"
            ELSE "They say"
          END IF.

          """$$" SAY text OF obj. "$$""."
      END IF.
    END VERB.
END ADD TO.



-- ==============================================================


-- REMOVE


-- ==============================================================

-- this verb only works with clothing (see 'classes.i').

SYNTAX remove = remove (obj)
    WHERE obj ISA OBJECT
      ELSE
        IF obj IS NOT plurale
          THEN SAY illegal_parameter_sg OF my_game. "since you're not wearing it."
          ELSE SAY illegal_parameter_pl OF my_game. "since you're not wearing them."
        END IF.
   remove = take 'off' (obj).
   remove = take (obj) 'off'.
   remove = doff (obj).


ADD TO EVERY OBJECT
  VERB remove
    CHECK my_game CAN remove
      ELSE SAY azione_bloccata OF my_game.
    DOES
      IF obj IS NOT plurale
        THEN "That's"
        ELSE "Those are"
      END IF.

      "not something you can remove since you're not wearing"

      IF obj IS NOT plurale
        THEN "it."
        ELSE "them."
      END IF.
  END VERB.
END ADD TO.



-- ==============================================================

-- @TAKE_FROM (HEADER COMMENTS: REMOVE FROM => TAKE FROM)
----- REMOVE FROM      ( => TAKE FROM)


-- ==============================================================


----- this verb works as 'take from'





-- ==============================================================


----- RUB (+ massage)


-- ==============================================================


SYNTAX rub = rub (obj)
  WHERE obj ISA THING
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.

SYNONYMS massage = rub.

ADD TO EVERY THING
  VERB rub
    CHECK my_game CAN rub
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "strofinare."
          ELSE SAY ogg1_inadatto_pl OF my_game. "strofinare."
        END IF.
    AND obj <> hero
      ELSE SAY check_obj_not_hero6 OF my_game.
    AND obj IS inanimate
      ELSE SAY check_obj_inanimate2 OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
      "Farlo non servirebbe a nulla."
      -- "Nothing would be achieved by that."
  END VERB.
END ADD TO.


-- ==============================================================


----- SAY


-- ==============================================================


SYNTAX 'say' = 'say' (topic)
      WHERE topic ISA STRING
    ELSE SAY illegal_parameter_string OF my_game.


ADD TO EVERY STRING
  VERB 'say'
    CHECK my_game CAN 'say'
      ELSE SAY azione_bloccata OF my_game.
        DOES
          "Nothing happens."
    END VERB.
END ADD TO.




-- ==============================================================


----- SAY TO


-- ==============================================================


SYNTAX say_to = 'say' (topic) 'to' (act)
      WHERE topic ISA STRING
        ELSE SAY illegal_parameter_string OF my_game.
      AND act ISA ACTOR
        ELSE
      IF act IS NOT plurale
        THEN SAY illegal_parameter_talk_sg OF my_game.
        ELSE SAY illegal_parameter_talk_pl OF my_game.
      END IF.


ADD TO EVERY ACTOR
  VERB say_to
        WHEN act
      CHECK my_game CAN say_to
        ELSE SAY azione_bloccata OF my_game.
      AND act <> hero
        ELSE SAY check_obj2_not_hero1 OF my_game.
          AND act CAN talk
        ELSE
          IF act IS NOT plurale
            THEN SAY check_act_can_talk_sg OF my_game.
            ELSE SAY check_act_can_talk_pl OF my_game.
          END IF.
      AND act IS NOT distant
        ELSE
          IF act IS NOT plurale
            THEN SAY check_obj_not_distant_sg OF my_game.
            ELSE SAY check_obj_not_distant_pl OF my_game.
          END IF.
          DOES
        SAY THE act.
        IF act IS NOT plurale
          THEN "doesn't look"
          ELSE "don't look"
        END IF.
        "interested."
  END VERB.
END ADD TO.



-- ==============================================================


----- SCORE


-- ==============================================================


SYNTAX 'score' = 'score'.


VERB 'score'
  CHECK my_game CAN 'score'
    ELSE SAY azione_bloccata OF my_game.
  DOES
    SCORE.
    -- (or, if you wish to disable the score, use the following kind of
      -- line instead of the above:
    -- "There is no score in this game.")
END VERB 'score'.



-- ==============================================================


----- SCRATCH


-- ==============================================================


SYNTAX scratch = scratch (obj)
  WHERE obj ISA THING
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY THING
  VERB scratch
    CHECK my_game CAN scratch
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          THEN SAY check_obj_suitable_sg OF my_game.
          ELSE SAY check_obj_suitable_pl OF my_game.
        END IF.
    AND obj <> hero
      ELSE SAY check_obj_not_hero3 OF my_game.
    AND obj IS inanimate
      ELSE SAY check_obj_inanimate1 OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
     "Farlo non servirebbe a nulla."
     -- "Nothing would be achieved by that."
    END VERB.
END ADD TO.




-- ==============================================================


------ SCRIPT


-- ==============================================================


SYNTAX 'script' = 'script'.
   script_on = 'script' 'on'.
   script_off = 'script' 'off'.

SYNONYMS 'transcript' = 'script'.

VERB 'script'
  CHECK my_game CAN 'script'
    ELSE SAY azione_bloccata OF my_game.
  DOES
    "You can turn transcripting on and off using the 'script on/off' command within the game.
    The transcript will be available in a file with a name starting with the game name.
    $pIn a GUI version you can also find this in the drop-down menu in the interpreter.
    $pIn a command line version you can start your game with the '-s' switch to get a transcript
    of the whole game."
END VERB.

VERB script_on
  CHECK my_game CAN script_on
    ELSE SAY azione_bloccata OF my_game.
    DOES
        TRANSCRIPT ON.
        "Transcripting turned on."
END VERB.

VERB script_off
  CHECK my_game CAN script_off
    ELSE SAY azione_bloccata OF my_game.
    DOES
        TRANSCRIPT OFF.
        "Transcripting turned off."
END VERB.



-- ==============================================================


------ SEARCH


-- ==============================================================


SYNTAX search = search (obj)
  WHERE obj ISA THING
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY THING
  VERB search
    CHECK my_game CAN search
      ELSE SAY azione_bloccata OF my_game.
    AND obj <> hero
      ELSE LIST hero.
    AND obj IS inanimate
      ELSE SAY check_obj_inanimate1 OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
      "You find nothing of interest."
    END VERB.
END ADD TO.



-- ==============================================================


----- SELL


-- ==============================================================


SYNTAX sell = sell (item)
  WHERE item ISA OBJECT
    ELSE
      IF item IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
    VERB sell
    CHECK my_game CAN vendere
      ELSE SAY azione_bloccata OF my_game.
    AND item IS examinable
      ELSE
        IF item IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "vendere."
          ELSE SAY ogg1_inadatto_pl OF my_game. "vendere."
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    DOES
      "There's nobody here who would be interested in buying" SAY THE item. "."
    END VERB.
END ADD TO.

-- Depending on the situation, it might be good to add a check whether the item is carried
-- by the hero or not, etc.



-- ==============================================================


----- SHAKE


-- ==============================================================


SYNTAX shake = shake (obj)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.



ADD TO EVERY OBJECT
  VERB shake
    CHECK my_game CAN shake
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          THEN SAY check_obj_suitable_sg OF my_game.
          ELSE SAY check_obj_suitable_pl OF my_game.
        END IF.
    AND obj IS movable
      ELSE SAY check_obj_movable OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
      IF obj IN hero
        THEN "You shake" SAY THE obj. "cautiously in your hands. Nothing happens."
        ELSE "There is no reason to start shaking" SAY THE obj. "."
      END IF.
  END VERB.
END ADD TO.



-- ==============================================================


----- SHOOT


-- ==============================================================



SYNTAX shoot = shoot (target)
      WHERE target ISA THING
        ELSE
      IF target IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.

       shoot = shoot 'at' (target).


ADD TO EVERY THING
    VERB shoot
    CHECK my_game CAN shoot
      ELSE SAY azione_bloccata OF my_game.
    AND target IS examinable
      ELSE
        IF target IS NOT plurale
          THEN SAY check_obj_suitable_sg OF my_game.
          ELSE SAY check_obj_suitable_pl OF my_game.
        END IF.
    AND target <> hero
      ELSE SAY check_obj_not_hero2 OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND target NOT IN hero
      ELSE SAY check_obj_not_in_hero1 OF my_game.
    AND target NOT IN worn
      ELSE SAY check_obj_not_in_worn2 OF my_game.
    AND target IS NOT distant
      ELSE
        IF target IS NOT plurale
          THEN SAY check_obj_not_distant_sg OF my_game.
          ELSE SAY check_obj_not_distant_pl OF my_game.
        END IF.
    DOES
      IF target ISA ACTOR
        THEN "That's quite uncalled-for."
              ELSE "That wouldn't accomplish anything."
      END IF.
    END VERB.
END ADD TO.


-- note that it is possible to shoot (at) both not reachable and distant objects.


-- another  'shoot' formulation added, to guide players to use the right phrasing:


SYNTAX shoot_error = shoot.


VERB shoot_error
  DOES
    "You must state what you want to shoot, for example SHOOT BEAR WITH RIFLE."
END VERB.



-- ==============================================================


----- SHOOT WITH


-- ==============================================================


SYNTAX shoot_with = shoot (target) 'with' (weapon)
        WHERE target ISA THING
          ELSE
        IF target IS NOT plurale
          THEN SAY illegal_parameter_sg OF my_game.
          ELSE SAY illegal_parameter_pl OF my_game.
        END IF.
        AND weapon ISA WEAPON
          ELSE
        IF weapon IS NOT plurale
          THEN SAY illegal_parameter2_with_sg OF my_game.
          ELSE SAY illegal_parameter2_with_pl OF my_game.
        END IF.

   shoot_with = shoot (weapon) 'at' (target).
    -- to allow player input such as 'shoot rifle at bear'


ADD TO EVERY THING
    VERB shoot_with
        WHEN target
      CHECK my_game CAN shoot_with
        ELSE SAY azione_bloccata OF my_game.
      AND target IS examinable
        ELSE
          IF target IS NOT plurale
            THEN SAY check_obj_suitable_sg OF my_game.
            ELSE SAY check_obj_suitable_pl OF my_game.
          END IF.
      AND target <> hero
        ELSE SAY check_obj_not_hero2 OF my_game.
      AND target <> weapon
        ELSE SAY check_obj_not_obj2_with OF my_game.
      AND CURRENT LOCATION IS lit
        ELSE SAY check_locazione_illuminata OF my_game.
      AND target NOT IN hero
        ELSE SAY check_obj_not_in_hero1 OF my_game.
      AND target NOT IN worn
        ELSE SAY check_obj_not_in_worn2 OF my_game.
      AND target IS NOT distant
        ELSE
          IF target IS NOT plurale
            THEN SAY check_obj_not_distant_sg OF my_game.
            ELSE SAY check_obj_not_distant_pl OF my_game.
          END IF.
          DOES
        IF target ISA ACTOR
          THEN "That's quite uncalled-for."
                ELSE "That wouldn't accomplish anything."
        END IF.
    END VERB.
END ADD TO.



-- ==============================================================


----- SHOUT


-- ==============================================================


SYNTAX shout = shout.


VERB shout
  CHECK my_game CAN gridare
    ELSE SAY azione_bloccata OF my_game.
    DOES
        "Nothing results from your $ving."
END VERB.


SYNONYMS scream, yell = shout.



-- ==============================================================


----- SHOW


-- ==============================================================


SYNTAX 'show' = 'show' (obj) 'to' (act)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
  AND act ISA ACTOR
    ELSE
      IF act IS NOT plurale
        THEN SAY illegal_parameter2_to_sg OF my_game.
        ELSE SAY illegal_parameter2_to_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
  VERB 'show'
    WHEN obj
      CHECK my_game CAN mostrare
        ELSE SAY azione_bloccata OF my_game.
      AND act <> hero
        ELSE SAY check_obj2_not_hero1 OF my_game.
      AND obj IN hero
        ELSE SAY check_obj_in_hero OF my_game.
      AND CURRENT LOCATION IS lit
        ELSE SAY check_locazione_illuminata OF my_game.
      AND act IS NOT distant
        ELSE
          IF act IS NOT plurale
            THEN SAY check_obj2_not_distant_sg OF my_game.
            ELSE SAY check_obj2_not_distant_pl OF my_game.
          END IF.
      DOES
        SAY THE act.

        IF act IS NOT plurale
          THEN "is"
          ELSE "are"
        END IF.

        "not especially interested."
    END VERB.
END ADD TO.


SYNONYMS reveal = 'show'.



-- ==============================================================


----- SING (+ hum, whistle)


-- ==============================================================


SYNTAX sing = sing.


VERB sing
  CHECK my_game CAN sing
    ELSE SAY azione_bloccata OF my_game.
    DOES
        "You $v a little tune."
END VERB.


SYNONYMS hum, whistle = sing.



-- ==============================================================


----- SIP


-- ==============================================================


SYNTAX sip = sip (liq)
  WHERE liq ISA LIQUID
    ELSE
      IF liq IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY LIQUID
    VERB sip
    CHECK my_game CAN sip
      ELSE SAY azione_bloccata OF my_game.
    AND liq IS potabile
      ELSE
        IF liq IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "sorseggiare."
          ELSE SAY ogg1_inadatto_pl OF my_game. "sorseggiare."
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND liq IS reachable AND liq IS NOT distant
      ELSE
        IF liq IS NOT reachable
          THEN
            IF liq IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF liq IS distant
          THEN
            IF liq IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
      IF vessel OF liq = null_vessel
        -- here, if the liquid is in no container, for example
        -- the hero takes a sip of water from a river,
        -- the action is allowed to succeed.
        THEN "You take a sip of" SAY THE liq. "."
        ELSE
          -- implicit taking:
          IF vessel OF liq NOT DIRECTLY IN hero
            THEN
              IF vessel OF liq IS NOT takeable
                THEN "You can't carry" SAY THE liq. "around in your bare hands."
                  -- the action stops here if the container is not takeable.
                ELSE LOCATE vessel OF liq IN hero.
                "(taking" SAY THE vessel OF liq. "first)$n"
              END IF.
          END IF.
          -- end of implicit taking.
      END IF.

      IF liq IN hero    -- i.e. if the implicit taking was successful
        THEN
          IF vessel OF liq IS NOT open
            THEN "You can't, since" SAY THE vessel OF liq. "is closed."
            ELSE "You take a sip of" SAY THE liq. "."
          END IF.
      END IF.

    END VERB.
END ADD TO.


-- See also the verb 'drink'.


-- ==============================================================


----- SIT


-- ==============================================================


SYNTAX sit = sit.

       sit = sit 'down'.


VERB sit
  CHECK my_game CAN sit
    ELSE SAY azione_bloccata OF my_game.
  AND hero IS NOT seduto
    ELSE SAY check_hero_not_sitting4 OF my_game.
  DOES
    "You feel no urge to sit down at present."
    -- (or, if you wish to make it work, use the following instead of the above:
    -- IF hero IS lying_down
    --  THEN "You sit up."
    --    MAKE hero NOT lying_down.
    --  ELSE "You sit down."
    -- END IF.
    -- MAKE hero sitting.
END VERB.

-- When the hero is sitting or lying down, it will be impossible for her/him to
-- perform certain actions, as numerous verbs in the library have checks for this.
-- For example, if the hero is sitting and the player types 'attack [something]',
-- the response will be "It will be difficult to attack anything while
-- sitting down."

-- Also, it is often essential to make certain objects NOT reachable when
-- sitting or lying down.



-- ==============================================================


----- SIT_ON


-- ==============================================================


SYNTAX sit_on = sit 'on' (surface)
  WHERE surface ISA SUPPORTER
    ELSE
      IF surface IS NOT plurale
        THEN SAY illegal_parameter_on_sg OF my_game.
        ELSE SAY illegal_parameter_on_pl OF my_game.
      END IF.


ADD TO EVERY SUPPORTER
    VERB sit_on
    CHECK my_game CAN sit_on
      ELSE SAY azione_bloccata OF my_game.
    AND hero IS NOT seduto
      ELSE SAY check_hero_not_sitting4 OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND surface IS reachable AND surface IS NOT distant
      ELSE
        IF surface IS NOT reachable
          THEN
            IF surface IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF surface IS distant
          THEN
            IF surface IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
      "You feel no urge to sit down at present."

      -- (or, to make it work, use the following instead of the above:)
      -- IF hero lying_down
      --  THEN "You get up and sit down on" SAY THE surface. "."
      --    MAKE hero NOT lying_down.
      --  ELSE "You sit down on" SAY THE surface. "."
      -- END IF.
      -- MAKE hero sitting.
    END VERB.
END ADD TO.


-- When the hero is sitting or lying down, it will be impossible for her/him to
-- perform certain actions, as numerous verbs in the library have checks for this.
-- For example, if the hero is sitting and the player types 'attack [something]',
-- the response will be "It will be difficult to attack anything while
-- sitting down."

-- Also, it is often essential to make certain objects NOT reachable when
-- sitting or lying down.



-- ==============================================================


----- SLEEP (+ rest)


-- ==============================================================


SYNTAX dormi = dormi.

SYNONYMS riposa = dormi.

VERB dormi
  CHECK my_game CAN dormire
    ELSE SAY azione_bloccata OF my_game.
  DOES
    "Non è il momento di riposare."
END VERB.



-- ==============================================================


----- SMELL (smell0)


-- ==============================================================


SYNTAX smell0 = smell.


VERB smell0
  CHECK my_game CAN smell0
    ELSE SAY azione_bloccata OF my_game.
     DOES
    "You smell nothing unusual."
END VERB.



-- ==============================================================


----- SMELL (+ obj)


-- ==============================================================


SYNTAX smell = smell (odour)
  WHERE odour ISA THING
      ELSE
      IF odour IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY THING
    VERB smell
    CHECK my_game CAN smell
      ELSE SAY azione_bloccata OF my_game.
    DOES
          "You smell nothing unusual."
    END VERB.
END ADD TO.



-- ==============================================================


----- SQUEEZE


-- ==============================================================


SYNTAX squeeze = squeeze (obj)
  WHERE obj ISA OBJECT
      ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY THING
    VERB squeeze
    CHECK my_game CAN squeeze
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          THEN SAY check_obj_suitable_sg OF my_game.
          ELSE SAY check_obj_suitable_pl OF my_game.
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
          "Trying to squeeze" SAY THE obj. "wouldn't accomplish anything."
  END VERB.
END ADD TO.



-- ==============================================================


----- STAND


-- ==============================================================


SYNTAX stand = stand.

   stand = stand 'up'.


VERB stand
  CHECK my_game CAN stand
    ELSE SAY azione_bloccata OF my_game.
  DOES
    IF hero IS seduto OR hero IS sdraiato
      THEN "You get up."
        MAKE hero NOT seduto.
        MAKE hero NOT sdraiato.
      ELSE "You're standing up already."
    END IF.
END VERB.



-- ==============================================================


----- STAND_ON


-- ==============================================================


SYNTAX stand_on = stand 'on' (surface)
  WHERE surface ISA SUPPORTER
    ELSE
      IF surface IS NOT plurale
        THEN SAY illegal_parameter_on_sg OF my_game.
        ELSE SAY illegal_parameter_on_pl OF my_game.
      END IF.
  stand_on = get 'on' (surface).


ADD TO EVERY SUPPORTER
  VERB stand_on
    CHECK my_game CAN stand_on
      ELSE SAY azione_bloccata OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND surface IS reachable AND surface IS NOT distant
      ELSE
        IF surface IS NOT reachable
          THEN
            IF surface IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF surface IS distant
          THEN
            IF surface IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
      "You feel no urge to stand on" SAY THE surface. "."
      -- or, to make it work, use the following instead of the above:
      -- "You get on" SAY THE surface. "."
      -- (Make an attribute for the hero to check that he's on the surface.
      -- It is not possible to actually locate him on the surface (unless
      -- you implement a nested location.)
      -- MAKE hero NOT sitting. MAKE hero NOT lying_down.
  END VERB.
END ADD TO.



-- ==============================================================


----- SWIM


-- ==============================================================


SYNTAX swim = swim.


VERB swim
  CHECK my_game CAN nuotare
    ELSE SAY azione_bloccata OF my_game.
  AND hero IS NOT seduto
    ELSE SAY check_hero_not_sitting1 OF my_game.
  AND hero IS NOT sdraiato
    ELSE SAY check_hero_not_lying_down1 OF my_game.
  AND CURRENT LOCATION IS lit
    ELSE SAY check_locazione_illuminata OF my_game.
  DOES
    "There is no water suitable for swimming here."
END VERB.



-- ==============================================================


----- SWIM IN


-- ==============================================================


SYNTAX swim_in = swim 'in' (liq)
  WHERE liq ISA LIQUID
    ELSE
      IF liq IS NOT plurale
        THEN SAY illegal_parameter_in_sg OF my_game.
        ELSE SAY illegal_parameter_in_pl OF my_game.
      END IF.



ADD TO EVERY OBJECT
  VERB swim_in
    CHECK my_game CAN nuotare_in
      ELSE SAY azione_bloccata OF my_game.
    AND hero IS NOT seduto
      ELSE SAY check_hero_not_sitting3 OF my_game.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down3 OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND liq IS reachable AND liq IS NOT distant
      ELSE
        IF liq IS NOT reachable
          THEN
            IF liq IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF liq IS distant
          THEN
            IF liq IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
      IF liq IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.

      "something you can swim in."
END VERB.
END ADD TO.



-- ==============================================================


----- SWITCH


-- ==============================================================


-- This is a mere 'switch' verb with no 'on' or 'off' following after it.
-- This verb is defined further in 'classes.i', under 'device' and 'lightsource'.
-- This verb exists just to cover cases where the player forgets to write
-- 'on' or 'off' after 'switch'.
-- If the player types 'switch tv', the tv object will be switched on
-- if it is off, and vice cersa.
-- Below, just the basic syntax is declared.



SYNTAX switch = switch (app)      -- app = apparatus, appliance
  WHERE app ISA OBJECT
    ELSE
      IF app IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
  VERB switch
    CHECK my_game CAN switch
      ELSE SAY azione_bloccata OF my_game.
    DOES
      IF app IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.
      "not something you can switch."
  END VERB.
END ADD TO.



-- ==============================================================


----- SWITCH ON


-- ==============================================================


----- The syntax for 'switch on' has been declared in the 'turn_on' verb.




-- ==============================================================


----- SWITCH OFF


-- ==============================================================


----- The syntax for 'switch off' has been declared in the 'turn_off' verb.




-- ==============================================================


----- TALK


-- ==============================================================


SYNTAX talk = talk.


VERB talk
  CHECK my_game CAN talk
    ELSE SAY azione_bloccata OF my_game.
  DOES
    "To talk to somebody, you can ASK PERSON ABOUT THING
    or TELL PERSON ABOUT THING."
END VERB.



-- ==============================================================


----- TALK_TO


-- ==============================================================


SYNTAX talk_to = talk 'to' (act)
      WHERE act ISA ACTOR
        ELSE
      IF act IS NOT plurale
        THEN SAY illegal_parameter_to_sg OF my_game.
        ELSE SAY illegal_parameter_to_pl OF my_game.
      END IF.


ADD TO EVERY ACTOR
    VERB talk_to
    CHECK my_game CAN talk_to
      ELSE SAY azione_bloccata OF my_game.
    DOES
      "To talk to somebody, you can ASK PERSON ABOUT THING or
      TELL PERSON ABOUT THING."
    END VERB.
END ADD TO.



-- ==============================================================


----- TASTE   (+ lick)


-- ==============================================================


SYNTAX taste = taste (obj)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


SYNONYMS lick = taste.


ADD TO EVERY OBJECT
  VERB taste
    CHECK my_game CAN assaggiare
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "assaggiare."
          ELSE SAY ogg1_inadatto_pl OF my_game. "assaggiare."
        END IF.
    AND obj IS commestibile OR obj IS potabile
      ELSE
        IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "assaggiare."
          ELSE SAY ogg1_inadatto_pl OF my_game. "assaggiare."
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
      "Non hai sentito nessun sapore particolare." --> preso da i6
      -- "You taste nothing unexpected."
  END VERB.
END ADD TO.



-- ==============================================================


----- TEAR  (+ rip)


-- ==============================================================


SYNTAX tear = tear (obj)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
  VERB tear
    CHECK my_game CAN tear
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "strappare."
          ELSE SAY ogg1_inadatto_pl OF my_game. "strappare."
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
      "Trying to $v" SAY THE obj. "would be futile."
    END VERB.
END ADD TO.


SYNONYMS rip = tear.



-- ==============================================================


----- TELL  (+ enlighten, inform)


-- ==============================================================


SYNTAX tell = tell (act) about (topic)!
      WHERE act ISA ACTOR
    ELSE
      IF act IS NOT plurale
            THEN SAY illegal_parameter_talk_sg OF my_game.
        ELSE SAY illegal_parameter_talk_pl OF my_game.
      END IF.
      AND topic ISA THING
        ELSE
      IF topic IS NOT plurale
        THEN SAY illegal_parameter_about_sg OF my_game.
        ELSE SAY illegal_parameter_about_pl OF my_game.
      END IF.


ADD TO EVERY ACTOR
  VERB tell
        WHEN act
      CHECK my_game CAN tell
        ELSE SAY azione_bloccata OF my_game.
      AND act <> hero
        ELSE SAY check_obj_not_hero1 OF my_game.
          AND act CAN talk
              ELSE
          IF act IS NOT plurale
            THEN SAY check_act_can_talk_sg OF my_game.
            ELSE SAY check_act_can_talk_pl OF my_game.
          END IF.
      AND act IS NOT distant
        ELSE
          IF act IS NOT plurale
            THEN SAY check_obj_not_distant_sg OF my_game.
            ELSE SAY check_obj_not_distant_pl OF my_game.
          END IF.
          DOES
        SAY THE act.

        IF act IS NOT plurale
          THEN "doesn't"
          ELSE "don't"
        END IF.

        "look interested."

  END VERB.
END ADD TO.


SYNONYMS enlighten, inform = tell.



-- ==============================================================


----- THINK   (+ ponder, meditate, reflect)


-- ==============================================================


SYNTAX think = think.

SYNONYMS ponder, meditate, reflect = think.

VERB think
  CHECK my_game CAN think
    ELSE SAY azione_bloccata OF my_game.
  DOES
    "Nothing helpful comes to your mind."
END VERB.





-- ==============================================================


----- THINK ABOUT


-- ==============================================================


SYNTAX think_about = think 'about' (topic)!
  WHERE topic ISA THING
    ELSE
      IF topic IS NOT plurale
        THEN SAY illegal_parameter_about_sg OF my_game.
        ELSE SAY illegal_parameter_about_pl OF my_game.
      END IF.


ADD TO EVERY THING
  VERB think_about
    CHECK my_game CAN think_about
      ELSE SAY azione_bloccata OF my_game.
    DOES
      "Nothing helpful comes to your mind."
    END VERB.
END ADD TO.



-- ==============================================================


----- THROW


-- ==============================================================


SYNTAX throw = throw (projectile)
  WHERE projectile ISA OBJECT
    ELSE SAY illegal_parameter_obj OF my_game.



ADD TO EVERY OBJECT
    VERB throw
    CHECK my_game CAN throw
      ELSE SAY azione_bloccata OF my_game.
    AND projectile IS examinable
      ELSE
        IF projectile IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "lanciare."
          ELSE SAY ogg1_inadatto_pl OF my_game. "lanciare."
        END IF.
    AND projectile IS takeable
      ELSE SAY check_obj_takeable OF my_game.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND projectile IS reachable AND projectile IS NOT distant
      ELSE
        IF projectile IS NOT reachable
          THEN
            IF projectile IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF projectile IS distant
          THEN
            IF projectile IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES
      -- implicit taking:
      IF projectile NOT DIRECTLY IN hero
        THEN LOCATE projectile IN hero.
          SAY implicit_taking_message OF my_game.
      END IF.
      -- end of implicit taking.

      "You can't throw very far;" SAY THE projectile.

      IF projectile IS NOT plurale
        THEN "ends up"
        ELSE "end up"
      END IF.

      IF floor HERE
        THEN "on the floor"
      ELSIF ground HERE
        THEN "on the ground"
      END IF.

      "nearby."
          LOCATE projectile AT hero.

  END VERB.
END ADD TO.




-- ==============================================================


----- THROW AT


-- ==============================================================


SYNTAX throw_at = throw (projectile) 'at' (target)
  WHERE projectile ISA OBJECT
    ELSE SAY illegal_parameter_obj OF my_game.
  AND target ISA THING
        ELSE SAY illegal_parameter_at OF my_game.



ADD TO EVERY OBJECT
  VERB throw_at
        WHEN projectile
      CHECK my_game CAN throw_at
        ELSE SAY azione_bloccata OF my_game.
          AND projectile IS examinable
        ELSE
          IF projectile IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "lanciare."
          ELSE SAY ogg1_inadatto_pl OF my_game. "lanciare."
          END IF.
          AND projectile IS takeable
          ELSE SAY check_obj_takeable OF my_game.
          AND target IS examinable
          ELSE SAY check_obj_suitable_at OF my_game.
          AND projectile <> target
        ELSE SAY check_obj_not_obj2_at OF my_game.
          AND target NOT IN hero
              ELSE SAY check_obj2_not_in_hero1 OF my_game.
          AND target <> hero
          ELSE SAY check_obj2_not_hero1 OF my_game.
          AND CURRENT LOCATION IS lit
        ELSE SAY check_locazione_illuminata OF my_game.
          AND projectile IS reachable AND projectile IS NOT distant
        ELSE
          IF projectile IS NOT reachable
            THEN
              IF projectile IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF projectile IS distant
            THEN
              IF projectile IS NOT plurale
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.
      AND target IS NOT distant
        -- it is possible to throw something at an (otherwise) not reachable target
        ELSE
          IF target IS NOT plurale
            THEN SAY check_obj2_not_distant_sg OF my_game.
            ELSE SAY check_obj2_not_distant_pl OF my_game.
          END IF.
          DOES
        -- implicit taking:
        IF projectile NOT DIRECTLY IN hero
          THEN LOCATE projectile IN hero.
               SAY implicit_taking_message OF my_game.
        END IF.
        -- end of implicit taking.

        IF target IS inanimate
          THEN
            IF target NOT DIRECTLY AT hero
              -- for example the target is inside a box
              THEN "It wouldn't accomplish anything trying to throw
                 something at" SAY THE target. "."
              ELSE
                SAY THE projectile.

                IF projectile IS NOT plurale
                  THEN "bounces"
                  ELSE "bounce"
                END IF.

                "harmlessly off"

                SAY THE target. "and"

                IF projectile IS NOT plurale
                  THEN "ends up"
                  ELSE "end up"
                END IF.

                  IF floor HERE
                  THEN "on the floor"
                ELSIF ground HERE
                  THEN "on the ground"
                  END IF.

                    "nearby."
                  LOCATE projectile AT hero.
            END IF.

          ELSE SAY THE target. "wouldn't probably appreciate that."
            -- Throwing objects at actors is not disabled in the checks
            -- as in some situations this might be desired, for example
            -- when attacking enemies.
          END IF.

  END VERB.
END ADD TO.



-- ==============================================================


----- THROW TO


-- ==============================================================


SYNTAX throw_to = throw (projectile) 'to' (recipient)
      WHERE projectile ISA OBJECT
      ELSE SAY illegal_parameter_obj OF my_game.
    AND recipient ISA ACTOR
      ELSE SAY illegal_parameter2_there OF my_game.


ADD TO EVERY OBJECT
  VERB throw_to
        WHEN projectile
      CHECK my_game CAN throw_to
        ELSE SAY azione_bloccata OF my_game.
          AND projectile IS examinable
        ELSE
          IF projectile IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "lanciare."
          ELSE SAY ogg1_inadatto_pl OF my_game. "lanciare."
          END IF.
          AND projectile IS takeable
          ELSE SAY check_obj_takeable OF my_game.
          AND recipient IS examinable
          ELSE SAY check_obj_suitable_at OF my_game.
          AND projectile <> recipient
        ELSE SAY check_obj_not_obj2_to OF my_game.
          AND recipient NOT IN hero
              ELSE SAY check_obj2_not_in_hero1 OF my_game.
          AND recipient <> hero
          ELSE SAY check_obj2_not_hero1 OF my_game.
          AND CURRENT LOCATION IS lit
        ELSE SAY check_locazione_illuminata OF my_game.
          AND projectile IS reachable AND projectile IS NOT distant
        ELSE
          IF projectile IS NOT reachable
            THEN
              IF projectile IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF projectile IS distant
            THEN
              IF projectile IS NOT plurale
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.
          AND recipient IS NOT distant
          ELSE
          IF recipient IS NOT plurale
            THEN SAY check_obj2_not_distant_sg OF my_game.
            ELSE SAY check_obj2_not_distant_pl OF my_game.
          END IF.
          DOES
        -- implicit taking:
        IF projectile NOT DIRECTLY IN hero
          THEN LOCATE projectile IN hero.
            SAY implicit_taking_message OF my_game.
        END IF.
        -- end of implicit taking.

        "It wouldn't accomplish anything trying to throw"
        SAY the projectile. "to" SAY THE recipient. "."

  END VERB.
END ADD TO.



-- ==============================================================


------ THROW IN


-- ==============================================================


SYNTAX throw_in = throw (projectile) 'in' (cont)
  WHERE projectile ISA OBJECT
      ELSE SAY illegal_parameter_obj OF my_game.
  AND cont ISA OBJECT
      ELSE
      IF cont ISA ACTOR
        THEN SAY illegal_parameter_act OF my_game.
        ELSE SAY illegal_parameter2_there OF my_game.
      END IF.
  AND cont ISA CONTAINER
        ELSE SAY illegal_parameter2_there OF my_game.


ADD TO EVERY OBJECT
  VERB throw_in
        WHEN projectile
      CHECK my_game CAN throw_in
        ELSE SAY azione_bloccata OF my_game.
              AND projectile IS examinable
          ELSE
          IF projectile IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY ogg1_inadatto_sg OF my_game. "lanciare."
            ELSE SAY ogg1_inadatto_pl OF my_game. "lanciare."
          END IF.
          AND projectile IS takeable
          ELSE SAY check_obj_takeable OF my_game.
          AND cont IS examinable
          ELSE SAY check_obj2_suitable_there OF my_game.
          AND projectile <> cont
        ELSE SAY check_obj_not_obj2_in OF my_game.
          AND cont <> hero
              ELSE SAY check_obj2_not_hero1 OF my_game.
      AND cont NOT IN hero
        ELSE SAY check_obj2_not_in_hero1 OF my_game.
          AND CURRENT LOCATION IS lit
          ELSE SAY check_locazione_illuminata OF my_game.
          AND projectile NOT IN cont
          ELSE
          IF projectile IS NOT plurale
            THEN SAY check_obj_not_in_cont_sg OF my_game.
            ELSE SAY check_obj_not_in_cont_pl OF my_game.
          END IF.
          AND projectile IS reachable AND projectile IS NOT distant
        ELSE
          IF projectile IS NOT reachable
            THEN
              IF projectile IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF projectile IS distant
            THEN
              IF projectile IS NOT plurale
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.
          AND cont IS NOT distant
          ELSE
          IF cont IS NOT plurale
            THEN SAY check_obj2_not_distant_sg OF my_game.
            ELSE SAY check_obj2_not_distant_pl OF my_game.
          END IF.
      AND projectile IN allowed OF cont
        ELSE
          IF projectile IS NOT plurale
            THEN SAY check_obj_allowed_in_sg OF my_game.
            ELSE SAY check_obj_allowed_in_pl OF my_game.
          END IF.
          AND cont IS open
          ELSE
          IF cont IS NOT plurale
            THEN SAY check_obj2_open_sg OF my_game.
            ELSE SAY check_obj2_open_pl OF my_game.
          END IF.
          DOES
        -- implicit taking:
        IF projectile NOT DIRECTLY IN hero
          THEN LOCATE projectile IN hero.
            SAY implicit_taking_message OF my_game.
        END IF.
        -- end of implicit taking.

        "It wouldn't accomplish anything trying to throw"
        SAY THE projectile. "into" SAY THE cont. "."

        -- Throwing objects into containers, even when these objects are
        -- in the 'allowed' set of the container, is not successful by
        -- default; this is to avoid successful outcomes for commands like
        -- 'throw plate into cupboard' etc.

  END VERB.
END ADD TO.



-- ==============================================================


----- TIE


-- ==============================================================


SYNTAX tie = tie (obj)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
  VERB tie
    CHECK my_game CAN tie
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "legare."
          ELSE SAY ogg1_inadatto_pl OF my_game. "legare."
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    DOES
      "You must state where you want to tie" SAY THE obj. "."
    END VERB.
END ADD TO.



-- ==============================================================


----- TIE TO


-- ==============================================================


SYNTAX tie_to = tie (obj) 'to' (target)
  WHERE obj ISA OBJECT
    ELSE SAY illegal_parameter_obj OF my_game.
  AND target ISA THING
    ELSE SAY illegal_parameter_obj OF my_game.



ADD TO EVERY THING
  VERB tie_to
    WHEN obj
      CHECK my_game CAN tie_to
        ELSE SAY azione_bloccata OF my_game.
      AND obj IS examinable
          ELSE
          IF obj IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY ogg1_inadatto_sg OF my_game. "legare."
            ELSE SAY ogg1_inadatto_pl OF my_game. "legare."
          END IF.
      AND target IS examinable
          ELSE SAY check_obj2_suitable_there OF my_game.
      AND obj <> target
        ELSE SAY check_obj_not_obj2_to OF my_game.
      AND obj IS takeable
          ELSE SAY check_obj_takeable OF my_game.
      AND CURRENT LOCATION IS lit
        ELSE SAY check_locazione_illuminata OF my_game.
      AND obj IS reachable AND obj IS NOT distant
        ELSE
          IF obj IS NOT reachable
            THEN
              IF obj IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF obj IS distant
            THEN
              IF obj IS NOT plurale
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.
      AND target IS reachable AND target IS NOT distant
        ELSE
          IF target IS NOT reachable
            THEN
              IF target IS NOT plurale
                THEN SAY ogg2_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg2_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF target IS distant
            THEN
              IF target IS NOT plurale
                THEN SAY check_obj2_not_distant_sg OF my_game.
                ELSE SAY check_obj2_not_distant_pl OF my_game.
              END IF.
          END IF.
      DOES
        -- implicit taking:
        IF obj NOT DIRECTLY IN hero
          THEN LOCATE obj IN hero.
            SAY implicit_taking_message OF my_game.
        END IF.
        -- end of implicit taking.

        "It's not possible to tie" SAY THE obj. "to" SAY THE target. "."

  END VERB.
END ADD TO.



-- ==============================================================


----- TOUCH


-- ==============================================================


SYNTAX touch = touch (obj)
  WHERE obj ISA THING
      ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY THING
  VERB touch
    CHECK my_game CAN touch
        ELSE SAY azione_bloccata OF my_game.
        AND obj IS examinable
              ELSE
        IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF my_game. "toccare."
          ELSE SAY ogg1_inadatto_pl OF my_game. "toccare."
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
      AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
      AND obj <> hero
      ELSE SAY check_obj_not_hero3 OF my_game.
      AND obj IS inanimate
      ELSE SAY check_obj_inanimate2 OF my_game. "."
          DOES
          "You feel nothing unexpected."
  END VERB.
END ADD TO.


SYNONYMS feel = touch.



-- ==============================================================


----- TOUCH WITH


-- ==============================================================


SYNTAX touch_with = touch (obj) 'with' (instr)
  WHERE obj ISA THING
      ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
  AND instr ISA OBJECT
        ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter2_with_sg OF my_game.
        ELSE SAY illegal_parameter2_with_pl OF my_game.
      END IF.


ADD TO EVERY THING
  VERB touch_with
    WHEN obj
      CHECK my_game CAN touch_with
        ELSE SAY azione_bloccata OF my_game.
          AND obj IS examinable
              ELSE
          IF obj IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY ogg1_inadatto_sg OF my_game. "toccare."
            ELSE SAY ogg1_inadatto_pl OF my_game. "toccare."
          END IF.
          AND instr IS examinable
          ELSE
          IF instr IS NOT plurale
            THEN SAY check_obj2_suitable_with_sg OF my_game.
            ELSE SAY check_obj2_suitable_with_pl OF my_game.
        END IF.
          AND obj <> instr
        ELSE SAY check_obj_not_obj2_with OF my_game.
          AND instr <> hero
        ELSE SAY check_obj2_not_hero1 OF my_game.
          AND instr IN hero
          ELSE SAY check_obj2_in_hero OF my_game.
          AND obj IS inanimate
          ELSE SAY check_obj_inanimate2 OF my_game.
          AND CURRENT LOCATION IS lit
          ELSE SAY check_locazione_illuminata OF my_game.
          AND obj IS reachable AND obj IS NOT distant
        ELSE
          IF obj IS NOT reachable
            THEN
              IF obj IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF obj IS distant
            THEN
              IF obj IS NOT plurale
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.
          DOES
              "You touch" SAY THE obj. "with" SAY THE instr. ". Nothing special happens."
    END VERB.
END ADD TO.



-- ==============================================================


----- TURN  (+ rotate)


-- ==============================================================


SYNTAX turn = turn (obj)
  WHERE obj ISA OBJECT
    ELSE
      IF my_game CAN NOT turn
        THEN
          "The verb '$v' is not in your vocabulary."
        ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
      END IF.




ADD TO EVERY OBJECT
    VERB turn
    CHECK my_game CAN turn
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          THEN SAY check_obj_suitable_sg OF my_game.
          ELSE SAY check_obj_suitable_pl OF my_game.
        END IF.
    AND obj IS movable
      ELSE
        IF obj IS NOT plurale
          THEN SAY check_obj_suitable_sg OF my_game.
          ELSE SAY check_obj_suitable_pl OF my_game.
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.

    DOES
      IF obj DIRECTLY IN hero
        THEN "You turn" SAY THE obj. "in your hands, noticing nothing special."
        ELSE "That wouldn't accomplish anything."
      END IF.
  END VERB.
END ADD TO.



-- ==============================================================


----- TURN ON


-- ==============================================================


----- Only devices and lightsources can be turned on and off. These classes are
----- defined in 'classes.i' with proper checks for 'on' and 'NOT on', 'lit' and 'NOT lit'.
----- Trying to turn on or off an ordinary object will default here to "That's not
----- something you can turn on".


SYNTAX turn_on = turn 'on' (app)
  WHERE app ISA OBJECT
    ELSE
      IF app IS NOT plurale
        THEN SAY illegal_parameter_on_sg OF my_game.
        ELSE SAY illegal_parameter_on_pl OF my_game.
      END IF.

    turn_on = switch 'on' (app).

      turn_on = turn (app) 'on'.

      turn_on = switch (app) 'on'.



-- Note that 'switch' is not declared a synonym for 'turn'.
-- This is because 'turn' has also other meanings, for example 'turn page' which is
-- not equal with 'switch page'.
-- A separate 'switch' verb is declared in 'classes.i', classes 'device' and 'lightsource'.
-- This verb merely covers cases where the player forgets (or doesn't bother) to type 'on' or 'off'.



ADD TO EVERY OBJECT
  VERB turn_on
      CHECK my_game CAN turn_on
      ELSE SAY azione_bloccata OF my_game.
    DOES
      IF app IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.

      "something you can $v on."
    END VERB.
END ADD TO.



-- ==============================================================


----- TURN OFF


-- ==============================================================


----- Only devices and lightsources can be turned on and off. These classes
----- are defined in 'classes.i' with proper checks for 'on' and 'NOT on',
----- 'lit' and 'NOT lit'.


SYNTAX turn_off = turn off (app)
  WHERE app ISA OBJECT
    ELSE
      IF app IS NOT plurale
        THEN SAY illegal_parameter_off_sg OF my_game.
        ELSE SAY illegal_parameter_off_pl OF my_game.
      END IF.

      turn_off = switch off (app).

      turn_off = turn (app) off.

      turn_off = switch (app) off.



-- Note that 'switch' is not declared a synonym for 'turn'.
-- This is because 'turn' has also other meanings, for example 'turn page' which is
-- not equal with 'switch page'.
-- A separate 'switch' verb is declared in 'classes.i', classes 'device' and 'lightsource'.
-- This verb merely covers cases where the player forgets to type 'on' or 'off'.


ADD TO EVERY OBJECT
  VERB turn_off
    CHECK my_game CAN turn_off
      ELSE SAY azione_bloccata OF my_game.
    DOES
      IF app IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.

      "something you can $v off."
    END VERB.
END ADD TO.


-- ==============================================================


----- UNLOCK


-- ==============================================================


SYNTAX unlock = unlock (obj)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.


ADD TO EVERY OBJECT
  VERB unlock
    CHECK my_game CAN unlock
      ELSE SAY azione_bloccata OF my_game.
    AND obj IS lockable
          ELSE
        IF obj IS NOT plurale
          THEN SAY check_obj_suitable_sg OF my_game.
          ELSE SAY check_obj_suitable_pl OF my_game.
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    AND obj IS locked
          ELSE
        IF obj IS NOT plurale
          THEN SAY check_obj_locked_sg OF my_game.
          ELSE SAY check_obj_locked_pl OF my_game.
        END IF.
    DOES
      IF matching_key OF obj IN hero
        THEN MAKE obj NOT locked.
          "(with" SAY THE matching_key OF obj. "$$)$n"
          "You unlock" SAY THE obj. "."
            ELSE "You don't have the key that unlocks" SAY THE obj. "."
      END IF.
  END VERB.
END ADD TO.



-- =============================================================


----- UNLOCK WITH


-- =============================================================


SYNTAX unlock_with = unlock (obj) 'with' (key)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
  AND key ISA OBJECT
      ELSE SAY illegal_parameter_with_sg OF my_game. "."


ADD TO EVERY OBJECT
  VERB unlock_with
        WHEN obj
      CHECK my_game CAN unlock_with
        ELSE SAY azione_bloccata OF my_game.
          AND obj IS lockable
              ELSE
          IF obj IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY ogg1_inadatto_sg OF my_game. "sbloccare."
            ELSE SAY ogg1_inadatto_pl OF my_game. "sbloccare."
          END IF.
      AND key IS examinable
        ELSE
          IF obj IS NOT plurale
            THEN SAY check_obj2_suitable_with_sg OF my_game.
            ELSE SAY check_obj2_suitable_with_pl OF my_game.
          END IF.
          AND key IN hero
          ELSE SAY check_obj2_in_hero OF my_game.
          AND obj <> key
        ELSE SAY check_obj_not_obj2_with OF my_game.
          AND CURRENT LOCATION IS lit
        ELSE SAY check_locazione_illuminata OF my_game.
          AND obj IS reachable AND obj IS NOT distant
        ELSE
          IF obj IS NOT reachable
            THEN
              IF obj IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF obj IS distant
            THEN
              IF obj IS NOT plurale
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.
      AND obj IS locked
        ELSE
          IF obj IS NOT plurale
            THEN SAY check_obj_locked_sg OF my_game.
            ELSE SAY check_obj_locked_pl OF my_game.
          END IF.
      AND key = matching_key OF obj
        ELSE SAY check_door_matching_key OF my_game.
        DOES
        MAKE obj NOT locked.
        "You unlock" SAY THE obj. "with" SAY THE key. "."
    END VERB.
END ADD TO.



-- ==============================================================


----- USE


-- ==============================================================


SYNTAX 'use' = 'use' (obj)
  WHERE obj ISA OBJECT
    ELSE SAY illegal_parameter_obj OF my_game.



ADD TO EVERY OBJECT
  VERB 'use'
    CHECK my_game CAN 'use'
      ELSE SAY azione_bloccata OF my_game.
    DOES
      "Please be more specific. How do you intend to use"

      IF obj IS NOT plurale
        THEN "it?"
        ELSE "them?"
      END IF.
    END VERB.
END ADD TO.



-- ==============================================================


----- USE WITH


-- ==============================================================


SYNTAX use_with = 'use' (obj) 'with' (instr)
  WHERE obj ISA OBJECT
      ELSE SAY illegal_parameter_obj OF my_game.
  AND instr ISA OBJECT
      ELSE SAY illegal_parameter_obj OF my_game.


ADD TO EVERY OBJECT
  VERB use_with
        WHEN obj
      CHECK my_game CAN use_with
        ELSE SAY azione_bloccata OF my_game.
      AND obj <> instr
        ELSE SAY check_obj_not_obj2_with OF my_game.
      DOES
        "Please be more specific. How do you intend to use them together?"
    END VERB.
END ADD TO.




-- ==============================================================


----- VERBOSE (see also -> BRIEF)


-- ==============================================================


SYNTAX verbose = verbose.


VERB verbose
  CHECK my_game CAN modalità_lunga
    ELSE SAY azione_bloccata OF my_game.
  DOES
    VISITS 0.
    -- "Verbose mode is now on. Location descriptions will be
    -- always shown in full."

    "Il gioco è ora in modalità" STYLE EMPHASIZED. "lunga" STYLE NORMAL. ", le
    descrizioni dei luoghi saranno mostrate sempre (anche se già visitati)."
END VERB.






-- ==============================================================


----- WEAR


-- ==============================================================



SYNTAX wear = wear (obj)
  WHERE obj ISA OBJECT
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_sg OF my_game.
        ELSE SAY illegal_parameter_pl OF my_game.
      END IF.
   wear = put 'on' (obj).
   wear = put (obj) 'on'.
   wear = don (obj).


ADD TO EVERY OBJECT
  VERB wear
    CHECK my_game CAN indossare
        ELSE SAY azione_bloccata OF my_game.
    AND obj NOT IN worn
      ELSE SAY check_obj_not_in_worn1 OF my_game.
    AND obj IS takeable
      ELSE
        IF THIS IS NOT plurale
          THEN SAY check_obj_takeable OF my_game.
          ELSE SAY check_obj_takeable OF my_game.
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND obj IS reachable AND obj IS NOT distant
      ELSE
        IF obj IS NOT reachable
          THEN
            IF obj IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF obj IS distant
          THEN
            IF obj IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.

    DOES
      IF obj IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.
      "something you can wear."

  END VERB.
END ADD TO.



-- ==============================================================


----- @WHAT AM I


-- ==============================================================
-- Ha to change it because the 'i' here was conflicting with the 'i' synonym
-- for NOISE WORDS. (befor 'i' was the default syntax for "inventory", so it
-- didn't conflict because it was not a synonym but a verb and syntax).

-- SYNTAX what_am_i = 'what' am i.
SYNTAX what_am_i = cosa sono.


VERB what_am_i
  CHECK my_game CAN what_am_i
    ELSE SAY azione_bloccata OF my_game.
  DOES
    "Maybe examining yourself might help."
END VERB.



-- ==============================================================


----- WHAT IS


-- ==============================================================


SYNTAX what_is = 'what' 'is' (obj)!
  WHERE obj ISA THING
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_what_sg OF my_game.
        ELSE SAY illegal_parameter_what_pl OF my_game.
      END IF.

  what_is = 'what' 'are' (obj)!.


ADD TO EVERY THING
  VERB what_is
    CHECK my_game CAN what_is
      ELSE SAY azione_bloccata OF my_game.
    DOES
      "You'll have to find it out yourself."
    END VERB.
END ADD TO.



-- ==============================================================


----- @WHERE AM I


-- ==============================================================
-- Ha to change it because the 'i' here was conflicting with the 'i' synonym
-- for NOISE WORDS. (befor 'i' was the default syntax for "inventory", so it
-- didn't conflict because it was not a synonym but a verb and syntax).

-- SYNTAX where_am_i = 'where' am i.
SYNTAX where_am_i = dove mi trovo.
SYNTAX where_am_i = dove sono.


VERB where_am_i
  CHECK my_game CAN where_am_i
    ELSE SAY azione_bloccata OF my_game.
  DOES
    LOOK.
END VERB.



-- ==============================================================


----- WHERE IS


-- ==============================================================


SYNTAX where_is = 'where' 'is' (obj)!
  WHERE obj ISA THING
    ELSE
      IF obj IS NOT plurale
        THEN SAY illegal_parameter_what_sg OF my_game.
        ELSE SAY illegal_parameter_what_pl OF my_game.
      END IF.

  where_is = 'where' 'are' (obj)!.


ADD TO EVERY THING
  VERB where_is
    CHECK my_game CAN where_is
      ELSE SAY azione_bloccata OF my_game.
    AND obj NOT AT hero
      ELSE
        IF obj IS NOT plurale
          THEN SAY check_obj_not_at_hero_sg OF my_game.
          ELSE SAY check_obj_not_at_hero_pl OF my_game.
        END IF.
    DOES
      "You'll have to find it out yourself."
  END VERB.
END ADD TO.



-- ==============================================================


----- @WHO AM I


-- ==============================================================

-- Ha to change it because the 'i' here was conflicting with the 'i' synonym
-- for NOISE WORDS. (befor 'i' was the default syntax for "inventory", so it
-- didn't conflict because it was not a synonym but a verb and syntax).

-- SYNTAX who_am_i = who am i.
SYNTAX who_am_i = chi sono.


VERB who_am_i
  CHECK my_game CAN who_am_i
    ELSE SAY azione_bloccata OF my_game.
  DOES
    "Maybe examining yourself might help."
END VERB.



-- ==============================================================


----- WHO IS


-- ==============================================================


SYNTAX who_is = 'who' 'is' (act)!
  WHERE act ISA ACTOR
    ELSE
      IF act IS NOT plurale
        THEN SAY illegal_parameter_who_sg OF my_game.
        ELSE SAY illegal_parameter_who_pl OF my_game.
      END IF.

  who_is = 'who' 'are' (act)!.


ADD TO EVERY ACTOR
  VERB who_is
    CHECK my_game CAN who_is
      ELSE SAY azione_bloccata OF my_game.
    DOES
      "You'll have to find it out yourself."
    END VERB.
END ADD TO.



-- ==============================================================


----- WRITE


-- ==============================================================


SYNTAX write = write (txt) 'on' (obj)
    WHERE txt ISA STRING
      ELSE SAY illegal_parameter_string OF my_game.
    AND obj ISA OBJECT
      ELSE SAY illegal_parameter2_there OF my_game.

   write = write (txt) 'in' (obj).


ADD TO EVERY OBJECT
  VERB write
        WHEN obj
      CHECK my_game CAN write
        ELSE SAY azione_bloccata OF my_game.
            AND obj IS writeable
        ELSE SAY check_obj_writeable OF my_game.
        AND CURRENT LOCATION IS lit
        ELSE SAY check_locazione_illuminata OF my_game.
        AND obj IS reachable AND obj IS NOT distant
        ELSE
          IF obj IS NOT reachable
            THEN
              IF obj IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF my_game.
                ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
              END IF.
          ELSIF obj IS distant
            THEN
              IF obj IS NOT plurale
                THEN SAY check_obj_not_distant_sg OF my_game.
                ELSE SAY check_obj_not_distant_pl OF my_game.
              END IF.
          END IF.

        DOES
        "You don't have anything to write with."

        -- To make it work:
          -- IF text OF obj = ""
          -- THEN SET text OF obj TO txt.
          -- ELSE SET text OF obj TO text OF obj + " " + txt.
          -- END IF.

        -- "You write ""$$" SAY txt. "$$"" on" SAY THE obj. "."
          -- MAKE obj readable.
    END VERB.
END ADD TO.


-- A couple of other formulations are understood but they guide the player to
-- use the correct syntax:


SYNTAX write_error1 = write 'on' (obj)
  WHERE obj ISA OBJECT
    ELSE "Please use the formulation WRITE ""TEXT"" ON (IN) OBJECT
      to write something."


ADD TO EVERY OBJECT
  VERB write_error1
    DOES "Please use the formulation WRITE ""TEXT"" ON (IN) OBJECT
      to write something."
  END VERB.
END ADD TO.


SYNTAX write_error2 = write.

VERB write_error2
  DOES "Please use the formulation WRITE ""TEXT"" ON (IN) OBJECT
      to write something."
END VERB.


SYNTAX write_error3 = write (txt)
  WHERE txt ISA STRING
    ELSE "Please use the formulation WRITE ""TEXT"" ON (IN) OBJECT
      to write something."


ADD TO EVERY STRING
  VERB write_error3
    DOES "Please use the formulation WRITE ""TEXT"" ON (IN) OBJECT
      to write something."
  END VERB.
END ADD TO.



-- ================================================================


----- YES


-- ================================================================


SYNTAX yes = yes.


VERB yes
  CHECK my_game CAN yes
    ELSE SAY azione_bloccata OF my_game.
  DOES "Really?"
END VERB.



-- end of file.

