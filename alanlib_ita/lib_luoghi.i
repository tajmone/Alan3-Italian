--= Alan StdLib Italian: Luoghi
--| Tristano Ajmone <tajmone@gmail.com>
--~-----------------------------------------------------------------------------
--~ "lib_luoghi.i"
--| v0.6.1-Alpha, 2018-10-15: Alan 3.0beta6
--|=============================================================================
--| Adattamento italiano del modulo `lib_locations.i` della
--| _ALAN Standard Library_ v2.1, (C) Anssi R�is�nen, Artistic License 2.1.
--| Ad opera di Tristano Ajmone,  (C) 2018, Artistic License 2.1.
--|=============================================================================


-->intro(100.1)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| == Introduzione
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| Questo modulo della libreria, dedicato ai luoghi, definisce:
--| 
--|  * Le direzioni cardinali predefinite (implementate come `EXIT`).
--|  * Il `limbo`, un luogo in cui poter collocare oggetti e attori che si vuole
--|    rimuovere dal gioco.
--|  * Tre classi di luoghi specializzate:
--|
--|    1. `stanza` -- per locali d'interno.
--|    2. `luogo_esterno` -- per aree all'esterno.
--|    3. `luogo_buio` -- per luoghi privi di illuminazine propria.
--|
--|  * Due regioni contenitore per fornire attributi e comportamenti condivisi
--|    da tutti i luoghi in esse contenuti:
--|
--|    1. `esterno` -- contiene tutte le stanze.
--|    2. `interno` -- contiene tutti i luoghi esterni.
--| 
--| Infine, aggiunge ad ogni luogo (`location`) i seguenti attributi numerici:
--|
--|  * `visitato`
--|  * `descritto`
--|
--| che fungono da variabili contatore per il numero di volte che ciascun luogo
--| � stato visitato dal giocatore e a lui descritto, rispettivamente.
--~-----------------------------------------------------------------------------
--<

--------------------------------------------------------------------------------
-- @TODO | Il testo inglese qui sotto � un po' ambiguo:
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- You may modify this file in any way that suits your purposes.
-- To use this file, you should have it in the same folder as your source code file,
-- and the line
--
-- IMPORT 'locations.i'.
--
-- in your source code.
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--       | poich� sembra sottendere:
--       |  1) Che le definizioni di questo modulo non influiscono sugli altri
--       |     moduli della libreria.
--       |  2) Che si tratti di un modulo indipendente ed opzionale.
--       |
--       | Entrambi i punti non corrispondono allo stato attuale della StdLib,
--       | e mi chiedo se non si tratti di testo vecchio, che fa riferimento a
--       | versioni precedenti della libreria. P.es., il 'limbo' (ex 'nowhere')
--       | � utilizzato spesso nei modulo dei verbi, e quindi non pu� essere
--       | modificato a piacimento. Molto pobabilmente lo stesso vale per altri
--       | elementi definiti in questo modulo, quindi l'affermazione secondo cui
--       | si � completamente liberi di editare questo file � un po' azzardata.
--       | Quanto al punto (2), allo stato attuale la StdLib viene caricata
--       | tramite un unico file ("liberia.i") che si occupa di importare tutti
--       | i moduli richiesti; intoltre, questo modulo non � affatto opzionale
--       | dato che alcune classi qui definite (es, il 'limbo') sono indispensabili
--       | per i verbi, e senza questo modulo si avrebbe un errore di compilazione.
--       | Credo che l'ideale sia ignorare questi paragrafi nella traduzione.
--------------------------------------------------------------------------------




--+============================================================================+
--|\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\//////////////////////////////////////|
--++--------------------------------------------------------------------------++
--||                                                                          ||
--||                           Indice dei Contenuti                           ||
--||                                                                          ||
--++--------------------------------------------------------------------------++
--|//////////////////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\|
--+============================================================================+
--|| � 1 - Il 'LIMBO' e Le Direzioni Cardinali Predefinite



-->todo_checklist(.666)
--| * [ ] Doxterizza _Il 'LIMBO' e Le Direzioni Cardinali Predefinite_.
--<<
--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- � 1 - Il 'LIMBO' e Le Direzioni Cardinali Predefinite
--------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================


THE limbo IsA LOCATION
--@TRADOTTO: Direzioni cardinali
  EXIT
    nord,         -- north
    sud,          -- south
    est,          -- east
    ovest,        -- west
    nordest,      -- northeast
    sudest,       -- southeast
    nordovest,    -- northwest
    sudovest,     -- southwest
    su,           -- up,
    gi�,          -- down,
    dentro,       -- 'in',
    fuori         -- out

    TO limbo.


END THE limbo.


--@TRADOTTO: Direzioni cardinali (sinonimi)
--@NOTA: Problemi a creare abbrev "NO" per nordovest:
--       "NO" � una keyword di Alan, � 'no' non lo accetta:
--        ----------------------------------------------------------------------
--        333 E : The word 'no' is defined to be both a synonym and another word
--                class.
--
--        1 error(s).
--        ----------------------------------------------------------------------
SYNONYMS
    n     = nord.        -- n  = north
    s     = sud.         -- s  = south
 -- e     = est.         -- e  = east         --~> conflicts with synon of 'AND'
    o     = ovest.       -- w  = west
    ne    = nordest.     -- ne = northeast
    se    = sudest.      -- se = southeast
    nov   = nordovest.   -- nw = northwest
    so    = sudovest.    -- sw = southwest
    sopra = su.          -- u  = up
    alto  = su.
--  a     = su. <- usato in i6; ma potrebbe confliggere con "a/to"?
    giu   = gi�.         -- d  = down
    sotto = gi�.
    basso = gi�.
    b     = gi�. -- Si usa davvero?
--@NOTA: i6 implementa anche "esterno" e "esternamente" per "fuori"


-- Note:


-- 1) the directions defined above (and their synonyms) are not predefined in or
-- hardwired to the interpreter in any way, so you can replace them altogether or add new
-- ones to be used alongside with them.


-- 2) when you want to remove things from play, you can
--
-- LOCATE [object] AT limbo.
--
-- for example
--
-- THE piece_of_paper IsA OBJECT
-- ...
--    VERB tear
--    DOES ONLY "You tear the piece of paper to shreds."
--    LOCATE piece_of_paper AT limbo.
--  END VERB.
--
-- END THE piece_of_paper.


-->todo_checklist(.666)
--| * [ ] _2. Location classes ROOM and SITE_:
--| ** [ ] Traduci.
--| ** [ ] Doxterizza.
--<<

-- =========================================================================


----- 2. Location classes ROOM and SITE for indoor and outdoor locations


-- =========================================================================


-- ROOM and SITE are optional location classes you can use to ease up coding.
-- All ROOMS have a floor, walls and a ceiling. All SITES have a ground and a sky.
-- Thus, you will be able to define for example
--
-- THE kitchen IsA stanza
--
-- and it will automatically have a floor, walls and a ceiling,
--
-- or:
--
-- THE greenmeadow IsA luogo_esterno
--
-- and the ground and the sky are automatically found in that location.
--
--
-- Of course, you will still be able to define locations in the usual way, for example
--
-- THE kitchen IsA LOCATION
--
-- etc, but the floor, walls and ceiling won't be automatically included there.
-- The walls, floor, ceiling, ground and sky are not takeable or movable.
-- This library file also defines the sky to be distant and the ceiling to be out of reach,
-- so that they can't be touched, for example.

-- (We make use of ALAN's nested locations feature in the following definitions: )


THE esterno IsA LOCATION
END THE esterno.


THE interno IsA LOCATION
END THE interno.


EVERY stanza IsA LOCATION AT interno
  HAS desc_pavimento "".  -- if these values are left unchanged,
  HAS desc_pareti    "".  -- the descriptions of the walls, floor and
  HAS desc_soffitto  "".  -- ceiling will be the default "You notice nothing unusual
END EVERY.                -- about the [object]."


EVERY luogo_esterno IsA LOCATION AT esterno
  HAS desc_suolo "".
  HAS desc_cielo "".
END EVERY.


EVERY oggetto_stanza IsA OBJECT AT interno
END EVERY.


EVERY oggetto_luogo_esterno IsA OBJECT AT esterno
END EVERY.


THE pavimento IsA oggetto_stanza
  IS NOT prendibile.
  IS NOT spostabile.
  CONTAINER
    -- to allow 'empty/pour/put something on floor'
  DESCRIPTION ""


  -- As we have declared the floor a container, we will disable some verbs
  -- defined to work with containers:


  VERB empty_in, pour_in
     WHEN cont
    DOES ONLY "That's not something you can $v things into."
  END VERB empty_in.


  VERB look_in
    DOES ONLY "That's not possible."
  END VERB look_in.


  VERB put_in
     WHEN cont
    DOES ONLY "That's not something you can $v things into."
  END VERB put_in.

-- @PRENDI_DA -> @TAKE_FROM (VERB) => FLOOR
  VERB prendi_da
     WHEN detentore
    DOES ONLY "If you want to pick up something, just TAKE it."
  END VERB prendi_da.


  VERB throw_in
     WHEN cont
    DOES ONLY "That's not something you can $v things into."
  END VERB throw_in.

END THE.



THE pareti IsA oggetto_stanza
  HAS articolo "le".
  NAME pareti.
  NAME parete.
  NAME muro.
  IS NOT prendibile.
  IS NOT spostabile.
  DESCRIPTION ""
END THE.



THE soffitto IsA oggetto_stanza
  IS NOT prendibile.
  IS NOT raggiungibile.
  DESCRIPTION ""
END THE.



THE suolo IsA oggetto_luogo_esterno
  IS NOT prendibile.
  IS NOT spostabile.
  CONTAINER
    -- to allow 'empty/pour something on ground'
  DESCRIPTION ""



  -- As we have declared the ground to be a container, we will disable some verbs
  -- defined to work with containers:


  VERB empty_in, pour_in
     WHEN cont
    DOES ONLY "That's not something you can $v things into."
  END VERB empty_in.


  VERB look_in
    DOES ONLY "That's not possible."
  END VERB look_in.


  VERB put_in
     WHEN cont
    DOES ONLY "That's not something you can $v things into."
  END VERB put_in.


-- @PRENDI_DA -> @TAKE_FROM (VERB) => GROUND
  VERB prendi_da
     WHEN detentore
    DOES ONLY "If you want to pick up something, just TAKE it."
  END VERB prendi_da.


  VERB throw_in
     WHEN cont
    DOES ONLY "That's not something you can $v things into."
  END VERB throw_in.


END THE.



THE cielo IsA oggetto_luogo_esterno
  IS NOT prendibile.
  IS distante.
  DESCRIPTION ""
END THE.


-- We still declare some shared behaviour for all indoor and outdoor objects:


ADD TO EVERY oggetto_stanza

  VERB put_against
    WHEN bulk
      CHECK THIS = pareti
        ELSE "That's not possible."
  END VERB put_against.

  VERB put_behind, put_near, put_under
    WHEN bulk
      DOES ONLY "That's not possible."
  END VERB put_behind.

  VERB look_behind, look_through, look_under
    DOES ONLY "That's not possible."
  END VERB look_behind.

END ADD TO.


ADD TO EVERY oggetto_luogo_esterno

  VERB put_against, put_behind, put_near, put_under
    WHEN bulk
      DOES ONLY "That's not possible."
  END VERB put_against.

  VERB look_behind, look_through, look_under
    DOES ONLY "That's not possible."
  END VERB look_behind.

END ADD TO.


-- NOTE: it is often a good idea to modify the 'examine' verb for the above objects.
-- Here is an example for 'wall':

-- THE mia_AT IsA blocco_definizioni
-- ...
-- VERB examine
--    CHECK ogg <> pareti
--       ELSE
--          IF hero AT kitchen
--              THEN "The walls are lined with shelves."
--          ELSIF hero AT livingroom
--      THEN "The wallpaper has a nice flower pattern."
--          ELSIF...
--          END IF.
--    ...
-- END VERB.
--
-- END THE mia_AT.



-->todo_checklist(.666)
--| * [ ] _3. Dark locations_:
--| ** [ ] Traduci.
--| ** [ ] Doxterizza.
--<<

-- ==========================================================


----- 3. Dark locations


-- ==========================================================


ADD TO EVERY LOCATION
  IS illuminato.
END ADD TO.


EVERY luogo_buio IsA LOCATION
  IS NOT illuminato.

  ENTERED

    IF COUNT IsA fonte_di_luce, IS illuminato, HERE > 0
      THEN MAKE THIS illuminato.
        IF CURRENT ACTOR <> hero
          THEN LOOK.
        END IF.
    END IF.

    IF COUNT IsA fonte_di_luce, IS illuminato, HERE = 0
      THEN MAKE THIS NOT illuminato.
    END IF.

    -- These ENTERED statements take care
    -- of the dark location being correctly lit or not lit at entrance,
    -- the WHEN rules below take care of the change when the hero is
    -- already in the location.


  DESCRIPTION
    CHECK THIS IS illuminato
      ELSE SAY  dark_loc_desc  OF mia_AT.

END EVERY luogo_buio.


WHEN location OF hero IS NOT illuminato
  AND COUNT IsA fonte_di_luce, IS illuminato, AT hero > 0
THEN MAKE location OF hero illuminato.
  SCHEDULE light_on AT hero AFTER 0.


EVENT light_on
  LOOK.
END EVENT.


WHEN location OF hero IsA luogo_buio
  AND location OF hero IS illuminato
  AND COUNT IsA fonte_di_luce, IS illuminato, AT hero = 0
THEN MAKE location OF hero NOT illuminato.
  SCHEDULE light_off AT hero AFTER 0.


EVENT light_off
  SAY  light_goes_off  OF mia_AT.
END EVENT.


-- We make sure that dark_locations will be dark after the hero leaves them, if the hero took the
-- lightsource with him:

EVENT check_darkness
    FOR EACH dl IsA luogo_buio, IS illuminato
    DO
      IF COUNT IsA fonte_di_luce, AT dl = 0
        THEN MAKE dl NOT illuminato.
      END IF.
    END FOR.
    SCHEDULE check_darkness AFTER 1.
END EVENT.


-- This event is initialized in the start_section instance ('definitions.i').


-- To define a dark location, use a formulation like the following:


-- THE basement IsA luogo_buio
--  EXIT up TO kitchen.
-- ...
-- END THE.


-- The description of a dark_location will automatically be: "It is pitch black.
-- You can't see anything at all." (Edit the dark_loc_desc in 'definitions.i' to change this.)


-- If you add a description to a dark_location, this description will be shown only
-- if/when the location is lit by any means:

-- THE basement IsA luogo_buio
--    DESCRIPTION "Cobwebs and old junk are the only things you see here."
--  EXIT up TO kitchen.
-- END THE.




-->todo_checklist(.666)
--| * [ ] Doxterizza _Gli Attribuiti VISITATO e DESCRITTO_.
--<<
--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- � x - Gli Attribuiti VISITATO e DESCRITTO
--------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================

-- Un luogo ha il valore 'visitato 0' finch� il giocatore non lo visita la prima
-- volta, dopodich� il suo valore verr� incrementato ad ogni visita. L'attributo
-- 'visitato' � un contatore che registra il numero di volte in cui il giocatore
-- � entrato in un determinato luogo, e pu� tornare utile in molti frangenti;
-- ad es., per mostrare una descrizione diversa (pi� breve) nelle visite succes-
-- sive alla prima.

-- L'attributo 'descritto' funziona in maniera analoga, ma registra il numero di
-- volte che un luogo � stato descritto, ed il suo valore incrementa ogni volta
-- che viene mostrata al giocatore la descrizione del luogo. La distinzione tra
-- questi due attributi � utile quando si vuole assicurarsi che le descrizioni
-- successive alla prima saranno diverse (anche se il giocatore seguita a
-- trovarsi per la prima volta in quel luogo).

ADD TO EVERY LOCATION
  HAS visitato  0.
  HAS descritto 0.

  ENTERED
     IF CURRENT ACTOR = hero
      THEN
        INCREASE visitato  OF THIS.
        INCREASE descritto OF THIS.
        -- +-----------------------------------------------------------------+
        -- | NB: L'attributo 'descritto' viene incrementato anche da GUARDA. |
        -- +-----------------------------------------------------------------+
     END IF.

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
--| italiano del modulo dei luoghi.
--<


-->todo_checklist(51000.1)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| === Check List
--~-----------------------------------------------------------------------------
--~=============================================================================
--| 
--| Lista della spesa per le varie cosucce da fare:
--| 
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
--<

---< Fine del File >---
