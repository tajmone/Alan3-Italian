-- "lib_luoghi.i" v0.3.0 (2018/07/24)
--------------------------------------------------------------------------------
-- Alan ITA Alpha Dev | Alan 3.0beta5 | StdLib 2.1
--------------------------------------------------------------------------------
-- Adapted to Italian from:
-- ALAN Standard Library v2.1
-- "Locations" (original file name: 'lib_locations.i')
--------------------------------------------------------------------------------


-- This library file defines the default directions (exits) and the location 'nowhere',
-- a useful place to locate things when you want to remove them from play.
-- This file also defines four specific location classes: rooms (= indoor locations),
-- sites (= outdoor locations) dark_locations and areas.
-- Finally, the attributes 'visited' and 'described' are defined.
-- You may modify this file in any way that suits your purposes.
-- To use this file, you should have it in the same folder as your source code file,
-- and the line
--
-- IMPORT 'locations.i'.
--
-- in your fonte code.



-- ========================================================


-----  1. The location 'nowhere' and the default directions


-- ========================================================


THE nowhere IsA LOCATION
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

    TO nowhere.


END THE nowhere.


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
-- LOCATE [object] AT nowhere.
--
-- for example
--
-- THE piece_of_paper IsA OBJECT
-- ...
--    VERB tear
--    DOES ONLY "You tear the piece of paper to shreds."
--    LOCATE piece_of_paper AT nowhere.
--  END VERB.
--
-- END THE piece_of_paper.



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
-- THE greenmeadow IsA SITE
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


EVERY site IsA LOCATION AT esterno
  HAS ground_desc "".
  HAS desc_cielo  "".
END EVERY.


EVERY oggetto_stanza IsA OBJECT AT interno
END EVERY.


EVERY site_object IsA OBJECT AT esterno
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
  END VERB.


  VERB look_in
    DOES ONLY "That's not possible."
  END VERB.


  VERB put_in
     WHEN cont
    DOES ONLY "That's not something you can $v things into."
  END VERB.

-- @PRENDI_DA -> @TAKE_FROM (VERB) => FLOOR
  VERB prendi_da
     WHEN detentore
    DOES ONLY "If you want to pick up something, just TAKE it."
  END VERB.


  VERB throw_in
     WHEN cont
    DOES ONLY "That's not something you can $v things into."
  END VERB.

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



THE ground IsA site_object
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
  END VERB.


  VERB look_in
    DOES ONLY "That's not possible."
  END VERB.


  VERB put_in
     WHEN cont
    DOES ONLY "That's not something you can $v things into."
  END VERB.


-- @PRENDI_DA -> @TAKE_FROM (VERB) => GROUND
  VERB prendi_da
     WHEN detentore
    DOES ONLY "If you want to pick up something, just TAKE it."
  END VERB.


  VERB throw_in
     WHEN cont
    DOES ONLY "That's not something you can $v things into."
  END VERB.


END THE.



THE cielo IsA site_object
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
  END VERB.

  VERB put_behind, put_near, put_under
    WHEN bulk
      DOES ONLY "That's not possible."
  END VERB.

  VERB look_behind, look_through, look_under
    DOES ONLY "That's not possible."
  END VERB.

END ADD TO.


ADD TO EVERY site_object

  VERB put_against, put_behind, put_near, put_under
    WHEN bulk
      DOES ONLY "That's not possible."
  END VERB.

  VERB look_behind, look_through, look_under
    DOES ONLY "That's not possible."
  END VERB.

END ADD TO.


-- NOTE: it is often a good idea to modify the 'examine' verb for the above objects.
-- Here is an example for 'wall':

-- THE my_game IsA DEFINITION_BLOCK
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
-- END THE my_game.




-- ==========================================================


----- 3. Dark locations


-- ==========================================================


ADD TO EVERY LOCATION
  IS lit.
END ADD TO.


EVERY luogo_buio IsA LOCATION
  IS NOT lit.

  ENTERED

    IF COUNT IsA LIGHTSOURCE, IS lit, HERE > 0
      THEN MAKE THIS lit.
        IF CURRENT ACTOR <> hero
          THEN LOOK.
        END IF.
    END IF.

    IF COUNT IsA LIGHTSOURCE, IS lit, HERE = 0
      THEN MAKE THIS NOT lit.
    END IF.

    -- These ENTERED statements take care
    -- of the dark location being correctly lit or not lit at entrance,
    -- the WHEN rules below take care of the change when the hero is
    -- already in the location.


  DESCRIPTION
    CHECK THIS IS lit
      ELSE SAY dark_loc_desc OF my_game.

END EVERY luogo_buio.


WHEN location OF hero IS NOT lit
  AND COUNT IsA lightsource, IS lit, AT hero > 0
THEN MAKE location OF hero lit.
  SCHEDULE light_on AT hero AFTER 0.


EVENT light_on
  LOOK.
END EVENT.


WHEN location OF hero IsA luogo_buio
  AND location OF hero IS lit
  AND COUNT IsA lightsource, IS lit, AT hero = 0
THEN MAKE location OF hero NOT lit.
  SCHEDULE light_off AT hero AFTER 0.


EVENT light_off
  SAY light_goes_off OF my_game.
END EVENT.


-- We make sure that dark_locations will be dark after the hero leaves them, if the hero took the
-- lightsource with him:

EVENT check_darkness
    FOR EACH dl IsA luogo_buio, IS lit
    DO
      IF COUNT IsA LIGHTSOURCE, AT dl = 0
        THEN MAKE dl NOT lit.
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






-- =====================================================================


----- 4. The attributes 'visited' and 'described'


-- =====================================================================


-- A location has the value 'visited 0' until the hero visits it for the first time, and the
-- value increases on every subsequent visit.
-- This helps when you need to control if or how many times a location has been visited,
-- and also if you want the location description to be different after the first visit.

-- A location has the value 'described 0' before the first location description,
-- and the value increases every time the description is shown.
-- This distinction is handy when you want the first-time description of a location to be different
-- from the subsequent ones (even if the hero is in the location still for the first time).


ADD TO EVERY LOCATION
  HAS visited 0.
  HAS described 0.

  ENTERED
     IF CURRENT ACTOR = hero
      THEN
        INCREASE visited OF THIS.
        INCREASE described OF THIS.
        -- The "described" attribute increases also after LOOK (see 'verbs.i').
     END IF.

END ADD TO.







-- end of file.



