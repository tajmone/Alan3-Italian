-- "lib_verbi.i" v0.3.18 (2018/07/27)
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

--+--------------------+------------------------------+-----------------------------+---+---+---+
--| VERBO              | SINONIMI                     | SINTASSI                    | M | A | O |
--|--------------------|------------------------------|-----------------------------|---|---|---|
--| abbandona_partita  | quit, Q                      | abbandona [partita]         | x | 0 |   |
--| carica_partita     | restore                      | carica [partita]            | x | 0 |   |
--| ricomincia_partita | restart                      | ricomincia [partita]        | x | 0 |   |
--| salva_partita      | save                         | salva [partita]             | x | 0 |   |
--+--------------------+------------------------------+-----------------------------+---+---+---+
--| apri               |                              | apri (ogg)                  |   | 1 | x |
--| apri_con           |                              | apri (ogg) con (strum)      |   | 2 | x |
--| aspetta            | attendi, Z                   | aspetta                     |   | 0 |   |
--| attraversa         |                              | attraversa (ogg)            |   | 1 | x |
--| bevi               |                              | bevi (liq)                  |   | 1 |   |
--| blocca             | serra                        | blocca (ogg)                |   | 1 | x |
--| blocca_con         | serra                        | blocca (ogg) con (chiave)   |   | 2 | x |
--| brucia             |                              | brucia (ogg)                |   | 1 | x |
--| brucia_con         |                              | brucia (ogg) con (strum)    |   | 2 | x |
--| chi_è              |                              | chi è (png)                 |   | 1 |   | * BUGGED!
--| chi_sono_io        |                              | chi sono                    |   | 0 |   |
--| chiudi             |                              | chiudi (ogg)                |   | 1 | x |
--| chiudi_con         |                              | chiudi (ogg) con (strum)    |   | 2 | x |
--| compra             | acquista                     | compra (merce)              |   | 1 |   |
--| cosa_è             |                              | cosa è (ogg)                |   | 1 | x | * BUGGED!
--| cosa_sono_io       |                              | cosa sono                   |   | 0 |   |
--| dai_a              | porgi, offri                 | dai (ogg) a (ricevente)     |   | 2 | x |
--| dici_No            |                              | no                          |   | 0 |   |
--| dici_Sì            |                              | sì                          |   | 0 |   |
--| dormi              | riposa                       | dormi                       |   | 0 |   |
--| dove_è             |                              | dove è (ogg)                |   | 1 | x | * BUGGED!
--| dove_mi_trovo      |                              | dove sono                   |   | 0 |   |
--| esamina            | guarda, descrivi, osserva, X | esamina (ogg)               |   | 1 | x |
--| gioca_con          |                              | gioca con (ogg)             |   | 1 | x |
--| inventario         | inv                          | inventario                  | x | 0 |   |
--| lascia             | abbandona, metti giù, posa   | lascia (ogg)*               |   | 1 | x |
--| leggi              |                              | leggi (ogg)                 |   | 1 | x |
--| mangia             |                              | mangia (cibo)               |   | 1 |   |
--| prega              |                              | prega                       |   | 0 |   |
--| prendi             | afferra, raccogli, trasporta | prendi (ogg)                |   | 1 | x |
--| prendi_da          | rimuovi, togli               | prendi (ogg) da (detentore) |   | 2 | x |
--| rifai              | ancora, G                    | rifai                       |   | 0 |   |
--| rompi              | distruggi, spacca, sfonda    | rompi (ogg)                 |   | 1 | x |
--| rompi_con          | distruggi, spacca, sfonda    | rompi (ogg) con (strum)     |   | 2 | x |
--| sblocca            |                              | sblocca (ogg)               |   | 1 | x |
--| sblocca_con        |                              | sblocca (ogg) con (chiave)  |   | 2 | x |
--| scrivi             |                              | scrivi "testo" su (ogg)     |   | 1 | x |
--| spogliati          | svestiti                     | spogliati                   |   | 0 |   |
--| suona              |                              | suona (ogg)                 |   | 1 | x |
--| usa                |                              | usa (ogg)                   |   | 1 | x |
--| usa_con            |                              | usa (ogg) con (strum)       |   | 2 | x |
--| vai_a              |                              | vai a (dest)                |   | 1 |   |
--| vendi              |                              | vendi (merce)               |   | 1 |   |
--+--------------------+------------------------------+-----------------------------+---+---+---+
--|                    |                              |                             |   | 0 | x |

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

--# NOTA: i verbi preceduti da "-->>>" sono stati già tradotti.

----- VERB        SYNONYMS                                 SYNTAX                              ARITY   OBJ

----- about       (+ help, info)                           about                               0
-->>> again       (+ g)                                    again                               0
----- answer      (+ reply)                                answer (topic)                      1
----- ask         (+ enquire, inquire, interrogate)        ask (act) about (topic)             2
----- ask_for                                              ask (act) for (obj)                 2       x
----- attack      (+ beat, fight, hit, punch)              attack (target)                     1
----- attack_with                                          attack (target) with (weapon)       2
----- bite        (+ chew)                                 bite (obj)                          1       x
-->>> break       (+ destroy)                              break (obj)                         1       x
-->>> break_with                                           break (obj) with (instr)            2       x
----- brief                                                brief                               0
-->>> burn                                                 burn (obj)                          1       x
-->>> burn_with                                            burn (obj) with (instr)             2       x
-->>> buy         (+ purchase)                             buy (item)                          1
----- catch                                                catch (obj)                         1       x
----- clean       (+ polish, wipe)                         clean (obj)                         1       x
----- climb                                                climb (obj)                         1       x
----- climb_on                                             climb on (surface)                  1
-->>> climb_through                                        climb through (obj)                 1       x
-->>> close       (+ shut)                                 close (obj)                         1       x
-->>> close_with                                           close (obj) with (instr)            2       x
----- consult                                              consult (source) about (topic)      2
----- credits     (+ acknowledgments, author, copyright)   credits                             2
----- cut                                                  cut (obj)                           1       x
----- cut_with                                             cut (obj) with (instr)              2       x
----- dance                                                dance                               0
----- dig                                                  dig (obj)                           1       x
----- dive                                                 dive                                0
----- dive_in                                              dive in (liq)                       1
-->>> drink                                                drink (liq)                         1
----- drive                                                drive (vehicle)                     1
-->>> drop        (+ discard, dump, reject)                drop (obj)                          1       x
-->>> eat                                                  eat (food)                          1
----- empty                                                empty (obj)                         1       x
----- empty_in                                             empty (obj) in (cont)               2       x
----- empty_on                                             empty (obj) on (surface)            2       x
----- enter                                                enter (obj)                         1
-->>> examine     (+ check, inspect, observe, x)           examine (obj)                       1       x
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
-->>> give                                                 give (obj) to (recipient)           1       x
-->>> go_to                                                go to (dest)                        1
----- hint        (+ hints)                                hint                                0
-->>> i           (+ inv, inventory)                       inventory                           0
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
-->>> lock                                                 lock (obj)                          1       x
-->>> lock_with                                            lock (obj) with (key)               2       x
----- look        (+ gaze, peek)                           look                                0
----- look_at                                              look at (obj)                       1       x
----- look_behind                                          look behind (bulk)                  1
----- look_in                                              look in (cont)                      1
----- look_out_of                                          look out of (obj)                   1       x
----- look_through                                         look through (bulk)                 1
----- look_under                                           look under (bulk)                   1
----- look_up                                              look up                             0
-->>> no                                                   no                                  0
----- notify (on, off)                                     notify. notify on. notify off       0
-->>> open                                                 open (obj)                          1       x
-->>> open_with                                            open (obj) with (instr)             2       x
-->>> play                                                 play (obj)                          1       x
-->>> play_with                                            play with (obj)                     1       x
----- pour        (= defined at the verb 'empty')          pour (obj)                          1       x
----- pour_in     (= defined at the verb 'emtpy_in')       pour (obj) in (cont)                2       x
----- pour_on     (= defined at the verb 'empty_on')       pour (obj) on (surface)             2       x
-->>> pray                                                 pray                                0
----- pry                                                  pry (obj)                           1       x
----- pry_with                                             pry (obj) with (instr)              2       x
----- pull                                                 pull (obj)                          1       x
----- push                                                 push (obj)                          1       x
----- push_with                                            push (obj) with (instr)             2       x
----- put         (+ lay, place)                           put (obj)                           1       x
----- put_against                                          put (obj) against (bulk))           2       x
----- put_behind                                           put (obj) behind (bulk)             2       x
-->>> put_down    (= defined at the verb 'drop')           put down (obj)                      1       x
----- put_in      (+ insert)                               put (obj) in (cont)                 2       x
----- put_near                                             put (obj) near (bulk)               2       x
----- put_on                                               put (obj) on (surface)              2       x
----- put_under                                            put (obj) under (bulk)              2       x
-->>> read                                                 read (obj)                          1       x
----- remove                                               remove (obj)                        1       x
-->>> restart                                              restart                             0
-->>> restore                                              restore                             0
----- rub                                                  rub (obj)                           1       x
-->>> save                                                 save                                0
----- say                                                  say (topic)                         1
----- say_to                                               say (topic) to (act)                2
----- score                                                score                               0
----- scratch                                              scratch (obj)                       1       x
----- script                                               script. script on. script off.      0
----- search                                               search (obj)                        1       x
-->>> sell                                                 sell (item)                         1
----- shake                                                shake (obj)                         1       x
----- shoot (at)                                           shoot at (target)                   1
----- shoot_with                                           shoot (target) with (weapon)        2
----- shout       (+ scream, yell)                         shout                               0
----- show        (+ reveal)                               show (obj) to (act)                 2       x
----- sing                                                 sing                                0
----- sip                                                  sip (liq)                           1
----- sit (down)                                           sit.  sit down.                     0
----- sit_on                                               sit on (surface)                    1
-->>> sleep       (+ rest)                                 sleep                               0
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
-->>> take        (+ carry, get, grab, hold, obtain)       take (obj)                          1       x
-->>> take_from   (+ remove from)                          take (obj) from (holder)            2       x
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
-->>> undress                                              undress                             0
-->>> unlock                                               unlock (obj)                        1       x
-->>> unlock_with                                          unlock (obj) with (key)             2       x
-->>> use                                                  use (obj)                           1       x
-->>> use_with                                             use (obj) with (instr)              2       x
----- verbose                                              verbose                             0
-->>> wait        (+ z)                                    wait                                0
----- wear                                                 wear (obj)                          1       x
-->>> what_am_i                                            what am i                           0
-->>> what_is                                              what is (obj)                       1       x
-->>> where_am_i                                           where am i                          0
-->>> where_is                                             where is (obj)                      1       x
-->>> who_am_i                                             who am i                            0
-->>> who_is                                               who is (obj)                        1       x
-->>> write                                                write (txt) on (obj)                2       x
-->>> yes                                                  yes                                 0




----- Directions (north, south, up, etc.) are declared in the file 'locations.i'.



--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- § 1 - Meta Comandi di Partita
--------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================

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

SYNONYMS Q = 'quit'.

META VERB abbandona_partita
  CHECK mia_AT CAN abbandonare_partita
    ELSE SAY azione_bloccata OF mia_AT.
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
  CHECK mia_AT CAN caricare_partita
    ELSE SAY azione_bloccata OF mia_AT.
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
  CHECK mia_AT CAN ricominciare_partita
    ELSE SAY azione_bloccata OF mia_AT.
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
  CHECK mia_AT CAN salvare_partita
    ELSE SAY azione_bloccata OF mia_AT.
  DOES
    SAVE.
END VERB.




--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- § 2 - Comandi di Gioco
--------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================

-- Comandi diretti al personaggio protagonista per interagire con l'avventura.




-- ==============================================================


----- @APRI --> @OPEN


-- ==============================================================


SYNTAX apri = apri (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "aprire."


ADD TO EVERY OBJECT
  VERB apri
    CHECK mia_AT CAN aprire
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS apribile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "aprire."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    AND ogg IS NOT aperto
      ELSE
        IF ogg IS NOT femminile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg_già_aperto_ms OF mia_AT.
              ELSE SAY ogg_già_aperto_mp OF mia_AT.
            END IF.
          ELSE
            IF ogg IS NOT plurale
              THEN SAY ogg_già_aperto_fs OF mia_AT.
              ELSE SAY ogg_già_aperto_fp OF mia_AT.
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
            "bloccat$$"
            IF ogg IS NOT femminile
              THEN
                IF ogg IS NOT plurale
                  THEN "o." -- GNA = msi
                  ELSE "i." -- GNA = mpi
                END IF.
              ELSE
                IF ogg IS NOT plurale
                  THEN "a." -- GNA = fsi
                  ELSE "e." -- GNA = fpi
                END IF.
            END IF.
        END IF.
      ELSIF ogg IS NOT bloccato
        THEN MAKE ogg aperto.
        "Apri" SAY THE ogg. "."
      END IF.
  END VERB.
END ADD TO.



-- ==============================================================


----- @APRI CON --> @OPEN WITH


-- ==============================================================

-- SYNTAX open_with = open (ogg) 'with' (strum)

SYNTAX apri_con = apri (ogg) con (strum)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
    "aprire."
  AND strum IsA OBJECT
    ELSE
      IF strum IS NOT plurale
        --  "$+1 non [è/sono] qualcosa con cui poter"
        THEN SAY ogg2_illegale_CON_sg OF mia_AT.
        ELSE SAY ogg2_illegale_CON_pl OF mia_AT.
      END IF.
      "aprire." -- @TODO: "aprire altre cose"??                                 IMPROVE!



ADD TO EVERY OBJECT
  VERB apri_con
        WHEN ogg
      CHECK mia_AT CAN aprire_con
        ELSE SAY azione_bloccata OF mia_AT.
      AND ogg IS apribile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY ogg1_inadatto_sg OF mia_AT.
            ELSE SAY ogg1_inadatto_pl OF mia_AT.
          END IF.
          "aprire."
      AND strum IS esaminabile
        ELSE
          IF strum IS NOT plurale
            --  "$+1 non [è/sono] qualcosa con cui poter"
            THEN SAY ogg2_illegale_CON_sg OF mia_AT.
            ELSE SAY ogg2_illegale_CON_pl OF mia_AT.
          END IF.
          "aprire." -- @TODO: ".. altre cose"??                                 IMPROVE!
      AND ogg <> strum
        ELSE SAY check_obj_not_obj2_with OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
              END IF.
          END IF.
      AND strum IN hero -- @TODO:                                               TRANSLATE!
        ELSE SAY check_obj2_in_hero OF mia_AT.
      AND ogg IS NOT aperto
        ELSE
          IF ogg IS NOT femminile
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg_già_aperto_ms OF mia_AT.
                ELSE SAY ogg_già_aperto_mp OF mia_AT.
              END IF.
            ELSE
              IF ogg IS NOT plurale
                THEN SAY ogg_già_aperto_fs OF mia_AT.
                ELSE SAY ogg_già_aperto_fp OF mia_AT.
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
                "bloccat$$"
                IF ogg IS NOT femminile
                  THEN
                    IF ogg IS NOT plurale
                      THEN "o." -- GNA = msi
                      ELSE "i." -- GNA = mpi
                    END IF.
                  ELSE
                    IF ogg IS NOT plurale
                      THEN "a." -- GNA = fsi
                      ELSE "e." -- GNA = fpi
                    END IF.
                END IF.
             -- IF ogg IS NOT plurale
             --   THEN "is locked."
             --   ELSE "are locked."
            END IF.
          ELSE "Non puoi aprire" SAY THE ogg. "con" SAY THE strum. "."
        END IF.


    END VERB.
END ADD TO.



-- ==============================================================


----- @ASPETTA --> WAIT (= z)


-- ==============================================================


SYNTAX aspetta = aspetta.

SYNONYMS
  z, attendi = aspetta.

VERB aspetta
  CHECK mia_AT CAN aspettare
    ELSE SAY azione_bloccata OF mia_AT.
  DOES
    "Il tempo passa."
END VERB.


-- ==============================================================


----- @ATTRAVERSA --> CLIMB THROUGH


-- ==============================================================

-- SYNTAX climb_through = climb through (obj)

SYNTAX attraversa = attraversa (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "attraversare."

ADD TO EVERY OBJECT
  VERB attraversa
    CHECK mia_AT CAN attraversare
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "attraversare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    AND hero IS NOT seduto
      --> @TODO!!                                                               TRANSLATE!
      ELSE SAY check_hero_not_sitting3 OF mia_AT.
    AND hero IS NOT sdraiato
      --> @TODO!!                                                               TRANSLATE!
      ELSE SAY check_hero_not_lying_down3 OF mia_AT.
    DOES
      IF ogg IS NOT plurale
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "attraversare."
   -- IF ogg IS NOT plurale
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
  WHERE liq IsA liquido    -- see 'classes.i'
    ELSE
      IF liq IS NOT plurale
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "bere."


ADD TO EVERY liquido
  VERB bevi
    CHECK mia_AT CAN bere
      ELSE SAY azione_bloccata OF mia_AT.
    AND liq IS potabile
      ELSE
        IF liq IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "bere."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND liq IS raggiungibile AND liq IS NOT distante
      ELSE
        IF liq IS NOT raggiungibile
          THEN
            IF liq IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF liq IS distante
          THEN
            IF liq IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
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
                --> @TODO!!                                                     TRANSLATE!
                THEN "You can't carry" SAY THE liq. "around in your bare hands."
                  -- the action stops here if the container is not takeable.
                ELSE
                  LOCATE recipiente OF liq IN hero.
                  --> @TODO!!                                                   TRANSLATE!
                  "(taking" SAY THE recipiente OF THIS. "of" SAY THIS. "first)$n"
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
                    THEN "o." -- GNA = msi
                    ELSE "i." -- GNA = mpi
                  END IF.
                ELSE
                  IF liq IS NOT plurale
                    THEN "a." -- GNA = fsi
                    ELSE "e." -- GNA = fpi
                  END IF.
              END IF.
              SAY THE liq. "."
              LOCATE liq AT limbo.
          END IF.
      END IF.

  END VERB.
END ADD TO.


-- Note that the verb 'sip' is defined separately, with a slightly different behaviour.




-- ==============================================================


----- @BLOCCA --> @LOCK


-- ==============================================================


SYNTAX blocca = blocca (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "bloccare."

SYNONYMS
  serra = blocca.


ADD TO EVERY OBJECT
  VERB blocca
    CHECK mia_AT CAN bloccare
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS bloccabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "bloccare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    AND ogg IS NOT bloccato
      ELSE
        IF ogg IS NOT femminile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg_già_bloccato_ms OF mia_AT.
              ELSE SAY ogg_già_bloccato_mp OF mia_AT.
            END IF.
          ELSE
            IF ogg IS NOT plurale
              THEN SAY ogg_già_bloccato_fs OF mia_AT.
              ELSE SAY ogg_già_bloccato_fp OF mia_AT.
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
      SAY specificare_CON_cosa OF mia_AT. "bloccare" SAY THE ogg.
   -- ELSE "Devi specificare con cosa vuoi bloccare" SAY THE ogg.
   -- ELSE "You have to state what you want to lock" SAY THE ogg. "with."
    END IF.

  END VERB.
END ADD TO.



-- ==============================================================


----- @BLOCCA CON --> @LOCK WITH


-- ==============================================================


SYNTAX blocca_con = blocca (ogg) con (chiave)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "bloccare."
  AND chiave IsA OBJECT
    ELSE
      IF chiave IS NOT plurale
        --  "$+1 non [è/sono] qualcosa con cui poter"
        THEN SAY ogg2_illegale_CON_sg OF mia_AT.
        ELSE SAY ogg2_illegale_CON_pl OF mia_AT.
      END IF.
      "bloccare." -- @TODO: ".. altre cose"??                                   IMPROVE!


ADD TO EVERY OBJECT
    VERB blocca_con
        WHEN ogg
      CHECK mia_AT CAN bloccare_con
        ELSE SAY azione_bloccata OF mia_AT.
      AND ogg IS bloccabile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY ogg1_inadatto_sg OF mia_AT.
            ELSE SAY ogg1_inadatto_pl OF mia_AT.
          END IF.
          "bloccare."
      AND chiave IS esaminabile
        ELSE
          IF chiave IS NOT plurale
            --  "$+1 non [è/sono] qualcosa con cui poter"
            THEN SAY ogg2_illegale_CON_sg OF mia_AT.
            ELSE SAY ogg2_illegale_CON_pl OF mia_AT.
          END IF.
          "bloccare." -- @TODO: ".. altre cose"??                               IMPROVE!
      AND ogg <> chiave
        ELSE SAY check_obj_not_obj2_with OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND ogg IS NOT bloccato
        ELSE
          IF ogg IS NOT femminile
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg_già_bloccato_ms OF mia_AT.
                ELSE SAY ogg_già_bloccato_mp OF mia_AT.
              END IF.
            ELSE
              IF ogg IS NOT plurale
                THEN SAY ogg_già_bloccato_fs OF mia_AT.
                ELSE SAY ogg_già_bloccato_fp OF mia_AT.
              END IF.
          END IF.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
              END IF.
          END IF.
      AND chiave IN hero -- @TODO:                                              TRANSLATE!
        ELSE SAY check_obj2_in_hero OF mia_AT.
      AND chiave = chiave_abbinata OF ogg -- @TODO:                             TRANSLATE!
        ELSE SAY check_door_matching_key OF mia_AT.

      DOES
        MAKE ogg bloccato. "Tu"
        IF ogg IS aperto
          THEN "chiudi e"
            MAKE ogg NOT aperto.
        END IF.
        "blocchi" SAY THE ogg. "con" SAY THE chiave. "."
    END VERB.
END ADD TO.



-- =================================================================

----- @BRUCIA --> @BURN (VERB + SYNTAX)

----- BURN


-- =================================================================
-- @NOTA: In i6 "incendia" è sinonimo di "brucia" e "brucia con".
--        Inoltre, "col" è sinonimo di "con".

SYNTAX brucia = brucia (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "bruciare."

ADD TO EVERY OBJECT
  VERB brucia
    CHECK mia_AT CAN bruciare
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "bruciare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    DOES
      SAY specificare_CON_cosa OF mia_AT. "bruciare" SAY THE ogg. "."
   -- "You must state what you want to burn" SAY THE ogg. "with."
  END VERB.
END ADD TO.



-- =================================================================

----- @BRUCIA_CON --> @BURN_WITH (VERB + SYNTAX)

----- BURN WITH


-- =================================================================


SYNTAX brucia_con = brucia (ogg) 'con' (strum)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "bruciare."
  AND strum IsA OBJECT
    ELSE
      IF strum IS NOT plurale
        THEN SAY ogg2_illegale_CON_sg OF mia_AT.
        ELSE SAY ogg2_illegale_CON_pl OF mia_AT.
      END IF.
      "bruciare." -- @TODO: ".. altre cose"??                                   IMPROVE!


ADD TO EVERY OBJECT
  VERB brucia_con
    WHEN ogg
      CHECK mia_AT CAN bruciare_con
        ELSE SAY azione_bloccata OF mia_AT.
      AND ogg IS esaminabile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY ogg1_inadatto_sg OF mia_AT.
            ELSE SAY ogg1_inadatto_pl OF mia_AT.
          END IF.
          "bruciare."
      AND strum IS esaminabile
        ELSE
          IF strum IS NOT plurale
            --> @TODO!!                                                         TRANSLATE!
            THEN SAY check_obj2_suitable_with_sg OF mia_AT.
            ELSE SAY check_obj2_suitable_with_pl OF mia_AT.
          END IF.
      AND ogg <> strum
        --> @TODO!!                                                             TRANSLATE!
        ELSE SAY check_obj_not_obj2_with OF mia_AT.
      AND strum IN hero
        --> @TODO!!                                                             TRANSLATE!
        ELSE SAY check_obj2_in_hero OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
              END IF.
          END IF.

      DOES
        "Non puoi bruciare" SAY THE ogg. "con" SAY THE strum. "."
     -- "You can't burn" SAY THE ogg. "with" SAY THE strum. "."
  END VERB.
END ADD TO.




-- ==============================================================


----- @CHI E' --> @WHO IS


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

SYNTAX  chi_è = chi é (png)!   --> BUG: 'è' instead of 'é'                      FIXME!
  WHERE png IsA ACTOR
    ELSE
      IF png IS NOT plurale
        THEN SAY illegal_parameter_who_sg OF mia_AT.
        ELSE SAY illegal_parameter_who_pl OF mia_AT.
      END IF.

        chi_è = chi sono (png)!.


ADD TO EVERY ACTOR
  VERB chi_è
    CHECK mia_AT CAN domandare_chi_è
      ELSE SAY azione_bloccata OF mia_AT.
    DOES
      "Dovrai scoprirlo da te!"
   -- "You'll have to find it out yourself."
    END VERB.
END ADD TO.


-- ==============================================================


----- @CHI SONO --> @WHO AM I


-- ==============================================================

-- SYNTAX who_am_i = who am i.

SYNTAX chi_sono_io = chi sono io.
       chi_sono_io = chi sono.


VERB chi_sono_io
  CHECK mia_AT CAN domandare_chi_sono_io
    ELSE SAY azione_bloccata OF mia_AT.
  DOES
    "Hai provato a esaminare te stesso? Forse ti aiuterebbe."
 -- "Maybe examining yourself might help."
END VERB.



-- ==============================================================


----- @CHIUDI --> @CLOSE (+ shut)


-- ==============================================================


SYNTAX chiudi = chiudi (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "chiudere."


-- SYNONYMS shut = close.


ADD TO EVERY OBJECT
  VERB chiudi
    CHECK mia_AT CAN chiudere
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS apribile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "chiudere."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    AND ogg IS aperto
      ELSE
        IF ogg IS NOT femminile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg_già_chiuso_ms OF mia_AT.
              ELSE SAY ogg_già_chiuso_mp OF mia_AT.
            END IF.
          ELSE
            IF ogg IS NOT plurale
              THEN SAY ogg_già_chiuso_fs OF mia_AT.
              ELSE SAY ogg_già_chiuso_fp OF mia_AT.
            END IF.
        END IF.

    DOES
          MAKE ogg NOT aperto.
          "Chiudi" SAY THE ogg. "."
  END VERB.
END ADD TO.



-- ==============================================================


----- @CHIUDI CON --> @CLOSE WITH


-- ==============================================================


SYNTAX chiudi_con = chiudi (ogg) con (strum)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "chiudere."
  AND strum IsA OBJECT
    ELSE
      IF strum IS NOT plurale
        THEN SAY ogg2_illegale_CON_sg OF mia_AT.
        ELSE SAY ogg2_illegale_CON_pl OF mia_AT.
      END IF.
      "chiudere" SAY THE ogg. "." -- TODO:                                      IMPROVE!


ADD TO EVERY OBJECT
  VERB chiudi_con
    WHEN ogg
      CHECK mia_AT CAN chiudere_con
        ELSE SAY azione_bloccata OF mia_AT.
      AND ogg IS apribile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY ogg1_inadatto_sg OF mia_AT.
            ELSE SAY ogg1_inadatto_pl OF mia_AT.
          END IF.
          "chiudere."
      AND strum IS esaminabile
        ELSE
          IF strum IS NOT plurale
            THEN SAY check_obj2_suitable_with_sg OF mia_AT.
            ELSE SAY check_obj2_suitable_with_pl OF mia_AT.
          END IF.
      AND ogg <> strum
        ELSE SAY check_obj_not_obj2_with OF mia_AT.
      AND strum IN hero
        ELSE SAY check_obj2_in_hero OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
              END IF.
        END IF.
      AND ogg IS aperto
        ELSE
          IF ogg IS NOT femminile
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg_già_chiuso_ms OF mia_AT.
                ELSE SAY ogg_già_chiuso_mp OF mia_AT.
              END IF.
            ELSE
              IF ogg IS NOT plurale
                THEN SAY ogg_già_chiuso_fs OF mia_AT.
                ELSE SAY ogg_già_chiuso_fp OF mia_AT.
              END IF.
          END IF.

      DOES
        "Non puoi chiudere" SAY THE ogg. "con" SAY THE strum. "."
  END VERB.
END ADD TO.


-- ==================================================================


----- @COMPRA --> @BUY (+ purchase)


-- ==================================================================


SYNTAX compra = compra (merce)
  WHERE merce IsA OBJECT
    ELSE
      IF merce IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "comprare."

SYNONYMS acquista = compra.

-- SYNONYMS purchase = buy.

ADD TO EVERY OBJECT
  VERB compra
    CHECK mia_AT CAN comprare
      ELSE SAY azione_bloccata OF mia_AT.
    AND merce IS esaminabile
      ELSE
        IF merce IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
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
  END VERB.
END ADD TO.



-- ==============================================================


----- @COSA E'? ---> @WHAT IS


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

SYNTAX  cosa_è = cosa é (ogg)!            --> BUG: 'è' instead of 'é'           FIXME!
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        THEN SAY illegal_parameter_what_sg OF mia_AT.
        ELSE SAY illegal_parameter_what_pl OF mia_AT.
      END IF.

        cosa_è = che cosa é (ogg)!.       --> BUG: 'è' instead of 'é'           FIXME!
        cosa_è = 'cos''é' (ogg)!.         --> BUG: 'è' instead of 'é'           FIXME!
        cosa_è = che 'cos''é' (ogg)!.     --> BUG: 'è' instead of 'é'           FIXME!

        cosa_è = cosa sono (ogg)!.
        cosa_è = che cosa sono (ogg)!.



ADD TO EVERY THING
  VERB cosa_è
    CHECK mia_AT CAN domandare_cosa_è
      ELSE SAY azione_bloccata OF mia_AT.
    DOES
      "Dovrai scoprirlo da te!"
   -- "You'll have to find it out yourself."
    END VERB.
END ADD TO.




-- ==============================================================


----- @COSA SONO IO? ---> @WHAT AM I


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
    ELSE SAY azione_bloccata OF mia_AT.
  DOES
    "Hai provato a esaminare te stesso? Forse ti aiuterebbe."
 -- "Maybe examining yourself might help."
END VERB.




-- ==============================================================

-- @DAI_A -> @GIVE (SYNTAX HEADER)

----- GIVE (+ hand, offer)


-- ==============================================================
-- #NOTA: Aggiungere anche "'dai' 'a' (ricevente) (obj)"?

-- SYNTAX give_to = 'give' (obj) 'to' (recipient)

SYNTAX dai_a = 'dai' (ogg) 'a' (ricevente)
  WHERE ogg IsA OBJECT
    --> @TODO!!                                                                 TRANSLATE!
    ELSE SAY illegal_parameter_obj OF mia_AT.
  AND ricevente IsA ACTOR
    ELSE
      IF ricevente IS NOT plurale
        --> @TODO!!                                                             TRANSLATE!
        THEN SAY illegal_parameter2_to_sg OF mia_AT.
        ELSE SAY illegal_parameter2_to_pl OF mia_AT.
      END IF.


SYNONYMS porgi, offri = dai.
-- SYNONYMS hand, offer = give.


ADD TO EVERY OBJECT
  VERB dai_a
        WHEN ogg
      CHECK mia_AT CAN dare -- (was CAN give)
        ELSE SAY azione_bloccata OF mia_AT.
      AND ogg IS prendibile
        --> @TODO!!                                                             TRANSLATE!
        ELSE SAY check_obj_takeable OF mia_AT.
      AND ogg <> ricevente
        --> @TODO!!                                                             TRANSLATE!
        ELSE SAY check_obj_not_obj2_to OF mia_AT.
      AND ricevente <> hero
        --> @TODO!!                                                             TRANSLATE!
        ELSE SAY check_obj2_not_hero3 OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND ogg NOT IN ricevente
        ELSE
          IF ricevente IS NOT plurale
            --> @TODO!!                                                        TRANSLATE!
            THEN SAY check_obj_not_in_act_sg OF mia_AT.
            ELSE SAY check_obj_not_in_act_pl OF mia_AT.
          END IF.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
              END IF.
          END IF.
      AND ricevente IS raggiungibile AND ricevente IS NOT distante
        ELSE
          IF ricevente IS NOT raggiungibile
            THEN
              IF ricevente IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF ricevente IS distante
            THEN
              IF ricevente IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
              END IF.
          END IF.
          DOES
        -- implicit taking:
        IF ogg NOT DIRECTLY IN hero
          --> @TODO!!                                                           TRANSLATE!
          THEN SAY implicit_taking_message OF mia_AT.
          LOCATE ogg IN hero.
        END IF.
        -- end of implicit taking.

        LOCATE ogg IN ricevente.
        --> @TODO!!                                                             TRANSLATE!
        "You give" SAY THE ogg. "to" SAY THE ricevente. "."


  END VERB.
END ADD TO.




-- ==============================================================


----- @DICI "No" --> @NO


-- ==============================================================

-- SYNTAX 'no' = 'no'.

SYNTAX dici_No = 'no'.


VERB dici_No
  CHECK mia_AT CAN dire_no
    ELSE SAY azione_bloccata OF mia_AT.
  DOES "Davvero?"
    -- "Really?"
END VERB.


-- ================================================================


----- @DICI "Sì" --> @YES


-- ================================================================

-- SYNTAX yes = yes.

SYNTAX dici_Sì = sì.


VERB dici_Sì
  CHECK mia_AT CAN dire_sì
    ELSE SAY azione_bloccata OF mia_AT.
  DOES "Davvero?"
    -- "Really?"
END VERB.



-- ==============================================================


----- @DORMI --> @SLEEP (+ rest)


-- ==============================================================


SYNTAX dormi = dormi.

SYNONYMS riposa = dormi.

VERB dormi
  CHECK mia_AT CAN dormire
    ELSE SAY azione_bloccata OF mia_AT.
  DOES
    "Non è il momento di riposare."
END VERB.




-- ==============================================================


----- @DOVE E' --> @WHERE IS


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

SYNTAX  dove_è = dove é (ogg)!            --> BUG: 'è' instead of 'é'           FIXME!
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        THEN SAY illegal_parameter_what_sg OF mia_AT.
        ELSE SAY illegal_parameter_what_pl OF mia_AT.
      END IF.

        dove_è = 'dov''é' (ogg)!.         --> BUG: 'è' instead of 'é'           FIXME!
        dove_è = dove sono (ogg)!.
        dove_è = dove si trova (ogg)!.
        dove_è = dove si trovano (ogg)!.


ADD TO EVERY THING
  VERB dove_è
    CHECK mia_AT CAN domandare_dove_è
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg NOT AT hero
      ELSE
        IF ogg IS NOT plurale
          THEN SAY check_obj_not_at_hero_sg OF mia_AT.
          ELSE SAY check_obj_not_at_hero_pl OF mia_AT.
        END IF.
    DOES
      "Dovrai scoprirlo da te!"
   -- "You'll have to find it out yourself."
  END VERB.
END ADD TO.




-- ==============================================================


----- @DOVE MI TROVO --> @WHERE AM I


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
    ELSE SAY azione_bloccata OF mia_AT.
  DOES
    LOOK.
END VERB.



-- ==============================================================


----- @ESAMINA --> @EXAMINE (+ look at)


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
        THEN SAY illegal_parameter_examine_sg OF mia_AT.
        ELSE SAY illegal_parameter_examine_pl OF mia_AT.
      END IF.

       esamina = 'guarda' (ogg).

SYNONYMS
  descrivi, osserva, X = esamina.


ADD TO EVERY THING
  VERB esamina
    CHECK mia_AT CAN esaminare
      ELSE SAY azione_bloccata OF mia_AT.
        AND ogg IS esaminabile
          ELSE
        IF ogg IS NOT plurale
          THEN SAY check_obj_suitable_examine_sg OF mia_AT.
          ELSE SAY check_obj_suitable_examine_pl OF mia_AT.
        END IF.
        AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS NOT scenario
      ELSE
        IF ogg IS NOT plurale
          THEN SAY check_obj_not_scenery_sg OF mia_AT. --> "$+1 non è importante ai fini del gioco."
          ELSE SAY check_obj_not_scenery_pl OF mia_AT. --> "$+1 non sono importanti ai fini del gioco."
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
  END VERB.
END ADD TO.


-- ==============================================================


----- @GIOCA CON --> @PLAY WITH


-- ==============================================================
-- SYNTAX play_with = 'play' 'with' (ogg)


SYNTAX gioca_con = gioca con (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        THEN SAY illegal_parameter_with_sg OF mia_AT.
        ELSE SAY illegal_parameter_with_pl OF mia_AT.
      END IF.



ADD TO EVERY THING
  VERB gioca_con
    CHECK mia_AT CAN giocare_con
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY check_obj_suitable_with_sg OF mia_AT.
          ELSE SAY check_obj_suitable_with_pl OF mia_AT.
        END IF.
    AND ogg <> hero
      ELSE SAY check_obj_not_hero6 OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    DOES
      "Ripensandoci, non vedi alcuna utilità nel giocare con" SAY THE ogg. "."
   -- "After second thought you don't find it purposeful to start
   --  playing with" SAY THE ogg. "."
  END VERB.
END ADD TO.




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


SYNONYMS inv = inventario.


META VERB inventario
  CHECK mia_AT CAN inventariare
    ELSE SAY azione_bloccata OF mia_AT.
  DOES
    LIST hero.

    IF COUNT DIRECTLY IN abbigliamento > 0   -- See the file 'classes.i', subclass 'clothing'.
      THEN LIST abbigliamento.     -- This code will list what the hero is wearing.
    END IF.

END VERB.




-- ==============================================================


----- @LASCIA --> @DROP


-- ==============================================================

-- i6: lascia, lancia, abbandona, posa, metti giù

SYNTAX  lascia = lascia (ogg)*
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "lasciare." -- @TODO: "maneggiare"??                                      IMPROVE!

        lascia = abbandona (ogg)*.
        lascia = metti giù (ogg)*.
        lascia = posa (ogg)*.



ADD TO EVERY OBJECT
  VERB lascia
    CHECK mia_AT CAN lasciare
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IN hero
      ELSE
        IF ogg IN abbigliamento
          THEN SAY check_obj_not_in_worn3 OF mia_AT.
          ELSE SAY check_obj_in_hero OF mia_AT.
        END IF.

    DOES
      LOCATE ogg HERE.
       "Lasci" SAY THE ogg. "."
    -- "Dropped."
  END VERB.
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


----- @LEGGI --> @READ


-- ==============================================================
-- SYNTAX read = read (obj)


SYNTAX leggi = leggi (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "leggere."


ADD TO EVERY OBJECT
    VERB leggi
    CHECK mia_AT CAN leggere
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS leggibile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "leggere."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT plurale
          THEN SAY ogg1_distante_sg OF mia_AT.
          ELSE SAY ogg1_distante_pl OF mia_AT.
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
    END VERB.
END ADD TO.


-- ==============================================================


----- @MANGIA -> @EAT


-- ==============================================================


-- SYNTAX eat = eat (food)

SYNTAX mangia = mangia (cibo)
  WHERE cibo IsA OBJECT
    ELSE
      IF cibo IS NOT plurale
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "mangiare."


ADD TO EVERY OBJECT
  VERB mangia
    CHECK mia_AT CAN mangiare
      ELSE SAY azione_bloccata OF mia_AT.
    AND cibo IS commestibile
      ELSE
        IF cibo IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "mangiare."
    AND cibo IS prendibile
      --> @TODO!!                                                               TRANSLATE!
      ELSE SAY check_obj_takeable OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND cibo IS raggiungibile AND cibo IS NOT distante
      ELSE
        IF cibo IS NOT raggiungibile
          THEN
            IF cibo IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF cibo IS distante
          THEN
            IF cibo IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    DOES
      -- implicit taking:
      IF cibo NOT DIRECTLY IN hero
        THEN LOCATE cibo IN hero.
          --> @TODO!!                                                           TRANSLATE!
          SAY implicit_taking_message OF mia_AT.
      END IF.
      -- end of implicit taking.

      "Mangi" SAY THE cibo. "."
   -- "You eat all of" SAY THE cibo. "."
      LOCATE cibo AT limbo.

  END VERB.
END ADD.




-- ==============================================================


----- @PREGA --> @PRAY (VERB + SYNTAX)


-- ==============================================================


SYNTAX prega = prega.


VERB prega
  CHECK mia_AT CAN pregare
    ELSE SAY azione_bloccata OF mia_AT.
  DOES "Sembra che le tue preghiere non siano state esaudite." --> da i6
  -- DOES "Your prayers don't seem to help right now."
END VERB.


-- ==============================================================


-- @PRENDI -> @TAKE (SYNTAX HEADER)
----- TAKE  (+ carry, get, grab, hold, obtain, pick up)

----- PRENDI  (+ afferra, raccogli, trasporta)


-- ==============================================================

-- @PRENDI -> @TAKE (SYNTAX)         => take (obj)

SYNTAX prendi = prendi (ogg)
      WHERE ogg IsA THING
        ELSE
      IF ogg IS NOT plurale
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
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
    CHECK mia_AT CAN prendere --> CAN take
      ELSE SAY azione_bloccata OF mia_AT. --#-> "Non puoi farlo."
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "prendere."
    AND ogg <> hero
      --> @TODO!!                                                               TRANSLATE!
      ELSE SAY check_obj_not_hero1 OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS NOT scenario
      ELSE
        IF THIS IS NOT plurale
          --> @TODO!!                                                           TRANSLATE!
          THEN SAY check_obj_not_scenery_sg OF mia_AT. --#-> "$+1 is not important."
          ELSE SAY check_obj_not_scenery_pl OF mia_AT. --#-> "$+1 are not important."
        END IF.
    AND ogg IS spostabile
   -- ELSE SAY check_obj_movable OF mia_AT. --#-> "It's not possible to $v $+1."
      ELSE
      --#i6/7: "È/Sono fissat* al proprio posto"
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
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "prendere."
    AND ogg NOT DIRECTLY IN hero
      -- i.e. the object to be taken is not carried by the hero already
      --> @TODO!!                                                               TRANSLATE!
      ELSE SAY check_obj_not_in_hero2 OF mia_AT.
        AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
        AND peso Of ogg < 50
          ELSE
        IF ogg IS NOT plurale
          --> @TODO!!                                                           TRANSLATE!
          THEN SAY check_obj_weight_sg OF mia_AT.
          ELSE SAY check_obj_weight_pl OF mia_AT.
        END IF.
        DOES
      IF ogg IsA ACTOR
        --> @TODO!!                                                             TRANSLATE!
        THEN SAY THE ogg. "would probably object to that."
      -- actors are not prohibited from being taken in the checks; this is to
      -- allow for example a dog to be picked up, or a bird to be taken out of
      -- a cage, etc.


      ELSIF ogg IsA OBJECT
        THEN IF ogg DIRECTLY IN abbigliamento
            THEN LOCATE ogg IN hero.
              --> @TODO!!                                                       TRANSLATE!
              "You take off" SAY THE ogg. "and carry it in your hands."
              IF ogg IsA indumento
                THEN EXCLUDE ogg FROM wearing OF hero.
              END IF.
            ELSE LOCATE ogg IN hero.
              --@ "Taken." => "Pres[o|a|i|e]."
              "Pres$$"
              IF ogg IS NOT femminile
                THEN
                  IF ogg IS NOT plurale
                    THEN "o." -- GNA = msi
                    ELSE "i." -- GNA = mpi
                  END IF.
                ELSE
                  IF ogg IS NOT plurale
                    THEN "a." -- GNA = fsi
                    ELSE "e." -- GNA = fpi
                  END IF.
              END IF.
          END IF.
      END IF.

        -- Objects held by NPCs cannot be taken by the hero by default.
        -- The hero must *ask for* the object to obtain it.

  END VERB.
END ADD TO.




-- ==============================================================

-- @PRENDI_DA -> @TAKE_FROM (SYNTAX HEADER)

-----  TAKE FROM


-- ==============================================================

-- @PRENDI_DA -> @TAKE_FROM (SYNTAX)

--------------------------------------------------------------------------------
-- NOTE: Alternative 'dai' prepositions must be implement separately because
--       these can't be covered by synonyms due to conflicts with verb "dai"!!!
--------------------------------------------------------------------------------

SYNTAX prendi_da = 'prendi' (ogg) 'da' (detentore)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "prendere." -- @TODO: "maneggiare"??                                      IMPROVE
  AND detentore IsA THING
    ELSE
      IF detentore IS NOT plurale
        --> @TODO!!                                                             TRANSLATE!
        THEN SAY illegal_parameter2_from_sg OF mia_AT. --> "That's not something you can take things from."
        ELSE SAY illegal_parameter2_from_pl OF mia_AT. --> "Those are not something you can take things from."
      END IF.
  AND detentore IsA CONTAINER
    ELSE
      IF detentore IS NOT plurale
        --> @TODO!!                                                             TRANSLATE!
        THEN SAY illegal_parameter2_from_sg OF mia_AT.
        ELSE SAY illegal_parameter2_from_pl OF mia_AT.
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
      CHECK mia_AT CAN prendere_da --> CAN take_from
        ELSE SAY azione_bloccata OF mia_AT.
      AND ogg <> hero
        --> @TODO!!                                                             TRANSLATE!
        ELSE SAY check_obj_not_hero1 OF mia_AT.
      AND detentore <> hero
        --> @TODO!!                                                             TRANSLATE!
        ELSE SAY check_obj2_not_hero1 OF mia_AT.
          AND ogg NOT DIRECTLY IN hero
          ELSE  SAY check_obj_not_in_hero2 OF mia_AT. --#-> "You already have $+1."
      AND ogg <> detentore
        --> @TODO!!                                                             TRANSLATE!
        ELSE SAY check_obj_not_obj2_from OF mia_AT.  --#-> "It doesn't make sense to $v something from itself."
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND ogg IS NOT scenario
        ELSE
          IF ogg IS NOT plurale
            --> @TODO!!                                                         TRANSLATE!
            THEN SAY check_obj_not_scenery_sg OF mia_AT.
            ELSE SAY check_obj_not_scenery_pl OF mia_AT.
          END IF.
      AND detentore IS NOT scenario
        ELSE
          IF detentore IS NOT plurale
            --> @TODO!!                                                         TRANSLATE!
            THEN SAY check_obj2_not_scenery_sg OF mia_AT.
            ELSE SAY check_obj2_not_scenery_pl OF mia_AT.
          END IF.
      AND ogg IS spostabile
        --> @TODO!!                                                             TRANSLATE!
        ELSE SAY check_obj_movable OF mia_AT.
      AND ogg IS prendibile
            ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY ogg1_inadatto_sg OF mia_AT.
            ELSE SAY ogg1_inadatto_pl OF mia_AT.
          END IF.
          "prendere."
      AND detentore IS raggiungibile AND detentore IS NOT distante
        ELSE
          IF detentore IS NOT raggiungibile
            THEN
              IF detentore IS NOT plurale
                THEN SAY ogg2_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg2_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF detentore IS distante
            THEN
              IF detentore IS NOT plurale
                THEN SAY ogg2_distante_sg OF mia_AT.
                ELSE SAY ogg2_distante_pl OF mia_AT.
              END IF.
          END IF.
      AND peso Of ogg < 50
            ELSE
          IF ogg IS NOT plurale
            --> @TODO!!                                                         TRANSLATE!
            THEN SAY check_obj_weight_sg OF mia_AT.
            ELSE SAY check_obj_weight_pl OF mia_AT.
          END IF.
          AND ogg IN detentore
        ELSE
          IF detentore IS inanimato
            THEN
              IF detentore IsA supporto
                THEN
                  IF ogg IS NOT plurale
                    --> @TODO!!                                                 TRANSLATE!
                    THEN SAY check_obj_on_surface_sg OF mia_AT.
                    ELSE SAY check_obj_on_surface_pl OF mia_AT.
                  END IF.
                ELSE
                  IF ogg IS NOT plurale
                    --> @TODO!!                                                 TRANSLATE!
                    THEN SAY check_obj_in_cont_sg OF mia_AT.
                    ELSE SAY check_obj_in_cont_pl OF mia_AT.
                  END IF.
              END IF.
            ELSE
              IF detentore IS NOT plurale
                --> @TODO!!                                                     TRANSLATE!
                THEN SAY check_obj_in_act_sg OF mia_AT.
                ELSE SAY check_obj_in_act_pl OF mia_AT.
              END IF.
          END IF.
      DOES
        IF ogg IsA ACTOR
          --> @TODO!!                                                           TRANSLATE!
          THEN SAY THE ogg. "would probably object to that."
            -- actors are not prohibited from being taken in the checks; this is to
            -- allow for example a dog to be picked up, or a bird to be taken out of
            -- a cage, etc.
        ELSIF ogg IsA OBJECT
          THEN
            IF detentore IsA contenitore_elencato AND detentore IS NOT aperto
              --> @TODO!!                                                       TRANSLATE!
              THEN "You can't;" SAY THE detentore.
                  IF detentore IS NOT plurale
                    THEN "is"
                    ELSE "are"
                  END IF.
                "closed."
              ELSE
                LOCATE ogg IN hero.
                --> @TODO!!                                                     TRANSLATE!
                "You take" SAY THE ogg. "from" SAY THE detentore. "."
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


SYNONYMS g = rifai.


VERB rifai
  CHECK mia_AT CAN rifare
    ELSE SAY azione_bloccata OF mia_AT.
  DOES
    "[Il comando ANCORA non è supportato in questo gioco. In alternativa, prova
    ad usare i tasti 'su' e 'giù' per navigare tra i comandi precedenti.]"
    -- "[The AGAIN command is not supported in this game. As a workaround, try using
    --  the 'up' and 'down' arrow keys to scroll through your previous commands.]"
END VERB.



-- ===============================================================


----- @ROMPI --> @BREAK (VERB + SYNTAX)


-- ===============================================================


SYNTAX rompi = rompi (ogg)
    WHERE ogg IsA OBJECT
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "rompere."


SYNONYMS distruggi, spacca, sfonda = rompi.


ADD TO EVERY OBJECT
  VERB rompi
    CHECK mia_AT CAN rompere
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "rompere."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    DOES
    --@TODO: Rivedi frase (magari "forza bruta")
      "La violenza non è la giusta risposta a questo." -- presa da i6!
      -- "Resorting to brute force is not the solution here."
  END VERB.
END ADD TO.



-- ===============================================================


----- @ROMPI_CON --> @BREAK WITH (VERB + SYNTAX)


-- ===============================================================


-- SYNTAX break_with = break (obj) 'with' (instr)

SYNTAX rompi_con = rompi (ogg) 'con' (strum)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "rompere."
  AND strum IsA OBJECT
    ELSE
      IF strum IS NOT plurale
        THEN SAY ogg2_illegale_CON_sg OF mia_AT.
        ELSE SAY ogg2_illegale_CON_pl OF mia_AT.
      END IF.
      "rompere" SAY THE ogg. "."


ADD TO EVERY OBJECT
  VERB rompi_con
    WHEN ogg
      CHECK mia_AT CAN rompere_con
        ELSE SAY azione_bloccata OF mia_AT.
      AND ogg IS esaminabile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY ogg1_inadatto_sg OF mia_AT.
            ELSE SAY ogg1_inadatto_pl OF mia_AT.
          END IF.
          "rompere."
      AND strum IS esaminabile
        ELSE
          IF strum IS NOT plurale
            --> @TODO!!                                                         TRANSLATE!
            THEN SAY check_obj2_suitable_with_sg OF mia_AT.
            ELSE SAY check_obj2_suitable_with_pl OF mia_AT.
          END IF.
      AND ogg <> strum
        --> @TODO!!                                                             TRANSLATE!
        ELSE SAY check_obj_not_obj2_with OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND strum IN hero
        --> @TODO!!                                                             TRANSLATE!
        ELSE SAY check_obj2_in_hero OF mia_AT.
        --> @TODO!!                                                             TRANSLATE!
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
              END IF.
          END IF.
      DOES
        "Tentare di rompere" SAY THE ogg. "con" SAY THE strum.
        "non risolverebbe nulla."
      -- "Trying to break" SAY THE obj. "with" SAY THE strum.
      -- "wouldn't accomplish anything."
  END VERB.
END ADD TO.


-- ==============================================================


----- @SBLOCCA --> @UNLOCK


-- ==============================================================


SYNTAX sblocca = sblocca (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "sbloccare."


ADD TO EVERY OBJECT
  VERB sblocca
    CHECK mia_AT CAN sbloccare
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS bloccabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY check_obj_suitable_sg OF mia_AT.
          ELSE SAY check_obj_suitable_pl OF mia_AT.
        END IF.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    AND ogg IS bloccato
      ELSE
        IF ogg IS NOT femminile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg_già_sbloccato_ms OF mia_AT.
              ELSE SAY ogg_già_sbloccato_mp OF mia_AT.
            END IF.
          ELSE
            IF ogg IS NOT plurale
              THEN SAY ogg_già_sbloccato_fs OF mia_AT.
              ELSE SAY ogg_già_sbloccato_fp OF mia_AT.
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
  END VERB.
END ADD TO.



-- =============================================================


----- @SBLOCCA --> @UNLOCK WITH


-- =============================================================


SYNTAX sblocca_con = sblocca (ogg) con (chiave)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "sbloccare."
  AND chiave IsA OBJECT
      ELSE SAY illegal_parameter_with_sg OF mia_AT. "."


ADD TO EVERY OBJECT
  VERB sblocca_con
    WHEN ogg
      CHECK mia_AT CAN sbloccare_con
        ELSE SAY azione_bloccata OF mia_AT.
      AND ogg IS bloccabile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY ogg1_inadatto_sg OF mia_AT.
            ELSE SAY ogg1_inadatto_pl OF mia_AT.
          END IF.
          "sbloccare."
      AND chiave IS esaminabile
        ELSE
          IF chiave IS NOT plurale
            THEN SAY check_obj2_suitable_with_sg OF mia_AT.
            ELSE SAY check_obj2_suitable_with_pl OF mia_AT.
          END IF.
      AND chiave IN hero
          ELSE SAY check_obj2_in_hero OF mia_AT.
      AND ogg <> chiave
        ELSE SAY check_obj_not_obj2_with OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
              END IF.
          END IF.
      AND ogg IS bloccato
        ELSE
          IF ogg IS NOT femminile
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg_già_sbloccato_ms OF mia_AT.
                ELSE SAY ogg_già_sbloccato_mp OF mia_AT.
              END IF.
            ELSE
              IF ogg IS NOT plurale
                THEN SAY ogg_già_sbloccato_fs OF mia_AT.
                ELSE SAY ogg_già_sbloccato_fp OF mia_AT.
              END IF.
          END IF.
      AND chiave = chiave_abbinata OF ogg
        ELSE SAY check_door_matching_key OF mia_AT.
      DOES
        MAKE ogg NOT bloccato.
        "Sblocchi" SAY THE ogg. "con" SAY THE chiave. "."
    END VERB.
END ADD TO.




-- ==============================================================


----- @SCRIVI --> @WRITE


-- ==============================================================
-- @TODO: Handle when (txt) is and empty string: should not add anything,
--        and/or report error!

-- SYNTAX write = write (txt) 'on' (obj)
--        write = write (txt) 'in' (obj).

SYNTAX  scrivi = scrivi (txt) su (ogg)
    WHERE txt IsA STRING
      ELSE SAY illegal_parameter_string OF mia_AT.
    AND ogg IsA OBJECT
      ELSE SAY illegal_parameter2_there OF mia_AT.

        scrivi = scrivi (txt) 'in' (ogg).


ADD TO EVERY OBJECT
  VERB scrivi
        WHEN ogg
      CHECK mia_AT CAN scrivere
        ELSE SAY azione_bloccata OF mia_AT.
      AND ogg IS scrivibile
        ELSE SAY check_obj_writeable OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
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
    END VERB.
END ADD TO.


-- A couple of other formulations are understood but they guide the player to
-- use the correct syntax:


SYNTAX  scrivi_errore1 = scrivi su (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      "Per poter scrivere, usa la sintassi SCRIVI ""TESTO"" SU (IN) OGGETTO."
    -- "Please use the formulation WRITE ""TEXT"" ON (IN) OBJECT
     -- to write something."

        scrivi_errore1 = scrivi 'in' (ogg).

ADD TO EVERY OBJECT
  VERB scrivi_errore1
    DOES
      "Per poter scrivere, usa la sintassi SCRIVI ""TESTO"" SU (IN) OGGETTO."

  END VERB.
END ADD TO.


SYNTAX scrivi_errore2 = scrivi.

VERB scrivi_errore2
    DOES
      "Per poter scrivere, usa la sintassi SCRIVI ""TESTO"" SU (IN) OGGETTO."
END VERB.


SYNTAX scrivi_errore3 = scrivi (txt)
  WHERE txt IsA STRING
    ELSE
      "Per poter scrivere, usa la sintassi SCRIVI ""TESTO"" SU (IN) OGGETTO."


ADD TO EVERY STRING
  VERB scrivi_errore3
    DOES
      "Per poter scrivere, usa la sintassi SCRIVI ""TESTO"" SU (IN) OGGETTO."
  END VERB.
END ADD TO.



-- ==============================================================


----- @SPOGLIATI -> @UNDRESS (SYNTAX + VERB)


-- ==============================================================


SYNTAX spogliati = spogliati.


SYNONYMS svestiti = spogliati.


VERB spogliati
  CHECK mia_AT CAN spogliarsi
    ELSE SAY azione_bloccata OF mia_AT.   --# "Non puoi farlo."
  AND CURRENT LOCATION IS illuminato
    ELSE SAY imp_luogo_buio OF mia_AT. --# "È troppo buio."
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
END VERB.




-- ==============================================================


----- @SUONA --> @PLAY


-- ==============================================================
-- SYNTAX 'play' = 'play' (ogg)

SYNTAX suona = suona (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "suonare."


ADD TO EVERY OBJECT
  VERB suona
    CHECK mia_AT CAN suonare
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY check_obj_suitable_with_sg OF mia_AT.
          ELSE SAY check_obj_suitable_with_pl OF mia_AT.
        END IF.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    DOES
      IF ogg IS NOT plurale
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "suonare."
   -- IF ogg IS NOT plurale
   --   THEN "That's not"
   --   ELSE "Those are not"
   -- END IF.
   -- "something you can play."
  END VERB.
END ADD TO.



-- ==============================================================


----- @USA --> @USE


-- ==============================================================


SYNTAX usa = usa (ogg)
  WHERE ogg IsA OBJECT
    ELSE "Solo gli oggetti sono utilizzabili!"
 -- ELSE SAY illegal_parameter_obj OF mia_AT.

-- @TODO: Valutare se usare un messagio my_game per qui sopra!

ADD TO EVERY OBJECT
  VERB usa
    CHECK mia_AT CAN usare
      ELSE SAY azione_bloccata OF mia_AT.
    DOES
   -- "Please be more specific. How do you intend to use"
      "Sii più specifico. Come vorresti usarl$$"
      IF ogg IS NOT femminile
        THEN
          IF ogg IS NOT plurale
            THEN "o?" -- GNA = msi
            ELSE "i?" -- GNA = mpi
          END IF.
        ELSE
          IF ogg IS NOT plurale
            THEN "a?" -- GNA = fsi
            ELSE "e?" -- GNA = fpi
          END IF.
      END IF.
    END VERB.
END ADD TO.



-- ==============================================================


----- @USA CON --> @USE WITH


-- ==============================================================


SYNTAX usa_con = usa (ogg) con (strum)
  WHERE ogg IsA OBJECT
    ELSE "Solo gli oggetti sono utilizzabili!"
 -- ELSE SAY illegal_parameter_obj OF mia_AT.
  AND strum IsA OBJECT
    ELSE "Solo gli oggetti sono utilizzabili!"
 -- ELSE SAY illegal_parameter_obj OF mia_AT.

-- @TODO: Valutare se usare un messagio my_game per qui sopra!


ADD TO EVERY OBJECT
  VERB usa_con
    WHEN ogg
      CHECK mia_AT CAN usare_con
        ELSE SAY azione_bloccata OF mia_AT.
      AND ogg <> strum
        ELSE SAY check_obj_not_obj2_with OF mia_AT. --@TODO                    TRANSLATE!
      DOES
     -- "Please be more specific. How do you intend to use them together?"
        "Sii più specifico. Come vorresti usarl$$"
        IF ogg IS NOT femminile OR strum IS NOT femminile
          THEN "i?" --| Se anche solo uno dei due è maschile useremo il maschile,
          ELSE "e?" --| altrimenti il femminile.
        END IF.
    END VERB.
END ADD TO.





-- ==============================================================


----- @VAI A -> @GO TO


-- ==============================================================


-- SYNTAX go_to = 'to' (dest)!

SYNTAX vai_a = 'a' (dest)!
  -- Because 'go' is predefined in the parser, it can't be used in verb definitions.
  -- The player will still be able to type 'go to [dest]' successfully.
  WHERE dest IsA THING
    ELSE SAY illegal_parameter_go OF mia_AT.


SYNONYMS vai = go.


-- SYNONYMS walk = go.
  -- here we define a synonym for the predefined parser word 'go'
  -- which is not visible in the syntax itself.
  -- Thus, you will be able to say for example both 'go to shop' and 'walk to shop'
  -- (as well as for example both 'go east' and 'walk east').


ADD TO EVERY THING
  VERB vai_a
    CHECK mia_AT CAN andare_a
      ELSE SAY azione_bloccata OF mia_AT.
    AND dest <> hero
      ELSE SAY check_obj_not_hero4 OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND hero IS NOT seduto
      ELSE SAY check_hero_not_sitting3 OF mia_AT.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down3 OF mia_AT.
    AND dest NOT AT hero
      ELSE
        IF dest IS NOT plurale
          THEN SAY check_obj_not_at_hero_sg OF mia_AT.
          ELSE SAY check_obj_not_at_hero_pl OF mia_AT.
        END IF.
    AND dest IS raggiungibile AND dest IS NOT distante
      ELSE
        IF dest IS NOT raggiungibile
          THEN
            IF dest IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF dest IS distante
          THEN
            IF dest IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    DOES
      "You can't see" SAY THE dest. "anywhere nearby. You must state a
      direction where you want to go."
    END VERB.
END ADD TO.




-- ==============================================================


----- @VENDI --> @SELL


-- ==============================================================

-- SYNTAX sell = sell (merce)

SYNTAX vendi = vendi (merce)
  WHERE merce IsA OBJECT
    ELSE
      IF merce IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "vendere."


ADD TO EVERY OBJECT
    VERB vendi
    CHECK mia_AT CAN vendere
      ELSE SAY azione_bloccata OF mia_AT.
    AND merce IS esaminabile
      ELSE
        IF merce IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "vendere."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    DOES
      "Qui nessuno è interessanto ad acquistare" SAY THE merce. "."
   -- "There's nobody here who would be interested in buying" SAY THE merce. "."
    END VERB.
END ADD TO.

-- Depending on the situation, it might be good to add a check whether the item is carried
-- by the hero or not, etc.



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


SYNONYMS help, info = 'about'.


VERB 'about'
  CHECK mia_AT CAN about
    ELSE SAY azione_bloccata OF mia_AT.
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


-- =============================================================


----- ANSWER    (+ reply)


-- =============================================================


SYNTAX answer = answer (argomento)
  WHERE argomento IsA STRING
    ELSE SAY illegal_parameter_string OF mia_AT.


SYNONYMS reply = answer.


ADD TO EVERY STRING
  VERB answer
    CHECK mia_AT CAN answer
      ELSE SAY azione_bloccata OF mia_AT.
    DOES
      "What was the question?"
    END VERB.
END ADD TO.



-- =============================================================


----- ASK (= enquire, inquire, interrogate)


-- =============================================================


SYNTAX ask = ask (png) about (argomento)!
  WHERE png IsA ACTOR
    ELSE
      IF png IS NOT plurale
        THEN SAY illegal_parameter_talk_sg OF mia_AT.
        ELSE SAY illegal_parameter_talk_pl OF mia_AT.
      END IF.
  AND argomento IsA THING
    ELSE
      IF argomento IS NOT plurale
        THEN SAY illegal_parameter_about_sg OF mia_AT.
        ELSE SAY illegal_parameter_about_pl OF mia_AT.
      END IF.

   ask = enquire (png) about (argomento)!.

   ask = inquire (png) about (argomento)!.

   ask = interrogate (png) about (argomento)!.

  -- Above, we define the alternative verbs in the syntax rather than as synonyms,
  -- as the verb 'ask_for' below doesn't sound correct with these alternatives allowed.


ADD TO EVERY ACTOR
  VERB ask
    WHEN png
      CHECK mia_AT CAN ask
        ELSE SAY azione_bloccata OF mia_AT.
      AND png <> hero
        ELSE SAY check_obj_not_hero1 OF mia_AT.
      AND png CAN parlare
        ELSE
          IF png IS NOT plurale
            THEN SAY check_act_can_talk_sg OF mia_AT.
            ELSE SAY check_act_can_talk_pl OF mia_AT.
          END IF.
      AND png IS NOT distante
        ELSE
          IF png IS NOT plurale
            THEN SAY ogg1_distante_sg OF mia_AT.
            ELSE SAY ogg1_distante_pl OF mia_AT.
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


SYNTAX ask_for = ask (png) 'for' (ogg)
  WHERE png IsA ACTOR
    ELSE
      IF png IS NOT plurale
        THEN SAY illegal_parameter_talk_sg OF mia_AT.
        ELSE SAY illegal_parameter_talk_pl OF mia_AT.
      END IF.
  AND ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY illegal_parameter_for_sg OF mia_AT.
        ELSE SAY illegal_parameter_for_pl OF mia_AT.
      END IF.


ADD TO EVERY ACTOR
  VERB ask_for
      WHEN png
      CHECK mia_AT CAN ask_for
        ELSE SAY azione_bloccata OF mia_AT.
      AND png <> hero
        ELSE SAY check_obj_not_hero1 OF mia_AT.
          AND png CAN parlare
              ELSE
          IF png IS NOT plurale
            THEN SAY check_act_can_talk_sg OF mia_AT.
            ELSE SAY check_act_can_talk_pl OF mia_AT.
          END IF.
      AND ogg IS esaminabile
        ELSE
          IF ogg IS NOT plurale
            THEN SAY check_obj2_suitable_for_sg OF mia_AT.
            ELSE SAY check_obj2_suitable_for_pl OF mia_AT.
          END IF.
      AND ogg NOT IN hero
        ELSE SAY check_obj2_not_in_hero3 OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND png IS NOT distante
        ELSE
          IF png IS NOT plurale
            THEN SAY ogg1_distante_sg OF mia_AT.
            ELSE SAY ogg1_distante_pl OF mia_AT.
          END IF.
      AND ogg IS prendibile
        ELSE SAY check_obj2_takeable2 OF mia_AT.

      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN SAY check_obj_reachable_ask OF mia_AT.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
              END IF.
          END IF.
      AND ogg IS NOT scenario
        ELSE
          IF ogg IS NOT plurale
            THEN SAY check_obj2_not_scenery_sg OF mia_AT.
            ELSE SAY check_obj2_not_scenery_pl OF mia_AT.
          END IF.
      DOES
        MAKE png compliant.
        -- It is only possible to get something from an NPC
        -- if the NPC is 'compliant'.
        LOCATE ogg IN hero.
        SAY THE png. "gives" SAY THE ogg. "to you."
        MAKE png NOT compliant.
  END VERB.
END ADD TO.



--- another 'ask_for' formulation added to guide players to use the right phrasing:


SYNTAX ask_for_error = ask 'for' (ogg)
  WHERE ogg IsA OBJECT
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


SYNTAX attack = attack (bersaglio)
  WHERE bersaglio IsA THING
    ELSE
      IF bersaglio IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "attaccare."


SYNONYMS beat, fight, hit, punch = attack.

-- Note that 'kick' is defined separately, to avoid absurd commands such as
-- 'kick man with sword' (see 'attack_with' below)


ADD TO EVERY THING
  VERB attack
    CHECK mia_AT CAN attack
      ELSE SAY azione_bloccata OF mia_AT.
    AND bersaglio IS esaminabile
      ELSE
        IF bersaglio IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "attaccare."
    AND bersaglio <> hero
      ELSE SAY check_obj_not_hero1 OF mia_AT.
    AND bersaglio NOT IN hero
      ELSE SAY check_obj_not_in_hero1 OF mia_AT.
    AND bersaglio NOT IN abbigliamento
      ELSE SAY check_obj_not_in_worn2 OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND bersaglio IS raggiungibile AND bersaglio IS NOT distante
      ELSE
        IF bersaglio IS NOT raggiungibile
          THEN
            IF bersaglio IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF bersaglio IS distante
          THEN
            IF bersaglio IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    AND hero IS NOT seduto
      ELSE SAY check_hero_not_sitting2 OF mia_AT.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down2 OF mia_AT.
        DOES
          "La violenza non è la giusta risposta a questo." --> taken from i6
          -- "Resorting to brute force is not the solution here."
    END VERB.
END ADD TO.




-- ==============================================================


----- ATTACK WITH


-- ==============================================================


SYNTAX attack_with = attack (bersaglio) 'with' (arma)
  WHERE bersaglio IsA THING
    ELSE
      IF bersaglio IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "attaccare."
  AND arma IsA arma
    ELSE
      IF arma IS NOT plurale
        THEN SAY ogg2_illegale_CON_sg OF mia_AT.
        ELSE SAY ogg2_illegale_CON_pl OF mia_AT.
      END IF.
      "attaccare" SAY THE bersaglio. "."


ADD TO EVERY THING
  VERB attack_with
    WHEN bersaglio
      CHECK mia_AT CAN attack_with
        ELSE SAY azione_bloccata OF mia_AT.
      AND bersaglio IS esaminabile
        ELSE
          IF bersaglio IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY ogg1_inadatto_sg OF mia_AT.
            ELSE SAY ogg1_inadatto_pl OF mia_AT.
          END IF.
          "attaccare."
      AND bersaglio <> arma
        ELSE SAY check_obj_not_obj2_with OF mia_AT.
      AND bersaglio <> hero
        ELSE SAY check_obj_not_hero1 OF mia_AT.
      AND bersaglio NOT IN hero
        ELSE SAY check_obj_not_in_hero1 OF mia_AT.
      AND bersaglio NOT IN abbigliamento
        ELSE SAY check_obj_not_in_worn2 OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND bersaglio IS raggiungibile AND bersaglio IS NOT distante
        ELSE
          IF bersaglio IS NOT raggiungibile
            THEN
              IF bersaglio IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF bersaglio IS distante
            THEN
              IF bersaglio IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
              END IF.
          END IF.
      AND hero IS NOT seduto
        ELSE SAY check_hero_not_sitting2 OF mia_AT.
      AND hero IS NOT sdraiato
        ELSE SAY check_hero_not_lying_down2 OF mia_AT.
          DOES
            "La violenza non è la giusta risposta a questo." --> taken from i6
            -- "Resorting to brute force is not the solution here."
  END VERB.
END ADD TO.



-- ===============================================================


----- BITE  (+ chew)


-- ===============================================================


SYNTAX bite = bite (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "mordere."

SYNONYMS chew = bite.


ADD TO EVERY OBJECT
  VERB bite
    CHECK mia_AT CAN bite
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS commestibile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "mordere."
    AND ogg IS prendibile
      ELSE SAY check_obj_takeable OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS NOT distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    DOES
      -- This if-statement takes care of implicit taking; i.e. if the hero
      -- doesn't have the object, (s)he will take it automatically first
      -- - unless it's carried by another actor.
      -- This same if-statement is found in numerous other verbs throughout
      -- the library, as well.

      -- implicit taking:
      IF ogg NOT DIRECTLY IN hero
        THEN LOCATE ogg IN hero.
             SAY implicit_taking_message OF mia_AT.
      END IF.
      -- end of implicit taking.

      "You take a bite of" SAY THE ogg. "$$."
        IF ogg IS NOT plurale
          THEN "It tastes nothing out of the ordinary."
          ELSE "They taste nothing out of the ordinary."
        END IF.

  END VERB.
END ADD TO.



-- ================================================================


----- BRIEF


-- ================================================================


-- Use "Visits 0." or "Visits 1000." in the START section if you want
-- the game to start in verbose or brief mode. (By default,
-- all games start in the verbose mode.)


SYNTAX brief = brief.


VERB brief
  CHECK mia_AT CAN modalità_breve
    ELSE SAY azione_bloccata OF mia_AT.
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


SYNTAX catch = catch (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "catturare."

ADD TO EVERY THING
  VERB catch
    CHECK mia_AT CAN catch
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "catturare."
    AND ogg <> hero
      ELSE SAY check_obj_not_hero1 OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND hero IS NOT seduto
      ELSE SAY check_hero_not_sitting2 OF mia_AT.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down2 OF mia_AT.
    DOES
      IF ogg IS NOT plurale
        THEN "That doesn't"
        ELSE "Those don't"
      END IF.

          "need to be caught."
  END VERB.
END ADD TO.



-- ==================================================================


----- CLEAN ( + wipe, polish)


-- ==================================================================


SYNTAX clean = clean (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "pulire."


SYNONYMS wipe, polish = clean.

----- notice that 'rub' is defined separately

ADD TO EVERY OBJECT
  VERB clean
    CHECK mia_AT CAN pulire
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "pulire."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
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


SYNTAX climb = climb (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
      --@NOTA: Qui dovrò usare un messaggio personalizzato
        THEN SAY illegal_parameter_sg OF mia_AT.
        ELSE SAY illegal_parameter_pl OF mia_AT.
      END IF.



ADD TO EVERY OBJECT
  VERB climb
  CHECK mia_AT CAN climb
    ELSE SAY azione_bloccata OF mia_AT.
  AND ogg IS esaminabile
    ELSE
      IF ogg IS NOT plurale
      --------------------------------------------------------------------------
      --@NOTA: Qui dovrò usare un messaggio personalizzato, del tipo:
      --       "$+1 non [è/sono] qualcosa su cui potersi arrampicare"
      --------------------------------------------------------------------------
        THEN SAY check_obj_suitable_sg OF mia_AT.
        ELSE SAY check_obj_suitable_pl OF mia_AT.
      END IF.
  AND CURRENT LOCATION IS illuminato
    ELSE SAY imp_luogo_buio OF mia_AT.
  AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
  AND hero IS NOT seduto
    ELSE SAY check_hero_not_sitting3 OF mia_AT.
  AND hero IS NOT sdraiato
    ELSE SAY check_hero_not_lying_down3 OF mia_AT.
  DOES
    IF ogg IS NOT plurale
      THEN "That's not"
      ELSE "Those are not"
    END IF.
    "something you can climb."
  END VERB.
END ADD TO.



-- ==============================================================


----- CLIMB ON


-- ==============================================================


SYNTAX climb_on = climb 'on' (superficie)
  WHERE superficie IsA supporto
    ELSE
      IF superficie IS NOT plurale
        THEN SAY illegal_parameter_on_sg OF mia_AT.
        ELSE SAY illegal_parameter_on_pl OF mia_AT.
      END IF.


ADD TO EVERY supporto
  VERB climb_on
    CHECK mia_AT CAN climb_on
      ELSE SAY azione_bloccata OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND superficie IS raggiungibile AND superficie IS NOT distante
      ELSE
        IF superficie IS NOT raggiungibile
          THEN
            IF superficie IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF superficie IS NOT distante
          THEN
            IF superficie IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    AND hero IS NOT seduto
      ELSE SAY check_hero_not_sitting3 OF mia_AT.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down3 OF mia_AT.
    DOES
      IF superficie IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.
      "something you can climb on."
  END VERB.
END ADD TO.





-- ==============================================================


----- CONSULT


-- ==============================================================


SYNTAX consult = consult (fonte) about (argomento)!
  WHERE fonte IsA OBJECT
    -- you can only consult an inanimate source, not a person.
    ELSE
      IF fonte IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "consultare."
  AND argomento IsA THING
    ELSE
      IF argomento IS NOT plurale
        THEN SAY illegal_parameter_consult_sg OF mia_AT.
        ELSE SAY illegal_parameter_consult_pl OF mia_AT.
      END IF.

  consult = 'look' 'up' (argomento) 'in' (fonte).


ADD TO EVERY THING
  VERB consult
    WHEN fonte
      CHECK mia_AT CAN consultare
        ELSE SAY azione_bloccata OF mia_AT.
      AND fonte IS esaminabile
        ELSE
          IF fonte IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY ogg1_inadatto_sg OF mia_AT.
            ELSE SAY ogg1_inadatto_pl OF mia_AT.
          END IF.
          "consultare."
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND fonte IS raggiungibile AND fonte IS NOT distante
        ELSE
          IF fonte IS NOT raggiungibile
            THEN
              IF fonte IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF fonte IS distante
            THEN
              IF fonte IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
              END IF.
          END IF.
      DOES
        "You find nothing useful about" SAY THE argomento. "in" SAY THE fonte. "."

  END VERB.
END ADD TO.


--- another 'consult' formulation added to guide players to use the right phrasing:


SYNTAX consult_error = consult (fonte)
  WHERE fonte IsA THING
    ELSE "To consult something, please use the formulation
          CONSULT THING ABOUT PERSON/THING."


ADD TO EVERY THING
  VERB consult_error
    DOES "To consult something, please use the formulation
          CONSULT THING ABOUT PERSON/THING."
    END VERB.
END ADD TO.



-- ==============================================================


----- CREDITS (+ acknowledgments, author, copyright)


-- ==============================================================


SYNTAX credits = credits.


SYNONYMS acknowledgments, author, copyright = credits.


VERB credits
  CHECK mia_AT CAN credits
    ELSE SAY azione_bloccata OF mia_AT.
  DOES
    "The author retains the copyright to this game.
    $pThis game was written using the ALAN Adventure Language. ALAN is
    an interactive fiction authoring system by Thomas Nilsson.
    $nE-mail address: thomas@alanif.se $pFurther information
    about the ALAN system can be obtained from
    the World Wide Web Internet site
    $ihttp://www.alanif.se$p"
END VERB.



-- ==============================================================


----- CUT


-- ==============================================================


SYNTAX cut = cut (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "tagliare."


ADD TO EVERY OBJECT
  VERB cut
    CHECK mia_AT CAN tagliare
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "tagliare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    DOES "You need to specify what you want to cut" SAY THE ogg. "with."
    END VERB.
END ADD TO.



-- ==============================================================


----- CUT WITH


-- ==============================================================


SYNTAX cut_with = cut (ogg) 'with' (strum)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "tagliare."
  AND strum IsA OBJECT
    ELSE
      IF strum IS NOT plurale
        THEN SAY ogg2_illegale_CON_sg OF mia_AT.
        ELSE SAY ogg2_illegale_CON_pl OF mia_AT.
      END IF.
      "tagliare" SAY THE ogg. "."


ADD TO EVERY OBJECT
  VERB cut_with
    WHEN ogg
      CHECK mia_AT CAN tagliare_con
        ELSE SAY azione_bloccata OF mia_AT.
      AND ogg <> strum
        ELSE SAY check_obj_not_obj2_with OF mia_AT.
      AND ogg IS esaminabile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY ogg1_inadatto_sg OF mia_AT.
            ELSE SAY ogg1_inadatto_pl OF mia_AT.
          END IF.
          "tagliare."
      AND strum IS esaminabile
        ELSE
          IF strum IS NOT plurale
            THEN SAY check_obj2_suitable_with_sg OF mia_AT.
            ELSE SAY check_obj2_suitable_with_pl OF mia_AT.
          END IF.
      AND strum IN hero
        ELSE SAY check_obj2_in_hero OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
              END IF.
          END IF.
      DOES
        "You can't cut" SAY THE ogg. "with" SAY THE strum. "."
  END VERB.
END ADD TO.



-- ==============================================================


----- DANCE


-- ==============================================================


SYNTAX dance = dance.


VERB dance
  CHECK mia_AT CAN danzare
    ELSE SAY azione_bloccata OF mia_AT.
  AND CURRENT LOCATION IS illuminato
    ELSE SAY imp_luogo_buio OF mia_AT.
  AND hero IS NOT seduto
    ELSE SAY check_hero_not_sitting1 OF mia_AT.
  AND hero IS NOT sdraiato
    ELSE SAY check_hero_not_lying_down1 OF mia_AT.
  DOES
        "How about a waltz?"
END VERB.



-- ==============================================================


----- DIG


-- ==============================================================


SYNTAX dig = dig (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "scavare."


ADD TO EVERY OBJECT
  VERB dig
    CHECK mia_AT CAN scavare
      ELSE SAY azione_bloccata OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    AND hero IS NOT seduto
      ELSE SAY check_hero_not_sitting2 OF mia_AT.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down2 OF mia_AT.
    DOES
      "There is nothing suitable to dig here."
  END VERB.
END ADD TO.



-- ==============================================================


----- DIVE


-- ==============================================================


SYNTAX dive = dive.


VERB dive
  CHECK mia_AT CAN tuffarsi
    ELSE SAY azione_bloccata OF mia_AT.
  AND CURRENT LOCATION IS illuminato
    ELSE SAY imp_luogo_buio OF mia_AT.
  AND hero IS NOT seduto
    ELSE SAY check_hero_not_sitting3 OF mia_AT.
  AND hero IS NOT sdraiato
    ELSE SAY check_hero_not_lying_down3 OF mia_AT.
  DOES
    "There is no water suitable for swimming here."
END VERB.



-- ==============================================================


----- DIVE IN


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
        THEN SAY illegal_parameter_in_sg OF mia_AT.
        ELSE SAY illegal_parameter_in_pl OF mia_AT.
      END IF.


ADD TO EVERY OBJECT
  VERB dive_in
    CHECK mia_AT CAN tuffarsi_in
      ELSE SAY azione_bloccata OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND hero IS NOT seduto
      ELSE SAY check_hero_not_sitting3 OF mia_AT.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down3 OF mia_AT.
    -- notice that, unlike 'swim_in', it is possible to dive in a
    -- not reachable object (for example from a clifftop into a river)
    -- but not to a distant object:
    AND liq IS NOT distante
      ELSE
        IF liq IS NOT plurale
          THEN SAY ogg1_distante_sg OF mia_AT.
          ELSE SAY ogg1_distante_pl OF mia_AT.
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


SYNTAX drive = drive (veicolo)
  WHERE veicolo IsA OBJECT
    ELSE
      IF veicolo IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "guidare."

ADD TO EVERY OBJECT
  VERB drive
    CHECK mia_AT CAN guidare
      ELSE SAY azione_bloccata OF mia_AT.
    AND veicolo IS esaminabile
      ELSE
        IF veicolo IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "guidare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND veicolo IS raggiungibile AND veicolo IS NOT distante
      ELSE
        IF veicolo IS NOT raggiungibile
          THEN
            IF veicolo IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF veicolo IS distante
          THEN
            IF veicolo IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down3 OF mia_AT.
    DOES
      IF veicolo IS NOT plurale
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


----- EMPTY   (+ POUR)


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
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "svuotare."
  AND ogg IsA CONTAINER
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "svuotare."

  pour = pour (ogg)
    WHERE ogg IsA OBJECT
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "versare."
    AND ogg IsA CONTAINER
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "versare."


ADD TO EVERY OBJECT
  VERB 'empty', pour
    CHECK mia_AT CAN svuotare AND mia_AT CAN versare
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS prendibile
      ELSE SAY check_obj_takeable OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    AND ogg IS aperto
      ELSE
        IF ogg IS NOT femminile
          THEN
            IF ogg IS NOT plurale
              THEN SAY imp_ogg1_chiuso_ms OF mia_AT.
              ELSE SAY imp_ogg1_chiuso_mp OF mia_AT.
            END IF.
          ELSE
            IF ogg IS NOT plurale
              THEN SAY imp_ogg1_chiuso_fs OF mia_AT.
              ELSE SAY imp_ogg1_chiuso_fp OF mia_AT.
            END IF.
        END IF.
    DOES

      -- implicit taking:
      IF ogg NOT DIRECTLY IN hero
        THEN LOCATE ogg IN hero.
          SAY implicit_taking_message OF mia_AT.
      END IF.
      -- end of implicit taking.

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

  END VERB.
END ADD TO.



-- ==============================================================


----- EMPTY IN  (+ POUR IN)


-- ==============================================================



SYNTAX empty_in = 'empty' (ogg) 'in' (cont)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "svuotare."
  AND ogg IsA CONTAINER
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "svuotare."
  AND cont IsA OBJECT
    ELSE
      IF cont IsA ACTOR
        THEN SAY illegal_parameter_act OF mia_AT.
        ELSE SAY illegal_parameter2_there OF mia_AT.
      END IF.
  AND cont IsA CONTAINER
    ELSE SAY illegal_parameter2_there OF mia_AT.



pour_in = pour (ogg) 'in' (cont)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "versare."
  AND ogg IsA CONTAINER
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "versare."
  AND cont IsA OBJECT
    ELSE
      IF cont IsA ACTOR
        THEN SAY illegal_parameter_act OF mia_AT.
        ELSE SAY illegal_parameter2_there OF mia_AT.
      END IF.
  AND cont IsA CONTAINER
    ELSE SAY illegal_parameter2_there OF mia_AT.




ADD TO EVERY OBJECT
  VERB empty_in, pour_in
    WHEN ogg
      CHECK mia_AT CAN svuotare_in AND mia_AT CAN versare_in
        ELSE SAY azione_bloccata OF mia_AT.
      AND ogg <> cont
        ELSE SAY check_obj_not_obj2_in OF mia_AT.
      AND ogg IS prendibile
        ELSE SAY check_obj_takeable OF mia_AT.
      AND cont NOT IN ogg
        ELSE SAY check_cont_not_in_obj OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
              END IF.
          END IF.
      AND cont IS raggiungibile AND cont IS NOT distante
        ELSE
          IF cont IS NOT raggiungibile
            THEN
              IF cont IS NOT plurale
                THEN SAY ogg2_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg2_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF cont IS distante
            THEN
              IF cont IS NOT plurale
                THEN SAY ogg2_distante_sg OF mia_AT.
                ELSE SAY ogg2_distante_pl OF mia_AT.
              END IF.
          END IF.
      AND ogg IN consentiti OF cont
        ELSE
          IF ogg IS NOT plurale
            THEN SAY check_obj_allowed_in_sg OF mia_AT.
            ELSE SAY check_obj_allowed_in_pl OF mia_AT.
          END IF.
      AND ogg IS aperto
        ELSE
          IF ogg IS NOT femminile
            THEN
              IF ogg IS NOT plurale
                THEN SAY imp_ogg1_chiuso_ms OF mia_AT.
                ELSE SAY imp_ogg1_chiuso_mp OF mia_AT.
              END IF.
            ELSE
              IF ogg IS NOT plurale
                THEN SAY imp_ogg1_chiuso_fs OF mia_AT.
                ELSE SAY imp_ogg1_chiuso_fp OF mia_AT.
              END IF.
          END IF.
      AND cont IS aperto
        ELSE
          IF cont IS NOT femminile
            THEN
              IF cont IS NOT plurale
                THEN SAY imp_ogg2_chiuso_ms OF mia_AT.
                ELSE SAY imp_ogg2_chiuso_mp OF mia_AT.
              END IF.
            ELSE
              IF cont IS NOT plurale
                THEN SAY imp_ogg2_chiuso_fs OF mia_AT.
                ELSE SAY imp_ogg2_chiuso_fp OF mia_AT.
              END IF.
          END IF.
      DOES

      -- implicit taking:
      IF ogg NOT DIRECTLY IN hero
        THEN LOCATE ogg IN hero.
          SAY implicit_taking_message OF mia_AT.
      END IF.
      -- end of implicit taking.

      IF COUNT IsA OBJECT, DIRECTLY IN ogg = 0
        THEN "There is nothing in" SAY THE ogg. "."
        ELSE
          EMPTY ogg IN cont.
          "You $v the contents of" SAY THE ogg.
          "in" SAY THE cont. "."
      END IF.
     END VERB.
END ADD TO.



-- ==============================================================


----- EMPTY ON  (+ POUR ON)


-- ==============================================================



SYNTAX empty_on = 'empty' (ogg) 'on' (superficie)
    WHERE ogg IsA OBJECT
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "svuotare."
    AND ogg IsA CONTAINER
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "svuotare."
    AND superficie IsA THING
      ELSE SAY illegal_parameter2_there OF mia_AT.
    AND superficie IsA CONTAINER
      ELSE SAY illegal_parameter2_there OF mia_AT.

  pour_on = pour (ogg) 'on' (superficie)
    WHERE ogg IsA OBJECT
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "versare."
    AND ogg IsA CONTAINER
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "versare."
    AND superficie IsA OBJECT
      ELSE SAY illegal_parameter2_there OF mia_AT.
    AND superficie IsA CONTAINER
      ELSE SAY illegal_parameter2_there OF mia_AT.


ADD TO EVERY THING
  VERB empty_on, pour_on
      WHEN ogg
      CHECK mia_AT CAN svuotare_su AND mia_AT CAN versare_su
        ELSE SAY azione_bloccata OF mia_AT.
      AND ogg <> superficie
        ELSE SAY check_obj_not_obj2_on OF mia_AT.
      AND ogg IS prendibile
        ELSE SAY check_obj_takeable OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
              END IF.
          END IF.
      AND superficie IS raggiungibile AND superficie IS NOT distante
        ELSE
          IF superficie IS NOT raggiungibile
            THEN
              IF superficie IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF superficie IS distante
            THEN
              IF superficie IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
              END IF.
          END IF.
      AND ogg IS aperto
        ELSE
          IF ogg IS NOT femminile
            THEN
              IF ogg IS NOT plurale
                THEN SAY imp_ogg1_chiuso_ms OF mia_AT.
                ELSE SAY imp_ogg1_chiuso_mp OF mia_AT.
              END IF.
            ELSE
              IF ogg IS NOT plurale
                THEN SAY imp_ogg1_chiuso_fs OF mia_AT.
                ELSE SAY imp_ogg1_chiuso_fp OF mia_AT.
              END IF.
          END IF.
      DOES
        -- implicit taking:
        IF ogg NOT DIRECTLY IN hero
          THEN LOCATE ogg IN hero.
            SAY implicit_taking_message OF mia_AT.
        END IF.
        -- end of implicit taking.

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
  END VERB.
END ADD TO.



-- ==============================================================


----- ENTER


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
        THEN SAY illegal_parameter_sg OF mia_AT.
        ELSE SAY illegal_parameter_pl OF mia_AT.
      END IF.



ADD TO EVERY OBJECT
  VERB enter
    CHECK mia_AT CAN entrare
      ELSE SAY azione_bloccata OF mia_AT.
    AND hero IS NOT seduto
      ELSE SAY check_hero_not_sitting2 OF mia_AT.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down2 OF mia_AT.
      DOES
      IF ogg IS NOT plurale
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


----- EXIT


-- ==============================================================

-- In the present version of ALAN, actors are not allowed inside containers.

-- You can simulate the hero exiting something by modifying the default
-- response below in the DOES ONLY part of this verb under the instance at hand.


SYNTAX 'exit' = 'exit' (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
      -- @NOTA: Qui servirà un messaggio personalizzato per questo verbo!
        THEN SAY illegal_parameter_sg OF mia_AT.
        ELSE SAY illegal_parameter_pl OF mia_AT.
      END IF.



ADD TO EVERY OBJECT
  VERB 'exit'
    CHECK mia_AT CAN 'exit'
      ELSE SAY azione_bloccata OF mia_AT.
    DOES
      IF ogg IS NOT plurale
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



SYNTAX extinguish = extinguish (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "estinguere."

  extinguish = put 'out' (ogg).

  extinguish = put (ogg) 'out'.



SYNONYMS quench = extinguish.



ADD TO EVERY OBJECT
  VERB extinguish
    CHECK mia_AT CAN extinguish
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "estinguere."
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    DOES
      IF ogg IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.
      "on fire."
    END VERB.
END ADD TO.

-- ==============================================================


----- FILL


-- ==============================================================


SYNTAX fill = fill (cont)
  WHERE cont IsA OBJECT
    ELSE
      IF cont IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "riempire."
  AND cont IsA CONTAINER
    ELSE
      IF cont IS NOT plurale
        THEN SAY illegal_parameter_sg OF mia_AT.
        ELSE SAY illegal_parameter_pl OF mia_AT.
      END IF.


ADD TO EVERY OBJECT
  VERB fill
    CHECK mia_AT CAN fill
      ELSE SAY azione_bloccata OF mia_AT.
    AND cont IS esaminabile
      ELSE
        IF cont IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "riempire."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    DOES
      "You have to say what you want to fill" SAY THE cont. "with."
    END VERB.
END ADD TO.



-- ==============================================================


----- FILL WITH


-- ==============================================================


SYNTAX fill_with = fill (cont) 'with' (sostanza)
  WHERE cont IsA OBJECT
    ELSE
      IF cont IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "riempire."
  AND cont IsA CONTAINER
    ELSE
      IF cont IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "riempire."
  AND sostanza IsA OBJECT
    ELSE
      IF sostanza IS NOT plurale
        THEN SAY ogg2_illegale_CON_sg OF mia_AT.
        ELSE SAY ogg2_illegale_CON_pl OF mia_AT.
      END IF.
      "riempire" SAY THE cont. "."


ADD TO EVERY OBJECT
  VERB fill_with
    WHEN cont
      CHECK mia_AT CAN fill_with
        ELSE SAY azione_bloccata OF mia_AT.
      AND cont <> sostanza
        ELSE SAY check_obj_not_obj2_with OF mia_AT.
      AND sostanza IS esaminabile
        ELSE
          IF sostanza IS NOT plurale
            THEN SAY check_obj2_suitable_with_sg OF mia_AT.
            ELSE SAY check_obj2_suitable_with_pl OF mia_AT.
          END IF.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND sostanza NOT IN cont
        ELSE SAY check_obj_not_in_cont2 OF mia_AT.
      AND sostanza IS prendibile
        ELSE SAY check_obj2_takeable1 OF mia_AT.
      AND cont IS raggiungibile AND cont IS NOT distante
        ELSE
          IF cont IS NOT raggiungibile
            THEN
              IF cont IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF cont IS distante
            THEN
              IF cont IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT. "."
                ELSE SAY ogg1_distante_pl OF mia_AT. "."
              END IF.
          END IF.
      AND sostanza IS raggiungibile AND sostanza IS NOT distante
        ELSE
          IF sostanza IS NOT raggiungibile
            THEN
              IF sostanza IS NOT plurale
                THEN SAY ogg2_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg2_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF sostanza IS distante
            THEN
              IF sostanza IS NOT plurale
                THEN SAY ogg2_distante_sg OF mia_AT. "."
                ELSE SAY ogg2_distante_pl OF mia_AT. "."
              END IF.
          END IF.
      DOES
        "You can't fill" SAY THE cont. "with" SAY THE sostanza. "."
        -- allow the action at individual substances only
  END VERB.
END ADD TO.



-- ==============================================================


----- FIND


-- ==============================================================


SYNTAX find = find (ogg)!
    WHERE ogg IsA THING
      ELSE
        IF ogg IS NOT plurale
        -- @NOTA: Qui potrebbe volerci un messaggio ad hoc per questo verbo!
          THEN SAY illegal_parameter_sg OF mia_AT.
          ELSE SAY illegal_parameter_pl OF mia_AT.
        END IF.


SYNONYMS 'locate' = find.


ADD TO EVERY THING
  VERB find
    CHECK mia_AT CAN trovare
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg <> hero
      ELSE SAY check_obj_not_hero4 OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg NOT AT hero
      ELSE
        IF ogg IS NOT plurale
          THEN SAY check_obj_not_at_hero_sg OF mia_AT.
          ELSE SAY check_obj_not_at_hero_pl OF mia_AT.
        END IF.
    DOES
      "You'll have to $v it yourself."
  END VERB.
END ADD TO.



-- ==============================================================


----- FIRE


-- ==============================================================


SYNTAX fire = fire (arma)
  WHERE arma IsA arma
    ELSE
      IF arma IS NOT plurale
      -- @NOTA: Meglio usare un messaggio ad hoc qui!
        THEN SAY illegal_parameter_sg OF mia_AT.
        ELSE SAY illegal_parameter_pl OF mia_AT.
      END IF.


ADD TO EVERY arma
  VERB fire
    CHECK mia_AT CAN fire
      ELSE SAY azione_bloccata OF mia_AT.
    AND arma can sparare
      ELSE
        IF arma IS NOT plurale
          THEN SAY check_obj_suitable_sg OF mia_AT.
          ELSE SAY check_obj_suitable_pl OF mia_AT.
        END IF.

  AND CURRENT LOCATION IS illuminato
    ELSE SAY imp_luogo_buio OF mia_AT.
  DOES
    "You fire" SAY THE arma. "into the air."
  END VERB.
END ADD TO.



-- ==============================================================


----- FIRE AT


-- ==============================================================


SYNTAX fire_at = fire (arma) 'at' (bersaglio)
  WHERE arma IsA arma
    ELSE
      IF arma IS NOT plurale
      -- @NOTA: Come per 'fire', usa messaggio ad hoc per verbo!
        THEN SAY illegal_parameter_sg OF mia_AT.
        ELSE SAY illegal_parameter_pl OF mia_AT.
      END IF.
  AND bersaglio IsA THING
    ELSE SAY illegal_parameter_at OF mia_AT.



ADD TO EVERY arma
  VERB fire_at
    WHEN arma
      CHECK mia_AT CAN fire_at
        ELSE SAY azione_bloccata OF mia_AT.
      AND arma can sparare
        ELSE
          IF arma IS NOT plurale
            THEN SAY check_obj_suitable_sg OF mia_AT.
            ELSE SAY check_obj_suitable_pl OF mia_AT.
          END IF.
      AND bersaglio IS esaminabile
        ELSE SAY check_obj_suitable_at OF mia_AT.
      AND arma <> bersaglio
        ELSE SAY check_obj_not_obj2_at OF mia_AT.
      AND bersaglio <> hero
        ELSE SAY check_obj_not_hero2 OF mia_AT.
      AND bersaglio IS NOT distante
        -- note that it is possible to fire at a "not reachable" bersaglio
        ELSE
          IF bersaglio IS NOT plurale
            THEN SAY ogg1_distante_sg OF mia_AT.
            ELSE SAY ogg1_distante_pl OF mia_AT.
          END IF.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      DOES
        "Resorting to violence is not the solution here."
  END VERB.
END ADD TO.


-- another formulation added:


SYNTAX fire_at_error = fire 'at' (bersaglio)
  WHERE bersaglio IsA THING
    ELSE
      IF bersaglio IS NOT plurale
      -- @NOTA: Qui serve messaggio ad hoc!
        THEN SAY illegal_parameter_sg OF mia_AT.
        ELSE SAY illegal_parameter_pl OF mia_AT.
      END IF.


ADD TO EVERY THING
  VERB fire_at_error
    CHECK COUNT IsA ARMA, can sparare, DIRECTLY IN hero > 0
      ELSE SAY check_count_weapon_in_hero OF mia_AT.
    AND bersaglio <> hero
      ELSE SAY check_obj_not_hero2 OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    DOES
      "Resorting to violence is not the solution here."
  END VERB.
END ADD TO.



-- ==============================================================


----- FIX (mend, repair)


-- ==============================================================


SYNTAX fix = fix (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "riparare."


SYNONYMS mend, repair = fix.


ADD TO EVERY OBJECT
  VERB fix
    CHECK mia_AT CAN fix
      ELSE SAY azione_bloccata OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS rotto
      ELSE
        IF ogg IS NOT plurale
          THEN SAY check_obj_broken_sg OF mia_AT.
          ELSE SAY check_obj_broken_pl OF mia_AT.
        END IF.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    DOES
      "Please be more specific. How do you intend to fix it?"
  END VERB.
END ADD TO.



-- ==============================================================


----- FOLLOW


-- ==============================================================


SYNTAX follow = follow (png)!
  WHERE png IsA ACTOR
    ELSE
      IF png IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "seguire."


ADD TO EVERY THING
  VERB follow
    CHECK mia_AT CAN seguire
      ELSE SAY azione_bloccata OF mia_AT.
    AND png <> hero
      ELSE SAY check_obj_not_hero1 OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND png NOT AT hero
      ELSE
        IF png IS NOT plurale
          THEN SAY check_obj_not_at_hero_sg OF mia_AT.
          ELSE SAY check_obj_not_at_hero_pl OF mia_AT.
        END IF.
    AND hero IS NOT seduto
      ELSE SAY check_hero_not_sitting2 OF mia_AT.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down2 OF mia_AT.
    AND png NEAR hero
      ELSE SAY check_act_near_hero OF mia_AT.
    DOES
      LOCATE hero AT png.
      "You follow" SAY THE png. "."
    END VERB.
END ADD TO.



-- ==============================================================


----- FREE (+ release)


-- ==============================================================


SYNTAX free = free (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "liberare."


SYNONYMS release = free.


ADD TO EVERY THING
  VERB free
    CHECK mia_AT CAN liberare
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "liberare."
    AND ogg <> hero
      ELSE SAY check_obj_not_hero5 OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    DOES
      IF ogg IS NOT plurale
        THEN "That doesn't need to be $vd."
        ELSE "Those don't need to be $vd."
      END IF.
  END VERB.
END ADD TO.

-- ==============================================================


------ GET OFF


-- ==============================================================


SYNTAX get_off = get off (superficie)
  WHERE superficie IsA supporto
    ELSE
      IF superficie IS NOT plurale
        THEN SAY illegal_parameter_off_sg OF mia_AT.
        ELSE SAY illegal_parameter_off_pl OF mia_AT.
      END IF.

ADD TO EVERY supporto
  VERB get_off
    CHECK mia_AT CAN get_off
      ELSE SAY azione_bloccata OF mia_AT.
    DOES
      IF hero IS seduto OR hero IS sdraiato
        THEN "You get off" SAY THE superficie. "."
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
  CHECK mia_AT CAN get_up
    ELSE SAY azione_bloccata OF mia_AT.
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


SYNONYMS
  hints = hint.


VERB hint
  CHECK mia_AT CAN hint
    ELSE SAY azione_bloccata OF mia_AT.
  DOES
    "Unfortunately hints are not available in this game."
END VERB.


-- ==============================================================


----- JUMP


-- ==============================================================


SYNTAX jump = jump.


VERB jump
  CHECK mia_AT CAN saltare
    ELSE SAY azione_bloccata OF mia_AT.
  AND hero IS NOT seduto
    ELSE SAY check_hero_not_sitting1 OF mia_AT.
  AND hero IS NOT sdraiato
    ELSE SAY check_hero_not_lying_down1 OF mia_AT.
  DOES
    "You jump on the spot, to no avail."
END VERB.



-- ==============================================================


----- JUMP IN


-- ==============================================================


SYNTAX jump_in = jump 'in' (cont)
  WHERE cont IsA OBJECT
    ELSE
      IF cont IS NOT plurale
        THEN SAY illegal_parameter_in_sg OF mia_AT.
        ELSE SAY illegal_parameter_in_pl OF mia_AT.
      END IF.
  AND cont IsA CONTAINER
    ELSE
      IF cont IS NOT plurale
        THEN SAY illegal_parameter_in_sg OF mia_AT.
        ELSE SAY illegal_parameter_in_pl OF mia_AT.
      END IF.



ADD TO EVERY OBJECT
  VERB jump_in
    CHECK mia_AT CAN saltare_in
      ELSE SAY azione_bloccata OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND cont IS raggiungibile AND cont IS NOT distante
      ELSE
        IF cont IS NOT raggiungibile
          THEN
            IF cont IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF cont IS distante
          THEN
            IF cont IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    AND hero IS NOT seduto
      ELSE SAY check_hero_not_sitting1 OF mia_AT.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down1 OF mia_AT.
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


SYNTAX jump_on = jump 'on' (superficie)
  WHERE superficie IsA supporto
    ELSE
      IF superficie IS NOT plurale
        THEN SAY illegal_parameter_on_sg OF mia_AT.
        ELSE SAY illegal_parameter_on_pl OF mia_AT.
      END IF.


ADD TO EVERY OBJECT
  VERB jump_on
    CHECK mia_AT CAN saltare_su
      ELSE SAY azione_bloccata OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND hero IS NOT seduto
      ELSE SAY check_hero_not_sitting1 OF mia_AT.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down1 OF mia_AT.
    DOES
      IF superficie IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.
      "something you can jump onto."
    END VERB.
END ADD TO.



-- =============================================================


----- KICK


-- =============================================================


SYNTAX kick = kick (bersaglio)
  WHERE bersaglio IsA THING
    ELSE
      IF bersaglio IS NOT plurale
      -- @NOTA: Servirà messaggio ad hoc qui!
        THEN SAY illegal_parameter_sg OF mia_AT.
        ELSE SAY illegal_parameter_pl OF mia_AT.
      END IF.


ADD TO EVERY THING
  VERB kick
    CHECK mia_AT CAN kick
      ELSE SAY azione_bloccata OF mia_AT.
    AND bersaglio IS esaminabile
      ELSE
        IF bersaglio IS NOT plurale
          THEN SAY check_obj_suitable_sg OF mia_AT.
          ELSE SAY check_obj_suitable_pl OF mia_AT.
        END IF.
    AND bersaglio <> hero
      ELSE SAY check_obj_not_hero1 OF mia_AT.
    AND bersaglio NOT IN hero
      ELSE SAY check_obj_not_in_hero1 OF mia_AT.
    AND bersaglio NOT IN abbigliamento
      ELSE SAY check_obj_not_in_worn2 OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND bersaglio IS raggiungibile AND bersaglio IS NOT distante
      ELSE
        IF bersaglio IS NOT raggiungibile
          THEN
            IF bersaglio IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF bersaglio IS distante
          THEN
            IF bersaglio IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
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


SYNTAX kill = kill (vittima)
  WHERE vittima IsA ACTOR
    ELSE
      IF vittima IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "uccidere."


ADD TO EVERY ACTOR
  VERB kill
    CHECK mia_AT CAN uccidere
      ELSE SAY azione_bloccata OF mia_AT.
    AND vittima IS esaminabile
      ELSE
        IF vittima IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "uccidere."
    AND vittima <> hero
      ELSE SAY check_obj_not_hero2 OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    DOES "You have to state what you want to kill" SAY THE vittima. "with."
  END VERB.
END ADD TO.



-- ==============================================================


-- KILL WITH


-- ==============================================================


SYNTAX kill_with = kill (vittima) 'with' (arma)
  WHERE vittima IsA ACTOR
    ELSE
      IF vittima IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "uccidere."
  AND arma IsA arma
    ELSE
      IF arma IS NOT plurale
        THEN SAY illegal_parameter_with_sg OF mia_AT.
        ELSE SAY illegal_parameter_with_pl OF mia_AT.
      END IF.


ADD TO EVERY ACTOR
  VERB kill_with
    WHEN vittima
      CHECK mia_AT CAN uccidere_con
        ELSE SAY azione_bloccata OF mia_AT.
      AND vittima <> hero
        ELSE SAY check_obj_not_hero2 OF mia_AT.
      AND arma IN hero
        ELSE SAY check_obj2_in_hero OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND vittima IS NOT distante
        ELSE
          IF vittima IS NOT plurale
            THEN SAY ogg1_distante_sg OF mia_AT.
            ELSE SAY ogg1_distante_pl OF mia_AT.
          END IF.
      DOES
        "That would be needlessly brutal."
  END VERB.
END ADD TO.



-- ==============================================================


----- KISS (+ hug, embrace)


-- ==============================================================


SYNTAX kiss = kiss (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "baciare."


SYNONYMS hug, embrace = kiss.


ADD TO EVERY THING
  VERB kiss
    CHECK mia_AT CAN baciare
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "baciare."
    AND ogg <> hero
      ELSE SAY check_obj_not_hero6 OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    DOES
      IF ogg IsA ACTOR
        THEN SAY THE ogg. "avoids your advances."
        ELSE
          "Farlo non servirebbe a nulla."
          -- "Nothing would be achieved by that."
      END IF.
  END VERB.
END ADD TO.


-- ==============================================================


----- KNOCK


-- ==============================================================


SYNTAX knock = knock 'on' (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY illegal_parameter_on_sg OF mia_AT.
        ELSE SAY illegal_parameter_on_pl OF mia_AT.
      END IF.

       knock = knock (ogg).


ADD TO EVERY OBJECT
  VERB knock
    CHECK mia_AT CAN bussare
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY check_obj_suitable_on_sg OF mia_AT.
          ELSE SAY check_obj_suitable_on_pl OF mia_AT.
        END IF.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    DOES
      "You knock on" SAY THE ogg. "$$. Nothing happens."
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
  CHECK mia_AT CAN lie_down
    ELSE SAY azione_bloccata OF mia_AT.
  AND hero IS NOT sdraiato
    ELSE SAY check_hero_not_lying_down4 OF mia_AT.
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


SYNTAX  lie_in = lie 'in' (cont)
  WHERE cont IsA OBJECT
    ELSE
      IF cont IS NOT plurale
        THEN SAY illegal_parameter_in_sg OF mia_AT.
        ELSE SAY illegal_parameter_in_pl OF mia_AT.
      END IF.
  AND cont IsA CONTAINER
    ELSE
      IF cont IS NOT plurale
        THEN SAY illegal_parameter_in_sg OF mia_AT.
        ELSE SAY illegal_parameter_in_pl OF mia_AT.
      END IF.

        lie_in = lie 'down' 'in' (cont).


ADD TO EVERY OBJECT
  VERB lie_in
    CHECK mia_AT CAN lie_in
      ELSE SAY azione_bloccata OF mia_AT.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down4 OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND cont IS raggiungibile AND cont IS NOT distante
      ELSE
        IF cont IS NOT raggiungibile
          THEN
            IF cont IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF cont IS distante
          THEN
            IF cont IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    DOES
      "There's no need to lie down in" SAY THE cont. "."
      -- If you need this to work, make a nested location
      -- (for example THE in_bed IsA LOCATION AT bedroom; etc.)
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


SYNTAX lie_on = lie 'on' (superficie)
  WHERE superficie IsA supporto
    ELSE
      IF superficie IS NOT plurale
        THEN SAY illegal_parameter_on_sg OF mia_AT.
        ELSE SAY illegal_parameter_on_pl OF mia_AT.
      END IF.

   lie_on = lie 'down' 'on' (superficie).


ADD TO EVERY OBJECT
  VERB lie_on
    CHECK mia_AT CAN lie_on
      ELSE SAY azione_bloccata OF mia_AT.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down4 OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND superficie IS raggiungibile AND superficie IS NOT distante
      ELSE
        IF superficie IS NOT raggiungibile
          THEN
            IF superficie IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF superficie IS distante
          THEN
            IF superficie IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    DOES
      "There's no need to lie down on" SAY THE superficie. "."
      -- If you need this to work, make a nested location
      -- (for example THE on_bed IsA LOCATION AT bedroom; etc.)
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


SYNTAX lift = lift (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "sollevare." --# alzare?


SYNONYMS raise = lift.


ADD TO EVERY OBJECT
  VERB lift
    CHECK mia_AT CAN lift
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "sollevare." --# alzare?
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg NOT IN hero
      ELSE SAY check_obj_not_in_hero1 OF mia_AT.
    AND ogg IS spostabile
      ELSE SAY check_obj_movable OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    AND peso OF ogg < 50
      ELSE
        IF ogg IS NOT plurale
          THEN SAY check_obj_weight_sg OF mia_AT.
          ELSE SAY check_obj_weight_pl OF mia_AT.
        END IF.
  DOES
    "That wouldn't accomplish anything."
  END VERB.
END ADD TO.

-- ==============================================================


----- LIGHT (+ lit)


-- ==============================================================


SYNTAX light = light (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY illegal_parameter_sg OF mia_AT.
        ELSE SAY illegal_parameter_pl OF mia_AT.
      END IF.


SYNONYMS lit = light.


ADD TO EVERY OBJECT
  VERB light
  CHECK mia_AT CAN light
      ELSE SAY azione_bloccata OF mia_AT.
  AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY check_obj_suitable_sg OF mia_AT.
          ELSE SAY check_obj_suitable_pl OF mia_AT.
        END IF.
  AND ogg IS raggiungibile AND ogg IS NOT distante
    ELSE
      IF ogg IS NOT raggiungibile
        THEN
          IF ogg IS NOT plurale
            THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
            ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
          END IF.
      ELSIF ogg IS distante
        THEN
          IF ogg IS NOT plurale
            THEN SAY ogg1_distante_sg OF mia_AT.
            ELSE SAY ogg1_distante_pl OF mia_AT.
          END IF.
      END IF.
  DOES
    IF ogg IS NOT plurale
      THEN "That's not"
      ELSE "Those are not"
    END IF.
    "something you can $v."
  END VERB.
END ADD TO.


-- ==============================================================


----- LISTEN


-- ==============================================================


SYNTAX listen0 = listen.


VERB listen0
  CHECK mia_AT CAN listen0
    ELSE SAY azione_bloccata OF mia_AT.
  DOES
    "You hear nothing unusual."
END VERB.



-- ==============================================================


----- LISTEN TO


-- ==============================================================


SYNTAX listen = listen 'to' (ogg)!
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        THEN SAY illegal_parameter_to_sg OF mia_AT.
        ELSE SAY illegal_parameter_to_pl OF mia_AT.
      END IF.


ADD TO EVERY THING
  VERB listen
    CHECK mia_AT CAN listen
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg <> hero
      ELSE SAY check_obj_not_hero1 OF mia_AT.
    DOES
      IF ogg AT hero
        THEN
          IF ogg IsA ACTOR
            THEN SAY THE ogg.
              IF ogg IS NOT plurale
                THEN "is"
                ELSE "are"
              END IF.
              "not talking right now."
            ELSE "You hear nothing unusual."
          END IF.
      ELSIF ogg NEAR hero
        THEN "You can't hear" SAY THE ogg. "very well from here."
      END IF.
  END VERB.
END ADD TO.



-- ==============================================================


----- LOOK


-- ==============================================================


SYNTAX 'look' = 'look'.


SYNONYMS l = 'look'.


VERB 'look'
  CHECK mia_AT CAN 'look'
    ELSE SAY azione_bloccata OF mia_AT.
  DOES
    INCREASE descritto OF CURRENT LOCATION.
    -- see 'locations.i', attribute 'described'.
    LOOK.
END VERB.



-- ==============================================================


----- LOOK AT -> see EXAMINE


-- ==============================================================





-- ==============================================================


----- LOOK BEHIND


-- ==============================================================


SYNTAX look_behind = 'look' behind (bulk)
  WHERE bulk IsA THING
    ELSE SAY illegal_parameter_there OF mia_AT.


ADD TO EVERY THING
  VERB look_behind
    CHECK mia_AT CAN look_behind
      ELSE SAY azione_bloccata OF mia_AT.
    AND bulk IS esaminabile
      ELSE SAY check_obj_suitable_there OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND bulk <> hero
      ELSE SAY check_obj_not_hero7 OF mia_AT.
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
    WHERE cont IsA OBJECT
      ELSE SAY illegal_parameter_there OF mia_AT.
    AND cont IsA CONTAINER
      ELSE SAY illegal_parameter_there OF mia_AT.


ADD TO EVERY OBJECT
  VERB look_in
    CHECK mia_AT CAN look_in
      ELSE SAY azione_bloccata OF mia_AT.
    AND cont IS esaminabile
      ELSE SAY check_obj_suitable_there OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND cont IS aperto
      ELSE
        IF cont IS NOT femminile
          THEN
            IF cont IS NOT plurale
              THEN SAY imp_ogg1_chiuso_ms OF mia_AT.
              ELSE SAY imp_ogg1_chiuso_mp OF mia_AT.
            END IF.
          ELSE
            IF cont IS NOT plurale
              THEN SAY imp_ogg1_chiuso_fs OF mia_AT.
              ELSE SAY imp_ogg1_chiuso_fp OF mia_AT.
            END IF.
        END IF.
    DOES
      LIST cont.
  END VERB.
END ADD TO.



-- ==============================================================


----- LOOK OUT OF


-- ==============================================================


SYNTAX look_out_of = 'look' 'out' 'of' (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY illegal_parameter_look_out_sg OF mia_AT.
        ELSE SAY illegal_parameter_look_out_pl OF mia_AT.
      END IF.



ADD TO EVERY OBJECT
  VERB look_out_of
    CHECK mia_AT CAN look_out_of
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY check_obj_suitable_look_out_sg OF mia_AT.
          ELSE SAY check_obj_suitable_look_out_pl OF mia_AT.
        END IF.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    DOES
      IF ogg IS NOT plurale
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
  WHERE bulk IsA OBJECT
    ELSE SAY illegal_parameter_look_through OF mia_AT.



ADD TO EVERY OBJECT
  VERB look_through
    CHECK mia_AT CAN look_through
      ELSE SAY azione_bloccata OF mia_AT.
    AND bulk IS esaminabile
      ELSE SAY check_obj_suitable_look_through OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    DOES
      "You can't see through" SAY THE bulk. "."
  END VERB.
END ADD TO.



-- ==============================================================


----- LOOK UNDER


-- ==============================================================


SYNTAX look_under = 'look' under (bulk)
  WHERE bulk IsA THING
    ELSE SAY illegal_parameter_there OF mia_AT.



ADD TO EVERY THING
  VERB look_under
    CHECK mia_AT CAN look_under
      ELSE SAY azione_bloccata OF mia_AT.
    AND bulk IS esaminabile
      ELSE SAY check_obj_suitable_there OF mia_AT.
    AND bulk <> hero
      ELSE SAY check_obj_not_hero8 OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    DOES
      "You notice nothing unusual under" SAY THE bulk. "."
  END VERB.
END ADD TO.



-- ==============================================================


----- LOOK UP   (-> see also CONSULT)


-- ==============================================================


SYNTAX look_up = 'look' up.


VERB look_up
  CHECK mia_AT CAN look_up
    ELSE SAY azione_bloccata OF mia_AT.
  DOES "Looking up, you see nothing unusual."
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
  CHECK mia_AT CAN notify
    ELSE SAY azione_bloccata OF mia_AT.
  DOES
    IF mia_AT HAS notify_turned_on
      THEN MAKE mia_AT NOT notify_turned_on.
        "Score notification is now disabled. (You can turn it back on
        using the NOTIFY command again.)"
      ELSE MAKE mia_AT notify_turned_on. "Score notification is now enabled.
        (You can turn it off using the NOTIFY command again.)"
    END IF.
END VERB.


VERB notify_on
  CHECK mia_AT CAN notify_on
    ELSE SAY azione_bloccata OF mia_AT.
  DOES
    IF mia_AT HAS notify_turned_on
      THEN "Score notification is already enabled."
      ELSE MAKE mia_AT notify_turned_on.
        "Score notification is now enabled.
        (You can turn it off using the NOTIFY command again.)"
    END IF.
END VERB.


VERB notify_off
  CHECK mia_AT CAN notify_off
    ELSE SAY azione_bloccata OF mia_AT.
  DOES
    IF mia_AT HAS notify_turned_on
      THEN MAKE mia_AT NOT notify_turned_on.
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
  IF oldscore OF mia_AT < score
    THEN
      IF mia_AT HAS notify_turned_on
        THEN
          -- ie: the player wants to see score msgs
          "$p(Your score has just gone up by" SAY (score - oldscore OF mia_AT).
          IF (score - oldscore OF mia_AT) = 1
            THEN "point.)"
            ELSE "points.)"
          END IF.
          -- this msg only displayed the first time player is notified
          -- of a score change
          IF mia_AT HAS NOT seen_notify
            THEN MAKE mia_AT seen_notify.
              "$p(You can use the NOTIFY command to disable score change messages.)"
          END IF.
      END IF.

      SET oldscore OF mia_AT TO score.
  END IF.
  -- run the 'check_score' event again next turn:
  SCHEDULE check_score AT hero AFTER 1.
END EVENT.





-- ==============================================================


----- POUR, POUR IN, POUR ON


-- ==============================================================



-- => SEE EMPTY, EMPTY IN, EMPTY ON




-- ==============================================================


----- PRY


-- ==============================================================


SYNTAX pry = pry (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY illegal_parameter_sg OF mia_AT.
        ELSE SAY illegal_parameter_pl OF mia_AT.
      END IF.


ADD TO EVERY OBJECT
  VERB pry
    CHECK mia_AT CAN pry
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY check_obj_suitable_sg OF mia_AT.
          ELSE SAY check_obj_suitable_pl OF mia_AT.
        END IF.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    DOES "You must state what you want to pry" SAY THE ogg. "with."
  END VERB.
END ADD TO.



-- ==============================================================


----- PRY_WITH


-- ==============================================================


SYNTAX pry_with = pry (ogg) 'with' (strum)
    WHERE ogg IsA OBJECT
      ELSE
        IF ogg IS NOT plurale
          THEN SAY illegal_parameter_sg OF mia_AT.
          ELSE SAY illegal_parameter_pl OF mia_AT.
        END IF.
    AND strum IsA OBJECT
      ELSE
        IF strum IS NOT plurale
          THEN SAY ogg2_illegale_CON_sg OF mia_AT.
          ELSE SAY ogg2_illegale_CON_pl OF mia_AT.
        END IF.
        "(prying)" SAY THE ogg. "." -- @TODO:                                   TRANSLATE!


ADD TO EVERY OBJECT
VERB pry_with
  WHEN ogg
    CHECK mia_AT CAN pry_with
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY check_obj_suitable_sg OF mia_AT.
          ELSE SAY check_obj_suitable_pl OF mia_AT.
        END IF.
    AND strum IS esaminabile
      ELSE
        IF strum IS NOT plurale
          THEN SAY check_obj2_suitable_with_sg OF mia_AT.
          ELSE SAY check_obj2_suitable_with_pl OF mia_AT.
        END IF.
    AND ogg <> strum
      ELSE SAY check_obj_not_obj2_with OF mia_AT.
    AND strum IN hero
      ELSE SAY check_obj2_in_hero OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    DOES "That doesn't work."
  END VERB.
END ADD TO.



-- ==============================================================


----- PULL


-- ==============================================================


SYNTAX pull = pull (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "tirare." --@NOTA: ambiguità con "lanciare"


ADD TO EVERY OBJECT
  VERB pull
    CHECK mia_AT CAN tirare
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS spostabile
      ELSE SAY check_obj_movable OF mia_AT.
    AND ogg <> hero
      ELSE SAY check_obj_not_hero1 OF mia_AT.
    AND ogg IS inanimato
      ELSE SAY check_obj_inanimate1 OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    DOES
      "That wouldn't accomplish anything."
  END VERB.
END ADD TO.



-- ==============================================================


----- PUSH


-- ==============================================================


SYNTAX push = push (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "spingere."


SYNONYMS press = push.


ADD TO EVERY THING
  VERB push
    CHECK mia_AT CAN spingere
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS spostabile
          ELSE SAY check_obj_movable OF mia_AT.
    AND ogg <> hero
      ELSE SAY check_obj_not_hero1 OF mia_AT.
    AND ogg IS inanimato
      ELSE SAY check_obj_inanimate1 OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    DOES
          "You give" SAY THE ogg. "a little push. Nothing happens."
  END VERB.
END ADD TO.



-- ==============================================================


----- PUSH WITH


-- ==============================================================


SYNTAX push_with = push (ogg) 'with' (strum)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "spingere."
  AND strum IsA OBJECT
    ELSE
      IF strum IS NOT plurale
        THEN SAY ogg2_illegale_CON_sg OF mia_AT.
        ELSE SAY ogg2_illegale_CON_pl OF mia_AT.
      END IF.
      "spingere" SAY THE ogg. "."


ADD TO EVERY THING
  VERB push_with
    WHEN ogg
      CHECK mia_AT CAN spingere_con
        ELSE SAY azione_bloccata OF mia_AT.
      AND ogg IS spostabile
          ELSE SAY check_obj_movable OF mia_AT.
      AND ogg <> strum
        ELSE SAY check_obj_not_obj2_with OF mia_AT.
      AND strum IS esaminabile
        ELSE
          IF strum IS NOT plurale
            THEN SAY check_obj2_suitable_with_sg OF mia_AT.
            ELSE SAY check_obj2_suitable_with_pl OF mia_AT.
          END IF.
      AND strum IN hero
        ELSE SAY check_obj2_in_hero OF mia_AT.
      AND ogg <> hero
        ELSE SAY check_obj_not_hero1 OF mia_AT.
      AND ogg IS inanimato
        ELSE SAY check_obj_inanimate1 OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
              END IF.
          END IF.
      DOES
        "That wouldn't accomplish anything."
  END VERB.
END ADD TO.



-- ==============================================================


----- PUT (+ lay, locate, place)


-- ==============================================================


SYNTAX put = put (ogg)
  WHERE ogg IsA OBJECT
    ELSE SAY illegal_parameter_obj OF mia_AT.


SYNONYMS lay, place = put.


ADD TO EVERY OBJECT
  VERB put
    CHECK mia_AT CAN put
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IN HERO
      ELSE SAY check_obj_in_hero OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    DOES
      "You must state where you want to put"

      IF ogg IS NOT plurale
        THEN "it."
        ELSE "them."
      END IF.
  END VERB.
END ADD TO.


-- ==============================================================


----- @PUT DOWN  (works as  'drop')


-- ==============================================================


----- The syntax for 'put down' has been declared in the 'drop' verb.




-- ==============================================================


----- PUT IN  (+ insert)


-- ==============================================================


SYNTAX put_in = put (ogg) 'in' (cont)
  WHERE ogg IsA OBJECT
    ELSE SAY illegal_parameter_obj OF mia_AT.
  AND cont IsA OBJECT
    ELSE
      IF cont IsA ACTOR
        THEN SAY illegal_parameter_act OF mia_AT.
        ELSE SAY illegal_parameter2_there OF mia_AT.
      END IF.
  AND cont IsA CONTAINER
    ELSE SAY illegal_parameter2_there OF mia_AT.


  put_in = insert (ogg) 'in' (cont).


ADD TO EVERY OBJECT
  VERB put_in
    WHEN ogg
      CHECK mia_AT CAN put_in
        ELSE SAY azione_bloccata OF mia_AT.
      AND ogg <> cont
        ELSE SAY check_obj_not_obj2_in OF mia_AT.
      AND ogg IS prendibile
        ELSE SAY check_obj_takeable OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
              END IF.
          END IF.
      AND ogg NOT IN cont
        ELSE
          IF cont IsA supporto
            THEN SAY check_cont_not_supporter OF mia_AT.
          ELSE
            IF ogg IS NOT plurale -- @TODO: 'ogg' or 'cont'??                   CHECK!
              THEN SAY check_obj_not_in_cont_sg OF mia_AT.
              ELSE SAY check_obj_not_in_cont_pl OF mia_AT.
            END IF.
          END IF.
      AND cont IS raggiungibile AND cont IS NOT distante
        ELSE
          IF cont IS NOT raggiungibile
            THEN
              IF cont IS NOT plurale
                THEN SAY ogg2_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg2_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF cont IS distante
            THEN
              IF cont IS NOT plurale
                THEN SAY ogg2_distante_sg OF mia_AT.
                ELSE SAY ogg2_distante_pl OF mia_AT.
              END IF.
          END IF.
      AND ogg IN consentiti OF cont
        ELSE
          IF ogg IS NOT plurale
            THEN SAY check_obj_allowed_in_sg OF mia_AT.
            ELSE SAY check_obj_allowed_in_pl OF mia_AT.
          END IF.
      AND cont IS aperto
        ELSE
          IF cont IS NOT femminile
            THEN
              IF cont IS NOT plurale
                THEN SAY imp_ogg2_chiuso_ms OF mia_AT.
                ELSE SAY imp_ogg2_chiuso_mp OF mia_AT.
              END IF.
            ELSE
              IF cont IS NOT plurale
                THEN SAY imp_ogg2_chiuso_fs OF mia_AT.
                ELSE SAY imp_ogg2_chiuso_fp OF mia_AT.
              END IF.
          END IF.
      DOES
        LOCATE ogg IN cont.
        "You put" SAY THE ogg. "into" SAY THE cont. "."
  END VERB.
END ADD TO.




-- ==============================================================


----- PUT AGAINST, BEHIND, NEAR, UNDER


-- ==============================================================


SYNTAX put_against = put (ogg) against (bulk)
  WHERE ogg IsA OBJECT
    ELSE SAY illegal_parameter_obj OF mia_AT.
  AND bulk IsA THING
    ELSE SAY illegal_parameter2_there OF mia_AT.



SYNTAX put_behind = put (ogg) behind (bulk)
  WHERE ogg IsA OBJECT
    ELSE SAY illegal_parameter_obj OF mia_AT.
  AND bulk IsA THING
    ELSE SAY illegal_parameter2_there OF mia_AT.



SYNTAX put_near = put (ogg) 'near' (bulk)
  WHERE ogg IsA OBJECT
    ELSE SAY illegal_parameter_obj OF mia_AT.
  AND bulk IsA THING
    ELSE SAY illegal_parameter2_there OF mia_AT.



SYNTAX put_under = put (ogg) under (bulk)
  WHERE ogg IsA OBJECT
    ELSE SAY illegal_parameter_obj OF mia_AT.
  AND bulk IsA THING
    ELSE SAY illegal_parameter2_there OF mia_AT.



ADD TO EVERY OBJECT
  VERB put_against, put_behind, put_near, put_under
    WHEN ogg
      CHECK mia_AT CAN put_against AND mia_AT CAN put_behind
      AND mia_AT CAN put_near AND mia_AT CAN put_under
        ELSE SAY azione_bloccata OF mia_AT.
      AND bulk NOT IN hero
          ELSE SAY check_obj2_not_in_hero2 OF mia_AT.
      AND ogg <> bulk
          ELSE SAY check_obj_not_obj2_put OF mia_AT.
      AND ogg IS prendibile
          ELSE SAY check_obj_takeable OF mia_AT.
      AND bulk <> hero
          ELSE SAY check_obj2_not_hero2 OF mia_AT.
      AND CURRENT LOCATION IS illuminato
            ELSE SAY imp_luogo_buio OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
              END IF.
          END IF.
      AND bulk IS raggiungibile AND bulk IS NOT distante
        ELSE
          IF bulk IS NOT raggiungibile
            THEN
              IF bulk IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF bulk IS distante
            THEN
              IF bulk IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
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



SYNTAX put_on = put (ogg) 'on' (superficie)
  WHERE ogg IsA OBJECT
      ELSE SAY illegal_parameter_obj OF mia_AT.
  AND superficie IsA supporto
    ELSE SAY illegal_parameter2_there OF mia_AT.



ADD TO EVERY OBJECT
  VERB put_on
    WHEN ogg
      CHECK mia_AT CAN put_on
        ELSE SAY azione_bloccata OF mia_AT.
      AND ogg <> superficie
        ELSE SAY check_obj_not_obj2_on OF mia_AT.
      AND ogg IS prendibile
        ELSE SAY check_obj_takeable OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND ogg NOT IN superficie
        ELSE
          IF ogg IS NOT plurale
            THEN SAY check_obj_not_on_surface_sg OF mia_AT.
            ELSE SAY check_obj_not_on_surface_pl OF mia_AT.
          END IF.
          AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
              END IF.
          END IF.
      AND superficie IS raggiungibile AND superficie IS NOT distante
        ELSE
          IF superficie IS NOT raggiungibile
            THEN
              IF superficie IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF superficie IS distante
            THEN
              IF superficie IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
              END IF.
          END IF.
      DOES
        -- implicit taking:
        IF ogg NOT DIRECTLY IN hero
          THEN LOCATE ogg IN hero.
               SAY implicit_taking_message OF mia_AT.
        END IF.
        -- end of implicit taking.

        IF superficie = pavimento OR superficie = suolo
          THEN LOCATE ogg AT hero.
          ELSE LOCATE ogg IN superficie.
        END IF.

        "Posi" SAY THE ogg. SAY prep_SU of superficie. SAY superficie. "."
        -- "You put" SAY THE ogg. "on" SAY THE superficie. "."

    END VERB.
END ADD TO.



-- ==============================================================


----- PUT OUT  (works as -> EXTINGUISH)


-- ==============================================================


----- The syntax for 'put out' has been declared in the 'extinguish' verb.





-- ==============================================================


-- REMOVE


-- ==============================================================

-- this verb only works with clothing (see 'classes.i').

SYNTAX  remove = remove (ogg)
    WHERE ogg IsA OBJECT
      ELSE
        IF ogg IS NOT plurale
          THEN SAY illegal_parameter_sg OF mia_AT. "since you're not wearing it."
          ELSE SAY illegal_parameter_pl OF mia_AT. "since you're not wearing them."
        END IF.

        remove = take 'off' (ogg).
        remove = take (ogg) 'off'.
        remove = doff (ogg).


ADD TO EVERY OBJECT
  VERB remove
    CHECK mia_AT CAN remove
      ELSE SAY azione_bloccata OF mia_AT.
    DOES
      IF ogg IS NOT plurale
        THEN "That's"
        ELSE "Those are"
      END IF.

      "not something you can remove since you're not wearing"

      IF ogg IS NOT plurale
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


SYNTAX rub = rub (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "strofinare."

SYNONYMS massage = rub.

ADD TO EVERY THING
  VERB rub
    CHECK mia_AT CAN rub
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "strofinare."
    AND ogg <> hero
      ELSE SAY check_obj_not_hero6 OF mia_AT.
    AND ogg IS inanimato
      ELSE SAY check_obj_inanimate2 OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
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


SYNTAX 'say' = 'say' (argomento)
      WHERE argomento IsA STRING
    ELSE SAY illegal_parameter_string OF mia_AT.


ADD TO EVERY STRING
  VERB 'say'
    CHECK mia_AT CAN 'say'
      ELSE SAY azione_bloccata OF mia_AT.
        DOES
          "Nothing happens."
  END VERB.
END ADD TO.




-- ==============================================================


----- SAY TO


-- ==============================================================


SYNTAX say_to = 'say' (argomento) 'to' (png)
  WHERE argomento IsA STRING
    ELSE SAY illegal_parameter_string OF mia_AT.
  AND png IsA ACTOR
    ELSE
      IF png IS NOT plurale
        THEN SAY illegal_parameter_talk_sg OF mia_AT.
        ELSE SAY illegal_parameter_talk_pl OF mia_AT.
      END IF.


ADD TO EVERY ACTOR
  VERB say_to
    WHEN png
      CHECK mia_AT CAN say_to
        ELSE SAY azione_bloccata OF mia_AT.
      AND png <> hero
        ELSE SAY check_obj2_not_hero1 OF mia_AT.
      AND png CAN parlare
        ELSE
          IF png IS NOT plurale
            THEN SAY check_act_can_talk_sg OF mia_AT.
            ELSE SAY check_act_can_talk_pl OF mia_AT.
          END IF.
      AND png IS NOT distante
        ELSE
          IF png IS NOT plurale
            THEN SAY ogg1_distante_sg OF mia_AT.
            ELSE SAY ogg1_distante_pl OF mia_AT.
          END IF.
      DOES
        SAY THE png.
        IF png IS NOT plurale
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
  CHECK mia_AT CAN 'score'
    ELSE SAY azione_bloccata OF mia_AT.
  DOES
    SCORE.
    -- (or, if you wish to disable the score, use the following kind of
      -- line instead of the above:
    -- "There is no score in this game.")
END VERB 'score'.



-- ==============================================================


----- SCRATCH


-- ==============================================================


SYNTAX scratch = scratch (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "grattare." -- #graffiare?


ADD TO EVERY THING
  VERB scratch
    CHECK mia_AT CAN scratch
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY check_obj_suitable_sg OF mia_AT.
          ELSE SAY check_obj_suitable_pl OF mia_AT.
        END IF.
    AND ogg <> hero
      ELSE SAY check_obj_not_hero3 OF mia_AT.
    AND ogg IS inanimato
      ELSE SAY check_obj_inanimate1 OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
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
  CHECK mia_AT CAN 'script'
    ELSE SAY azione_bloccata OF mia_AT.
  DOES
    "You can turn transcripting on and off using the 'script on/off' command within the game.
    The transcript will be available in a file with a name starting with the game name.
    $pIn a GUI version you can also find this in the drop-down menu in the interpreter.
    $pIn a command line version you can start your game with the '-s' switch to get a transcript
    of the whole game."
END VERB.

VERB script_on
  CHECK mia_AT CAN script_on
    ELSE SAY azione_bloccata OF mia_AT.
  DOES
    TRANSCRIPT ON.
    "Transcripting turned on."
END VERB.

VERB script_off
  CHECK mia_AT CAN script_off
    ELSE SAY azione_bloccata OF mia_AT.
  DOES
    TRANSCRIPT OFF.
    "Transcripting turned off."
END VERB.



-- ==============================================================


------ SEARCH


-- ==============================================================


SYNTAX search = search (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
      -- @NOTA: Questo messaggio potrebbe dover essere ad hoc!
        THEN SAY illegal_parameter_sg OF mia_AT.
        ELSE SAY illegal_parameter_pl OF mia_AT.
      END IF.


ADD TO EVERY THING
  VERB search
    CHECK mia_AT CAN search
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg <> hero
      ELSE LIST hero.
    AND ogg IS inanimato
      ELSE SAY check_obj_inanimate1 OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    DOES
      "You find nothing of interest."
  END VERB.
END ADD TO.




-- ==============================================================


----- SHAKE


-- ==============================================================


SYNTAX shake = shake (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY illegal_parameter_sg OF mia_AT.
        ELSE SAY illegal_parameter_pl OF mia_AT.
      END IF.



ADD TO EVERY OBJECT
  VERB shake
    CHECK mia_AT CAN shake
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY check_obj_suitable_sg OF mia_AT.
          ELSE SAY check_obj_suitable_pl OF mia_AT.
        END IF.
    AND ogg IS spostabile
      ELSE SAY check_obj_movable OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    DOES
      IF ogg IN hero
        THEN "You shake" SAY THE ogg. "cautiously in your hands. Nothing happens."
        ELSE "There is no reason to start shaking" SAY THE ogg. "."
      END IF.
  END VERB.
END ADD TO.



-- ==============================================================


----- SHOOT


-- ==============================================================



SYNTAX  shoot = shoot (bersaglio)
  WHERE bersaglio IsA THING
    ELSE
      IF bersaglio IS NOT plurale
        THEN SAY illegal_parameter_sg OF mia_AT.
        ELSE SAY illegal_parameter_pl OF mia_AT.
      END IF.

        shoot = shoot 'at' (bersaglio).


ADD TO EVERY THING
  VERB shoot
    CHECK mia_AT CAN shoot
      ELSE SAY azione_bloccata OF mia_AT.
    AND bersaglio IS esaminabile
      ELSE
        IF bersaglio IS NOT plurale
          THEN SAY check_obj_suitable_sg OF mia_AT.
          ELSE SAY check_obj_suitable_pl OF mia_AT.
        END IF.
    AND bersaglio <> hero
      ELSE SAY check_obj_not_hero2 OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND bersaglio NOT IN hero
      ELSE SAY check_obj_not_in_hero1 OF mia_AT.
    AND bersaglio NOT IN abbigliamento
      ELSE SAY check_obj_not_in_worn2 OF mia_AT.
    AND bersaglio IS NOT distante
      ELSE
        IF bersaglio IS NOT plurale
          THEN SAY ogg1_distante_sg OF mia_AT.
          ELSE SAY ogg1_distante_pl OF mia_AT.
        END IF.
    DOES
      IF bersaglio IsA ACTOR
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


SYNTAX  shoot_with = shoot (bersaglio) 'with' (arma)
  WHERE bersaglio IsA THING
    ELSE
      IF bersaglio IS NOT plurale
        THEN SAY illegal_parameter_sg OF mia_AT.
        ELSE SAY illegal_parameter_pl OF mia_AT.
      END IF.
      AND arma IsA arma
        ELSE
      IF arma IS NOT plurale
        THEN SAY ogg2_illegale_CON_sg OF mia_AT.
        ELSE SAY ogg2_illegale_CON_pl OF mia_AT.
      END IF.
      "sparare." -- # "a THE bersaglio"???                                      IMPROVE?

        shoot_with = shoot (arma) 'at' (bersaglio).
        -- to allow player input such as 'shoot rifle at bear'


ADD TO EVERY THING
  VERB shoot_with
    WHEN bersaglio
      CHECK mia_AT CAN shoot_with
        ELSE SAY azione_bloccata OF mia_AT.
      AND bersaglio IS esaminabile
        ELSE
          IF bersaglio IS NOT plurale
            THEN SAY check_obj_suitable_sg OF mia_AT.
            ELSE SAY check_obj_suitable_pl OF mia_AT.
          END IF.
      AND bersaglio <> hero
        ELSE SAY check_obj_not_hero2 OF mia_AT.
      AND bersaglio <> arma
        ELSE SAY check_obj_not_obj2_with OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND bersaglio NOT IN hero
        ELSE SAY check_obj_not_in_hero1 OF mia_AT.
      AND bersaglio NOT IN abbigliamento
        ELSE SAY check_obj_not_in_worn2 OF mia_AT.
      AND bersaglio IS NOT distante
        ELSE
          IF bersaglio IS NOT plurale
            THEN SAY ogg1_distante_sg OF mia_AT.
            ELSE SAY ogg1_distante_pl OF mia_AT.
          END IF.
      DOES
        IF bersaglio IsA ACTOR
          THEN "That's quite uncalled-for."
          ELSE "That wouldn't accomplish anything."
        END IF.
  END VERB.
END ADD TO.



-- ==============================================================


----- SHOUT


-- ==============================================================


SYNTAX shout = shout.


SYNONYMS scream, yell = shout.


VERB shout
  CHECK mia_AT CAN gridare
    ELSE SAY azione_bloccata OF mia_AT.
  DOES
    "Nothing results from your $ving."
END VERB.



-- ==============================================================


----- SHOW


-- ==============================================================


SYNTAX 'show' = 'show' (ogg) 'to' (png)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "mostrare."
  AND png IsA ACTOR
    ELSE
      IF png IS NOT plurale
        THEN SAY illegal_parameter2_to_sg OF mia_AT.
        ELSE SAY illegal_parameter2_to_pl OF mia_AT.
      END IF.


SYNONYMS reveal = 'show'.


ADD TO EVERY OBJECT
  VERB 'show'
    WHEN ogg
      CHECK mia_AT CAN mostrare
        ELSE SAY azione_bloccata OF mia_AT.
      AND png <> hero
        ELSE SAY check_obj2_not_hero1 OF mia_AT.
      AND ogg IN hero
        ELSE SAY check_obj_in_hero OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND png IS NOT distante
        ELSE
          IF png IS NOT plurale
            THEN SAY ogg2_distante_sg OF mia_AT.
            ELSE SAY ogg2_distante_pl OF mia_AT.
          END IF.
      DOES
        SAY THE png.

        IF png IS NOT plurale
          THEN "is"
          ELSE "are"
        END IF.

        "not especially interested."
  END VERB.
END ADD TO.



-- ==============================================================


----- SING (+ hum, whistle)


-- ==============================================================


SYNTAX sing = sing.


SYNONYMS hum, whistle = sing.


VERB sing
  CHECK mia_AT CAN cantare
    ELSE SAY azione_bloccata OF mia_AT.
  DOES
        "You $v a little tune."
END VERB.



-- ==============================================================


----- SIP


-- ==============================================================


SYNTAX sip = sip (liq)
  WHERE liq IsA liquido
    ELSE
      IF liq IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "sorseggiare."


ADD TO EVERY liquido
  VERB sip
    CHECK mia_AT CAN sip
      ELSE SAY azione_bloccata OF mia_AT.
    AND liq IS potabile
      ELSE
        IF liq IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "sorseggiare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND liq IS raggiungibile AND liq IS NOT distante
      ELSE
        IF liq IS NOT raggiungibile
          THEN
            IF liq IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF liq IS distante
          THEN
            IF liq IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    DOES
      IF recipiente OF liq = recipiente_fittizio
        -- here, if the liquid is in no container, for example
        -- the hero takes a sip of water from a river,
        -- the action is allowed to succeed.
        THEN "You take a sip of" SAY THE liq. "."
        ELSE
          -- implicit taking:
          IF recipiente OF liq NOT DIRECTLY IN hero
            THEN
              IF recipiente OF liq IS NOT prendibile
                THEN "You can't carry" SAY THE liq. "around in your bare hands."
                  -- the action stops here if the container is not takeable.
                ELSE LOCATE recipiente OF liq IN hero.
                "(taking" SAY THE recipiente OF liq. "first)$n"
              END IF.
          END IF.
          -- end of implicit taking.
      END IF.

      IF liq IN hero    -- i.e. if the implicit taking was successful
        THEN
          IF recipiente OF liq IS NOT aperto
            THEN "You can't, since" SAY THE recipiente OF liq. "is closed."
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
  CHECK mia_AT CAN sit
    ELSE SAY azione_bloccata OF mia_AT.
  AND hero IS NOT seduto
    ELSE SAY check_hero_not_sitting4 OF mia_AT.
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


SYNTAX sit_on = sit 'on' (superficie)
  WHERE superficie IsA supporto
    ELSE
      IF superficie IS NOT plurale
        THEN SAY illegal_parameter_on_sg OF mia_AT.
        ELSE SAY illegal_parameter_on_pl OF mia_AT.
      END IF.


ADD TO EVERY supporto
  VERB sit_on
    CHECK mia_AT CAN sit_on
      ELSE SAY azione_bloccata OF mia_AT.
    AND hero IS NOT seduto
      ELSE SAY check_hero_not_sitting4 OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND superficie IS raggiungibile AND superficie IS NOT distante
      ELSE
        IF superficie IS NOT raggiungibile
          THEN
            IF superficie IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF superficie IS distante
          THEN
            IF superficie IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
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


----- SMELL (smell0)


-- ==============================================================


SYNTAX smell0 = smell.


VERB smell0
  CHECK mia_AT CAN smell0
    ELSE SAY azione_bloccata OF mia_AT.
  DOES
    "You smell nothing unusual."
END VERB.



-- ==============================================================


----- SMELL (+ ogg)


-- ==============================================================


SYNTAX smell = smell (odore)
  WHERE odore IsA THING
    ELSE
      IF odore IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "annusare." -- #odorare?


ADD TO EVERY THING
  VERB smell
    CHECK mia_AT CAN smell
      ELSE SAY azione_bloccata OF mia_AT.
    DOES
      "You smell nothing unusual."
  END VERB.
END ADD TO.



-- ==============================================================


----- SQUEEZE


-- ==============================================================


SYNTAX squeeze = squeeze (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        THEN SAY illegal_parameter_sg OF mia_AT.
        ELSE SAY illegal_parameter_pl OF mia_AT.
      END IF.


ADD TO EVERY THING
  VERB squeeze
    CHECK mia_AT CAN squeeze
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY check_obj_suitable_sg OF mia_AT.
          ELSE SAY check_obj_suitable_pl OF mia_AT.
        END IF.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    DOES
          "Trying to squeeze" SAY THE ogg. "wouldn't accomplish anything."
  END VERB.
END ADD TO.



-- ==============================================================


----- STAND


-- ==============================================================


SYNTAX stand = stand.

   stand = stand 'up'.


VERB stand
  CHECK mia_AT CAN stand
    ELSE SAY azione_bloccata OF mia_AT.
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


SYNTAX stand_on = stand 'on' (superficie)
  WHERE superficie IsA supporto
    ELSE
      IF superficie IS NOT plurale
        THEN SAY illegal_parameter_on_sg OF mia_AT.
        ELSE SAY illegal_parameter_on_pl OF mia_AT.
      END IF.
  stand_on = get 'on' (superficie).


ADD TO EVERY supporto
  VERB stand_on
    CHECK mia_AT CAN stand_on
      ELSE SAY azione_bloccata OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND superficie IS raggiungibile AND superficie IS NOT distante
      ELSE
        IF superficie IS NOT raggiungibile
          THEN
            IF superficie IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF superficie IS distante
          THEN
            IF superficie IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
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
  END VERB.
END ADD TO.



-- ==============================================================


----- SWIM


-- ==============================================================


SYNTAX swim = swim.


VERB swim
  CHECK mia_AT CAN nuotare
    ELSE SAY azione_bloccata OF mia_AT.
  AND hero IS NOT seduto
    ELSE SAY check_hero_not_sitting1 OF mia_AT.
  AND hero IS NOT sdraiato
    ELSE SAY check_hero_not_lying_down1 OF mia_AT.
  AND CURRENT LOCATION IS illuminato
    ELSE SAY imp_luogo_buio OF mia_AT.
  DOES
    "There is no water suitable for swimming here."
END VERB.



-- ==============================================================


----- SWIM IN


-- ==============================================================


SYNTAX swim_in = swim 'in' (liq)
  WHERE liq IsA liquido
    ELSE
      IF liq IS NOT plurale
        THEN SAY illegal_parameter_in_sg OF mia_AT.
        ELSE SAY illegal_parameter_in_pl OF mia_AT.
      END IF.



ADD TO EVERY OBJECT
  VERB swim_in
    CHECK mia_AT CAN nuotare_in
      ELSE SAY azione_bloccata OF mia_AT.
    AND hero IS NOT seduto
      ELSE SAY check_hero_not_sitting3 OF mia_AT.
    AND hero IS NOT sdraiato
      ELSE SAY check_hero_not_lying_down3 OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND liq IS raggiungibile AND liq IS NOT distante
      ELSE
        IF liq IS NOT raggiungibile
          THEN
            IF liq IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF liq IS distante
          THEN
            IF liq IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
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



SYNTAX switch = switch (disp)      --> disp <--  app = apparatus, appliance
  WHERE disp IsA OBJECT
    ELSE
      IF disp IS NOT plurale
        THEN SAY illegal_parameter_sg OF mia_AT.
        ELSE SAY illegal_parameter_pl OF mia_AT.
      END IF.


ADD TO EVERY OBJECT
  VERB switch
    CHECK mia_AT CAN switch
      ELSE SAY azione_bloccata OF mia_AT.
    DOES
      IF disp IS NOT plurale
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
  CHECK mia_AT CAN talk
    ELSE SAY azione_bloccata OF mia_AT.
  DOES
    "To talk to somebody, you can ASK PERSON ABOUT THING
    or TELL PERSON ABOUT THING."
END VERB.



-- ==============================================================


----- TALK_TO


-- ==============================================================


SYNTAX talk_to = talk 'to' (png)
  WHERE png IsA ACTOR
    ELSE
      IF png IS NOT plurale
        THEN SAY illegal_parameter_to_sg OF mia_AT.
        ELSE SAY illegal_parameter_to_pl OF mia_AT.
      END IF.


ADD TO EVERY ACTOR
  VERB talk_to
    CHECK mia_AT CAN talk_to
      ELSE SAY azione_bloccata OF mia_AT.
    DOES
      "To talk to somebody, you can ASK PERSON ABOUT THING or
      TELL PERSON ABOUT THING."
  END VERB.
END ADD TO.



-- ==============================================================


----- TASTE   (+ lick)


-- ==============================================================


SYNTAX taste = taste (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "assaggiare."


SYNONYMS lick = taste.


ADD TO EVERY OBJECT
  VERB taste
    CHECK mia_AT CAN assaggiare
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "assaggiare."
    AND ogg IS commestibile OR ogg IS potabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "assaggiare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
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


SYNTAX tear = tear (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "strappare."


SYNONYMS rip = tear.


ADD TO EVERY OBJECT
  VERB tear
    CHECK mia_AT CAN tear
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "strappare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    DOES
      "Trying to $v" SAY THE ogg. "would be futile."
  END VERB.
END ADD TO.


-- ==============================================================


----- TELL  (+ enlighten, inform)


-- ==============================================================


SYNTAX tell = tell (png) about (argomento)!
  WHERE png IsA ACTOR
    ELSE
      IF png IS NOT plurale
            THEN SAY illegal_parameter_talk_sg OF mia_AT.
        ELSE SAY illegal_parameter_talk_pl OF mia_AT.
      END IF.
  AND argomento IsA THING
    ELSE
      IF argomento IS NOT plurale
        THEN SAY illegal_parameter_about_sg OF mia_AT.
        ELSE SAY illegal_parameter_about_pl OF mia_AT.
      END IF.


SYNONYMS enlighten, inform = tell.


ADD TO EVERY ACTOR
  VERB tell
    WHEN png
      CHECK mia_AT CAN tell
        ELSE SAY azione_bloccata OF mia_AT.
      AND png <> hero
        ELSE SAY check_obj_not_hero1 OF mia_AT.
          AND png CAN parlare
              ELSE
          IF png IS NOT plurale
            THEN SAY check_act_can_talk_sg OF mia_AT.
            ELSE SAY check_act_can_talk_pl OF mia_AT.
          END IF.
      AND png IS NOT distante
        ELSE
          IF png IS NOT plurale
            THEN SAY ogg1_distante_sg OF mia_AT.
            ELSE SAY ogg1_distante_pl OF mia_AT.
          END IF.
      DOES
        SAY THE png.

        IF png IS NOT plurale
          THEN "doesn't"
          ELSE "don't"
        END IF.

        "look interested."

  END VERB.
END ADD TO.



-- ==============================================================


----- THINK   (+ ponder, meditate, reflect)


-- ==============================================================


SYNTAX think = think.

SYNONYMS ponder, meditate, reflect = think.

VERB think
  CHECK mia_AT CAN pensare
    ELSE SAY azione_bloccata OF mia_AT.
  DOES
    "Nothing helpful comes to your mind."
END VERB.





-- ==============================================================


----- THINK ABOUT


-- ==============================================================


SYNTAX think_about = think 'about' (argomento)!
  WHERE argomento IsA THING
    ELSE
      IF argomento IS NOT plurale
        THEN SAY illegal_parameter_about_sg OF mia_AT.
        ELSE SAY illegal_parameter_about_pl OF mia_AT.
      END IF.


ADD TO EVERY THING
  VERB think_about
    CHECK mia_AT CAN pensare_a
      ELSE SAY azione_bloccata OF mia_AT.
    DOES
      "Nothing helpful comes to your mind."
  END VERB.
END ADD TO.



-- ==============================================================


----- THROW


-- ==============================================================


SYNTAX throw = throw (proiettile)
  WHERE proiettile IsA OBJECT
    ELSE SAY illegal_parameter_obj OF mia_AT.



ADD TO EVERY OBJECT
  VERB throw
    CHECK mia_AT CAN throw
      ELSE SAY azione_bloccata OF mia_AT.
    AND proiettile IS esaminabile
      ELSE
        IF proiettile IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT. "lanciare."
          ELSE SAY ogg1_inadatto_pl OF mia_AT. "lanciare."
        END IF.
    AND proiettile IS prendibile
      ELSE SAY check_obj_takeable OF mia_AT.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND proiettile IS raggiungibile AND proiettile IS NOT distante
      ELSE
        IF proiettile IS NOT raggiungibile
          THEN
            IF proiettile IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF proiettile IS distante
          THEN
            IF proiettile IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
    DOES
      -- implicit taking:
      IF proiettile NOT DIRECTLY IN hero
        THEN LOCATE proiettile IN hero.
          SAY implicit_taking_message OF mia_AT.
      END IF.
      -- end of implicit taking.

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

  END VERB.
END ADD TO.




-- ==============================================================


----- THROW AT


-- ==============================================================


SYNTAX throw_at = throw (proiettile) 'at' (bersaglio)
  WHERE proiettile IsA OBJECT
    ELSE SAY illegal_parameter_obj OF mia_AT.
  AND bersaglio IsA THING
    ELSE SAY illegal_parameter_at OF mia_AT.



ADD TO EVERY OBJECT
  VERB throw_at
    WHEN proiettile
      CHECK mia_AT CAN throw_at
        ELSE SAY azione_bloccata OF mia_AT.
      AND proiettile IS esaminabile
        ELSE
          IF proiettile IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY ogg1_inadatto_sg OF mia_AT. "lanciare."
            ELSE SAY ogg1_inadatto_pl OF mia_AT. "lanciare."
          END IF.
      AND proiettile IS prendibile
        ELSE SAY check_obj_takeable OF mia_AT.
      AND bersaglio IS esaminabile
        ELSE SAY check_obj_suitable_at OF mia_AT.
      AND proiettile <> bersaglio
        ELSE SAY check_obj_not_obj2_at OF mia_AT.
      AND bersaglio NOT IN hero
        ELSE SAY check_obj2_not_in_hero1 OF mia_AT.
      AND bersaglio <> hero
        ELSE SAY check_obj2_not_hero1 OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND proiettile IS raggiungibile AND proiettile IS NOT distante
        ELSE
          IF proiettile IS NOT raggiungibile
            THEN
              IF proiettile IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF proiettile IS distante
            THEN
              IF proiettile IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
              END IF.
          END IF.
      AND bersaglio IS NOT distante
        -- it is possible to throw something at an (otherwise) not reachable bersaglio
        ELSE
          IF bersaglio IS NOT plurale
            THEN SAY ogg2_distante_sg OF mia_AT.
            ELSE SAY ogg2_distante_pl OF mia_AT.
          END IF.
      DOES
        -- implicit taking:
        IF proiettile NOT DIRECTLY IN hero
          THEN LOCATE proiettile IN hero.
               SAY implicit_taking_message OF mia_AT.
        END IF.
        -- end of implicit taking.

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

  END VERB.
END ADD TO.



-- ==============================================================


----- THROW TO


-- ==============================================================


SYNTAX throw_to = throw (proiettile) 'to' (ricevente)
    WHERE proiettile IsA OBJECT
      ELSE SAY illegal_parameter_obj OF mia_AT.
    AND ricevente IsA ACTOR
      ELSE SAY illegal_parameter2_there OF mia_AT.


ADD TO EVERY OBJECT
  VERB throw_to
    WHEN proiettile
      CHECK mia_AT CAN throw_to
        ELSE SAY azione_bloccata OF mia_AT.
      AND proiettile IS esaminabile
        ELSE
          IF proiettile IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY ogg1_inadatto_sg OF mia_AT. "lanciare."
            ELSE SAY ogg1_inadatto_pl OF mia_AT. "lanciare."
          END IF.
      AND proiettile IS prendibile
        ELSE SAY check_obj_takeable OF mia_AT.
      AND ricevente IS esaminabile
        ELSE SAY check_obj_suitable_at OF mia_AT.
      AND proiettile <> ricevente
        ELSE SAY check_obj_not_obj2_to OF mia_AT.
      AND ricevente NOT IN hero
        ELSE SAY check_obj2_not_in_hero1 OF mia_AT.
      AND ricevente <> hero
        ELSE SAY check_obj2_not_hero1 OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND proiettile IS raggiungibile AND proiettile IS NOT distante
        ELSE
          IF proiettile IS NOT raggiungibile
            THEN
              IF proiettile IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF proiettile IS distante
            THEN
              IF proiettile IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
              END IF.
          END IF.
      AND ricevente IS NOT distante
        ELSE
          IF ricevente IS NOT plurale
            THEN SAY ogg2_distante_sg OF mia_AT.
            ELSE SAY ogg2_distante_pl OF mia_AT.
          END IF.
      DOES
        -- implicit taking:
        IF proiettile NOT DIRECTLY IN hero
          THEN LOCATE proiettile IN hero.
            SAY implicit_taking_message OF mia_AT.
        END IF.
        -- end of implicit taking.

        "It wouldn't accomplish anything trying to throw"
        SAY the proiettile. "to" SAY THE ricevente. "."

  END VERB.
END ADD TO.



-- ==============================================================


------ THROW IN


-- ==============================================================


SYNTAX throw_in = throw (proiettile) 'in' (cont)
  WHERE proiettile IsA OBJECT
    ELSE SAY illegal_parameter_obj OF mia_AT.
  AND cont IsA OBJECT
    ELSE
      IF cont IsA ACTOR
        THEN SAY illegal_parameter_act OF mia_AT.
        ELSE SAY illegal_parameter2_there OF mia_AT.
      END IF.
  AND cont IsA CONTAINER
    ELSE SAY illegal_parameter2_there OF mia_AT.


ADD TO EVERY OBJECT
  VERB throw_in
    WHEN proiettile
      CHECK mia_AT CAN throw_in
        ELSE SAY azione_bloccata OF mia_AT.
      AND proiettile IS esaminabile
        ELSE
          IF proiettile IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY ogg1_inadatto_sg OF mia_AT. "lanciare."
            ELSE SAY ogg1_inadatto_pl OF mia_AT. "lanciare."
          END IF.
      AND proiettile IS prendibile
          ELSE SAY check_obj_takeable OF mia_AT.
      AND cont IS esaminabile
          ELSE SAY check_obj2_suitable_there OF mia_AT.
      AND proiettile <> cont
        ELSE SAY check_obj_not_obj2_in OF mia_AT.
      AND cont <> hero
        ELSE SAY check_obj2_not_hero1 OF mia_AT.
      AND cont NOT IN hero
        ELSE SAY check_obj2_not_in_hero1 OF mia_AT.
      AND CURRENT LOCATION IS illuminato
          ELSE SAY imp_luogo_buio OF mia_AT.
      AND proiettile NOT IN cont
        ELSE
          IF proiettile IS NOT plurale
            THEN SAY check_obj_not_in_cont_sg OF mia_AT.
            ELSE SAY check_obj_not_in_cont_pl OF mia_AT.
          END IF.
      AND proiettile IS raggiungibile AND proiettile IS NOT distante
        ELSE
          IF proiettile IS NOT raggiungibile
            THEN
              IF proiettile IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF proiettile IS distante
            THEN
              IF proiettile IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
              END IF.
          END IF.
      AND cont IS NOT distante
        ELSE
          IF cont IS NOT plurale
            THEN SAY ogg2_distante_sg OF mia_AT.
            ELSE SAY ogg2_distante_pl OF mia_AT.
          END IF.
      AND proiettile IN consentiti OF cont
        ELSE
          IF proiettile IS NOT plurale
            THEN SAY check_obj_allowed_in_sg OF mia_AT.
            ELSE SAY check_obj_allowed_in_pl OF mia_AT.
          END IF.
      AND cont IS aperto
        ELSE
          IF cont IS NOT femminile
            THEN
              IF cont IS NOT plurale
                THEN SAY imp_ogg2_chiuso_ms OF mia_AT.
                ELSE SAY imp_ogg2_chiuso_mp OF mia_AT.
              END IF.
            ELSE
              IF cont IS NOT plurale
                THEN SAY imp_ogg2_chiuso_fs OF mia_AT.
                ELSE SAY imp_ogg2_chiuso_fp OF mia_AT.
              END IF.
          END IF.
      DOES
        -- implicit taking:
        IF proiettile NOT DIRECTLY IN hero
          THEN LOCATE proiettile IN hero.
            SAY implicit_taking_message OF mia_AT.
        END IF.
        -- end of implicit taking.

        "It wouldn't accomplish anything trying to throw"
        SAY THE proiettile. "into" SAY THE cont. "."

        -- Throwing objects into containers, even when these objects are
        -- in the 'allowed' set of the container, is not successful by
        -- default; this is to avoid successful outcomes for commands like
        -- 'throw plate into cupboard' etc.

  END VERB.
END ADD TO.



-- ==============================================================


----- TIE


-- ==============================================================


SYNTAX tie = tie (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "legare."


ADD TO EVERY OBJECT
  VERB tie
    CHECK mia_AT CAN tie
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "legare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    DOES
      "You must state where you want to tie" SAY THE ogg. "."
    END VERB.
END ADD TO.



-- ==============================================================


----- TIE TO


-- ==============================================================


SYNTAX tie_to = tie (ogg) 'to' (bersaglio)
  WHERE ogg IsA OBJECT
    ELSE SAY illegal_parameter_obj OF mia_AT.
  AND bersaglio IsA THING
    ELSE SAY illegal_parameter_obj OF mia_AT.



ADD TO EVERY THING
  VERB tie_to
    WHEN ogg
      CHECK mia_AT CAN tie_to
        ELSE SAY azione_bloccata OF mia_AT.
      AND ogg IS esaminabile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY ogg1_inadatto_sg OF mia_AT. "legare."
            ELSE SAY ogg1_inadatto_pl OF mia_AT. "legare."
          END IF.
      AND bersaglio IS esaminabile
        ELSE SAY check_obj2_suitable_there OF mia_AT.
      AND ogg <> bersaglio
        ELSE SAY check_obj_not_obj2_to OF mia_AT.
      AND ogg IS prendibile
        ELSE SAY check_obj_takeable OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
              END IF.
          END IF.
      AND bersaglio IS raggiungibile AND bersaglio IS NOT distante
        ELSE
          IF bersaglio IS NOT raggiungibile
            THEN
              IF bersaglio IS NOT plurale
                THEN SAY ogg2_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg2_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF bersaglio IS distante
            THEN
              IF bersaglio IS NOT plurale
                THEN SAY ogg2_distante_sg OF mia_AT.
                ELSE SAY ogg2_distante_pl OF mia_AT.
              END IF.
          END IF.
      DOES
        -- implicit taking:
        IF ogg NOT DIRECTLY IN hero
          THEN LOCATE ogg IN hero.
            SAY implicit_taking_message OF mia_AT.
        END IF.
        -- end of implicit taking.

        "It's not possible to tie" SAY THE ogg. "to" SAY THE bersaglio. "."

  END VERB.
END ADD TO.



-- ==============================================================


----- TOUCH


-- ==============================================================


SYNTAX touch = touch (ogg)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "toccare."


SYNONYMS feel = touch.


ADD TO EVERY THING
  VERB touch
    CHECK mia_AT CAN touch
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY ogg1_inadatto_sg OF mia_AT.
          ELSE SAY ogg1_inadatto_pl OF mia_AT.
        END IF.
        "toccare."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.
      AND ogg <> hero
        ELSE SAY check_obj_not_hero3 OF mia_AT.
      AND ogg IS inanimato
        ELSE SAY check_obj_inanimate2 OF mia_AT. "."
      DOES
          "You feel nothing unexpected."
  END VERB.
END ADD TO.


-- ==============================================================


----- TOUCH WITH


-- ==============================================================


SYNTAX touch_with = touch (ogg) 'with' (strum)
  WHERE ogg IsA THING
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "toccare."
  AND strum IsA OBJECT
    ELSE
      IF strum IS NOT plurale
        THEN SAY ogg2_illegale_CON_sg OF mia_AT.
        ELSE SAY ogg2_illegale_CON_pl OF mia_AT.
      END IF.
      "toccare" SAY THE ogg. "."


ADD TO EVERY THING
  VERB touch_with
    WHEN ogg
      CHECK mia_AT CAN touch_with
        ELSE SAY azione_bloccata OF mia_AT.
      AND ogg IS esaminabile
        ELSE
          IF ogg IS NOT plurale
            --  "$+1 non [è/sono] qualcosa che puoi"
            THEN SAY ogg1_inadatto_sg OF mia_AT.
            ELSE SAY ogg1_inadatto_pl OF mia_AT.
          END IF.
          "toccare."
      AND strum IS esaminabile
        ELSE
          IF strum IS NOT plurale
            THEN SAY check_obj2_suitable_with_sg OF mia_AT.
            ELSE SAY check_obj2_suitable_with_pl OF mia_AT.
        END IF.
      AND ogg <> strum
        ELSE SAY check_obj_not_obj2_with OF mia_AT.
          AND strum <> hero
        ELSE SAY check_obj2_not_hero1 OF mia_AT.
      AND strum IN hero
        ELSE SAY check_obj2_in_hero OF mia_AT.
      AND ogg IS inanimato
        ELSE SAY check_obj_inanimate2 OF mia_AT.
      AND CURRENT LOCATION IS illuminato
        ELSE SAY imp_luogo_buio OF mia_AT.
      AND ogg IS raggiungibile AND ogg IS NOT distante
        ELSE
          IF ogg IS NOT raggiungibile
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
                ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
              END IF.
          ELSIF ogg IS distante
            THEN
              IF ogg IS NOT plurale
                THEN SAY ogg1_distante_sg OF mia_AT.
                ELSE SAY ogg1_distante_pl OF mia_AT.
              END IF.
          END IF.
      DOES
        "You touch" SAY THE ogg. "with" SAY THE strum. ". Nothing special happens."
  END VERB.
END ADD TO.



-- ==============================================================


----- TURN  (+ rotate)


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
            THEN SAY ogg1_inadatto_sg OF mia_AT.
            ELSE SAY ogg1_inadatto_pl OF mia_AT.
          END IF.
          "girare." --# ruotare?
      END IF.




ADD TO EVERY OBJECT
  VERB turn
    CHECK mia_AT CAN turn
      ELSE SAY azione_bloccata OF mia_AT.
    AND ogg IS esaminabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY check_obj_suitable_sg OF mia_AT.
          ELSE SAY check_obj_suitable_pl OF mia_AT.
        END IF.
    AND ogg IS spostabile
      ELSE
        IF ogg IS NOT plurale
          THEN SAY check_obj_suitable_sg OF mia_AT.
          ELSE SAY check_obj_suitable_pl OF mia_AT.
        END IF.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.

    DOES
      IF ogg DIRECTLY IN hero
        THEN "You turn" SAY THE ogg. "in your hands, noticing nothing special."
        ELSE "That wouldn't accomplish anything."
      END IF.
  END VERB.
END ADD TO.



-- ==============================================================


----- TURN ON


-- ==============================================================


----- Only devices and lightsources can be turned on and off. These classes are
----- defined in 'classes.i' with proper checks for 'on' and 'NOT on', 'lit' and 'NOT illuminato'.
----- Trying to turn on or off an ordinary object will default here to "That's not
----- something you can turn on".


SYNTAX  turn_on = turn 'on' (disp)
  WHERE disp IsA OBJECT
    ELSE
      IF disp IS NOT plurale
        THEN SAY illegal_parameter_on_sg OF mia_AT.
        ELSE SAY illegal_parameter_on_pl OF mia_AT.
      END IF.

        turn_on = switch 'on' (disp).

        turn_on = turn (disp) 'on'.

        turn_on = switch (disp) 'on'.



-- Note that 'switch' is not declared a synonym for 'turn'.
-- This is because 'turn' has also other meanings, for example 'turn page' which is
-- not equal with 'switch page'.
-- A separate 'switch' verb is declared in 'classes.i', classes 'device' and 'lightsource'.
-- This verb merely covers cases where the player forgets (or doesn't bother) to type 'on' or 'off'.



ADD TO EVERY OBJECT
  VERB turn_on
    CHECK mia_AT CAN turn_on
      ELSE SAY azione_bloccata OF mia_AT.
    DOES
      IF disp IS NOT plurale
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
----- 'lit' and 'NOT illuminato'.


SYNTAX turn_off = turn off (disp)
  WHERE disp IsA OBJECT
    ELSE
      IF disp IS NOT plurale
        THEN SAY illegal_parameter_off_sg OF mia_AT.
        ELSE SAY illegal_parameter_off_pl OF mia_AT.
      END IF.

      turn_off = switch off (disp).

      turn_off = turn (disp) off.

      turn_off = switch (disp) off.



-- Note that 'switch' is not declared a synonym for 'turn'.
-- This is because 'turn' has also other meanings, for example 'turn page' which is
-- not equal with 'switch page'.
-- A separate 'switch' verb is declared in 'classes.i', classes 'device' and 'lightsource'.
-- This verb merely covers cases where the player forgets to type 'on' or 'off'.


ADD TO EVERY OBJECT
  VERB turn_off
    CHECK mia_AT CAN turn_off
      ELSE SAY azione_bloccata OF mia_AT.
    DOES
      IF disp IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.

      "something you can $v off."
  END VERB.
END ADD TO.


-- ==============================================================


----- VERBOSE (see also -> BRIEF)


-- ==============================================================


SYNTAX verbose = verbose.


VERB verbose
  CHECK mia_AT CAN modalità_lunga
    ELSE SAY azione_bloccata OF mia_AT.
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



SYNTAX wear = wear (ogg)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg IS NOT plurale
        --  "$+1 non [è/sono] qualcosa che puoi"
        THEN SAY ogg1_inadatto_sg OF mia_AT.
        ELSE SAY ogg1_inadatto_pl OF mia_AT.
      END IF.
      "indossare."

   wear = put 'on' (ogg).
   wear = put (ogg) 'on'.
   wear = don (ogg).


ADD TO EVERY OBJECT
  VERB wear
    CHECK mia_AT CAN indossare
        ELSE SAY azione_bloccata OF mia_AT.
    AND ogg NOT IN abbigliamento
      ELSE SAY check_obj_not_in_worn1 OF mia_AT.
    AND ogg IS prendibile
      ELSE
        IF THIS IS NOT plurale
          THEN SAY check_obj_takeable OF mia_AT.
          ELSE SAY check_obj_takeable OF mia_AT.
        END IF.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY imp_luogo_buio OF mia_AT.
    AND ogg IS raggiungibile AND ogg IS NOT distante
      ELSE
        IF ogg IS NOT raggiungibile
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF mia_AT.
              ELSE SAY ogg1_non_raggiungibile_pl OF mia_AT.
            END IF.
        ELSIF ogg IS distante
          THEN
            IF ogg IS NOT plurale
              THEN SAY ogg1_distante_sg OF mia_AT.
              ELSE SAY ogg1_distante_pl OF mia_AT.
            END IF.
        END IF.

    DOES
      IF ogg IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.
      "something you can wear."

  END VERB.
END ADD TO.


-- end of file.

