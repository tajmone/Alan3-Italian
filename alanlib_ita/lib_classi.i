-- "lib_classi.i" v0.2.17 (2018/07/23)
--------------------------------------------------------------------------------
-- Alan ITA Alpha Dev | Alan 3.0beta5 | StdLib 2.1
--------------------------------------------------------------------------------
-- Adapted to Italian from:
-- ALAN Standard Library v2.1
-- "Classes" (original file name: 'lib_classes.i')
--------------------------------------------------------------------------------
--------------------------------------------------------------------------------

-- Anzitutto, definiamo la descrizione predefinita per gli oggetti di tipo
-- scenario (ossia, nessuna descrizione).

ADD TO EVERY OBJECT

  DESCRIPTION
      CHECK THIS IS NOT scenario
      ELSE ""

END ADD.

--+============================================================================+
--|\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\//////////////////////////////////////|
--++--------------------------------------------------------------------------++
--||                                                                          ||
--||                           Indice dei Contenuti                           ||
--||                                                                          ||
--++--------------------------------------------------------------------------++
--|//////////////////////////////////////\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\|
--+============================================================================+
--|| § 0 - Panoramica del Modulo
--|| § 0.1 - Elenco e descrizione delle classi
--++===========================================================================+


--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- § 0 - Panoramica del Modulo
--------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================

--| Questo modulo della libreria definisce varie classi di oggetti e attori.
--| Siccome molte di queste classi ricorrono spesso nelle definizioni dei verbi
--| nel modulo 'lib_verbi.i', si consiglia di procedere con cautela prima di
--| modificarle o cancellarle. Per semplificare tale compito, all'inizio di
--| ciascuna classe viene riportato se e dove venga fatto riferimento ad essa
--| negli altri moduli della libreria.



--==============================================================================
--------------------------------------------------------------------------------
-- § 0.1 - Elenco e descrizione delle classi
--------------------------------------------------------------------------------
--==============================================================================



--==============================================================================
-- § 0.1.1 - Oggetti
--==============================================================================



-- CLOTHING
  -- Is a piece of clothing that behaves according to Alan Bampton's 'xwear.i' extension.
  -- The said extension has been fully assimilated to this library.
  -- This extension prevents clothes from being worn in an illogical order, for example you
  -- cannot put on a shirt if you are already wearing a jacket, and so forth.
  -- This only applies to the hero; NPCs cannot be made to wear clothing in layers.
  -- Also the verbs 'wear', 'remove' and 'undress' are defined here.

--------------------------------------------------------------------------------

--.-----------------------.
--| D I S P O S I T I V O |
--+-----------------------+----------------------------------------------------.
--| Un macchinario o congengo ellettrico che è possibile accendere e spegnere, |
--| a meno che non sia rotto. Se esaminato, la descrizione includerà il suo    |
--| stato attuale (acceso o spento).                                           |
--+----------------------------------------------------------------------------+
--| ESEMPI: Interruttore, Tv, computer, radio, generatore elettrico.           |
--+----------------------------------------------------------------------------+
--| ATTRIBUTI PREDEFINITI: |                                                   |
--|                        |                                                   |
--|   - IS NOT acceso.     | = spento                                          |
--|   - IS NOT rotto.      | = funzionante                                     |
--`----------------------------------------------------------------------------'


-- DEVICE
  -- Is a  machine or an electronic device, for example a TV. Can be turned
  -- (=switched) on and off if it is not broken.
  -- Attributes: 'on' and NOT 'on', NOT broken.
  -- Is described by default as being either on or off when examined.

--------------------------------------------------------------------------------

-- @TODO: Aggiungi menzione di 'altro_lato'!

--.-----------.
--| P O R T A |
--+-----------+----------------------------------------------------------------.
--| Può essere aperta o chiusa, e (opzionale) bloccata e sbloccata. Di default |
--| le porte sono chiuse e non bloccate. Per poter aprire una porta bloccata è |
--| richiesta la sua chiave ('chiave_abbinata'). Se esaminata, la descrizione  |
--| includerà il suo stato attuale (aperta o chiusa).                          |
--+----------------------------------------------------------------------------+
--| ATTRIBUTI PREDEFINITI:                  |                                  |
--|                                         |                                  |
--|  - IS apribile.                         |                                  |
--|  - IS NOT aperto.                       | = chiusa                         |
--|  - IS NOT bloccabile.                   | = nessuna serratura              |
--|  - IS NOT bloccato.                     |                                  |
--|  - IS NOT prendibile.                   | = fissa                          |
--|  - HAS chiave_abbinata chiave_fittizia. | = nessuna chiave                 |
--`----------------------------------------------------------------------------'

-- DOOR
  -- Can be opened, closed, and optionally locked and unlocked.
  -- Is by default not open, not lockable.
  -- all default attributes: openable, NOT open, NOT lockable, NOT locked; not takeable.
  -- Is described by default as being either open or closed when examined.

--------------------------------------------------------------------------------

--.---------------.
--| L I Q U I D O |
--+---------------+------------------------------------------------------------.
--| Si può prendere un liquido solo se è in un contenitore. Si possono usare i |
--| liquidi per riempire qualcosa, e li si può versare.                        |
--| Di default un liquido non è potabile.                                      |
--`----------------------------------------------------------------------------'

-- LIQUID
  -- Can only be taken if it is in a container. You can fill something with it,
  -- and you can pour it somewhere.
  -- A liquid is by default NOT potabile.

--------------------------------------------------------------------------------

-- LIGHTSOURCE
  -- IS natural or NOT natural
  -- (a natural lightsource is for example a match or a torch).
  -- Can be turned on and off, lighted and extinguished (= put out) if it
  -- is not broken. A natural lightsource
  -- cannot be turned on or off, it can only be lighted and extinguished (= put out).
  -- When examined, a lightsource is automatically supplied with a description of
  -- whether it is providing light or not.

--------------------------------------------------------------------------------

-- LISTED_CONTAINER
  -- Is a container object. The contents of a listed_container will be listed both after
  -- 'look' (= in the room description), 'look in' and 'examine' (if the container is open).
  -- (The contents of a normal container object are not listed after 'examine' by default, but only
  -- after 'look' (=room description) and 'look in').

--------------------------------------------------------------------------------

--.---------------.
--| L I Q U I D O |
--+---------------+------------------------------------------------------------.
--| È possibile ascoltare i suoni ma non esaminarli, annusarli né manipolarli. |
--| (volendo, li si può accendere e spegnere.)                                 |
--+----------------------------------------------------------------------------+
--| ATTRIBUTI PREDEFINITI:                                                     |
--|                                                                            |
--|  - IS NOT esaminabile.                                                     |
--|  - IS NOT prendibile.                                                      |
--|  - IS NOT raggiungibile.                                                   |
--|  - IS NOT spostabile.                                                      |
--`----------------------------------------------------------------------------'

-- SOUND
  -- Can be listened to but not examined, searched, smelled or manipulated.
  -- (Can be turned on and off if desirable.)

--------------------------------------------------------------------------------

-- SUPPORTER
  -- You can put things on this and you can stand on this. It is declared a container,
  -- so you can take things from it, as well. When there's something on a supporter,
  -- a default listing of it will appear in the room description and after 'examine'.

--------------------------------------------------------------------------------

--.---------.
--| A R M A |
--+---------+------------------------------------------------------------------.
--| Di default un'arma non può essere sparata (p.es., un coltello, una mazza), |
--| ma settando l'attributo 'CAN sparare' si avrà un'arma da fuoco che sarà    |
--| utilizzabile con il verbo "spara". 
--+----------------------------------------------------------------------------+
--| ATTRIBUTI PREDEFINITI: |                                                   |
--|                        |                                                   |
--|  - CAN NOT sparare.    | = arma bianca                                     |
--`----------------------------------------------------------------------------'

-- WEAPON
  -- IS fireable (for example a cannon) or NOT fireable (for example a baseball bat).

--------------------------------------------------------------------------------

--.-----------------.
--| F I N E S T R A |
--+-----------------+----------------------------------------------------------.
--| Può essere aperta o chiusa; si può guardare attraverso e fuori da essa. Se |
--| esaminata, la descrizione includerà il suo stato attuale (aperta o chiusa).|
--+----------------------------------------------------------------------------+
--| ATTRIBUTI PREDEFINITI:                                                     |
--|                                                                            |
--|  - IS apribile.                                                            |
--|  - IS NOT aperto.                                                          |
--|  - IS NOT prendibile.                                                      |
--`----------------------------------------------------------------------------'

-- WINDOW
  -- Can be opened, closed, looked through and out of.
  -- Will be by default described as being either open or closed when examined.

--------------------------------------------------------------------------------


-- 2. ACTOR CLASSES
-- ================

-- the ACTORS are defined to be NOT inanimate CONTAINERS (so that they can for example
-- receive and carry things.
--
-- Actors are usually preceded by an article in-game:
-- for example "You see a man here."
--    "There is nothing special about the dog."
-- unless they are declared as 'named'.
--
-- The following classes for actors are defined in this library:


-- PERSON
  -- is able to talk (= 'CAN talk').


-- FEMALE
  -- a subclass of person (= is able to talk)
      -- can be referred to with the pronoun 'her'


-- MALE
  -- a subclass of person (= is able to talk)
      -- can be referred to with the pronoun 'him'





-- The contents end here.




--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- § 1 - Classi di Oggetti
--------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================



--==============================================================================
--------------------------------------------------------------------------------
-- § 1.1 - Vestiario 
--------------------------------------------------------------------------------
--==============================================================================

-- ==============================================================


----- CLOTHING


-- ==============================================================


-- (See the file 'lib_verbi.i', verbs 'inventory' and 'take' where the
-- container 'worn', defined below, is used in the verb definitions.)


-- To use this class, see the documentation text right after the
-- code below.

-- This class makes use of Alan Bampton's 'xwear.i' extension
-- written originally for ALAN V2, converted here to V3 and
-- assimilated fully to the present library. Thanks to Alan Bampton
-- for the permission to use the code here.


-----------------------------------------------------------------
-- First, we declare the container for clothing.
-----------------------------------------------------------------


-- An entity is present everywhere and thus the hero's clothing is always accessible.
-- This container is only used internally in the library; ignore.


THE worn ISA ENTITY
  CONTAINER TAKING CLOTHING.
    HEADER SAY hero_worn_header OF my_game.
    ELSE SAY hero_worn_else OF my_game.
END THE.





-------------------------------------------------------------------
-- Now, we define some common attributes for clothing as well as
-- how the verbs 'remove', 'undress' and 'wear' (and their synonyms) behave with this class.
-------------------------------------------------------------------


EVERY clothing ISA OBJECT

  IS indossabile.

  IS sex 0.

  IS headcover 0.
  IS handscover 0.
  IS feetcover 0.
  IS topcover 0.
  IS botcover 0.

  IS NOT indossato. -- not in the 'wearing' set of any actor; this attribute
                    -- is used internally in the library; ignore


  INITIALIZE


    -- the set attribute 'IS wearing' is defined to work for both the hero
    -- and NPCs:

    IF THIS IN worn
      THEN INCLUDE THIS IN wearing OF hero.
    END IF.

    FOR EACH ac ISA ACTOR
      DO
        IF ac = hero
          THEN
            IF THIS IN wearing OF hero AND THIS <> indumento_fittizio
              THEN
                IF THIS NOT IN worn
                  THEN LOCATE THIS IN worn.
                END IF.
                MAKE THIS indossato.
            END IF.
        ELSIF THIS IN wearing OF ac AND THIS <> indumento_fittizio
            THEN
              IF THIS NOT IN ac
                THEN
                  LOCATE THIS IN ac.
              END IF.
              MAKE THIS indossato.
        END IF.
    END FOR.



    -- all objects found in a piece of clothing, for example a wallet in a jacket,
    -- will be allowed back in the piece of clothing once taken from there:


    FOR EACH o ISA OBJECT, DIRECTLY IN THIS
      DO
        INCLUDE o IN consentiti OF THIS.
    END FOR.




    -- all clothing acquired and worn by the hero or an NPC mid-game is checked to
           -- show correctly when the possessions of an actor are listed:


    SCHEDULE worn_clothing_check AFTER 0.



  CONTAINER
  -- to allow for example a wallet to be put into a jacket

  -- If the clothing contains something, for example if a jacket contains a wallet,
      -- the wallet will be mentioned by default when the jacket is examined:


  VERB esamina
    DOES AFTER
      IF THIS IS NOT OPAQUE
        THEN
          IF COUNT ISA OBJECT, DIRECTLY IN THIS > 0
            THEN LIST THIS.
          END IF.
      END IF.
  END VERB.



    VERB wear

    CHECK sex OF THIS = sex OF hero OR sex OF THIS = 0
      ELSE SAY check_clothing_sex OF my_game.

    DOES ONLY


--------------------------------------------------------------------
-- 'wear_flag' is a multi-purpose flag used for several purposes in
-- this library, here it is reset to 0 before proceeding as a matter
-- of 'housekeeping' for the code.
--------------------------------------------------------------------


    SET wear_flag OF hero TO 0.


--------------------------------------------------------------------
-- First check to see if the player is carrying the item already, if
-- not, set the 'wear_flag' to 1 to indicate the item was picked up
-- in this turn.
--------------------------------------------------------------------


    IF THIS NOT IN hero
      THEN
        SET wear_flag OF hero TO 1.
    END IF.


--------------------------------------------------------------------
--  Now see if the player can put this item on by testing
--  all of its coverage attributes against the player's state.
--------------------------------------------------------------------


--------------------------------------------------------------------
-- First check the 'topcover' attributes, if 'obj' fails this test
-- then it means the hero is already wearing clothes that cover the
-- topcover area and those clothes are of the same layer or a layer
-- that belongs on top of the 'obj' item. In either case it would
-- NOT be possible to put on the 'obj'. To 'flag' this condition add
-- 5 to the 'wear_flag' attribute as an indicator this test failed.
--------------------------------------------------------------------


    IF topcover OF THIS <> 0 AND topcover OF THIS <= SUM OF topcover DIRECTLY IN worn
      THEN
        INCREASE wear_flag OF hero BY 5.
    END IF.


--------------------------------------------------------------------
-- Perform a similar test for other attributes.
--------------------------------------------------------------------


    --IF THIS IN tempworn
      --THEN

    IF handscover OF THIS <> 0 AND handscover OF THIS <= SUM OF handscover DIRECTLY IN worn
      THEN
        INCREASE wear_flag OF hero BY 5.
    END IF.


    IF feetcover OF THIS <> 0 AND feetcover OF THIS <= SUM OF feetcover DIRECTLY IN worn
      THEN
        INCREASE wear_flag OF hero BY 5.
    END IF.


    IF headcover OF THIS <> 0 AND headcover OF THIS <= SUM OF headcover DIRECTLY IN worn
      THEN
        INCREASE wear_flag OF hero BY 5.
    END IF.


--------------------------------------------------------------------
--  botcover is a special case, adjust the 'tempcovered OF hero'
--  attribute so that the code rejects non sensible options.
--  First of all, discount any coatlike clothes as these never
--  affect ability to put on other lower body only garments.
--------------------------------------------------------------------


    SET tempcovered OF hero TO SUM OF botcover DIRECTLY IN worn.

    IF tempcovered OF hero >63 and botcover OF THIS < 33
      THEN
        SET tempcovered OF hero TO tempcovered OF hero -64.
    END IF.


--------------------------------------------------------------------
-- Now discount any dress/ skirt coverall like clothes as these do
-- not technically affect ability to put on lower body only clothes.
-- Special clause here excludes the full body coverage 'teddy' type
-- garment - as a skirt WOULD prevent that from being removed.
-- ( dress/coat garments automatically prevent this by virtue of
-- having higher 'topcover' settings than the teddy )
--------------------------------------------------------------------


    IF tempcovered OF hero >31 AND botcover OF THIS < 16 and botcover OF THIS <> 4
      THEN
        SET tempcovered OF hero TO tempcovered OF hero -32.
    END IF.


--------------------------------------------------------------------
-- IF tempcovered OF hero is still > 15 then must have trousers
-- type clothing on - therefore disallow wearing dress type clothing
-- because, although technically possible, it is not very sensible.
--------------------------------------------------------------------


    IF tempcovered OF hero >15 AND botcover OF THIS > 16
      THEN
        SET tempcovered OF hero TO tempcovered OF hero +16.
    END IF.


--------------------------------------------------------------------
--  From here down, clothes DO work as they do for other areas.
--------------------------------------------------------------------


    IF botcover OF THIS <> 0  AND botcover OF THIS <= tempcovered OF hero
      THEN
        INCREASE wear_flag OF hero BY 5.
    END IF.


--------------------------------------------------------------------
-- At this point, 'wear_flag' will be 0 if the obj was held by the
-- player and can be put on, or l if he picked it up this turn and
-- it can be put on. Any higher value means one or more of the
-- tests failed and the player cannot put on these clothes.
--------------------------------------------------------------------


    IF wear_flag OF hero >1
      THEN
        IF THIS NOT IN hero
          THEN "You pick up the" SAY THE THIS. "."
        END IF.

        LOCATE THIS IN hero.
        EMPTY worn IN tempworn.
        LIST tempworn.

        "Trying to put" SAY THE THIS. "on isn't very sensible."

        EMPTY tempworn IN worn.

    ELSIF wear_flag OF hero = 1
      THEN
        LOCATE THIS IN worn.

        "You pick up the" SAY THE THIS.

        IF THIS IS NOT plurale
          THEN "and put it on."
          ELSE "and put them on."
        END IF.

    ELSE
      LOCATE THIS IN worn.
      MAKE THIS indossato.
      INCLUDE THIS IN wearing OF hero.
      "You put on" SAY THE THIS. "."
    END IF.

END VERB.



VERB remove
  CHECK THIS IN worn
    ELSE SAY check_obj_in_worn OF my_game.
  AND CURRENT LOCATION IS lit
    ELSE SAY check_locazione_illuminata OF my_game.

  DOES ONLY

  SET wear_flag OF hero TO 0.


--------------------------------------------------------------------
-- Check the total 'topcover' of items worn. Because of the number
-- sequence used, by dividing the sum of the worn attributes by two
-- and then comparing the result to the individual 'topcover' of the
-- obj in question, ( the former can only ever be greater than the
-- latter if an article of clothing is worn that goes over 'obj' )
-- it's easy to tell if the obj ought to be removable. A temporary
-- attribute is used here because it needs to be manipulated. Once
-- again 'wear_flag' is used to indicate the results.
--------------------------------------------------------------------


  SET tempcovered OF hero TO SUM OF topcover DIRECTLY IN worn /2.
  IF topcover OF THIS <> 0 AND topcover OF THIS < tempcovered OF hero
     THEN
      INCREASE wear_flag OF hero BY 1.
  END IF.


--------------------------------------------------------------------
-- Perform a similar test for other attributes.
--------------------------------------------------------------------


  SET tempcovered OF hero TO SUM OF handscover DIRECTLY IN worn /2.
  IF handscover OF THIS <> 0 AND handscover OF THIS < tempcovered OF hero
    THEN
      INCREASE wear_flag OF hero BY 1.
  END IF.


  SET tempcovered OF hero TO SUM OF feetcover DIRECTLY IN worn /2.
  IF feetcover OF THIS <> 0 AND feetcover OF THIS < tempcovered OF hero
    THEN
      INCREASE wear_flag OF hero BY 1.
  END IF.


  SET tempcovered OF hero TO SUM OF headcover DIRECTLY IN worn /2.
  IF headcover OF THIS <> 0 AND headcover OF THIS < tempcovered OF hero
    THEN
      INCREASE wear_flag OF hero BY 1.
  END IF.


--------------------------------------------------------------------
-- botcover is a special case - first discount any coatlike clothes
-- as these do not affect ability to take off other lower garments.
--------------------------------------------------------------------


  SET tempcovered OF hero TO SUM OF botcover DIRECTLY IN worn.
  IF tempcovered OF hero >63
    THEN
      SET tempcovered OF hero TO tempcovered OF hero -64.
  END IF.


--------------------------------------------------------------------
-- Now discount any dress/ skirt coverall like clothes as these do
-- not affect ability to take off other lower garments. The 'teddy'
-- type garment is expressly NOT included in the exclusion here.
--------------------------------------------------------------------


  IF tempcovered OF hero >31 and botcover OF THIS <>4
    THEN
      SET tempcovered OF hero TO tempcovered OF hero -32.
  END IF.


--------------------------------------------------------------------
-- Now process the manipulated value just as was done for the others
--------------------------------------------------------------------


  SET tempcovered OF hero TO tempcovered OF hero /2.
  IF botcover OF THIS <> 0 AND botcover OF THIS < tempcovered OF hero
    THEN
      INCREASE wear_flag OF hero BY 1.
  END IF.


--------------------------------------------------------------------
-- Depending on the value of 'wear_flag' print and process the obj
-- as needed. If 'wear_flag' is NOT 0 then the clothes cannot be
-- removed.
--------------------------------------------------------------------


  IF wear_flag OF hero > 0
    THEN
      LIST worn.
      "Trying to take" SAY THE THIS. "off isn't very sensible."
    ELSE
      LOCATE THIS IN hero.
      "You take off" SAY THE THIS. "."
      EXCLUDE THIS FROM wearing OF hero.
      MAKE THIS NOT indossato.
  END IF.
END VERB.


END EVERY.



--------------------------------------------------------------------
-- These attributes are used internally in the library - ignore!
--------------------------------------------------------------------

ADD TO EVERY ACTOR
  IS tempcovered 0.
  IS wear_flag 0.
  IS sex 0.
END ADD TO.


--------------------------------------------------------------------
-- A container used to provide a temporary storage space - ignore!
--------------------------------------------------------------------

THE tempworn ISA OBJECT
  CONTAINER TAKING CLOTHING.
  HEADER "You're already wearing"
END THE tempworn.


--------------------------------------------------------------------
-- An event checking that clothing acquired and worn by an actor
-- mid-game is recognised to be worn by the actor:
--------------------------------------------------------------------


EVENT worn_clothing_check
   FOR EACH ac ISA ACTOR
  DO
    FOR EACH cl ISA CLOTHING, IN wearing OF ac
      DO
        IF ac = hero
          THEN
            IF cl NOT IN worn
              THEN LOCATE cl IN worn.
                MAKE cl indossato.
            END IF.
          ELSE
            IF cl NOT IN ac
              THEN LOCATE cl IN ac.
                MAKE cl indossato.
            END IF.
        END IF.
    END FOR.
   END FOR.
   SCHEDULE worn_clothing_check AFTER 1.
END EVENT.




--------------------------------------------------------------------

-----------------------------------------------------------------------
-- INSTRUCTIONS FOR USING THE CLOTHING CLASS
-----------------------------------------------------------------------


-- Here is a quick overview for using the class 'clothing'.

-- A piece of clothing in your game code should look
-- something similar to the following four examples:


-- THE jacket ISA CLOTHING AT lobby
--   IS topcover 32.
-- END THE.


-- use IN to refer to containers:

-- THE jeans ISA CLOTHING IN wardrobe
--   IS botcover 16.
-- END THE.


-- IN worn = worn by the player character (hero):

-- THE hat ISA CLOTHING IN hero   -- declaring the initial location is optional
--   IS headcover 2.
-- END THE.

-- THE hero ISA ACTOR
--   IS wearing {hat}.
-- END THE hero.


-- worn by an NPC called Joe:

-- THE sweater ISA CLOTHING IN joe    -- declaring the initial location is optional
  -- Don't declare clothing attributes for NPCs (unless the hero is meant to take
  -- and wear the NPC's clothing).
  -- NPCs cannot wear clothing in layers!
-- END THE.

-- THE joe ISA ACTOR AT room1
--   IS wearing {sweater}.
-- END THE joe.

-- Note that if the piece of clothing worn
-- by an NPC is not meant to be takeable by the
-- player character, you should declare the
-- the piece of clothing to be NOT takeable.


-- In defining a piece of clothing, you should
--
--  1) define it ISA CLOTHING (and not: ISA OBJECT)
--
--  2) give it one of five attributes 'headcover', 'topcover', botcover', 'footcover'
--  or 'handcover'; sometimes two of these are needed.
--  Which attribute(s) to use depends on the type of clothing; see the clothing table below.

--  3) A number 2, 4, 8, 16, 32 or 64 needs to be added after the above attribute.
--  You cannot decide the number yourself; look it up from the clothing table below.
--  If the value of an attribute for a piece of clothing is 0 in the table, don't mention
--  this attribute in connection with your clothing object.

-- If the piece of clothing is initially worn by either the hero or another actor,
-- the attribute 'IS wearing', followed by the piece(s) of clothing in curly brackets,
-- is needed at the respective actor instance:

-- THE hero ISA ACTOR
--   IS wearing {jeans, shirt, flipflops}.
-- END THE hero.

-- THE jill ISA ACTOR
--   IS wearing {dress}.
-- END THE jill.




-- The above is enough; the rest is then handled automatically by the library.


-- The quick guide ends here.


-- The clothing table
-----------------------


-- Here is the chart showing a selection of fairly typical clothing items and the values to
-- set to obtain appropriate behaviour. Should you wish to create an article of clothing not
-- listed, usually a bit of lateral thought as to what it is most like and where it fits into
-- the scheme of things will suggest a workable set of values, but be aware that you MUST use
-- values in this chart, simply adding things with intermediate values is probably going to
-- create nasty bugs:


--+--------------------------+----------+----------+-----------+-----------+
--| Clothing     | Headcover | Topcover | Botcover | Footcover | Handcover |
--+--------------------------+----------+----------+-----------+-----------+
--| hat                    2 |        0 |        0 |         0 |         0 |
--| vest/bra               0 |        2 |        0 |         0 |         0 |
--| undies/panties         0 |        0 |        2 |         0 |         0 |
--| teddy                  0 |        4 |        4 |         0 |         0 |
--| blouse/shirt/T-shirt   0 |        8 |        0 |         0 |         0 |
--| dress/coveralls        0 |        8 |       32 |         0 |         0 |
--| skirt                  0 |        0 |       32 |         0 |         0 |
--| trousers/shorts        0 |        0 |       16 |         0 |         0 |
--| sweater/pullover       0 |       16 |        0 |         0 |         0 |
--| jacket                 0 |       32 |        0 |         0 |         0 |
--| coat                   0 |       64 |       64 |         0 |         0 |
--| socks/stockings        0 |        0 |        0 |         2 |         0 |
--| tights/pantiehose      0 |        0 |        8 |         2 |         0 |
--| shoes/boots            0 |        0 |        0 |         4 |         0 |
--| gloves                 0 |        0 |        0 |         0 |         2 |
--+--------------------------+----------+----------+-----------+-----------+




-- =============================================================


----- DEVICE


-- =============================================================


-- (This class is not cross-referenced elsewhere in this or any other library file.)


EVERY dispositivo ISA OBJECT


  VERB esamina
    DOES AFTER
      IF THIS IS NOT plurale
        THEN "It is"
        ELSE "They are"
      END IF.

      IF THIS IS acceso
        THEN "currently on."
        ELSE "currently off."
      END IF.
  END VERB.


  VERB turn_on
    CHECK THIS IS NOT acceso
      ELSE
        IF THIS IS NOT plurale
          THEN SAY check_device_not_on_sg OF my_game.
          ELSE SAY check_device_not_on_pl OF my_game.
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND THIS IS raggiungibile AND THIS IS NOT distante
      ELSE
        IF THIS IS NOT raggiungibile
          THEN
            IF THIS IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF THIS IS distante
          THEN
            IF THIS IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    AND THIS IS NOT rotto
      ELSE SAY check_obj_not_broken OF my_game.
    DOES ONLY
      "You turn on" SAY THE THIS. "."
      MAKE THIS acceso.
  END VERB.


  VERB turn_off
    CHECK THIS IS acceso
      ELSE
         IF THIS IS NOT plurale
          THEN SAY check_device_on_sg OF my_game.
          ELSE SAY check_device_on_pl OF my_game.
         END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND THIS IS raggiungibile AND THIS IS NOT distante
      ELSE
        IF THIS IS NOT raggiungibile
          THEN
            IF THIS IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF THIS IS distante
          THEN
            IF THIS IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    DOES ONLY
      "You turn off" SAY THE THIS. "."
      MAKE THIS NOT acceso.
  END VERB.


-- The following verb switches a device off if the device is on, and vice versa.


  VERB switch
    CHECK CURRENT LOCATION IS lit
      ELSE SAY check_locazione_illuminata OF my_game.
    AND THIS IS raggiungibile AND THIS IS NOT distante
      ELSE
        IF THIS IS NOT raggiungibile
          THEN
            IF THIS IS NOT plurale
              THEN SAY ogg1_non_raggiungibile_sg OF my_game.
              ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
            END IF.
        ELSIF THIS IS distante
          THEN
            IF THIS IS NOT plurale
              THEN SAY check_obj_not_distant_sg OF my_game.
              ELSE SAY check_obj_not_distant_pl OF my_game.
            END IF.
        END IF.
    AND THIS IS NOT rotto
      ELSE SAY check_obj_not_broken OF my_game.
    DOES ONLY
      IF THIS IS acceso
        THEN "You switch off" SAY THE THIS. "."
          MAKE THIS NOT acceso.
        ELSE "You switch on" SAY THE THIS. "."
          MAKE THIS acceso.
      END IF.
  END VERB.

END EVERY.



-- =============================================================


----- @PORTA --> @DOOR


-- =============================================================


-- (This class is not cross-referenced elsewhere in this or any other library file.)


EVERY porta ISA OBJECT
  IS apribile.
  IS NOT aperto.
  IS NOT bloccabile.
  IS NOT bloccato.
  IS NOT prendibile.


  HAS altro_lato  porta_fittizia.
  -- The other side of the door in the next room will be automatically taken care of
  -- so that it shows correctly in any room or object descriptions.
  -- 'null_door' is a dummy default that can be ignored.



  INITIALIZE

    -- ensuring that the author didn't forget to declare a locked door closed (= NOT open), as well. This is
    -- just double-checking, as any door is by default closed (= "NOT open") at the start of the game:

    IF THIS IS bloccato
      THEN
        IF THIS IS aperto
          THEN MAKE THIS NOT aperto.
        END IF.
    END IF.

    -- ensuring that if a door has an otherside attribute declared, this otherside will have the original
    -- door as its otherside in turn:

    IF altro_lato OF THIS <> porta_fittizia
      THEN
        SET altro_lato OF altro_lato OF THIS TO THIS.


      -- next, ensuring that some attributes are correctly assigned to the otherside of the door, as well.
      -- Only some non-default cases need to be addressed here:

        IF THIS IS NOT apribile
          THEN MAKE altro_lato OF THIS NOT apribile.
        END IF.

        IF THIS IS aperto
          THEN MAKE altro_lato OF THIS aperto.
        END IF.

        IF THIS IS bloccabile
          THEN MAKE altro_lato OF THIS bloccabile.
        END IF.

        IF THIS IS bloccato
          THEN MAKE altro_lato OF THIS bloccato.
        END IF.

    END IF.


    -- making the same matching_key open both sides of a door:

    IF altro_lato OF THIS <> porta_fittizia AND chiave_abbinata OF THIS <> chiave_fittizia
      THEN SET chiave_abbinata OF altro_lato OF THIS TO chiave_abbinata OF THIS.
    END IF.


  -- If a door is lockable/locked, you should state at the door instance
  -- which object will unlock it, with the matching_key attribute.
    -- for example

    -- THE attic_door ISA DOOR
    --   HAS matching_key brass_key.
    --   ...
    -- END THE.

    -- THE brass_key ISA OBJECT AT basement
    -- END THE.

  -- (null_key is a default dummy object that can be ignored.)



  VERB esamina
    DOES AFTER
      IF THIS IS NOT plurale
        THEN "It is"
        ELSE "They are"
      END IF.

      IF THIS IS NOT aperto
        THEN "currently closed."
        ELSE "currently open."
      END IF.
  END VERB.



  VERB knock
    DOES ONLY
      IF THIS IS NOT aperto
        THEN "You knock on" SAY THE THIS. "$$. There is no reply."
        ELSE "You don't find it purposeful to knock on the open door"
          IF THIS IS NOT plurale
            THEN "."
            ELSE "$$s."
          END IF.

      END IF.
  END VERB.



  VERB look_behind
    DOES ONLY
      IF THIS IS NOT aperto
        THEN "You cannot look behind"
          IF THIS IS NOT plurale
            THEN "the door - it is closed."
            ELSE "the doors - they are closed."
          END IF.
        ELSE "You notice nothing special behind the door"
          IF THIS IS NOT plurale
            THEN "."
            ELSE "$$s."
          END IF.
      END IF.
  END VERB.



  VERB look_under
    DOES ONLY
      IF THIS IS NOT aperto
        THEN "The gap under the closed door"
          IF THIS IS plurale
            THEN "$$s"
          END IF.
          "is so narrow that you can't
          see anything of what lies on the other side."
        ELSE "You notice nothing special under the door"
          IF THIS IS plurale
            THEN "$$s."
            ELSE "."
          END IF.
      END IF.
  END VERB.



  VERB chiudi
    DOES
      IF altro_lato OF THIS <> porta_fittizia
        THEN MAKE altro_lato OF THIS NOT aperto.
      END IF.
  END VERB.


  VERB blocca
    DOES
      IF altro_lato OF THIS <> porta_fittizia
        THEN MAKE altro_lato OF THIS NOT aperto.
          MAKE altro_lato OF THIS bloccato.
      END IF.
  END VERB.


  VERB apri
    DOES
      IF altro_lato OF THIS <> porta_fittizia
        THEN MAKE altro_lato OF THIS aperto.
          MAKE altro_lato OF THIS NOT bloccato.
      END IF.
  END VERB.


  VERB sblocca
    DOES
      IF altro_lato OF THIS <> porta_fittizia
        THEN MAKE altro_lato OF THIS NOT bloccato.
      END IF.
  END VERB.


END EVERY.


-- a default dummy, ignore:

THE porta_fittizia ISA porta
END THE.



-- =============================================================


----- LIGHTSOURCE


-- =============================================================


-- (In the file 'lib_verbi.i', ISA LIGHTSOURCE is used in the syntax definition of the verb 'light'.
-- Also, in 'lib_luoghi.i', LIGHTSOURCE is used in defining the behavior of the class DARK_LOCATION.)



EVERY lightsource ISA OBJECT
  IS NOT lit.
  IS naturale. -- A natural lightsource is for example a candle, a match or a torch.
               -- A NOT natural lightsource is for example a flashlight or a lamp.
               -- You cannot switch on or off a natural lightsource.


  VERB esamina
    DOES AFTER
      IF THIS IS lit
        THEN
          IF THIS IS naturale
            THEN
              IF THIS IS NOT plurale
                THEN "It is"
                ELSE "They are"
              END IF.
              "currently lit."
            ELSE
              IF THIS IS NOT plurale
                THEN "It is"
                ELSE "They are"
              END IF.
              "currently on."
          END IF.
        ELSE
          IF THIS IS naturale
            THEN
              IF THIS IS NOT plurale
                THEN "It is"
                ELSE "They are"
              END IF.
              "currently not lit."
            ELSE
              IF THIS IS NOT plurale
                THEN "It is"
                ELSE "They are"
              END IF.
              "currently off."
          END IF.
      END IF.
  END VERB.


  VERB light
    CHECK THIS IS NOT lit
      ELSE
        IF THIS IS NOT plurale
          THEN SAY check_lightsource_not_lit_sg OF my_game.
          ELSE SAY check_lightsource_not_lit_pl OF my_game.
        END IF.
    AND THIS IS NOT rotto
      ELSE SAY check_obj_not_broken OF my_game.
    DOES ONLY
      IF THIS IS naturale
        THEN "You light" SAY THE THIS. "."
          MAKE THIS lit.
        ELSE "You turn on" SAY THE THIS. "."
          MAKE THIS lit.
      END IF.
  END VERB.


  VERB extinguish
    CHECK THIS IS lit
      ELSE
        IF THIS IS NOT plurale
          THEN SAY check_lightsource_lit_sg OF my_game.
          ELSE SAY check_lightsource_lit_pl OF my_game.
        END IF.
    DOES ONLY "You extinguish" SAY THE THIS. "."
      MAKE THIS NOT lit.
  END VERB.


  VERB turn_on
    CHECK THIS IS NOT naturale
      ELSE
        IF THIS IS NOT plurale
          THEN SAY check_obj_suitable_on_sg OF my_game.
          ELSE SAY check_obj_suitable_on_pl OF my_game.
        END IF.
    AND THIS IS NOT lit
      ELSE
        IF THIS IS NOT plurale
          THEN SAY check_lightsource_not_lit_sg OF my_game.
          ELSE SAY check_lightsource_not_lit_pl OF my_game.
        END IF.
    AND THIS IS NOT rotto
      ELSE SAY check_obj_not_broken OF my_game.
    DOES ONLY
      "You turn on" SAY THE THIS. "."
      MAKE THIS lit.

  END VERB.


  VERB turn_off
    CHECK THIS IS NOT naturale
      ELSE
        IF THIS IS NOT plurale
          THEN SAY check_obj_suitable_off_sg OF my_game.
          ELSE SAY check_obj_suitable_off_pl OF my_game.
        END IF.
    AND THIS IS lit
      ELSE
        IF THIS IS NOT plurale
          THEN SAY check_lightsource_lit_sg OF my_game.
          ELSE SAY check_lightsource_lit_sg OF my_game.
        END IF.

    DOES ONLY
      "You turn off" SAY THE THIS. "."
      MAKE THIS NOT lit.

  END VERB.


-- The following verb switches a NOT natural lightsource on if it is off, and vice versa
-- (when the player forgets, or doesn't bother, to type 'on' or 'off' after 'switch').


  VERB switch
    CHECK THIS IS NOT naturale
      ELSE
        IF THIS IS NOT plurale
          THEN SAY check_lightsource_switchable_sg OF my_game.
          ELSE SAY check_lightsource_switchable_pl OF my_game.
        END IF.
    AND THIS IS raggiungibile
      ELSE
        IF THIS IS NOT plurale
          THEN SAY ogg1_non_raggiungibile_sg OF my_game.
          ELSE SAY ogg1_non_raggiungibile_pl OF my_game.
        END IF.
    AND THIS IS NOT rotto
      ELSE SAY check_obj_not_broken OF my_game.
    DOES ONLY
      IF THIS IS lit
        THEN "You switch off" SAY THE THIS. "."
          MAKE THIS NOT lit.
        ELSE "You switch on" SAY THE THIS. "."
          MAKE THIS lit.
      END IF.
  END VERB.


END EVERY.



-- ==============================================================


----- LIQUID


-- ==============================================================


-- (In the file 'lib_verbi.i', ISA liquid is used in the syntax definitions of the verbs 'drink' and 'sip'.)


EVERY liquido ISA OBJECT

  CONTAINER
    HEADER "In" SAY THE THIS. "you see"
    ELSE "There is nothing in" SAY THE THIS. "."

    -- We declare this class a container to enable player commands such as
    -- 'throw sack into water', 'look into water' and 'take pearl from water'.
    -- Also cases such as 'pour red potion into blue potion' require that this
    -- class behaves like a container.


  HAS recipiente recipiente_fittizio.

    -- The 'vessel' attribute takes care that if a liquid is
    -- in a container, the verb 'take' will automatically take the
    -- container instead (if the container is takeable). Trying
    -- take a liquid that is in a fixed-in-place container, as well
    -- as trying to take a liquid outside any container, will yield
    -- "You can't carry [the liquid] around in your bare hands."
    -- The default value 'null_vessel' tells the compiler that the liquid
    -- is not in any container. 'null_vessel' is a dummy default that can be
    -- ignored.


  INITIALIZE

  -- Every object found in a liquid, for example a fish in a pond of water,
  -- will be allowed back in that liquid once taken out of there:

    FOR EACH liq ISA liquido
      DO
        FOR EACH o ISA OBJECT, DIRECTLY IN liq
          DO
            INCLUDE o IN consentiti OF liq.
        END FOR.
    END FOR.


  -- Every liquid in a container at the start of the game
  -- will have that container as its vessel:

    FOR EACH lc ISA LISTED_CONTAINER
      DO
        FOR EACH lq ISA liquido, DIRECTLY IN lc
          DO
            SET recipiente OF lq TO lc.
        END FOR.
    END FOR.


  -- If you have some liquid in a container in your game, you should declare the
  -- liquid instance thus:

  -- THE juice ISA liquid
  --      IN bottle
  -- END THE juice.

  -- The verb 'pour', as defined in this library, also works for the container of a liquid;
  -- i.e. if there is some juice in a bottle, 'pour bottle' and 'pour juice' will work equally well.
  -- Note, however, that the verb 'empty' is not a synonym for 'pour';
  -- 'empty' only works for container objects.



    SCHEDULE check_vessel AT THIS AFTER 0.    -- this event is defined further below


  VERB esamina
    DOES ONLY
      IF recipiente OF THIS <> recipiente_fittizio
        THEN
          IF recipiente OF THIS IS aperto
            THEN "You notice nothing unusual about" SAY THE THIS.
            ELSE "You can't, since" SAY THE recipiente OF THIS.
                IF THIS IS NOT plurale
                  THEN "is"
                  ELSE "are"
                END IF.
                "closed."
                -- Here we prohibit the player from examining
                -- a liquid when the liquid is in a closed container.
          END IF.
        ELSE "You notice nothing unusual about" SAY THE THIS. "."
      END IF.
  END VERB.


  VERB look_in
    DOES ONLY
      IF recipiente OF THIS <> recipiente_fittizio
        THEN
          IF recipiente OF THIS IS aperto
            THEN "You see nothing special in" SAY THE THIS. "."
            ELSE "You can't, since" SAY THE recipiente OF THIS.
                IF THIS IS NOT plurale
                  THEN "is"
                  ELSE "are"
                END IF.
                "closed."
                -- Here we prohibit the player from looking into
                -- a liquid when the liquid is in a closed container.
          END IF.
        ELSE "You see nothing special in" SAY THE THIS. "."
      END IF.
  END VERB.

-- @PRENDI -> @TAKE (VERB) => LIQUID
  VERB prendi
    CHECK recipiente OF THIS NOT IN hero
      ELSE SAY check_obj_not_in_hero2 OF my_game.
    DOES ONLY
      IF recipiente OF THIS = recipiente_fittizio OR recipiente OF THIS IS NOT prendibile
        THEN "You can't carry" SAY THE THIS. "around in your bare hands."
      ELSE LOCATE recipiente OF THIS IN hero.
        "($$" SAY THE recipiente OF THIS. "of" SAY THIS. "$$)$nTaken."
      END IF.
  END VERB.

-- @PRENDI_DA -> @TAKE_FROM (VERB) => LIQUID
  VERB prendi_da
     WHEN ogg
    CHECK detentore <> recipiente OF THIS
      ELSE SAY check_liquid_vessel_not_cont OF my_game.
      -- the above is triggered when the player types for example
      -- >take juice from bottle   -- (when the juice is in the bottle)
    DOES ONLY
      IF recipiente OF THIS = recipiente_fittizio OR recipiente OF THIS IS NOT prendibile
        THEN "You can't carry" SAY THE THIS. "around in your bare hands."
      ELSE LOCATE recipiente OF THIS IN hero.
        "($$" SAY THE recipiente OF THIS. "of" SAY THIS. "$$)$nTaken."
      END IF.
  END VERB.


  VERB lascia
    DOES ONLY
      LOCATE recipiente OF THIS AT hero.
      "($$" SAY THE recipiente OF THIS. "of" SAY THIS. "$$)$nDropped."

  END VERB.


  VERB ask_for
    DOES ONLY
      LOCATE recipiente OF THIS IN hero.
      SAY THE png. "gives" SAY THE recipiente OF THIS. "of" SAY THIS. "to you."
  END VERB.

-- @DAI_A -> @GIVE (VERB) => LIQUID
  VERB dai_a
    WHEN ogg
    DOES ONLY
      -- implicit taking:
      IF THIS NOT IN hero
        THEN
          IF recipiente OF THIS = recipiente_fittizio OR recipiente OF THIS IS NOT prendibile
            THEN "You can't carry" SAY THE THIS. "around in your bare hands."
          ELSE LOCATE recipiente OF THIS IN hero.
            "(taking" SAY THE recipiente OF THIS. "of" SAY THIS. "first)$n"
          END IF.
      END IF.
      -- end of implicit taking.

      IF THIS IN hero
        -- i.e. if the implicit taking was successful
        THEN
          "You give" SAY THE recipiente OF THIS. "of" SAY THIS. "to" SAY THE ricevente. "."
          LOCATE recipiente OF THIS IN ricevente.
      END IF.

      -- there is no 'ELSE' statement in this last IF -clause, as the 'IF THIS NOT
      -- IN hero' clause above it takes care of the 'ELSE' alternative.

  END VERB.


  VERB pour
    DOES ONLY
      -- implicit taking:
      IF THIS NOT IN hero
        THEN
          IF recipiente OF THIS = recipiente_fittizio OR recipiente OF THIS IS NOT prendibile
            THEN "You can't pour" SAY THE THIS. "anywhere since you are not
              carrying"
                IF THIS IS NOT plurale
                  THEN "it."
                  ELSE "them."
                END IF.
          ELSE LOCATE recipiente OF THIS IN hero.
            "(taking" SAY THE recipiente OF THIS. "of" SAY THIS. "first)$n"
          END IF.
      END IF.
      -- end of implicit taking.

      IF THIS IN hero
        THEN LOCATE THIS AT hero.
          SET recipiente OF THIS TO recipiente_fittizio.
          "You pour" SAY THE THIS.
            IF pavimento HERE
              THEN "on the floor."
              ELSE "on the ground."
            END IF.
      END IF.

  END VERB.


  VERB pour_in
    WHEN ogg
      DOES ONLY
        -- implicit taking:
        IF THIS NOT IN hero
          THEN
            IF recipiente OF THIS = recipiente_fittizio
              THEN "You can't carry" SAY THE THIS. "around in your bare hands."
            ELSIF recipiente OF THIS IS NOT prendibile
              THEN "You don't have" SAY THE recipiente OF THIS. "of" SAY THIS. "."
            ELSE LOCATE recipiente OF THIS IN hero.
              "(taking" SAY THE recipiente OF THIS. "of" SAY THIS. "first)$n"
            END IF.
        END IF.
        -- end of implicit taking.

        IF THIS IN hero   --i.e. if the implicit taking was successful
          THEN LOCATE THIS IN cont.
            SET recipiente OF THIS TO cont.
            "You pour" SAY THE THIS. "into" SAY THE cont. "."
        END IF.
    WHEN cont
      DOES ONLY
        IF recipiente OF THIS = recipiente_fittizio
          THEN
            "There's not much sense pouring" SAY THE ogg. "into" SAY THE THIS. "."
          ELSE
            IF recipiente OF THIS IS aperto
              THEN "It wouldn't accomplish anything trying to pour" SAY THE ogg.
                "into" SAY THE THIS. "."
              ELSE "You can't, since" SAY THE recipiente OF THIS.
                IF THIS IS NOT plurale
                  THEN "is"
                  ELSE "are"
                END IF.
                "closed."
            END IF.
        END IF.
  END VERB.


  VERB pour_on
    WHEN ogg
      DOES ONLY
        -- implicit taking:
        IF THIS NOT IN hero
          THEN
            IF recipiente OF THIS = recipiente_fittizio
              THEN "You can't carry" SAY THE THIS. "around in your bare hands."
            ELSIF recipiente OF THIS IS NOT prendibile
              THEN "You don't have" SAY THE recipiente OF THIS. "of" SAY THIS. "."
            ELSE LOCATE recipiente OF THIS IN hero.
              "(taking" SAY THE recipiente OF THIS. "of" SAY THIS. "first)$n"
            END IF.
        END IF.
        -- end of implicit taking.

        IF THIS IN hero
          -- i.e. if the implicit taking was successful
          THEN
            IF superficie = pavimento OR superficie = ground
              THEN LOCATE THIS AT hero.
                "You pour" SAY THE THIS. "on" SAY THE superficie. "."
                SET recipiente OF THIS TO recipiente_fittizio.
            ELSIF superficie ISA SUPPORTER
              THEN LOCATE THIS IN superficie.
                "You pour" SAY THE THIS. "on" SAY THE superficie. "."
                  SET recipiente OF THIS TO recipiente_fittizio.
            ELSE "It wouldn't be sensible to pour anything on" SAY THE superficie.
            END IF.
        END IF.
  END VERB.


  VERB fill_with
    -- when something is filled with a liquid, this something becomes the
    -- vessel of the liquid:
    WHEN sostanza
       DOES SET recipiente OF THIS TO cont.
  END VERB.


  VERB put_in
    WHEN ogg
      DOES ONLY
        IF recipiente OF THIS = recipiente_fittizio
          THEN "You can't carry" SAY THE THIS. "around in your bare hands."
          ELSE
            IF recipiente OF THIS IS prendibile
              THEN
                -- implicit taking:
                IF THIS NOT IN hero
                  THEN
                    IF recipiente OF THIS = recipiente_fittizio
                      THEN "You can't carry" SAY THE THIS. "around in your bare hands."
                    ELSE LOCATE recipiente OF THIS IN hero.
                      "(taking" SAY THE recipiente OF THIS. "of" SAY THIS. "first)$n"
                    END IF.
                END IF.
                -- end of implicit taking.

                LOCATE recipiente OF THIS IN cont.
                    "You put" SAY THE recipiente OF THIS. "of" SAY THIS. "into" SAY THE cont. "."

              ELSE "You don't have" SAY THE recipiente OF THIS. "of" SAY THIS. "."
            END IF.
        END IF.
        WHEN cont
      DOES ONLY
      IF recipiente OF THIS = recipiente_fittizio
        THEN
          "There's not much sense putting" SAY THE ogg. "into" SAY THE THIS. "."
        ELSE
          IF recipiente OF THIS IS aperto
            THEN
              IF ogg = recipiente OF THIS
                THEN "That doesn't make sense."
                ELSE "It wouldn't accomplish anything trying to put" SAY THE ogg.
                  "into" SAY THE recipiente OF THIS. "of" SAY THIS. "."
              END IF.
            ELSE "You can't, since" SAY THE recipiente OF THIS. "of" SAY THIS.
                IF THIS IS NOT plurale
                  THEN "is"
                  ELSE "are"
                END IF.
              "closed."
          END IF.
      END IF.
  END VERB.


  VERB put_on
    WHEN ogg
      DOES ONLY
        -- implicit taking:
        IF THIS NOT IN hero
          THEN
            IF recipiente OF THIS = recipiente_fittizio
              THEN "You can't carry" SAY THE THIS. "around in your bare hands."
            ELSIF recipiente OF THIS IS NOT prendibile
              THEN "You don't have" SAY THE recipiente OF THIS. "of" SAY THIS. "."
            ELSE LOCATE recipiente OF THIS IN hero.
              "(taking" SAY THE recipiente OF THIS. "of" SAY THIS. "first)$n"
            END IF.
        END IF.
        -- end of implicit taking.

        IF THIS IN hero
          -- i.e. if the implicit taking was successful
          THEN "You put" SAY THE recipiente OF THIS. "of" SAY THIS. "onto" SAY THE superficie. "."
        END IF.
    WHEN superficie
      DOES ONLY "It is not possible to $v" SAY ogg. "onto" SAY THE THIS. "."
  END VERB.





  -- The verbs 'empty', 'empty_in' and 'empty_on' will be disabled as ungrammatical with liquids:

  VERB 'empty'
    WHEN ogg
    DOES ONLY "You can only empty containers."
  END VERB.

  VERB empty_in
    WHEN ogg
    DOES ONLY "You can only empty containers."
  END VERB.

  VERB empty_on
    WHEN ogg
    DOES ONLY "You can only empty containers."
  END VERB.


END EVERY.



-- Here is the default vessel for liquids; if the vessel of a liquid is
-- 'null_vessel', it means that the liquid is not in any container; ignore.


THE recipiente_fittizio ISA OBJECT
  CONTAINER
END THE.



-- This event checks that if a liquid is outside a container, its container will
-- be 'null_vessel'; ignore:


EVENT check_vessel
  FOR EACH liq ISA liquido, DIRECTLY AT CURRENT LOCATION DO
      SET recipiente OF liq TO recipiente_fittizio.
  END FOR.
  SCHEDULE check_vessel AFTER 1.
END EVENT.




-- =============================================================


----- LISTED_CONTAINER


-- =============================================================


-- (This class is not cross-referenced elsewhere in this or any other library file.)


EVERY LISTED_CONTAINER ISA OBJECT
  CONTAINER

    --  (ACTORS are separately defined to be containers further below.)

  INITIALIZE

  -- Every object in a container will be allowed back in that container by default if it's taken out:

    FOR EACH lc ISA LISTED_CONTAINER
      DO
        FOR EACH o ISA OBJECT, DIRECTLY IN lc
          DO
            INCLUDE o IN consentiti OF lc.
        END FOR.
    END FOR.





  VERB esamina
    DOES ONLY
      IF THIS IS NOT OPAQUE
        THEN LIST THIS.
        ELSE "Non puoi vedere dentro" SAY THE THIS. "."
      END IF.
  END VERB.


  VERB look_in
    DOES ONLY
      IF THIS IS NOT OPAQUE
        THEN LIST THIS.
        ELSE "Non puoi vedere dentro" SAY THE THIS. "."
      END IF.
  END VERB.


  VERB search
    DOES ONLY
      IF THIS IS NOT OPAQUE
        THEN LIST THIS.
        ELSE "Non puoi vedere dentro" SAY THE THIS. "."
      END IF.
  END VERB.


-- ==============================
-- Opening/Closing and Opaqueness
-- ==============================
-- Il comportamento predefinito della libreria per un LISTED_CONTAINER è che sia
-- opaco (OPAQUE) quando è chiuso, e NOT OPAQUE quando è aperto; questo affinché
-- i suoi contenuti diventino visibili (nella descrizione). 
-- I verbi che comportano l'apertura e la chiusura di un LISTED_CONTAINER devono
-- assicurarsi di manipolarne lo stato di opacità di conseguenza. A tal fine qui
-- di seguito vengono definiti sulla classe LISTED_CONTAINER tali verbi, che
-- verranno eseguiti dopo i medesimi verbi sulle specifiche istanze.

--+----------------------.
--| C O D E  T W E A K S |
--+-----------------------------------------------------------------------------
--| The following code was changed from the original library, which only defined
--| the 'open' and 'close' verbs, and didn't check if the 'open' verb actually
--| succeeded before setting the LISTED_CONTAINER to NOT OPAQUE -- this caused
--| erroneous behavior with locked LISTED_CONTAINER for which the player didn't
--| posses the matching key: the body of 'open' was always executed, revealing
--| the contents of the container even when the 'open' verb body on the instance
--| failed! So I've added some checks, and also implemented the 'open_with',
--| 'lock', 'close_with' and 'lock_with' verbs.
--+-----------------------------------------------------------------------------

-- @TODO: | Should add a 'transparent' attribute to allow creation of listed
--        | containers that don't become opaque when closed!


  VERB apri
    DOES
      IF THIS IS aperto --> verifica che sia davvero aperta!
        THEN
          MAKE THIS NOT OPAQUE.
          LIST THIS.
      END IF.
  END VERB.


  VERB apri_con
    WHEN ogg DOES
      IF THIS IS aperto --> verifica che sia davvero aperta!
        THEN
          MAKE THIS NOT OPAQUE.
          LIST THIS.
      END IF.
  END VERB.

  
  VERB chiudi, blocca
    DOES
      IF THIS IS NOT aperto --> verifica che sia davvero chiuso!
        THEN
          MAKE THIS OPAQUE.
      END IF.
  END VERB.


  VERB chiudi_con
    WHEN ogg DOES
      IF THIS IS NOT aperto --> verifica che sia davvero chiuso!
        THEN
           MAKE THIS OPAQUE.
      END IF.
  END VERB.

  VERB blocca_con
    WHEN ogg DOES
      IF THIS IS NOT aperto --> verifica che sia davvero chiuso!
        THEN
          MAKE THIS OPAQUE.
      END IF.
  END VERB.

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~


END EVERY.





-- ===============================================================


----- SOUND


-- ===============================================================


-- (This class is not cross-referenced in this or any other library file.)


EVERY suono ISA OBJECT
  IS NOT esaminabile.
  IS NOT prendibile.
  IS NOT raggiungibile.
  IS NOT spostabile.

  VERB smell
    DOES ONLY
       IF THIS IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
       END IF.
      "something you can smell."
  END VERB.


END EVERY.



-- ==============================================================


----- SUPPORTER


-- ==============================================================


-- (See the file 'verbs.i', verbs 'climb_on', 'empty_on', 'get_off', 'jump_on',
-- 'lie_on', 'pour_on', 'put_in', 'put_on', 'sit_on', 'stand_on', and 'take_from'
-- where SUPPORTER is used in either syntax definitions, verb checks
-- or verb definitions.)


EVERY supporter ISA OBJECT


  CONTAINER
    HEADER "Sopra" SAY THE THIS. "vedi"
    ELSE "Non c'è nulla sopra" SAY THE THIS. "."
    -- HEADER "On" SAY THE THIS. "you see"
    -- ELSE "There's nothing on" SAY THE THIS. "."


  VERB esamina
    DOES
      LIST THIS.
  END VERB.


  -- in the following, we disable some verbs that are defined to work with normal containers:


  VERB look_in
    DOES ONLY
      IF THIS IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.
      "something you can look into."
  END VERB.


  VERB empty_in, pour_in
     WHEN cont
    DOES ONLY
       IF THIS IS NOT plurale
        THEN "That's not"
        ELSE "Those are not"
      END IF.
      "something you can pour things into."
  END VERB.


  VERB put_in
      WHEN cont
    DOES ONLY "Non puoi mettere nulla dentro" SAY THE THIS. "."
  END VERB.


  VERB throw_in
      WHEN cont
    DOES ONLY "Non puoi mettere nulla dentro" SAY THE THIS. "."
  END VERB.


END EVERY.







-- ==============================================================


----- @ARMA --> @WEAPON


-- ==============================================================


-- (See the file 'lib_verbi.i', verbs 'attack_with', 'fire',
-- 'fire_with', 'kill_with', 'shoot' and 'shoot_with' where WEAPON is used
-- either in the syntax definitions or verb checks.)


EVERY arma ISA OBJECT
  CAN NOT sparare.
END EVERY.




-- ==============================================================


----- WINDOW


-- ==============================================================


-- (This class is not cross-referenced elsewhere in this or any other library file.)


-- You can look out of and through a window.
-- When examined, a window is by default described as being either open or closed.


EVERY finestra ISA OBJECT
  IS apribile.
  IS NOT aperto.
  IS NOT prendibile.


  VERB esamina
    DOES
      IF THIS IS NOT aperto
        THEN
          IF THIS IS NOT plurale
            THEN "It is"
            ELSE "They are"
          END IF.
          "currently closed."
        ELSE
          IF THIS IS NOT plurale
            THEN "It is"
            ELSE "They are"
          END IF.
          "currently open."
      END IF.
  END VERB.


  VERB look_behind
    DOES ONLY
      "That's not possible."
  END VERB.


  VERB look_out_of
    DOES ONLY "You see nothing special looking out of the"
        IF THIS IS NOT plurale
          THEN "window."
          ELSE "windows."
        END IF.
  END VERB.


  VERB look_through
    DOES ONLY "You see nothing special looking through the"
        IF THIS IS NOT plurale
          THEN "window."
          ELSE "windows."
        END IF.
  END VERB.


END EVERY.


--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- § 2 - Attori
--------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================


-- First, we declare some common characteristics for all actors:


ADD TO EVERY ACTOR
    IS NOT inanimato.
    IS NOT following.
    IS NOT seduto.   --> sitting
    IS NOT sdraiato. --> lying_down
    IS NOT named.
  -- = the actor's name is not known to the player
  IS wearing { indumento_fittizio }.
  -- = the actor's clothing is not specified.
  -- "null_clothing" is a dummy default that can be ignored.
  IS NOT compliant.
  -- an actor only gives something to the hero if it is in a compliant mood.
  -- In practice, this happens by default when the hero asks the actor for anything.
  -- For example, implicit taking of objects is not successful if the object happens
  -- to be held by an NPC who is not compliant.
  IS NOT prendibile.

  IS NOT present_actor.

-- =============================
-- @ARTICOLI PREDEFINITI (ACTOR)
-- =============================
-- Valgono qui le stesse regole per gli oggetti tranne quando l'attore ha un
-- nome proprio, nel qual caso DEINITE/INDEFINITE ARTICLE dovranno avere una
-- stringa vuota. La presenza dello IF statement ci costringe a ripetere qui il
-- codice usato in "lib_definizioni.i" per definire ARTICLE, altrimenti i valori
-- di default verrebbero sovrascritti da una stringa nulla. Invece, per quanto
-- riguarda le preposizioni, il genere ed il numero, gli attori erediteranno da
-- THING i valori correttamente impostati dalla libreria.

-- @NOTA: Devo ancora controllare alcune cose su come la libreria originale
--        gestisce gli ACTOR:
--
--        (2) La questione degli articoli predefiniti va considerata meglio,
--            esempi pratici alla mano, specie per quanto riguarda i plurali:
--             * quali sono i casi plurali contemplati dall'inglese?
--             * perché gli attori plurali non vogliono mai l'articolo?
--        (3) Devo controllare se devo intervenire diversamente su ACTOR, PERSON,
--            MALE e FEMALE.
--        (4) Devo rivedere prima i PRONOUN di MALE e FEMALE, e capire se e come
--            questi possano essere tradotti in italiano.

-- -----------------------
-- @ARTICOLI DETERMINATIVI
-- -----------------------

    DEFINITE ARTICLE

    IF THIS IS named
      THEN ""
      ELSE
        DEPENDING ON articolo of THIS
          = "il"  THEN   "il"               --> ms indet.
          = "lo"  THEN   "lo"               --> ms indet.
          = "la"  THEN   "la"               --> fs indet.

          = "l'"  THEN   "l'$$"             --> *s det.  (masc & femm)

          = "i"   THEN   "i"                --> mp det.
          = "gli" THEN   "gli"              --> mp det.
          = "le"  THEN   "le"               --> fp det.
          
          ELSE -- se non è definito
            IF THIS IS NOT femminile
            THEN
              IF THIS IS NOT plurale
                  THEN   "il"               --> ms det.
                  ELSE   "i"                --> mp det.
              END IF.
            ELSE
              IF THIS IS NOT plurale
                  THEN   "la"               --> fs det.
                  ELSE   "le"               --> fp det.
              END IF.
            END IF.
        END DEPEND.
    END IF.
--  =========================
--# codice originale inglese:
--  =========================
    -- IF THIS IS NOT named
    --   THEN "the"
    --   ELSE ""
    -- END IF.

-- -------------------------
-- @ARTICOLI INDETERMINATIVI
-- -------------------------

    INDEFINITE ARTICLE

    IF THIS IS named
      THEN ""
      ELSE
        DEPENDING ON articolo of THIS
          = "il"  THEN   "un"               --> ms indet.
          = "lo"  THEN   "uno"              --> ms indet.
          = "la"  THEN   "una"              --> fs indet.
             
          = "l'"  THEN
            IF THIS IS NOT femminile
                  THEN   "un"               --> ms indet.
                  ELSE   "un'$$"            --> fs indet.
            END IF.
          
          = "i"   THEN   "dei"              --> mp indet.
          = "gli" THEN   "degli"            --> mp indet.
          = "le"  THEN   "delle"            --> fp indet.

          ELSE -- se non è definito
            IF THIS IS NOT femminile
            THEN
              IF THIS IS NOT plurale
                  THEN   "un"               --> ms indet.
                  ELSE   "dei"              --> mp indet.
              END IF.
            ELSE
              IF THIS IS NOT plurale
                  THEN   "una"              --> fs indet.
                  ELSE   "delle"            --> fp indet.
              END IF.
            END IF.
        END DEPEND.
    END IF.
--  =========================
--# codice originale inglese:
--  =========================
    -- IF THIS IS NOT named
    --   THEN
    --     IF THIS IS NOT plural
    --       THEN "a"
    --       ELSE ""
    --     END IF.
    --   ELSE ""
    -- END IF.

  -- if you need "an", you must declare it separately at the actor instance


    CONTAINER
    -- so that actors can receive and carry objects
    HEADER
      IF THIS = hero
        THEN "You are carrying"
        ELSE

          IF THIS IS NOT named
            THEN SAY THE THIS.
            ELSE SAY THIS.
          END IF.

          IF THIS IS NOT plurale
            THEN "is carrying"
            ELSE "are carrying"
          END IF.
      END IF.
    ELSE
      IF THIS = hero
        THEN "You are empty-handed."
        ELSE
          IF THIS IS NOT named
            THEN SAY THE THIS.
            ELSE SAY THIS.
          END IF.

          IF THIS IS NOT plurale
            THEN "is not carrying anything."
            ELSE "are not carrying anything."
          END IF.

      END IF.

    EXTRACT
      CHECK THIS IS compliant
        ELSE
          "That seems to belong to"
          IF THIS IS NOT named
            THEN SAY THE THIS.
            ELSE SAY THIS.
          END IF.
          "."



    INITIALIZE

    MAKE hero compliant.
    -- so that the hero can give, drop, etc. carried objects.


    -- excluding the default dummy clothing object from all actors; ignore.

    EXCLUDE indumento_fittizio FROM wearing OF THIS.


    -- all actors will obey this script from the start of the game:

    IF THIS <> hero
      THEN USE SCRIPT following_hero FOR THIS.
    END IF.



  SCRIPT following_hero
    -- this code will make any actor follow the hero
    -- if the actor is given the attribute 'following'.

    STEP WAIT UNTIL hero NOT HERE

      IF THIS IS following
        THEN
          LOCATE THIS AT hero.
          "$p" SAY THE THIS.
            IF THIS IS NOT plurale
              THEN "follows you."
              ELSE "follow you."
            END IF.
      END IF.

      USE SCRIPT following_hero FOR THIS.



  DESCRIPTION
    IF THIS IS scenario
      THEN "$$"
    ELSIF THIS IS NOT named
      THEN
        IF THIS IS NOT plurale
          THEN "There is" SAY AN THIS. "here."
          ELSE "There are" SAY THIS. "here."
        END IF.
      ELSE SAY THIS.
        IF THIS IS NOT plurale
          THEN "is here."
          ELSE "are here."
        END IF.
    END IF.


  VERB esamina
    DOES AFTER
      IF THIS <> hero
        THEN
          LIST THIS.
      END IF.
  END VERB.


END ADD TO.


-- the default dummy clothing object; ignore

THE indumento_fittizio ISA CLOTHING
END THE.





-- ================================================================


----- PERSON      -- CAN talk


-- ================================================================


EVERY persona ISA ACTOR
  CAN parlare.

  CONTAINER
    HEADER
      SAY THE THIS.
      IF THIS IS NOT plurale
        THEN "is carrying"
        ELSE "are carrying"
      END IF.
    ELSE

      IF THIS IS NOT named
        THEN SAY THE THIS.
        ELSE SAY THIS.
      END IF.

      IF THIS IS NOT plurale
        THEN "is empty-handed."
        ELSE "are empty-handed."
      END IF.

    EXTRACT
      CHECK THIS IS compliant
        ELSE "That seems to belong to"
          IF THIS IS NOT named
            THEN SAY THE THIS.
            ELSE SAY THIS.
          END IF.
          "."

END EVERY.





-- ================================================================


----- FEMALE and MALE


-- ================================================================


-- MALE and FEMALE are actually subclasses of PERSON, so they both
-- have the ability to talk.


EVERY female ISA persona
  PRONOUN her
  HAS articolo "la".
  
END EVERY.


EVERY male ISA persona
  PRONOUN him
  HAS articolo "il".
END EVERY.




-- end of file.


