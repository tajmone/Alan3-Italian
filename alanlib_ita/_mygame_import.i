-- "_mygame_import.i" v0.4.2 (2018/07/31)
--------------------------------------------------------------------------------
-- Alan ITA Alpha Dev | Alan 3.0beta5 | StdLib 2.1
--------------------------------------------------------------------------------
-- Adapted to Italian from:
-- ALAN Standard Library v2.1
-- (original file name: 'mygame_import.i')
--------------------------------------------------------------------------------
-- ADAPTIONS TO ITALIAN CARRIED OUT SO FAR:
--
--  * plural     -> plurale
--  * sitting    -> seduto
--  * lying_down -> sdraiato
--------------------------------------------------------------------------------
-- NOTA: Questo file andrà interamente rivisto a traduzione ultimata poiché non
--       rispecchia i cambiamenti della traduzione!!!
--------------------------------------------------------------------------------

-- An auxiliary game source file for ALAN Standard Library v2.1.


-- This file is not one of the library files and not necessary for running a game
-- which uses the library.

-- This file lists all attributes of the my_game instance (declared
-- in the library file 'definitions.i') and all verb outcomes (declared in 'verbs.i'),
-- for easy editing and modification.

-- USAGE: if you need to edit/change a great number of pre-declared library messages
-- (verb outcomes, verb check messages, illegal parameter messages etc.) for your game, e.g.
-- when you are writing in another language or if you intend to use an unusual
-- person/tense in your game's narrative, please edit the default messages in this file.
-- Then, import this file into your main source file, together with the five library files.
-- The library files don't need to be edited (except if you wish to reword standard runtime
-- messages found in  'messages.i').

-- NOTE: In your main source file, you won't need to declare the my_game instance, since
-- you import that instance to your game in this file.


-- NOTE 2: This file doesn't contain the responses for verb outcomes in 'lib_classes.i' nor
-- some marginal messages for the behaviour of indoor and outdoor objects in 'lib_locations.i'.

-- To change verb outcomes for classes predefined in 'lib_classes,i', add the change in this
-- file at the applicable verb in the list of verbs further below, in the following way:

-- In this example, the author has changed the response for the verb 'look_through' for
-- the class WINDOW:

  
    -- VERB look_through
      -- DOES ONLY
        -- IF THIS IsA WINDOW
          -- THEN "You see the garden outside the house."
            -- -- the above would be the default outcome for all windows in the game.
          -- ELSE "You can't see through" SAY THE bulk. "."
            -- -- this is the original default response defined by the library,
            -- -- and in the list of verbs further below.
        -- END IF.
    -- END VERB.


-- Above, the author has added an IF clause to cater for both window objects and other objects.
-- The 'lib_classes.i' file won't have to be edited.

  
-- (To change the verb outcome for any verb applying to a class you have created yourself:
-- For example:

  -- EVERY cat IsA ACTOR

           -- VERB examine
      -- DOES ONLY "It's just an ordinary cat"
    -- END VERB.

  -- END EVERY.   

  -- etc.)


-- To add a check of your own to any library verb, just add the check to the verb definition in
-- the list of verbs below, for example:

-- VERB jump
--  CHECK strength OF hero > 5          -- your own check, added in this file and not in
--    ELSE "You feel too weak."             -- the library files!
--  DOES "You jump on the spot, to no avail."
-- END VERB.



-- ============================================================================================




THE mia_AT IsA blocco_definizioni


  -- attributes for the game banner; edit these to suit your own game:
  -- =================================================================

  HAS titolo       "My New Game".   
  HAS sottotitolo  "".   -- leaving this empty won't show the subtitle line in your game's banner   
  HAS autore       "An ALAN Author".    -- put your name/pseudonym here
  HAS anno         0000.      -- change this to the current year    
  HAS versione     "1".  -- setting this to 0 won't show the version line in your game's banner         
      

  -- messages for the hero:
  -- ======================

  -- The hero is not defined as an instance in the library; the game author
  -- has all the freedom to define the hero as (s)he sees fit. However,
  -- there are some messages for the hero defined in the library. These can be
  -- easily overridden. Two of these messages are right here, the rest are
  -- e.g. in verb checks.

  HAS hero_worn_header "You are wearing".
  HAS hero_worn_else "You are not wearing anything.". 

  -- These messages are shown when you add "LIST abbigliamento." for example to the 'examine' verb.


  -- description messages for dark locations:
  -- =======================================

  HAS dark_loc_desc "It is pitch black. You can't see anything at all.".

  HAS light_goes_off "It is now pitch black.".
    -- This message is shown when a light goes off and the location becomes dark.
  

  -- response for restricted actions:
  -- ================================

  HAS azione_bloccata "You can't do that.".
    -- This message is shown whenever the player used a verb that has been disabled
     -- by the "CAN NOT [verb]." or verbs_disabled attributes (see the library manual).

  HAS restricted_level 0.
    -- by default, all verbs work in the normal way



  -- all illegal parameter messages, typically found in the ELSE parts of SYNTAX structures and
  -- the first two below being by far the most common.
  -- ==========================================================================================


  -- the general message for when a parameter is not suitable with the verb:
  --------------------------------------------------------------------------

  HAS illegal_parameter_sg "That's not something you can $v.".        -- (numerous)
  HAS illegal_parameter_pl "Those are not something you can $v.".


  -- variations of the above message when a preposition is required after the verb:
  ---------------------------------------------------------------------------------

  HAS illegal_parameter_about_sg "That's not something you can $v about.".    -- ask_about, tell_about, think_about
  HAS illegal_parameter_about_pl "Those are not something you can $v about.".
  HAS illegal_parameter_at "You can't $v anything at $+2.".         -- fire_at, throw_at
  HAS illegal_parameter_for_sg "That's not something you can $v for.".      -- ask_for
  HAS illegal_parameter_for_pl "Those are not something you can $v for.".
  HAS illegal_parameter2_from_sg "That's not something you can take things from.".  -- take_from
  HAS illegal_parameter2_from_pl "Those are not something you can take things from.".
  HAS illegal_parameter_in_sg "That's not something you can $v in.".      -- dive_in, jump_in, lie_in, swim_in
  HAS illegal_parameter_in_pl "Those are not something you can $v in.".
  HAS ogg1_illegale_SU_sg "That's not something you can $v on.".      -- climb_on, jump_on, knock, lie_on, sit_on,
                                  -- stand_on, switch_on, turn_on
  HAS ogg1_illegale_SU_pl "Those are not something you can $v on.".
  HAS illegal_parameter_off_sg "That's not something you can $v off.".      -- get_off, switch_off, turn_off
  HAS illegal_parameter_off_pl "Those are not something you can $v off.".
  HAS illegal_parameter_to_sg "That's not something you can $v to.".      -- listen_to, talk_to
  HAS illegal_parameter_to_pl "Those are not something you can $v to.".
  HAS illegal_parameter2_to_sg "That's not something you can $v things to.".    -- give, show, tell, tie_to, throw_to
  HAS illegal_parameter2_to_pl "Those are not something you can $v things to.". 
  HAS illegal_parameter_with_sg "That's not something you can $v with.".    -- kill_with, shoot_with, play_with
  HAS illegal_parameter_with_pl "Those are not something you can $v with.". 
  HAS illegal_parameter2_with_sg "That's not something you can $v things with.".  -- attack_with, break_with, burn_with, close_with,
                                 -- + cut_with, fill_with, lock_with, open_with, pry_with,
                                 -- + push_with, unlock_with
  HAS illegal_parameter2_with_pl "Those are not something you can $v things with.".
    

  -- other illegal parameter messages:
  ------------------------------------


  HAS illegal_parameter_act "That doesn't make sense.".             -- empty_in, pour_in, put_in, throw_in
  
  HAS illegal_parameter_consult_sg "That's not something you can find information   -- consult_about
                about.".
  HAS illegal_parameter_consult_pl "Those are not something you can find      
                information about.".

  HAS illegal_parameter_examine_sg "That's not something you can examine.".     -- examine
  HAS illegal_parameter_examine_pl "Those are not something you can examine.".

  HAS destinazione_invalida "You can't go there.".                -- go_to

  HAS illegal_parameter_look_out_sg "That's not something you can look out of.".    -- look_out_of
  HAS illegal_parameter_look_out_pl "Those are not something you can look out of.".
  HAS illegal_parameter_look_through "You can't look through $+1.".       -- look_through

  HAS illegal_parameter_obj "You can only $v objects.".             -- give, put, put_in, put_on, put_against,
                                     -- + put_behind, put_near, put_under,
                                     -- + throw_at, throw_in, throw_to, tie_to,
                                     -- + use, use_with

  HAS illegal_parameter_string "Please state inside double quotes ("""") what you want to $v.". -- answer, say, say_to, write
  
  HAS illegal_parameter_talk_sg "That's not something you can talk to.".      -- ask, ask_for, say_to, tell
  HAS illegal_parameter_talk_pl "Those are not something you can talk to.".

  HAS illegal_parameter_there "It's not possible to $v there.".         -- look_behind, look_in, look_under
  HAS illegal_parameter2_there "It's not possible to $v anything there.".       -- empty_in, empty_on, pour_in, pour_on, put_in,
                                       -- + put_on, put_against, put_behind, put_near,
                                   -- + put_under, throw_in, throw_to, tie_to, write

  HAS illegal_parameter_what_sg "That's not something I know about.".       -- what_is, where_is
  HAS illegal_parameter_what_pl "Those are not something I know about.".      -- what_is, where_is
  HAS illegal_parameter_who_sg "That's not somebody I know about.".       -- who_is
  HAS illegal_parameter_who_pl "Those are not somebody I know about.".        -- who_is
    
  
  -- verb check messages, found before DOES sections of verbs and used mainly in 'verbs.i': 
  -- ======================================================================================


  -- a) attribute checks
  ----------------------

    
  -- the general check message for when an instance cannot be used with the verb :
  --------------------------------------------------------------------------------  
    
  HAS check_obj_suitable_sg "That's not something you can $v.".       -- (numerous)       
  HAS check_obj_suitable_pl "Those are not something you can $v.".


  -- variations of the above message, needed e.g. when a preposition is required after the verb:
  ----------------------------------------------------------------------------------------------

  HAS check_obj_suitable_at "You can't $v anything at $+2.".          -- fire_at, throw_at, throw_to
  HAS check_obj2_suitable_for_sg "That's not something you can $v for.".    -- ask_for
  HAS check_obj2_suitable_for_pl "Those are not something you can $v for.".
  HAS check_obj_suitable_off_sg "That's not something you can $v off.".     -- turn_off, switch_off
  HAS check_obj_suitable_off_pl "Those are not something you can $v off.".
  HAS check_obj_suitable_on_sg "That's not something you can $v on.".     -- knock, switch_on, turn_on
  HAS check_obj_suitable_on_pl "Those are not something you can $v on." . 
  HAS check_obj_suitable_with_sg "That's not something you can $v with.".   -- play_with
  HAS check_obj_suitable_with_pl "Those are not something you can $v with.".    
  HAS check_obj2_suitable_with_sg "That's not something you can $v things with.".   -- break_with, burn_with, close_with, cut_with, fill_with,
  HAS check_obj2_suitable_with_pl "Those are not something you can $v things with.".   -- + lock_with, open_with, pry_with, push_with,
                                   -- + touch_with, unlock_with

  HAS check_obj_suitable_examine_sg "That's not something you can examine.".      -- examine
  HAS check_obj_suitable_examine_pl "Those are not something you can examine.".   -- examine

  HAS check_obj_suitable_look_out_sg "That's not something you can look out of.".   -- look_out_of
  HAS check_obj_suitable_look_out_pl "Those are not something you can look out of.".      
  HAS check_obj_suitable_look_through "You can't look through $+1.".        -- look_through


  -- checks for open, closed and locked objects:
  ----------------------------------------------

  HAS check_obj_not_open_sg "$+1 is already open.".         -- open, open_with
  HAS check_obj_not_open_pl "$+1 are already open.".
  HAS check_obj_open1_sg "$+1 is already closed.".          -- close, close_with
  HAS check_obj_open1_pl "$+1 are already closed.".
  HAS check_obj_open2_sg "You can't, since $+1 is closed.".       -- empty (in/on), look_in, pour (in/on)
  HAS check_obj_open2_pl "You can't, since $+1 are closed.".
  HAS check_obj2_open_sg "You can't, since $+2 is closed.".       -- empty_in, pour_in, put_in, throw_in
  HAS check_obj2_open_pl "You can't, since $+2 are closed.".
  HAS check_obj_locked_sg "$+1 is already unlocked.".         -- unlock, unlock_with
  HAS check_obj_locked_pl "$+1 are already unlocked.".
  HAS check_obj_not_locked_sg "$+1 is already locked.".         -- lock, lock_with
  HAS check_obj_not_locked_pl "$+1 are already locked.".
  


  -- checks for "not reachable" and "distant" objects:
  ----------------------------------------------------

  HAS check_obj_reachable_sg "$+1 is out of your reach.".       -- (numerous)
  HAS check_obj_reachable_pl "$+1 are out of your reach.".
  HAS check_obj2_reachable_sg "$+2 is out of your reach.".        -- empty_in, fill_with, put_in, take_from, tie_to     
  HAS check_obj2_reachable_pl "$+2 are out of your reach.".
  HAS check_obj_reachable_ask "$+1 can't reach $+2.".         -- ask_for
  HAS ogg1_distante_sg "$+1 is too far away.".          -- (numerous)
  HAS ogg1_distante_pl "$+1 are too far away.".
  HAS ogg2_distante_sg "$+2 is too far away.".          -- empty_in, fill_with, pour_in, put_in, show, take_from,                                  -- + throw_at, throw_in, throw_to
  HAS ogg2_distante_pl "$+2 are too far away.".
  

  -- checks for the hero sitting or lying_down:
  ---------------------------------------------

  HAS check_hero_not_sitting1 "It is difficult to $v while sitting down.".      -- (with many intransitive verbs)
  HAS check_hero_not_sitting2 "It is difficult to $v anything while sitting down.". -- (with many transitive verbs)
  HAS check_hero_not_sitting3 "It is difficult to $v anywhere while sitting down.". -- (with many verbs of motion)
  HAS check_hero_not_sitting4 "You're sitting down already.".         -- sit, sit_on
  HAS check_hero_not_lying_down1 "It is difficult to $v while lying down.".     -- (with many intransitive verbs)
  HAS check_hero_not_lying_down2 "It is difficult to $v anything while lying down.".  -- (with many transitive verbs)
  HAS check_hero_not_lying_down3 "It is difficult to $v anywhere while lying down.".  -- (with many verbs of motion)
  HAS check_hero_not_lying_down4 "You're lying down already.".          -- lie_down, lie_in


  -- other attribute checks:
  --------------------------

  HAS check_act_can_talk_sg "That's not something you can talk to.".        -- ask, ask_for, say_to, tell
  HAS check_act_can_talk_pl "Those are not something you can talk to.".

  HAS check_obj_allowed_in_sg "$+1 doesn't belong in $+2.".           -- empty_in, pour_in, put_in, throw_in
      HAS check_obj_allowed_in_pl "$+1 don't belong in $+2.".               
    
  HAS ogg1_non_rotto_sg "$+1 non necessita di riparazioni.".
  HAS ogg1_non_rotto_pl "$+1 non necessitano di riparazioni.".

  HAS check_obj_inanimate1 "$+1 wouldn't probably appreciate that.".        -- push, push_with, scratch, search
  HAS check_obj_inanimate2 "You are not sure whether $+1 would appreciate that.".   -- rub, touch, touch_with
  
  HAS check_obj_movable "It's not possible to $v $+1.".             -- lift, pull, push, push_with, shake, take, take_from
      
  HAS check_obj_not_scenery_sg "$+1 is not important.".             -- examine, take, take_from
  HAS check_obj_not_scenery_pl "$+1 are not important.".

  HAS check_obj2_not_scenery_sg "$+1 is not important.".            -- ask_for, take_from
  HAS check_obj2_not_scenery_pl "$+1 are not important.".
  
  HAS check_obj_suitable_there "It's not possible to $v there.".          -- look_behind, look_in, look_under
  HAS check_obj2_suitable_there "It's not possible to $v anything there.".      -- throw_in, tie_to

  HAS check_obj_takeable "You don't have $+1.".             -- (numerous; this check is in verbs with implicit taking)
  HAS check_obj2_takeable1 "You don't have $+2.".               -- fill_with
  HAS check_obj2_takeable2 "You can't have $+2.".               -- ask_for
  
  HAS check_obj_weight_sg "$+1 is too heavy to $v.".              -- lift, take, take_from
  HAS check_obj_weight_pl "$+1 are too heavy to $v.".

  HAS check_obj_writeable "Nothing can be written there.".            -- write


  -- b) location and containment checks for actors and objects
  ------------------------------------------------------------


  -- containment checks for actors other than the hero (checks for the hero are listed separately below):
  -------------------------------------------------------------------------------------------------------
  
  HAS check_act_near_hero "You don't quite know where $+1 went.           -- follow
    You should state a direction where you want to go.".

  HAS check_obj_in_act_sg "$+2 doesn't have $+1.".              -- take_from
  HAS check_obj_in_act_pl "$+2 don't have $+1.".
  HAS check_obj_not_in_act_sg "$+2 already has $+1.".             -- give
  HAS check_obj_not_in_act_pl "$+2 already have $+1.".


  -- location and containment checks for the hero:
  ------------------------------------------------

  HAS check_count_weapon_in_hero "You are not carrying any firearms.".        -- shoot

  HAS ogg1_già_qui_sg "$+1 is right here.".               -- find, follow, go_to, where_is
  HAS ogg1_già_qui_pl "$+1 are right here.".
  HAS check_obj_in_hero "You don't have the $+1.".              -- drop, fire, fire_at, put, show
  HAS check_obj2_in_hero "You don't have the $+2.".             -- (numerous)
  HAS check_obj_not_in_hero1 "It doesn't make sense to $v something you're holding.".   -- attack, attack_with, kick, lift, shoot, shoot_with
  HAS check_obj_not_in_hero2 "You already have $+1.".             -- take, take_from
  HAS check_obj2_not_in_hero1 "You are carrying $+2.".              -- throw_at, throw_in, throw_to
  HAS check_obj2_not_in_hero2 "That would be futile.".              -- put_against, put_behind, put_near, put_under
  HAS check_obj2_not_in_hero3 "You already have $+2.".              -- ask_for


  -- checking whether an object is in a container or not:
  -------------------------------------------------------

  HAS check_cont_not_in_obj "That doesn't make sense.".             -- empty_in, pour_in, put_in
  HAS check_obj_in_cont_sg "$+1 is not in $+2.".                -- take_from
  HAS check_obj_in_cont_pl "$+1 are not in $+2.".
  HAS check_obj_not_in_cont_sg "$+1 is in $+2 already.".            -- put_in, throw_in
  HAS check_obj_not_in_cont_pl "$+1 are in $+2 already.".
  HAS check_obj_not_in_cont2 "$+1 is already full of $+2.".           -- fill_with


  -- checking whether an object is on a surface or not:
  -----------------------------------------------------
  
  HAS check_obj_on_surface_sg "$+1 is not on $+2.".             -- take_from
  HAS check_obj_on_surface_pl "$+1 are not on $+2.".
  HAS check_obj_not_on_surface_sg "$+1 is already on $+2.".           -- put_on
  HAS check_obj_not_on_surface_pl "$+1 are already on $+2.".
  

  -- checking whether an object is worn or not:
  --------------------------------------------- 

  HAS check_obj_in_worn "You are not wearing $+1.".                 -- remove, take_off ('classes.i')
  HAS check_obj_not_in_worn1 "You are already wearing $+1.".            -- put_on, wear ('classes.i')
      HAS check_obj_not_in_worn2 "It doesn't make sense to $v something you're wearing.". -- attack, attack_with, kick, shoot, shoot_with
  HAS check_obj_not_in_worn3 "You'll have to take off $+1 first.".        -- drop
      

  -- c) Check della Locazione
  --    ---------------------

  HAS imp_luogo_buio "È troppo buio.".           -- (svariati verbi)


  -- d) checks guarding against actions directed at the hero him-/herself
  -----------------------------------------------------------------------

  HAS check_obj_not_hero1 "It doesn't make sense to $v yourself.".      -- ask, ask_for, attack, attack_with, catch, follow
                                   -- kick, listen, pull, push, push_with, take,
                                   -- take_from, tell
  HAS check_obj_not_hero2 "There is no need to be that desperate.".       -- fire_at, kill, kill_with, shoot, shoot_with
  HAS check_obj_not_hero3 "That wouldn't accomplish anything.".       -- scratch, touch
  HAS sei_già_qui "You're right here.".             -- find, go_to
  HAS check_obj_not_hero5 "You don't need to be freed.".          -- free
  HAS check_obj_not_hero6 "There is no time for that now.".               -- kiss, play_with, rub
  HAS check_obj_not_hero7 "Turning your head, you notice nothing unusual behind yourself.".   -- look_behind
  HAS check_obj_not_hero8 "You notice nothing unusual under yourself.".           -- look_under
  HAS check_obj2_not_hero1 "That doesn't make sense.".            -- say_to, show, take_from, touch_with, throw_at/in/to
  HAS check_obj2_not_hero2 "That would be futile.".           -- put_against, put_behind, put_near, put_under
  HAS check_obj2_not_hero3 "You can't $v things to yourself.".        -- give, tie_to


  -- e) checks guarding against actions where an object is used with itself
  -------------------------------------------------------------------------

  HAS check_obj_not_obj2_at "It doesn't make sense to $v something at itself.".   -- fire_at, throw_at
  HAS check_obj_not_obj2_from "It doesn't make sense to $v something from itself.". -- take_from
  HAS check_obj_not_obj2_in "It doesn't make sense to $v something into itself.".   -- empty_in, pour_in, put_in, throw_in
  HAS check_obj_not_obj2_on "It doesn't make sense to $v something onto itself.".   -- empty_on, pour_on, put_on
  HAS check_obj_not_obj2_to "It doesn't make sense to $v something to itself.".   -- give, show, throw_to, tie_to
  HAS check_obj_not_obj2_with "It doesn't make sense to $v something with itself.".   -- attack_with, break_with, burn_with, close_with,                                       -- + cut_with, fill_with, lock_with,
                                     -- + open_with, push_with, pry_with, shoot_with,
                                     -- + touch_withm unlock_with, use_with
  
  HAS check_obj_not_obj2_put "That doesn't make sense." .         -- put_against, put_behind, put_near, put_under

  
      -- f) additional checks for classes:
  ------------------------------------

  HAS check_clothing_sex "On second thoughts you decide $+1 won't really suit you.".      -- clothing: wear
  HAS check_cont_not_supporter "You can't put $+1 inside $+2.".             -- supporter: put_in
  HAS check_device_on_sg "$+1 is already off.".                     -- device: turn_off, switch_off
  HAS check_device_on_pl "$+1 are already off.".
  HAS check_device_not_on_sg "$+1 is already on.".                  -- device: turn_on, switch_on
  HAS check_device_not_on_pl "$+1 are already on.".
  HAS check_door_matching_key "You can't use $+2 to $v $+1.".             -- door: lock_with, unlock_with 
  HAS check_lightsource_lit_sg "But $+1 is not lit.".                 -- lightsource: extinguish, turn_off
  HAS check_lightsource_lit_pl "But $+1 are not lit.".
  HAS check_lightsource_not_lit_sg "$+1 is already lit.".               -- lightsource: light, turn_on
  HAS check_lightsource_not_lit_pl "$+1 are already lit.".
  HAS check_lightsource_switchable_sg "That's not something you can switch on and off." .   -- lightsource: switch
  HAS check_lightsource_switchable_pl "Those are not something you can switch on and off.".
  HAS check_liquid_vessel_not_cont "You can't carry $+1 around in your bare hands.".      -- liquid: take_from
  HAS non_succede_nulla "Fatto, ma non succede nulla.".


  -- messages for implicit taking:
  -- =============================

      HAS implicit_taking_message "(taking $+1 first)$n". 

  -- The following verbs are preceded by implicit taking:
      -- bite, drink, eat, empty, empty_in, empty_on, give, pour, pour_in, pour_on,
      -- put_in, put_on, throw, throw_at, throw_in, throw_to, tie_to.
  -- In ditransitive verbs, only the first parameter (the direct object) is taken implicitly.




-- all verb outcomes (what happens after DOES):
-- ============================================


-- Editing these verbs will affect the default responses for these verbs in your game.
-- You can also add checks of your own to the verbs here, before the "DOES ONLY" section.



VERB 'about'
  DOES ONLY
    "[This is a text adventure, also called interactive fiction, which means that what
    goes on in the story depends on what you type at the prompt. Commands you can type
    are for example GO NORTH (or NORTH or just N), WEST, SOUTHEAST, UP, IN etc for
    moving around, but you can try many other things too, like TAKE LAMP, DROP EVERYTHING,
    EAT APPLE, EXAMINE BIRD or FOLLOW OLD MAN, to name just a few. LOOK (L) describes your
    surroundings, and INVENTORY (I) lists what you are carrying. You can SAVE your game and
    RESTORE it later on.
    $pType CREDITS to see information about the author and the copyright issues.
    $pTo stop playing and end the program, type QUIT.]$p"
END VERB.



VERB 'again'
  DOES ONLY
    "[The AGAIN command is not supported in this game. As a workaround, try using
     the 'up' and 'down' arrow keys to scroll through your previous commands.]"
END VERB.



VERB answer
  DOES ONLY
    "What was the question?"
END VERB.



VERB ask
  WHEN png
    DOES ONLY "There is no reply."
END VERB.



VERB ask_for
  DOES ONLY
    MAKE png compliant.   
    -- see 'classes.i' -> ACTOR.
    -- It is only possible to get something from an NPC
    -- if the NPC is 'compliant'.
    LOCATE ogg IN hero.
    SAY THE png. "gives" SAY THE ogg. "to you."
    MAKE png NOT compliant.
END VERB.



VERB attack
  DOES ONLY
    "Resorting to brute force is not the solution here."
END VERB.



VERB attack_with
  WHEN bersaglio
    DOES ONLY
      "Resorting to brute force is not the solution here."
END VERB.



VERB bite
  DOES ONLY
    IF ogg IN hero
      THEN "You take a bite of" SAY THE ogg. "$$."
        IF ogg IS NOT plurale
          THEN "It tastes nothing out of the ordinary."
          ELSE "They taste nothing out of the ordinary."
        END IF.
    END IF.
END VERB.



VERB break
  DOES ONLY
    "Resorting to brute force is not the solution here."
END VERB.



VERB break_with
  DOES ONLY   
    "Trying to break" SAY THE ogg. "with" SAY THE strum.
    "wouldn't accomplish anything."
END VERB.



VERB 'brief'
  DOES ONLY
    Visits 1000.
    "Brief mode is now on. Location descriptions will only be shown
    the first time you visit."
END VERB.



VERB burn
  DOES ONLY
    "You must state what you want to burn" SAY THE ogg. "with."
END VERB.



VERB burn_with
  DOES ONLY
    "You can't burn" SAY THE ogg. "with" SAY THE strum. "."
END VERB.



VERB buy
  DOES ONLY
    IF merce IS NOT plurale
      THEN "That's not"
      ELSE "Those are not"
    END IF.
      
    "for sale."
END VERB.



VERB catch
  DOES ONLY
    IF ogg IS NOT plurale
      THEN "That doesn't"
      ELSE "Those don't"
    END IF.
    "need to be caught."
END VERB.



VERB clean
  DOES ONLY
    "Nothing would be achieved by that."
END VERB.



VERB climb
  DOES ONLY
    IF ogg IS NOT plurale
      THEN "That's not"
      ELSE "Those are not"
    END IF. 
    "something you can climb."
END VERB.



VERB climb_on
  DOES ONLY
    IF superficie IS NOT plurale
      THEN "That's not"
      ELSE "Those are not"
    END IF.
    "something you can climb on."
END VERB.



VERB climb_through
  DOES ONLY
    IF ogg IS NOT plurale
      THEN "That's not"
      ELSE "Those are not"
    END IF.
    "something you can climb through."
END VERB.



VERB close
  DOES ONLY
        MAKE ogg NOT aperto.
        "You close the" SAY THE ogg. "."
END VERB.



VERB close_with
  DOES ONLY
        "You can't $v" SAY THE ogg. "with" SAY THE strum. "."
END VERB.



VERB consult
  DOES ONLY
    "You find nothing useful about" SAY THE argomento. "in" SAY THE fonte. "."
END VERB.



VERB credits
  DOES ONLY
    "The author retains the copyright to this game.
    $pThis game was written using the ALAN Adventure Language. ALAN is
    an interactive fiction authoring system by Thomas Nilsson.
    $nE-mail address: thomas@alanif.se $pFurther information
    about the ALAN system can be obtained from
    the World Wide Web Internet site
    $ihttp://www.alanif.se$p"
END VERB.



VERB cut
  DOES ONLY
    "You need to specify what you want to cut" SAY THE ogg. "with."
END VERB.



VERB cut_with
  DOES ONLY
    "You can't cut" SAY THE ogg. "with" SAY THE strum. "."
END VERB.



VERB dance
  DOES ONLY
        "How about a waltz?"
END VERB.



VERB dig
  DOES ONLY
    "There is nothing suitable to dig here."
END VERB.



VERB dive
  DOES ONLY
    "There is no water suitable for swimming here."
END VERB.



VERB dive_in
  DOES ONLY
    IF liq IS NOT plurale
      THEN "That's not"
      ELSE "Those are not"
    END IF.
    "something you can dive in."
END VERB.



VERB drink
  DOES ONLY
    IF recipiente OF liq = recipiente_fittizio    
      -- here, if the liquid is in no container, e.g.
      -- the hero takes a sip of water from a river,
      -- the action is allowed to succeed so that the hero
      -- drinks some of the liquid:

      THEN "You drink a bit of" SAY THE liq. "."
      ELSE
        -- = if the liquid is in a container:

        -- implicit taking:
        IF recipiente OF liq NOT DIRECTLY IN hero
          THEN
            IF recipiente OF liq IS NOT prendibile
              THEN "You can't carry" SAY THE liq. "around in your bare hands."
                -- the action stops here if the container is not takeable.
              ELSE
                LOCATE recipiente OF liq IN hero.
                SAY implicit_taking_message OF mia_AT.
            END IF.   
        END IF.
        -- end of implicit taking.
    
        IF liq IN hero    
        -- i.e. if the implicit taking was successful
          THEN
            "You drink all of" SAY THE liq. "."
            LOCATE liq AT limbo.
        END IF.
    END IF.

END VERB.



VERB drive
  DOES ONLY
    IF veicolo IS NOT plurale
      THEN "That's not"
      ELSE "Those are not"
    END IF.
    "something you can drive."
END VERB.



VERB drop
  DOES ONLY
        LOCATE ogg HERE.
        "Dropped."
END VERB.



VERB eat
  DOES ONLY
    -- implicit taking:
    IF food NOT DIRECTLY IN hero
      THEN LOCATE food IN hero.
        SAY implicit_taking_message OF mia_AT.  
    END IF.
    -- end of implicit taking.
      
    "You eat all of" SAY THE food. "."
    LOCATE food AT limbo.
END VERB.



VERB 'empty'
  DOES ONLY
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



VERB empty_in, pour_in
  DOES ONLY
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
    


VERB empty_on, pour_on
  DOES ONLY
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



VERB enter
   DOES ONLY
    IF ogg IS NOT plurale
      THEN "That's not"
      ELSE "Those are not"
    END IF.
    "something you can enter."
END VERB.



VERB examine
  DOES ONLY
    IF ogg IS leggibile     
      -- for readable objects, 'examine' behaves just as 'read'
      THEN
        IF testo OF ogg = ""
          THEN "There is nothing written on" SAY THE ogg. "."
          ELSE "You read" SAY THE ogg. "."
            IF ogg IS NOT plurale
              THEN "It says"
              ELSE "They say"
            END IF.
            """$$" SAY testo OF ogg. "$$""."
        END IF.
          ELSE
        IF ogg = hero
          THEN "You notice nothing unusual about yourself."
          ELSE "You notice nothing unusual about" SAY THE ogg. "."
        END IF.
    END IF.
END VERB.



VERB 'exit'
  DOES ONLY
    IF ogg IS NOT plurale
      THEN "That's not"
      ELSE "Those are not"
    END IF.   
    "something you can exit."
END VERB.



VERB extinguish
  DOES ONLY
    IF ogg IS NOT plurale
      THEN "That's not"
      ELSE "Those are not"
    END IF.
    "on fire."
END VERB.



VERB fill
  DOES ONLY
    "You have to say what you want to fill" SAY THE cont. "with."
END VERB.



VERB fill_with
  DOES ONLY 
    "You can't fill" SAY THE cont. "with" SAY THE sostanza. "."
    -- allow the action at individual substances only
END VERB.



VERB find
  DOES ONLY
    "You'll have to $v it yourself."
END VERB.



VERB fire
  DOES ONLY
    "You fire" SAY THE arma. "into the air."
END VERB.



VERB fire_at
  DOES ONLY
    "Resorting to violence is not the solution here."
END VERB.



VERB fix
  DOES ONLY
    "Please be more specific. How do you intend to fix it?"
END VERB.



VERB follow
  DOES ONLY
    LOCATE hero AT png.
    "You follow" SAY THE png. "."   
END VERB.



VERB free
  DOES ONLY
    IF ogg IS NOT plurale
      THEN "That doesn't need to be $vd."
      ELSE "Those don't need to be $vd."
    END IF.
END VERB.



VERB get_off
  DOES ONLY
    IF hero IS seduto OR hero IS sdraiato
      THEN "You get off" SAY THE superficie. "."
        MAKE hero NOT sdraiato.
        MAKE hero NOT seduto.
      ELSE "You're standing up already."
    END IF.
END VERB.



VERB get_up
  DOES ONLY
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



VERB give
  DOES ONLY
    -- implicit taking:
    IF ogg NOT DIRECTLY IN hero
      THEN  SAY implicit_taking_message OF mia_AT.
        LOCATE ogg IN hero.
    END IF.
    -- end of implicit taking.

    LOCATE ogg IN ricevente.  
    "You give" SAY THE ogg. "to" SAY THE ricevente. "."
END VERB.



VERB go_to
  DOES ONLY
    "You can't see" SAY THE dest. "anywhere nearby. You must state a
    direction where you want to go."
END VERB.



VERB hint
  DOES ONLY
    "Unfortunately hints are not available in this game."
END VERB.



VERB i
  DOES ONLY
    LIST hero.

    -- if the hero in your game carries any containers you want the contents of
    -- to be listed after 'inventory', you should manually add the listing right here
            -- according to the following example:
    --
    -- IF bag IN hero
    --     THEN LIST bag.
    -- END IF.
    --
    -- This way, 'inventory' will yield e.g. "You are carrying a bag. The bag contains a book."
    -- If you leave the above addition out, the outcome will be just "You are carrying a bag.", with
    -- no comment on what is inside the bag.
    
    IF COUNT DIRECTLY IN abbigliamento > 0    -- See the file 'classes.i', subclass 'clothing'.
      THEN LIST abbigliamento.    -- This code will list what the hero is wearing.
    END IF.
  
END VERB.



VERB jump
  DOES ONLY
    "You jump on the spot, to no avail."
END VERB.



VERB jump_in
  DOES
    IF cont IS NOT plurale
      THEN "That's not something you can jump into."
      ELSE "Those are not something you can jump into."
    END IF.
END VERB.



VERB jump_on
  DOES ONLY
    IF superficie IS NOT plurale
      THEN "That's not"
      ELSE "Those are not"
    END IF.
    "something you can jump onto."  
END VERB.



VERB kick
  DOES ONLY
    "Resorting to brute force is not the solution here."
END VERB.



VERB kill
  DOES ONLY
    "You have to state what you want to kill" SAY THE vittima. "with."
END VERB.



VERB kill_with
   WHEN vittima
  DOES ONLY
    "That would be needlessly brutal."
END VERB.



VERB kiss
  DOES ONLY
    IF ogg IsA ACTOR
      THEN SAY THE ogg. "avoids your advances."
      ELSE "Nothing would be achieved by that."
    END IF.
END VERB.



VERB knock
  DOES ONLY
    "You knock on" SAY THE ogg. "$$. Nothing happens."
END VERB.



VERB lie_down
  DOES ONLY
    "There's no need to lie down right now."
    -- If you need this to work, insert the following lines instead of the above:
      -- DOES "You lie down."
      -- MAKE hero lying_down.
      -- MAKE hero NOT sitting_down.
END VERB.



VERB lie_in
  DOES ONLY
    "There's no need to lie down in" SAY THE cont. "."
    -- If you need this to work, make a nested location
    -- (e.g. THE in_bed IsA LOCATION AT bedroom; etc.)
    -- Remember to: MAKE hero lying_down.
    -- Presently, an actor cannot be located inside a container object.
END VERB.



VERB lie_on
  DOES ONLY
    "There's no need to lie down on" SAY THE superficie. "."
    -- If you need this to work, make a nested location
    -- (e.g. THE on_bed IsA LOCATION AT bedroom; etc.)
    -- Remember to: MAKE hero lying_down.
    -- Presently, an actor cannot be located inside a container object
    -- or on a supporter.
END VERB.



VERB lift
  DOES ONLY
    "That wouldn't accomplish anything."  
END VERB.



VERB light
  DOES ONLY
    IF ogg IS NOT plurale
      THEN "That's not"
      ELSE "Those are not"
    END IF.
    "something you can $v."
END VERB.



VERB listen0
  DOES ONLY
    "You hear nothing unusual."
END VERB.



VERB listen
  DOES ONLY
    IF ogg AT hero
      THEN "You hear nothing unusual."
    ELSIF ogg NEAR hero
      THEN "You can't hear" SAY THE ogg. "very well from here."
      ELSE "You can't hear anything."
    END IF.
END VERB.



VERB lock
  DOES ONLY
    IF chiave_abbinata OF ogg IN hero
      THEN MAKE ogg bloccato.
        "(with" SAY THE chiave_abbinata OF ogg. "$$)$n"
        "You"

        IF ogg IS aperto
          THEN "close and"
            MAKE ogg NOT aperto.
        END IF.

        "lock" SAY THE ogg. "."
          ELSE  "You have to state what you want to lock" SAY THE ogg. "with."
    END IF.
END VERB.



VERB lock_with
   DOES ONLY
    MAKE ogg bloccato. "You"
        
      IF ogg IS aperto
        THEN "close and"
          MAKE ogg NOT aperto.
      END IF.

     "lock" SAY THE ogg. "with" SAY THE chiave. "."
END VERB.



VERB 'look'
  DOES ONLY
    INCREASE descritto OF CURRENT LOCATION.     
    -- see 'locations.i', attribute 'described'.
    LOOK.
END VERB.



VERB look_behind
  DOES ONLY
    IF bulk IN hero
      THEN "You turn" SAY THE bulk. "in your hands but notice nothing unusual about it."
      ELSE "You notice nothing unusual behind" SAY THE bulk. "."
    END IF.
END VERB.



VERB look_in
  DOES ONLY
    LIST cont.
END VERB.



VERB look_out_of
  DOES ONLY
    IF ogg IS NOT plurale
      THEN "That's not"
      ELSE "Those are not"
    END IF.
    "something you can look out of."
END VERB.



VERB look_through
  DOES ONLY
    "You can't see through" SAY THE bulk. "."
END VERB.



VERB look_under
  DOES ONLY
    "You notice nothing unusual under" SAY THE bulk. "."
END VERB.



VERB look_up
  DOES ONLY
    "Looking up, you see nothing unusual."
END VERB.



VERB 'no'
  DOES ONLY
    "Really?"
END VERB.



VERB pray
  DOES ONLY
    "Your prayers don't seem to help right now."
END VERB.



VERB pry
  DOES ONLY
    "You must state what you want to pry" SAY THE ogg. "with."
END VERB.



VERB pry_with
  DOES ONLY
    "That doesn't work."
END VERB.



VERB pull
  DOES ONLY
    "That wouldn't accomplish anything."
END VERB.



VERB push
  DOES ONLY
    "You give" SAY THE ogg. "a little push. Nothing happens."
END VERB.



VERB push_with
  DOES ONLY
    "That wouldn't accomplish anything."
END VERB.



VERB put
  DOES ONLY
    "You must state where you want to put"
      IF ogg IS NOT plurale
        THEN "it."
        ELSE "them."
      END IF.
END VERB.



VERB put_in
  DOES ONLY
    LOCATE ogg IN cont.
    "You put" SAY THE ogg. "into" SAY THE cont. "." 
END VERB.



VERB put_against, put_behind, put_near, put_under
  DOES ONLY
    "That wouldn't accomplish anything."
END VERB.



VERB put_on
  DOES ONLY
    IF ogg IN hero
      THEN
        IF superficie = pavimento OR superficie = suolo
          THEN LOCATE ogg AT hero.
            "You put" SAY THE ogg. "on" SAY THE superficie. "."
          ELSE LOCATE ogg IN superficie.
            "You put" SAY THE ogg. "on" SAY THE superficie. "."
          END IF. 
      END IF.
END VERB.



VERB 'quit'
  DOES ONLY
    QUIT.
END VERB.



VERB read
  DOES ONLY
    IF testo OF ogg = ""
      THEN "There's nothing written on" SAY THE ogg. "."
      ELSE "You read" SAY THE ogg. "."
        IF ogg IS NOT plurale
          THEN "It says"
          ELSE "They say"
        END IF.
        """$$" SAY testo OF ogg. "$$""."
    END IF.
END VERB.



VERB remove
  DOES ONLY
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



VERB 'restart'
  DOES ONLY
    RESTART.
END VERB.



VERB 'restore'
  DOES ONLY
    RESTORE.
END VERB.



VERB rub
  DOES ONLY
    "Nothing would be achieved by that."
END VERB.



VERB 'save'
  DOES ONLY
    SAVE.
END VERB.



VERB 'say'
      DOES ONLY
    "Nothing happens."
END VERB.



VERB say_to
  DOES ONLY
    SAY THE png.
      IF png IS NOT plurale
        THEN "doesn't look"
        ELSE "don't look"
      END IF.
      "interested."
END VERB.



VERB 'score'
  DOES ONLY
    SCORE.
    -- (or, if you wish to disable the score, use the following kind of
      -- line instead of the above:
    -- "There is no score in this game.")
END VERB.



VERB scratch
  DOES ONLY
    "Nothing would be achieved by that."
END VERB.



VERB 'script'
  DOES ONLY
    "You can turn transcripting on and off using the 'script on/off' command within the game.
    The transcript will be available in a file with a name starting with the game name.
    $pIn a GUI version you can also find this in the drop-down menu in the interpreter.
    $pIn a command line version you can start your game with the '-s' switch to get a transcript
    of the whole game."
END VERB.



VERB script_on
    DOES ONLY
        TRANSCRIPT ON.
        "Transcripting turned on."
END VERB.



VERB script_off
    DOES ONLY
        TRANSCRIPT OFF.
        "Transcripting turned off."
END VERB.



VERB search
  DOES ONLY
    "You find nothing of interest."
END VERB.



VERB sell
  DOES ONLY
    "There's nobody here who would be interested in buying" SAY THE merce. "."
END VERB.



VERB shake
  DOES ONLY
    IF ogg IN hero
      THEN "You shake" SAY THE ogg. "cautiously in your hands. Nothing happens."
      ELSE "There is no reason to start shaking" SAY THE ogg. "."
    END IF.
END VERB.



VERB shoot
  DOES ONLY
    "Resorting to violence is not the solution here."
END VERB.



VERB shoot_with
  DOES ONLY
    "Resorting to violence is not the solution here."
END VERB.



VERB shout
    DOES ONLY
        "Nothing results from your $ving."
END VERB.



VERB 'show'   
  DOES ONLY
    SAY THE png.
      
      IF png IS NOT plurale
        THEN "is"
        ELSE "are"
      END IF.

      "not especially interested."
END VERB.



VERB sing
    DOES ONLY
        "You $v a little tune."
END VERB.



VERB sip
  DOES ONLY 
    IF recipiente OF liq = recipiente_fittizio    
      -- here, if the liquid is in no container, e.g.
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



VERB sit
  DOES ONLY
    "You feel no urge to sit down at present."
    -- (or, if you wish to make it work, use the following instead of the above:
    -- IF hero IS sdraiato
    --  THEN "You sit up."
    --    MAKE hero NOT lying_down.
    --  ELSE "You sit down."
    -- END IF.
    -- MAKE hero sitting.
END VERB.



VERB sit_on
  DOES ONLY
    "You feel no urge to sit down at present."

    -- (or, to make it work, use the following instead of the above:)
    -- IF hero lying_down
    --  THEN "You get up and sit down on" SAY THE surface. "."
    --    MAKE hero NOT lying_down.
    --  ELSE "You sit down on" SAY THE surface. "."
    -- END IF.
    -- MAKE hero sitting.
END VERB.



VERB sleep
  DOES ONLY
    "There's no need to $v right now."
END VERB.



VERB smell0
    DOES ONLY
    "You smell nothing unusual."
END VERB.



VERB smell
  DOES ONLY
        "You smell nothing unusual."  
END VERB.



VERB squeeze
  DOES ONLY
        "Trying to squeeze" SAY THE ogg. "wouldn't accomplish anything."    
END VERB.



VERB stand
  DOES ONLY
    IF hero IS seduto OR hero IS sdraiato
      THEN "You get up."
        MAKE hero NOT seduto.
        MAKE hero NOT sdraiato.
      ELSE "You're standing up already."
    END IF.
END VERB.



VERB stand_on
  DOES ONLY
    "You feel no urge to stand on" SAY THE superficie. "."
    -- or, to make it work, use the following instead of the above:
    -- "You get on" SAY THE surface. "."
    -- (Make an attribute for the hero to check that he's on the surface.
    -- It is not possible to actually locate him on the surface (unless
    -- you implement a nested location.)  
    -- MAKE hero NOT sitting. MAKE hero NOT lying_down.
END VERB.



VERB swim
  DOES ONLY
    "There is no water suitable for swimming here."
END VERB.



VERB swim_in
  DOES ONLY
    IF liq IS NOT plurale
      THEN "That's not"
      ELSE "Those are not"
    END IF.
    "something you can swim in."
END VERB.



VERB switch
  DOES ONLY
    IF disp IS NOT plurale
      THEN "That's not"
      ELSE "Those are not"
    END IF.
    "not something you can switch."
END VERB.



-- switch_on => see the verb 'turn_on'



-- switch_off => see the verb 'turn_off'



VERB take
    DOES ONLY
      IF ogg IsA ACTOR
        THEN SAY THE ogg. "would probably object to that."
      -- actors are not prohibited from being taken in the checks; this is to
      -- allow for example a dog to be picked up, or a bird to be taken out of
      -- a cage, etc.
      

      ELSIF ogg IsA OBJECT
        THEN IF ogg DIRECTLY IN abbigliamento
            THEN LOCATE ogg IN hero.
              "You take off" SAY THE ogg. "and carry it in your hands."
            ELSE LOCATE ogg IN hero.
              "Taken."
          END IF.
      END IF.

        -- Objects held by NPCs cannot be taken by the hero by default.
        -- The hero must *ask for* the object to obtain it.
              
END VERB.



VERB take_from
  WHEN ogg
      DOES ONLY
        IF ogg IsA ACTOR
          THEN SAY THE ogg. "would probably object to that."
            -- actors are not prohibited from being taken in the checks; this is to
            -- allow for example a dog to be picked up, or a bird to be taken out of
            -- a cage, etc.
        ELSIF ogg IsA OBJECT
          THEN
            LOCATE ogg IN hero.
                "You take" SAY THE ogg. "from" SAY THE detentore. "."
        END IF.
  
          -- Objects held by NPCs cannot be taken by the hero by default.
          -- The hero must *ask for* the object to obtain it.
        
          
END VERB.



VERB talk
  DOES ONLY
    "To talk to somebody, you can ASK PERSON ABOUT THING
    or TELL PERSON ABOUT THING."
END VERB.



VERB talk_to
  DOES ONLY
    "To talk to somebody, you can ASK PERSON ABOUT THING or
    TELL PERSON ABOUT THING." 
END VERB.



VERB taste
  DOES ONLY
    "You taste nothing unexpected."
END VERB.



VERB tear
  DOES ONLY
    "Trying to $v" SAY THE ogg. "would be futile."
END VERB.



VERB tell
  WHEN png
    DOES ONLY
      SAY THE png.

      IF png IS NOT plurale
        THEN "doesn't"
        ELSE "don't"
      END IF.

      "look interested."
END VERB.



VERB think
  DOES ONLY
    "Nothing helpful comes to your mind."
END VERB.



VERB think_about
  DOES ONLY
    "Nothing helpful comes to your mind."
END VERB.



VERB throw
  DOES ONLY
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


VERB throw_at
  WHEN proiettile
    DOES ONLY
        -- implicit taking:
        IF proiettile NOT DIRECTLY IN hero
          THEN LOCATE proiettile IN hero.
          SAY implicit_taking_message OF mia_AT.
        END IF.
        -- end of implicit taking.
                  
        IF bersaglio IS inanimato
          THEN
            IF bersaglio NOT DIRECTLY AT hero   
              -- e.g. the bersaglio is inside a box
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
            -- as in some situations this might be desired, e.g.
            -- when attacking enemies.
          END IF.   

END VERB.



VERB throw_to
   WHEN proiettile
  DOES ONLY
    -- implicit taking:
    IF proiettile NOT DIRECTLY IN hero
      THEN LOCATE proiettile IN hero.
        SAY implicit_taking_message OF mia_AT.  
    END IF.
    -- end of implicit taking.
        
    "It wouldn't accomplish anything trying to throw"
    SAY the proiettile. "to" SAY THE ricevente. "."

END VERB.



VERB throw_in
   WHEN proiettile
  DOES ONLY
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



VERB tie
  DOES ONLY
    "You must state where you want to tie" SAY THE ogg. "."
END VERB.



VERB tie_to
  WHEN ogg
    DOES ONLY
        -- implicit taking:
        IF ogg NOT DIRECTLY IN hero
          THEN LOCATE ogg IN hero.
            SAY implicit_taking_message OF mia_AT.
        END IF. 
        -- end of implicit taking.
                
        "It's not possible to tie" SAY THE ogg. "to" SAY THE bersaglio. "." 

END VERB.



VERB touch
  DOES ONLY
        "You feel nothing unexpected."
END VERB.



VERB touch_with
    WHEN ogg
    DOES ONLY
            "You touch" SAY THE ogg. "with" SAY THE strum. ". Nothing special happens."
END VERB.



VERB turn
  DOES ONLY
    IF ogg DIRECTLY IN hero
      THEN "You turn" SAY THE ogg. "in your hands, noticing nothing special."
      ELSE "That wouldn't accomplish anything."
    END IF.
END VERB.



VERB turn_on  
  DOES ONLY
    IF disp IS NOT plurale
      THEN "That's not"
      ELSE "Those are not"
    END IF.
      
    "something you can $v on."
END VERB.



VERB turn_off
  DOES ONLY
    IF disp IS NOT plurale
      THEN "That's not"
      ELSE "Those are not"
    END IF.

    "something you can $v off."
END VERB.



VERB undress
  DOES ONLY
    "You don't feel like undressing is a good idea right now."
                                            
      -- To make it work, use the following lines instead:          
        --IF COUNT DIRECTLY IN abbigliamento, IsA CLOTHING > 0
      --THEN EMPTY abbigliamento IN hero.
        --"You remove all the items you were wearing."
          --ELSE "You're not wearing anything you can remove."
        -- END IF.
END VERB.



VERB unlock
  DOES ONLY
    IF chiave_abbinata OF ogg IN hero
      THEN MAKE ogg NOT bloccato.
        "(with" SAY THE chiave_abbinata OF ogg. "$$)$n"
        "You unlock" SAY THE ogg. "."
          ELSE "You don't have the chiave that unlocks" SAY THE ogg. "."
    END IF.
END VERB.



VERB unlock_with
   WHEN ogg
  DOES ONLY
    MAKE ogg NOT bloccato.
    "You unlock" SAY THE ogg. "with" SAY THE chiave. "."
END VERB.



VERB 'use'
  DOES ONLY
    "Please be more specific. How do you intend to use"   
    IF ogg IS NOT plurale
      THEN "it?"
      ELSE "them?"
    END IF.
END VERB.



VERB use_with
   WHEN ogg
  DOES ONLY
    "Please be more specific. How do you intend to use them together?"
END VERB.



VERB 'verbose'
  DOES ONLY
    VISITS 0.
    "Verbose mode is now on. Location descriptions will be
    always shown in full."
END VERB.



VERB 'wait'
  DOES ONLY
    "Time passes..."
END VERB.



VERB wear
  DOES ONLY
    IF ogg IS NOT plurale
      THEN "That's"
      ELSE "Those are"
    END IF.
    "not something you can wear."
END VERB.



VERB what_am_i
  DOES ONLY
    "Maybe examining yourself might help."
END VERB.



VERB what_is
  DOES ONLY
    "You'll have to find it out yourself."
END VERB.



VERB where_am_i
  DOES ONLY
    LOOK.
END VERB.



VERB where_is
  DOES ONLY
    "You'll have to find it out yourself."
END VERB.



VERB who_am_i
  DOES ONLY
    "Maybe examining yourself might help."
END VERB.



VERB who_is
  DOES ONLY
    "You'll have to find it out yourself."
END VERB.



VERB write
  DOES  ONLY
    "You don't have anything to write with."
END VERB.



VERB yes
  DOES ONLY
    "Really?"
END VERB.



END THE mia_AT.


-- end of file.