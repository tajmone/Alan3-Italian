-- "lib_definizioni.i" v0.2.33 (2018/07/22)
--------------------------------------------------------------------------------
-- Alan ITA Alpha Dev | Alan 3.0beta5 | StdLib 2.1
--------------------------------------------------------------------------------
-- Adapted to Italian from:
-- ALAN Standard Library v2.1
-- "Definitions" (original file name: 'lib_definitions.i')
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
--||
--|| Questo modulo della libreria definisce:
--||
--||  - Attributi:
--||    - Attributi generali.
--||    - Articoli e preposizioni articolate.
--||  - Sinonimi comuni.
--||  - La classe DEFINITION_BLOCK ed i suoi attributi.
--||  - Attributi per la sezione START.
--||  - I messaggi riguardanti l'eroe (hero).
--||  - I messaggi per il luoghi bui.
--||  - Le risposte per le azioni bloccate.
--||  - I messaggi per i parametri illegali nelle sintassi dei verbi.
--||  - I messaggi per i vari CHECK dei verbi. 
--||  - I messaggi per le azioni implicite nei verbi.
--||  - Attributi ed eventi delle azioni bloccate.
--||  - L'istanza del banner (per la sezione START).
--||
--++===========================================================================+

--@testo originale inglese: 

-- Included in this file:
  -- general attributes
  -- some article declarations
  -- common synonyms
  -- the definition_block class
  -- attributes for the start section
  -- messages for the hero
  -- messages for dark locations
  -- response for restricted actions
  -- illegal parameter messages, used in SYNTAX definitions of verbs
  -- verb check messages
  -- implicit taking message
  -- attributes and events for restricted actions
  -- the banner instance (for the start section)



--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- � 1 - Attributi
--------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================


--==============================================================================
--------------------------------------------------------------------------------
-- � 1.1 - Attributi Generali
--------------------------------------------------------------------------------
--==============================================================================


-- =================
-- Entity Attributes
-- =================
-- (We add the 'plural' attribute to the 'entity' class, because the plural
-- applies not only to things but also to for example parameters in syntax statements; ignore.)

ADD TO EVERY ENTITY

  IS NOT plurale.
  IS NOT femminile.

END ADD TO.


-- ================
-- Thing Attributes
-- ================
-- We define general attributes for every thing ( = object or actor):

ADD TO EVERY THING

  IS esaminabile.
     -- La libreria definisce che un SUONO non � esaminabile.
     inanimato.
     -- Gli attori sono NOT inanimato.
     spostabile.
     -- to allow pushing, pulling, lifting, etc.
     aperto.
     -- = not closed.
     raggiungibile.
     -- See also 'distant' below
     prendibile.
     -- you'll have to separately define which objects are NOT takeable.
     -- By default, the floor, walls, ceiling, ground and sky objects
     -- are not takeable. The same goes for all doors, windows, sounds, liquids
     -- that are not in containers, and actors.

  HAS consentiti { oggetto_fittizio }.
    -- container objects only take what is allowed for them to take;
    -- this applies to verbs empty_in, pour_in, put_in and throw_in.
    -- "null_object" is a default dummy that can be ignored.

  HAS xDesc "".
     -- Il testo da mostrare quando l'oggetto viene esaminato. Un'alternativa
     -- semplice al dover implementare 'VERB esamina DOES ONLY..." sull'oggetto
     -- affinch� produca una descrizione personalizzata.

  HAS chiave_abbinata  chiave_fittizia.
      -- All lockable doors need a matching chiave to lock/unlock them.
      -- "null_key" is a default dummy that can be ignored. This attribute
      -- is here added to every thing instead of just doors, to enable
      -- matching keys to be programmed for other locked objects, too, like for
      -- example treasure chests etc.

  HAS testo "".

  NOT rotto.
  NOT distante.
      -- Utilizzo: � possibile parlare ad un attore 'NOT raggiungibile' ma non
      -- ad uno 'distante'. Puoi anche lanciare cose IN, A o CONTRO un bersaglio
      -- non raggiungibile, ma non ad uno distante.
      -- La risposta predefinita per oggetti/attori non raggiungibili �:
      --    "La [cosa] � fuori dalla tua portata."
      -- La risposta predefinita per oggetti/attori distanti �:
      --    "La [cosa] � troppo lontana."

  NOT potabile.
  NOT commestibile.
    -- can (not) be used as a firearm
  NOT bloccabile.
  NOT bloccato.
  NOT acceso.
  NOT apribile.
  NOT leggibile.
  NOT scenario.
   -- scenery has special responses for 'examine' and 'take', behaves like a normal object otherwise.
  NOT indossabile.
  NOT scrivibile.

  CAN
    NOT parlare.
    NOT sparare.


  -- ==================================
  -- @ARTICOLI E PREPOSIZIONI ARTICOLATE
  -- ==================================
  -- Ogni THING ha un attributo che ne specifica l'articolo determinativo.
  --
  -- Questo attributo viene utilizzato dalla libreria per inizializzare le
  -- istanze di oggetti ed attori: a seconda dell'articolo indicato, verranno
  -- impostati i valori appropriati di genere e numero, DEFINITE/INDEFINITE
  -- ARTICLE e preposizioni articolate per ciascuna istanza.
  --
  -- L'autore deve semplicemente specficare l'articolo determinativo del
  -- sostantivo, e la libreria far� tutto il resto. L'unica eccezione �
  -- l'articolo "l'", che pu� rifererirsi sia a un sostantivo maschile che
  -- femminile; per questo articolo l'autore dovr� specificare `IS femminile`
  -- nel caso di sostantivi femminili, altrimenti la libreria presumer� che si
  -- tratti di un sostantivo maschile.

  HAS articolo "il".
    
  -- -----------------------
  -- Preposizioni Articolate
  -- -----------------------
  -- Questi attributi consentono di usare le preposizioni articolate corrette per
  -- ciascun oggetto nei vari messaggi della libreria e dell'avventura.
  -- I valori di default sono quelli del maschile singolare con articolo "il".
  -- Non � necessario rappresentare tutte le preposizioni articolate, solo quelle
  -- che si uniscono all'articolo.

  HAS prep_DI "del".
  HAS prep_A  "al".
  HAS prep_DA "dal".
  HAS prep_IN "nel".
  HAS prep_SU "sul".

  -- -----------------------------------
  -- Inizializzazione di Genere e Numero
  -- -----------------------------------
  -- In base all'articolo specificato possiamo dedurre (e settare) genere e
  -- numero dell'istanza.

  INITIALIZE
  DEPENDING ON articolo of THIS
    = "lo" THEN
      MAKE THIS NOT femminile.
      MAKE THIS NOT plurale.
      SET prep_DI OF THIS TO "dello".
      SET prep_A  OF THIS TO  "allo".
      SET prep_DA OF THIS TO "dallo".
      SET prep_IN OF THIS TO "nello".
      SET prep_SU OF THIS TO "sullo".
    
    = "la" THEN
      MAKE THIS femminile.
      MAKE THIS NOT plurale.
      SET prep_DI OF THIS TO "della".
      SET prep_A  OF THIS TO  "alla".
      SET prep_DA OF THIS TO "dalla".
      SET prep_IN OF THIS TO "nella".
      SET prep_SU OF THIS TO "sulla".

    = "l'" THEN              --| In questo caso non alteriamo il genere poich�
      MAKE THIS NOT plurale. --| questa forma pu� essere sia masch. che femm.
                             --| Sta all'autore specificare il genere nell'istanza.
      SET prep_DI OF THIS TO "dell'$$".
      SET prep_A  OF THIS TO  "all'$$".
      SET prep_DA OF THIS TO "dall'$$".
      SET prep_IN OF THIS TO "nell'$$".
      SET prep_SU OF THIS TO "sull'$$".

    = "i" THEN
      MAKE THIS NOT femminile.
      MAKE THIS plurale.
      SET prep_DI OF THIS TO "dei".
      SET prep_A  OF THIS TO  "ai".
      SET prep_DA OF THIS TO "dai".
      SET prep_IN OF THIS TO "nei".
      SET prep_SU OF THIS TO "sui".

    = "gli" THEN
      MAKE THIS NOT femminile.
      MAKE THIS plurale.
      SET prep_DI OF THIS TO "degli".
      SET prep_A  OF THIS TO  "agli".
      SET prep_DA OF THIS TO "dagli".
      SET prep_IN OF THIS TO "negli".
      SET prep_SU OF THIS TO "sugli".

    = "le" THEN
      MAKE THIS femminile.
      MAKE THIS plurale.
      SET prep_DI OF THIS TO "della".
      SET prep_A  OF THIS TO  "alla".
      SET prep_DA OF THIS TO "dalla".
      SET prep_IN OF THIS TO "nella".
      SET prep_SU OF THIS TO "sulla".

    ELSE -- = "il" (o dovrebbe esserlo)
      MAKE THIS NOT femminile.
      MAKE THIS NOT plurale.
      SET prep_DI OF THIS TO "del".
      SET prep_A  OF THIS TO  "al".
      SET prep_DA OF THIS TO "dal".
      SET prep_IN OF THIS TO "nel".
      SET prep_SU OF THIS TO "sul".

  END DEPEND.

  -- -------------------------
  -- @ARTICOLI INDETERMINATIVI
  -- -------------------------

  -- We still define that plural nouns are preceded by "some" (and not by "a" or "an"):

  INDEFINITE ARTICLE

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

      ELSE -- se non � definito
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

  -- -----------------------
  -- @ARTICOLI DETERMINATIVI
  -- -----------------------
  -- Questa parte � stata aggiunta appositamente per l'italiano...

  DEFINITE ARTICLE

    DEPENDING ON articolo of THIS
      = "il"  THEN   "il"               --> ms indet.
      = "lo"  THEN   "lo"               --> ms indet.
      = "la"  THEN   "la"               --> fs indet.

      = "l'"  THEN   "l'$$"             --> *s det.  (masc & femm)

      = "i"   THEN   "i"                --> mp det.
      = "gli" THEN   "gli"              --> mp det.
      = "le"  THEN   "le"               --> fp det.
      
      ELSE -- se non � definito
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

END ADD TO.

-- If you need "an", you should declare it separately at the instance, for example:

-- THE owl ISA ACTOR
--    AT woods
--    INDEFINITE ARTICLE "an"
-- END THE.

--------------------------------------------------------------------------------

-- Some null defaults defined that have been mentioned above:


THE oggetto_fittizio ISA OBJECT
END THE.


THE chiave_fittizia ISA OBJECT
END THE.

--------------------------------------------------------------------------------

-- Some weight attributes for things:


ADD TO EVERY THING
  HAS peso 0.
END ADD TO THING.


ADD TO EVERY ACTOR
  HAS peso 50.
END ADD TO ACTOR.


ADD TO EVERY OBJECT
  HAS peso 5.
END ADD TO OBJECT.


-- These attributes are mostly used to check if something is movable.

--------------------------------------------------------------------------------

-- An attribute for keeping track of nested locations; used internally in the library (ignore).

ADD TO EVERY LOCATION
  HAS annidati { nowhere }.
END ADD TO.

--------------------------------------------------------------------------------



--==============================================================================
--------------------------------------------------------------------------------
-- � 1.x - Sinonimi Comuni
--------------------------------------------------------------------------------
--==============================================================================

-- Next, we declare synonyms for some common words so that it will be possible
-- for the player to type commands such as both "put ball in box" and
-- "put ball into box", etc:


SYNONYMS

into, inside = 'in'.
onto = on.
thru = through.
using = 'with'.


-- Here are some synonyms for the player character:

me, myself, yourself, self = hero.


--------------------------------------------------------------------------------



--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- � x - The my_game DEFINITION_BLOCK
--------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================


-- Attributes for the my_game definition block
-- ===========================================

-- Here, we create a class, "definition_block", to group various definitions under.
-- In the game source file, the author should declare an instance 'my_game' which belongs
-- to this class.



EVERY DEFINITION_BLOCK ISA LOCATION


  -- attributes for the start section (banner):
  -- ==========================================

  HAS        titolo  "My New Game".
  HAS   sottotitolo  "".
  HAS        autore  "An ALAN Author".
  HAS          anno   2018.
  HAS      versione  "1".

  -- These will be shown at the start of the game if you add
  --   DESCRIBE banner.
  -- after START AT [location].



  -- messages for the hero:
  -- ======================

  -- The hero is not defined as an instance in the library; the game author
  -- has all the freedom to define the hero as they see fit. However,
  -- there are some messages for the hero defined in the library. These can be
  -- easily overridden. Two of these messages are right here, the rest are
  -- for example in verb checks.

  HAS hero_worn_header "You are wearing".
  HAS hero_worn_else   "You are not wearing anything.".


  -- description messages for dark locations:
  -- ========================================

  HAS dark_loc_desc  "� buio e non riesci a vedere nulla".
    --#i7: "� buio e non riesci a vedere nulla".
    --#i6: "� completamente buio, e non riesci a vedere niente.".
    -- "It is pitch black. You can't see anything at all.".
    -- This message is shown when the player tries to LOOK or do actions requiring light
    -- in a dark location.

  HAS light_goes_off  "It is now pitch black.".
    -- This message is shown when a light goes off and the location becomes dark.

  -- ===========================================================================
  
  -- MESSAGGI DEI VERBI (IN ITALIANO)
  
  -- ===========================================================================
  -- Siccome i messaggi in italiano richiedono l'uso della forma infinita del
  -- verbo, molti di questi messaggi sono troncati e spetter� al codice che si
  -- occupa dei controlli sul verbo di far seguire al messaggio l'infinito del
  -- verbo in questione.
   -----------------------------------------------------------------------------
  -- @NOTA: Alcune stringhe di messaggi sono identiche (anche nell'originale)
  --        tranne per il nome dell'attributo. Questo perch� l'autore originale
  --        ha voluto preservare la coerenza nei nomi degli attributi rispetto
  --        alla funzione che svolgono. Quando tutti i messaggi saranno tradotti
  --        in italiano varebbe la pena valutare se eliminare i messaggi duplicati,
  --        a costo di rivedere la metodologia dei nomi di attributi.
  ------------------------------------------------------------------------------

  -- ===============
  -- AZIONI BLOCCATE
  -- ===============
  
  HAS azione_bloccata  "Non puoi farlo.". -- "You can't do that."
    --| Questo � il messaggio mostrato quando il giocatore tenta di usare un
    --| verbo che � stato disabilitato tramite "CAN NOT [verb]" (vedi sotto).

  -- response for restricted actions:
  -- ================================
  -- HAS restricted_response "You can't do that.".
      -- This message is shown whenever the player used a verb that has been restricted
      -- by the "CAN NOT [verb]" attributes further down this file.

  HAS restricted_level 0.   -- 0 = no verbs are restricted



  -- =============================
  -- PARAMETRI INADATTI (SEMPLICI)
  -- ============================= 
  -- Messaggi per quando uno dei parametri � inadatto al verbo.
  -- Questi messaggi vengono utilizzati sia nei blocchi condizionali ELSE della
  -- definizione SYNTAX del verbo che nel blocco di CHECK del verbo stesso.
  -- A differenza della libreria originale inglese, qui non distinguiamo tra
  -- messaggi per SYNTAX e CHECK, ma ci concentriamo sul parametro che impedisce
  -- lo svolgimento dell'azione (qui riferiti come obj1 e obj2).
 
  --@NOTA: | S3RioUs JokER consiglia di semplificare con la frase:
  --       |    "Non � qualcosa che si possa <verbo inf>."
  --       | ...sia per il singolare che per il plurale, omettendo di menzionare
  --       | l'oggetto.  Tuttavia, menzionare l'oggetto pu� servire al  giocatore
  --       | ai fini della disambugazione nel caso di verbi che consentono l'uso
  --       | di oggetti multipli o di "TUTTO".
 
  HAS ogg1_inadatto_sg  "$+1 non � qualcosa che puoi".                          --> (verbi vari)
  HAS ogg1_inadatto_pl  "$+1 non sono qualcosa che puoi".

  -- =====================================
  -- PARAMETRI INADATTI (CON PREPOSIZIONI)
  -- =====================================
  -- Varianti dei messaggi precedenti, quando si tratta di parametri che richiedono
  -- preposizioni.
  
  -- ------------------
  -- PREPOSIZIONE "CON"
  -- ------------------
  HAS parametro2_illegale_CON_sg  "$+2 non � qualcosa con cui poter".           --> brucia_con
  HAS parametro2_illegale_CON_pl  "$+2 non sono qualcosa con cui poter".

  -- ==================
  -- PARAMETRI MANCANTI
  -- ==================
  -- Messaggi per verbi che richiedono ulteriori parametri. Di solito li si
  -- trova nella variante base dei verbi che richiedono un ulteriore parametro
  -- per portare a termine l'azione, dove la variante base del verbo serve solo
  -- a intercettare il comando incompleto per informare il giocatore sulla
  -- sintassi corretta del verbo.

  HAS specificare_CON_cosa  "Devi specificare con cosa vorresti".
  

  -- =======================
  -- PARAMETRI FUORI PORTATA
  -- =======================
  -- Messaggi che riferiscono l'impossibilit� di portare a termine l'azione a
  -- causa di uno (o pi�) parametri fuori dalla portata dell'eroe.
  -- (attributi: "NOT raggiungibile" e "distante").
  
  HAS ogg1_non_raggiungibile_sg  "$+1 � fuori dalla tua portata.".       -- (numerous)
  HAS ogg1_non_raggiungibile_pl  "$+1 sono fuori dalla tua portata.".
  HAS ogg2_non_raggiungibile_sg  "$+2 � fuori dalla tua portata.".        -- empty_in, fill_with, pour_in, put_in, take_from, tie_to
  HAS ogg2_non_raggiungibile_pl  "$+2 sono fuori dalla tua portata.".

  -- @TODO: MESSAGGI ANCORA DA TRADURRE                                         TRANSLATE!
  HAS check_obj_reachable_ask "$+1 can't reach $+2.".         -- ask_for
  HAS check_obj_not_distant_sg "$+1 is too far away.".          -- (numerous)
  HAS check_obj_not_distant_pl "$+1 are too far away.".
  HAS check_obj2_not_distant_sg "$+2 is too far away.".         -- empty_in, fill_with, pour_in, put_in, show, take_from,                                  -- + throw_at, throw_in, throw_to
  HAS check_obj2_not_distant_pl "$+2 are too far away.".


  -- c) Check della Locazione
  --    ---------------------
  --@TODO: migliora nome attributo e messaggio
  HAS check_locazione_illuminata  "� troppo buio.".                             --> (svariati verbi)
  -- HAS check_current_loc_lit "It is too dark to see.".           -- (numerous)


  -- ============================================================================
  
  -- MESSAGGI DEI VERBI (ORIGINALI INGLESE)
  
  -- ============================================================================
  -- @NOTA: Quando tutti i messaggi saranno stati tradotti/implmentati in italiano
  --        gli originali inglesi qui di seguito verranno cancellati. Fino ad
  --        allora bisogna tenerli poich� sono richiesti dai verbi non ancora
  --        tradotti. Per� mano mano che mi concentro su un blocco di messaggi
  --        simili li sposto nella sezione italiana, cos� posso seguire meglio
  --        il lavoro di traduzione.
  ------------------------------------------------------------------------------


  -- all illegal parameter messages, typically found in the ELSE parts of SYNTAX structures and
  -- the first two below being by far the most common.
  -- ==========================================================================================


  -- the general message for when a parameter is not suitable with the verb:
  --------------------------------------------------------------------------
  --# siccome in italiano serve l'infinito qui, questi messaggi non serviranno
  --  ma andranno suddivisi in diverse varianti, a seconda del verbo cui si
  --  riferisco; salvo eccezzioni che possano essere generalizzate.
  HAS illegal_parameter_sg "That's not something you can $v.".        -- (numerous)
  HAS illegal_parameter_pl "Those are not something you can $v.".


  -- variations of the above message when a preposition is required after the verb:
  ---------------------------------------------------------------------------------

  HAS illegal_parameter_about_sg "That's not something you can $v about.".    -- ask_about, tell_about, think_about
  HAS illegal_parameter_about_pl "Those are not something you can $v about.".
  HAS illegal_parameter_at "You can't $v anything at $+2.".         -- fire_at, throw_at
  HAS illegal_parameter_for_sg "That's not something you can $v for.".      -- ask_for
  HAS illegal_parameter_for_pl "Those are not something you can $v for.".
-- @TAKE_FROM (MESSAGE)
  HAS illegal_parameter2_from_sg "That's not something you can take things from.".  -- take_from
-- @TAKE_FROM (MESSAGE)
  HAS illegal_parameter2_from_pl "Those are not something you can take things from.".
  HAS illegal_parameter_in_sg "That's not something you can $v in.".      -- dive_in, jump_in, lie_in, swim_in
  HAS illegal_parameter_in_pl "Those are not something you can $v in.".
  HAS illegal_parameter_on_sg "That's not something you can $v on.".      -- climb_on, jump_on, knock, lie_on, sit_on,
                                  -- stand_on, switch_on, turn_on
  HAS illegal_parameter_on_pl "Those are not something you can $v on.".
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

  HAS illegal_parameter_go "You can't go there.".               -- go_to

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

  HAS illegal_parameter_there "It's not possible to look there.".         -- look_behind, look_in, look_under

  HAS illegal_parameter2_there "It's not possible to $v anything there.".       -- empty_in, empty_on, pour_in, pour_on, put_in,
                                       -- + put_on, put_against, put_behind, put_near,
                                   -- + put_under, throw_in, throw_to, tie_to, write

  HAS illegal_parameter_what_sg "That's not something I know about.".       -- what_is, where_is
  HAS illegal_parameter_what_pl "Those are not something I know about.".      -- what_is, where_is
  HAS illegal_parameter_who_sg "That's not somebody I know about.".       -- who_is
  HAS illegal_parameter_who_pl "Those are not somebody I know about.".        -- who_is


  -- verb check messages, found before DOES sections of verbs and used mainly in 'lib_verbi.i':
  -- ==========================================================================================


  -- a) attribute checks
  ----------------------


  -- the general check message for when an instance cannot be used with the verb :
  --------------------------------------------------------------------------------
  --# siccome in italiano serve l'infinito qui, questo messaggio � troncato e
  --  spetter� al codice che si occupa dei controlli sul verbo di farlo seguire
  --  dall'infinito del verbo in questione.

  HAS check_obj_suitable_sg "That's not something you can $v.".       -- (numerous)
  HAS check_obj_suitable_pl "Those are not something you can $v.".

  


  -- variations of the above message, needed for example when a preposition is required after the verb:
  -----------------------------------------------------------------------------------------------------

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



  -- checks for the hero sitting or lying_down:
  ---------------------------------------------

  HAS check_hero_not_sitting1 "It is difficult to $v while sitting down.".      -- (with many intransitive verbs)
  HAS check_hero_not_sitting2 "It is difficult to $v anything while sitting down.". -- (with many transitive verbs)
  HAS check_hero_not_sitting3 "It is difficult to $v anywhere while sitting down.". -- (with many verbs of motion)
  HAS check_hero_not_sitting4 "You're sitting down already.".         -- sit, sit_on
  HAS check_hero_not_lying_down1 "It is difficult to $v while lying down.".     -- (with many intranstive verbs)
  HAS check_hero_not_lying_down2 "It is difficult to $v anything while lying down.".  -- (with many transitive verbs)
  HAS check_hero_not_lying_down3 "It is difficult to $v anywhere while lying down.".  -- (with many verbs of motion)
  HAS check_hero_not_lying_down4 "You're lying down already.".          -- lie_down, lie_in


  -- other attribute checks:
  --------------------------

  HAS check_act_can_talk_sg "That's not something you can talk to.".        -- ask, ask_for, say_to, tell
  HAS check_act_can_talk_pl "Those are not something you can talk to.".

  HAS check_obj_allowed_in_sg "$+1 doesn't belong in $+2.".             -- empty_in, pour_in, put_in, throw_in
  HAS check_obj_allowed_in_pl "$+1 don't belong in $+2.".

  HAS check_obj_broken_sg "That doesn't need fixing.".              -- fix
  HAS check_obj_broken_pl "Those don't need fixing.".

  HAS check_obj_inanimate1 "$+1 wouldn't probably appreciate that.".        -- push, push_with, scratch, search
  HAS check_obj_inanimate2 "You are not sure whether $+1 would appreciate that.".   -- rub, touch, touch_with

  HAS check_obj_movable "It's not possible to $v $+1.". -- lift, pull, push, push_with, shake, take, take_from

  --@ SCENERY CHECKS -> CAN'T MESSAGES...
  --#i7: "[The noun] non si [puoi] trasportare."
  --#i6: "Non @`e importante ai fini del gioco."
  HAS check_obj_not_scenery_sg "$+1 non � importante ai fini del gioco.". -- examine, take, take_from
  HAS check_obj_not_scenery_pl "$+1 non sono importanti ai fini del gioco.".

  HAS check_obj2_not_scenery_sg "$+2 is not important.".              -- ask_for, take_from
  HAS check_obj2_not_scenery_pl "$+2 are not important.".

  HAS check_obj_suitable_there "It's not possible to $v there.".          -- look_behind, look_in, look_under
  HAS check_obj2_suitable_there "It's not possible to $v anything there.".      -- throw_in, tie_to

  HAS check_obj_takeable "You don't have $+1.".             -- (numerous; this check is in verbs using implicit taking)
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

  HAS check_obj_not_at_hero_sg "$+1 is right here.".                -- find, follow, go_to, where_is
  HAS check_obj_not_at_hero_pl "$+1 are right here.".
  HAS check_obj_in_hero "You don't have the $+1.".              -- drop, fire, fire_at, put, show
  HAS check_obj2_in_hero "You don't have the $+2.".             -- (numerous)
  HAS check_obj_not_in_hero1 "It doesn't make sense to $v something you're holding.".   -- attack, attack_with, kick, lift, shoot, shoot_with
-- @TAKE (MESSAGE)
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


  -- c) checking location states
  ------------------------------
  -- HAS check_current_loc_lit "It is too dark to see.".           -- (numerous)
  -- TRADOTTO --> check_locazione_illuminata


  -- d) checks guarding against actions directed at the hero him-/herself
  -----------------------------------------------------------------------

  HAS check_obj_not_hero1 "It doesn't make sense to $v yourself.".      -- ask, ask_for, attack, attack_with, catch, follow
                                   -- kick, listen, pull, push, push_with, take,
                                   -- take_from,tell
  HAS check_obj_not_hero2 "There is no need to be that desperate.".       -- fire_at, kill, kill_with, shoot, shoot_with
  HAS check_obj_not_hero3 "That wouldn't accomplish anything.".       -- scratch, touch
  HAS check_obj_not_hero4 "You're right here.".             -- find, go_to
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
  HAS check_obj_not_broken "Nothing happens.".                    -- device, lightsource: light, switch, turn_on


  -- messages for implicit taking:
  -- =============================

  HAS implicit_taking_message "(taking $+1 first)$n".

  -- The following verbs are preceded by implicit taking:
  --    bite, drink, eat, empty, empty_in, empty_on, give, pour, pour_in, pour_on,
  --    put_in, put_on, throw, throw_at, throw_in, throw_to, tie_to.
  -- In ditransitive verbs, only the first parameter (the direct object) is taken implicitly.
  -- For example, >push door with pole  won't work if the hero is not carrying the pole.




   -- ==========================================================================================

  -- These three attributes, as well as the 'schedule' statement following them,
  -- are needed for the 'notify' command ('lib_verbi.i'); ignore.

  HAS oldscore 0.
      -- Records previous score so 'checkscore' event
      -- can compare with the current score
  IS notify_turned_on.
      -- Set by 'notify' verb, records whether
      -- player wants to see score messages or not.
  IS NOT seen_notify.
      -- Records whether player has seen the notify verb
      -- instructions yet.

  INITIALIZE
    SCHEDULE check_score AFTER 0.
    SCHEDULE check_restriction AFTER 0.

   -- ==========================================================================================


-- The my_game instance defined as a meta-location (ignore):

        FOR EACH l ISA LOCATION
          DO
            EXCLUDE nowhere FROM annidati OF l.
            IF COUNT ISA LOCATION, AT l > 0
              THEN
                FOR EACH x ISA LOCATION, AT l
                  DO
                    INCLUDE x IN annidati OF l.
                END FOR.
            END IF.
        END FOR.

        FOR EACH l ISA LOCATION
          DO
              IF l <> my_game AND l <> nowhere
              THEN LOCATE l AT my_game.
            END IF.
        END FOR.

        FOR EACH r1 ISA stanza
          DO
            LOCATE r1 AT interno.
        END FOR.

        FOR EACH s1 ISA SITE
          DO
            LOCATE s1 AT esterno.
        END FOR.

        FOR EACH l ISA LOCATION
          DO
            IF annidati OF l <> {} AND l <> my_game AND l <> nowhere
            THEN
                    FOR EACH x ISA LOCATION, IN annidati OF l
                DO
                  IF l <> my_game AND x <> my_game
                        THEN LOCATE x AT l.
                  END IF.
                  END FOR.
            END IF.
        END FOR.



-- We ensure that the 'visited' and 'described' attributes of the starting location
-- are correct at the start of the game:

    SET visited   OF location OF hero TO 1.
    SET described OF location OF hero TO 1.



--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- � x - Restricted Actions
--------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================



--------------------------------------------------------------------------------

-- Finally, for restricted actions, we implement the following attributes, corresponding to the library verbs.
-- If you change any of these to CAN NOT..., for examle "CAN NOT attack.", that verb, together with its
-- synonyms, is disabled in-game. The restricted_response of the my_game instance (by default "You can't
-- do that.") will be shown instead. The restriced_response is defined further up this file.

  CAN abbandonare_partita.  --> 'quit'
  CAN andare_a.             --> go_to
  CAN aprire.               --> open
  CAN aprire_con.           --> open_with
  CAN aspettare.            --> wait         (+ z)
  CAN assaggiare.           --> taste        (+ lick)
  CAN attraversare.         --> climb_through
  CAN baciare.              --> kiss         (+ hug, embrace)
  CAN bere.                 --> drink
  CAN bruciare.             --> burn
  CAN bruciare_con.         --> burn_with
  CAN caricare_partita.     --> 'restore'
  CAN chiudere.             --> close        (+ shut)
  CAN chiudere_con.         --> close_with
  CAN comprare.             --> buy          (+ purchase)
  CAN consultare.           --> consult
  CAN danzare.              --> dance
  CAN dare.                 --> give 
  CAN dormire.              --> sleep        (+ rest)
  CAN entrare.              --> enter
  CAN esaminare.            --> examine      (+ check, inspect, observe, x)
  CAN gridare.              --> shout        (+ scream, yell)
  CAN indossare.            --> wear
  CAN inventariare.         --> i            (+ inv, inventory)
  CAN lasciare.             --> drop         (+ discard, dump, reject)
  CAN leggere.              --> read
  CAN liberare.             --> free         (+ release)
  CAN mangiare.             --> eat
  CAN modalit�_breve.       --> brief
  CAN modalit�_lunga.       --> verbose
  CAN mostrare.             --> 'show'       (+ reveal)
  CAN nuotare.              --> swim
  CAN nuotare_in.           --> swim_in
  CAN pregare.              --> pray
  CAN prendere.             --> take.        (+ carry, get, grab, hold, obtain)
  CAN prendere_da.          --> take_from.   (+ remove from)
  CAN pulire.               --> clean        (+ polish, wipe)
  CAN ricominciare_partita. --> 'restart'
  CAN rifare.               --> 'again'
  CAN rompere.              --> break        (+ destroy)
  CAN rompere_con.          --> break_with
  CAN salvare_partita.      --> save
  CAN saltare.              --> jump
  CAN saltare_in.           --> jump_in
  CAN saltare_su.           --> jump_on
  CAN scavare.              --> dig
  CAN scrivere.             --> write
  CAN seguire.              --> follow
  CAN spingere.             --> push
  CAN spingere_con.         --> push_with
  CAN spogliarsi.           --> undress
  CAN tagliare.             --> cut
  CAN tagliare_con.         --> cut_with
  CAN tirare.               --> pull
  CAN trovare.              --> find         (+ locate)
  CAN uccidere.             --> kill         (+ murder)
  CAN uccidere_con.         --> kill_with
  CAN vendere.              --> sell
  CAN versare.              --> pour
  CAN versare_in.           --> pour_in
  CAN versare_su.           --> pour_on

--# NOT YET TRANSLATED:
  CAN about.
  CAN answer.      -- (+ reply)
  CAN ask.         -- (+ enquire, inquire, interrogate)
  CAN ask_for.
  CAN attack.      -- (+ beat, fight, hit, punch)
  CAN attack_with.
  CAN bite.        -- (+ chew)
  CAN catch.
  CAN climb.
  CAN climb_on.
  CAN credits.     -- (+ acknowledgments, author, copyright)
  CAN dive.
  CAN dive_in.
  CAN drive.
  CAN 'empty'.
  CAN empty_in.
  CAN empty_on.
  CAN 'exit'.
  CAN extinguish.  -- (+ put out, quench)
  CAN fill.
  CAN fill_with.
  CAN fire.
  CAN fire_at.
  CAN fix.         -- (+ mend, repair)
  CAN get_up.
  CAN get_off.
  CAN hint.        -- (+ hints)
  CAN kick.
  CAN knock.
  CAN lie_down.
  CAN lie_in.
  CAN lie_on.
  CAN lift.
  CAN light.       -- (+ lit)
  CAN listen0.
  CAN listen.
  CAN lock.
  CAN lock_with.
  CAN 'look'.      -- (+ gaze, peek)
  CAN look_at.
  CAN look_behind.
  CAN look_in.
  CAN look_out_of.
  CAN look_through.
  CAN look_under.
  CAN look_up.
  CAN 'no'.
  CAN 'notify'.
  CAN notify_on.
  CAN notify_off.
  CAN 'play'.
  CAN play_with.
  CAN pry.
  CAN pry_with.
  CAN put.         -- (+ lay, place)
  CAN put_against.
  CAN put_behind.
  CAN put_down.
  CAN put_in.      -- (+ insert)
  CAN put_near.
  CAN put_on.
  CAN put_under.
  CAN remove.
  CAN rub.
  CAN 'say'.
  CAN say_to.
  CAN 'score'.
  CAN scratch.
  CAN 'script'.
  CAN script_on.
  CAN script_off.
  CAN search.
  CAN shake.
  CAN shoot.       -- (at)
  CAN shoot_with.
  CAN sing.
  CAN sip.
  CAN sit.         -- (down)
  CAN sit_on.
  CAN smell0.
  CAN smell.
  CAN squeeze.
  CAN stand.       -- (up)
  CAN stand_on.
  CAN switch.
  CAN switch_on.
  CAN switch_off.
  CAN talk.
  CAN talk_to.     -- (+ speak)
  CAN tear.        -- (+ rip)
  CAN tell.        -- (+ enlighten, inform)
  CAN think.
  CAN think_about.
  CAN throw.
  CAN throw_at.
  CAN throw_in.
  CAN throw_to.
  CAN tie.
  CAN tie_to.
  CAN touch.       -- (+ feel)
  CAN touch_with.
  CAN turn.        -- (+ rotate)
  CAN turn_on.
  CAN turn_off.
  CAN unlock.
  CAN unlock_with.
  CAN 'use'.
  CAN use_with.
  CAN what_am_i.
  CAN what_is.
  CAN where_am_i.
  CAN where_is.
  CAN who_am_i.
  CAN who_is.
  CAN yes.


END EVERY DEFINITION_BLOCK.

--==============================================================================
-- The check_restriction Event
--==============================================================================

-- This event runs every turn from the start of the game:

EVENT check_restriction

IF restricted_level OF my_game = 0    -- all verbs work normally
  THEN

  MAKE my_game abbandonare_partita.  --> 'quit'
  MAKE my_game andare_a.             --> go_to
  MAKE my_game aprire.               --> open
  MAKE my_game aprire_con.           --> open_with
  MAKE my_game aspettare.            --> wait         (+ z)
  MAKE my_game assaggiare.           --> taste        (+ lick)
  MAKE my_game attraversare.         --> climb_through
  MAKE my_game baciare.              --> kiss         (+ hug, embrace)
  MAKE my_game bere.                 --> drink
  MAKE my_game caricare_partita.     --> 'restore'
  MAKE my_game chiudere.             --> close        (+ shut)
  MAKE my_game chiudere_con.         --> close_with
  MAKE my_game comprare.             --> buy          (+ purchase)
  MAKE my_game consultare.           --> consult
  MAKE my_game danzare.              --> dance
  MAKE my_game dare.                 --> give
  MAKE my_game dormire.              --> sleep        (+ rest)
  MAKE my_game entrare.              --> enter
  MAKE my_game esaminare.            --> examine      (+ check, inspect, observe, x)
  MAKE my_game gridare.              --> shout        (+ scream, yell)
  MAKE my_game indossare.            --> wear
  MAKE my_game inventariare.         --> i            (+ inv, inventory)
  MAKE my_game lasciare.             --> drop         (+ discard, dump, reject)
  MAKE my_game leggere.              --> read
  MAKE my_game liberare.             --> free         (+ release)
  MAKE my_game mangiare.             --> eat
  MAKE my_game modalit�_breve.       --> brief
  MAKE my_game modalit�_lunga.       --> verbose
  MAKE my_game mostrare.             --> 'show'       (+ reveal)
  MAKE my_game nuotare.              --> swim
  MAKE my_game nuotare_in.           --> swim_in
  MAKE my_game pregare.              --> pray
  MAKE my_game prendere.             --> take.        (+ carry, get, grab, hold, obtain)
  MAKE my_game prendere_da.          --> take_from.   (+ remove from)
  MAKE my_game pulire.               --> clean        (+ polish, wipe)
  MAKE my_game ricominciare_partita. --> 'restart'
  MAKE my_game rifare.               --> 'again'
  MAKE my_game rompere.              --> break        (+ destroy)
  MAKE my_game rompere_con.          --> break_with
  MAKE my_game saltare.              --> jump
  MAKE my_game saltare_in.           --> jump_in
  MAKE my_game saltare_su.           --> jump_on
  MAKE my_game salvare_partita.      --> save
  MAKE my_game scavare.              --> dig
  MAKE my_game scrivere.             --> write
  MAKE my_game seguire.              --> follow
  MAKE my_game spingere.             --> push
  MAKE my_game spingere_con.         --> push_with
  MAKE my_game spogliarsi.           --> undress
  MAKE my_game tagliare.             --> cut
  MAKE my_game tagliare_con.         --> cut_with
  MAKE my_game tirare.               --> pull
  MAKE my_game trovare.              --> find         (+ locate)
  MAKE my_game uccidere.             --> kill         (+ murder)
  MAKE my_game uccidere_con.         --> kill_with
  MAKE my_game vendere.              --> sell
  MAKE my_game versare.              --> pour
  MAKE my_game versare_in.           --> pour_in
  MAKE my_game versare_su.           --> pour_on

--# NOT YET TRANSLATED:
  MAKE my_game about.
  MAKE my_game answer.          -- (+ reply)
  MAKE my_game ask.             -- (+ enquire, inquire, interrogate)
  MAKE my_game ask_for.
  MAKE my_game attack.          -- (+ beat, fight, hit, punch)
  MAKE my_game attack_with.
  MAKE my_game bite.            -- (+ chew)
  MAKE my_game bruciare.        --> burn
  MAKE my_game bruciare_con.    --> burn_with
  MAKE my_game catch.
  MAKE my_game climb.
  MAKE my_game climb_on.
  MAKE my_game credits.         -- (+ acknowledgments, author, copyright)
  MAKE my_game dive.
  MAKE my_game dive_in.
  MAKE my_game drive.
  MAKE my_game 'empty'.
  MAKE my_game empty_in.
  MAKE my_game empty_on.
  MAKE my_game 'exit'.
  MAKE my_game extinguish.      -- (+ put out, quench)
  MAKE my_game fill.
  MAKE my_game fill_with.
  MAKE my_game fire.
  MAKE my_game fire_at.
  MAKE my_game fix.             -- (+ mend, repair)
  MAKE my_game get_up.
  MAKE my_game get_off.
  MAKE my_game hint.            -- (+ hints)
  MAKE my_game kick.
  MAKE my_game knock.
  MAKE my_game lie_down.
  MAKE my_game lie_in.
  MAKE my_game lie_on.
  MAKE my_game lift.
  MAKE my_game light.           -- (+ lit)
  MAKE my_game listen0.
  MAKE my_game listen.
  MAKE my_game lock.
  MAKE my_game lock_with.
  MAKE my_game 'look'.          -- (+ gaze, peek)
  MAKE my_game look_at.
  MAKE my_game look_behind.
  MAKE my_game look_in.
  MAKE my_game look_out_of.
  MAKE my_game look_through.
  MAKE my_game look_under.
  MAKE my_game look_up.
  MAKE my_game 'no'.
  MAKE my_game 'notify'.
  MAKE my_game notify_on.
  MAKE my_game notify_off.
  MAKE my_game 'play'.
  MAKE my_game play_with.
  MAKE my_game pry.
  MAKE my_game pry_with.
  MAKE my_game put.             -- (+ lay, place)
  MAKE my_game put_against.
  MAKE my_game put_behind.
  MAKE my_game put_down.
  MAKE my_game put_in.          -- (+ insert)
  MAKE my_game put_near.
  MAKE my_game put_on.
  MAKE my_game put_under.
  MAKE my_game remove.
  MAKE my_game rub.
  MAKE my_game 'say'.
  MAKE my_game say_to.
  MAKE my_game 'score'.
  MAKE my_game scratch.
  MAKE my_game 'script'.
  MAKE my_game script_on.
  MAKE my_game script_off.
  MAKE my_game search.
  MAKE my_game shake.
  MAKE my_game shoot.           -- (at)
  MAKE my_game shoot_with.
  MAKE my_game sing.
  MAKE my_game sip.
  MAKE my_game sit.             -- (down)
  MAKE my_game sit_on.
  MAKE my_game smell0.
  MAKE my_game smell.
  MAKE my_game squeeze.
  MAKE my_game stand.           -- (up)
  MAKE my_game stand_on.
  MAKE my_game switch.
  MAKE my_game switch_on.
  MAKE my_game switch_off.
  MAKE my_game talk.
  MAKE my_game talk_to.         -- (+ speak)
  MAKE my_game tear.            -- (+ rip)
  MAKE my_game tell.            -- (+ enlighten, inform)
  MAKE my_game think.
  MAKE my_game think_about.
  MAKE my_game throw.
  MAKE my_game throw_at.
  MAKE my_game throw_in.
  MAKE my_game throw_to.
  MAKE my_game tie.
  MAKE my_game tie_to.
  MAKE my_game touch.           -- (+ feel)
  MAKE my_game touch_with.
  MAKE my_game turn.            -- (+ rotate)
  MAKE my_game turn_on.
  MAKE my_game turn_off.
  MAKE my_game unlock.
  MAKE my_game unlock_with.
  MAKE my_game 'use'.
  MAKE my_game use_with.
  MAKE my_game what_am_i.
  MAKE my_game what_is.
  MAKE my_game where_am_i.
  MAKE my_game where_is.
  MAKE my_game who_am_i.
  MAKE my_game who_is.
  MAKE my_game yes.


ELSIF restricted_level OF my_game = 1  -- communication verbs are restricted
  THEN

  MAKE my_game NOT gridare.              --> shout       (+ scream, yell)

--# NOT YET TRANSLATED:
  MAKE my_game NOT answer.
  MAKE my_game NOT ask.
  MAKE my_game NOT ask_for.
  MAKE my_game NOT 'say'.
  MAKE my_game NOT say_to.
  MAKE my_game NOT sing.
  MAKE my_game NOT tell.





ELSIF restricted_level OF my_game = 2   -- all action verbs, including communication verbs,
                -- are restricted. Verbs like 'examine', 'look', , 'inventory, 'think'
                -- 'wait' and sensory verbs as well as all out-of-game verbs work
  THEN

  MAKE my_game     abbandonare_partita.  --> 'quit'
  MAKE my_game NOT andare_a.             --> go_to
  MAKE my_game NOT aprire.               --> open
  MAKE my_game NOT aprire_con.           --> open_with
  MAKE my_game     aspettare.            --> wait         (+ z)
  MAKE my_game NOT assaggiare.           --> taste        (+ lick)
  MAKE my_game NOT attraversare.         --> climb_through
  MAKE my_game NOT baciare.              --> kiss         (+ hug, embrace)
  MAKE my_game NOT bere.                 --> drink
  MAKE my_game     caricare_partita.     --> 'restore'
  MAKE my_game NOT chiudere.             --> close        (+ shut)
  MAKE my_game NOT chiudere_con.         --> close_with
  MAKE my_game NOT comprare.             --> buy          (+ purchase)
  MAKE my_game NOT consultare.           --> consult
  MAKE my_game NOT danzare.              --> dance
  MAKE my_game NOT dormire.              --> sleep        (+ rest)
  MAKE my_game NOT entrare.              --> enter
  MAKE my_game     esaminare.            --> examine      (+ check, inspect, observe, x)
  MAKE my_game NOT gridare.              --> shout        (+ scream, yell)
  MAKE my_game NOT indossare.            --> wear
  MAKE my_game     inventariare.         --> i            (+ inv, inventory)
  MAKE my_game NOT lasciare.             --> drop         (+ discard, dump, reject)
  MAKE my_game NOT leggere.              --> read
  MAKE my_game NOT liberare.             --> free         (+ release)
  MAKE my_game NOT mangiare.             --> eat
  MAKE my_game     modalit�_breve.       --> brief
  MAKE my_game     modalit�_lunga.       --> verbose
  MAKE my_game NOT mostrare.             --> 'show'       (+ reveal)
  MAKE my_game NOT nuotare.              --> swim
  MAKE my_game NOT nuotare_in.           --> swim_in
  MAKE my_game     pregare.              --> pray
  MAKE my_game NOT prendere.             --> take.        (+ carry, get, grab, hold, obtain)
  MAKE my_game NOT prendere_da.          --> take_from.   (+ remove from)
  MAKE my_game NOT pulire.               --> clean        (+ polish, wipe)
  MAKE my_game     ricominciare_partita. --> 'restart'
  MAKE my_game     rifare.               --> 'again'
  MAKE my_game NOT rompere.              --> break        (+ destroy)
  MAKE my_game NOT rompere_con.          --> break_with
  MAKE my_game NOT saltare.              --> jump
  MAKE my_game NOT saltare_in.           --> jump_in
  MAKE my_game NOT saltare_su.           --> jump_on
  MAKE my_game     salvare_partita.      --> save
  MAKE my_game NOT scavare.              --> dig
  MAKE my_game NOT scrivere.             --> write
  MAKE my_game NOT seguire.              --> follow
  MAKE my_game NOT spingere.             --> push
  MAKE my_game NOT spingere_con.         --> push_with
  MAKE my_game NOT spogliarsi.           --> undress
  MAKE my_game NOT tagliare.             --> cut
  MAKE my_game NOT tagliare_con.         --> cut_with
  MAKE my_game NOT tirare.               --> pull
  MAKE my_game NOT trovare.              --> find         (+ locate)
  MAKE my_game NOT uccidere.             --> kill         (+ murder)
  MAKE my_game NOT uccidere_con.         --> kill_with
  MAKE my_game NOT vendere.              --> sell
  MAKE my_game NOT versare.              --> pour
  MAKE my_game NOT versare_in.           --> pour_in
  MAKE my_game NOT versare_su.           --> pour_on

--# NOT YET TRANSLATED:

  MAKE my_game about.
  MAKE my_game NOT answer.      -- (+ reply)
  MAKE my_game NOT ask.         -- (+ enquire, inquire, interrogate)
  MAKE my_game NOT ask_for.
  MAKE my_game NOT attack.      -- (+ beat, fight, hit, punch)
  MAKE my_game NOT attack_with.
  MAKE my_game NOT bite.        -- (+ chew)
  MAKE my_game NOT bruciare.     --> burn
  MAKE my_game NOT bruciare_con. --> burn_with
  MAKE my_game NOT catch.
  MAKE my_game NOT climb.
  MAKE my_game NOT climb_on.
  MAKE my_game credits.         -- (+ acknowledgments, author, copyright)
  MAKE my_game NOT dive.
  MAKE my_game NOT dive_in.
  MAKE my_game NOT drive.
  MAKE my_game NOT 'empty'.
  MAKE my_game NOT empty_in.
  MAKE my_game NOT empty_on.
  MAKE my_game NOT 'exit'.
  MAKE my_game NOT extinguish.  -- (+ put out, quench)
  MAKE my_game NOT fill.
  MAKE my_game NOT fill_with.
  MAKE my_game NOT fire.
  MAKE my_game NOT fire_at.
  MAKE my_game NOT fix.         -- (+ mend, repair)
  MAKE my_game NOT get_up.
  MAKE my_game NOT get_off.
  MAKE my_game NOT dare.
  MAKE my_game hint.            -- (+ hints)
  MAKE my_game NOT kick.
  MAKE my_game NOT knock.
  MAKE my_game NOT lie_down.
  MAKE my_game NOT lie_in.
  MAKE my_game NOT lie_on.
  MAKE my_game NOT lift.
  MAKE my_game NOT light.       -- (+ lit)
  MAKE my_game listen0.
  MAKE my_game listen.
  MAKE my_game NOT lock.
  MAKE my_game NOT lock_with.
  MAKE my_game 'look'.          -- (+ gaze, peek)
  MAKE my_game look_at.
  MAKE my_game look_behind.
  MAKE my_game look_in.
  MAKE my_game look_out_of.
  MAKE my_game look_through.
  MAKE my_game look_under.
  MAKE my_game look_up.
  MAKE my_game 'no'.
  MAKE my_game 'notify'.
  MAKE my_game notify_on.
  MAKE my_game notify_off.
  MAKE my_game NOT 'play'.
  MAKE my_game NOT play_with.
  MAKE my_game NOT pry.
  MAKE my_game NOT pry_with.
  MAKE my_game NOT put.         -- (+ lay, place)
  MAKE my_game NOT put_against.
  MAKE my_game NOT put_behind.
  MAKE my_game NOT put_down.
  MAKE my_game NOT put_in.      -- (+ insert)
  MAKE my_game NOT put_near.
  MAKE my_game NOT put_on.
  MAKE my_game NOT put_under.
  MAKE my_game NOT remove.
  MAKE my_game NOT rub.
  MAKE my_game NOT 'say'.
  MAKE my_game NOT say_to.
  MAKE my_game 'score'.
  MAKE my_game NOT scratch.
  MAKE my_game 'script'.
  MAKE my_game script_on.
  MAKE my_game script_off.
  MAKE my_game NOT search.
  MAKE my_game NOT shake.
  MAKE my_game NOT shoot.       -- (at)
  MAKE my_game NOT shoot_with.
  MAKE my_game NOT sing.
  MAKE my_game NOT sip.
  MAKE my_game NOT sit.         -- (down)
  MAKE my_game NOT sit_on.
  MAKE my_game smell0.
  MAKE my_game smell.
  MAKE my_game NOT squeeze.
  MAKE my_game NOT stand.       -- (up)
  MAKE my_game NOT stand_on.
  MAKE my_game NOT switch.
  MAKE my_game NOT switch_on.
  MAKE my_game NOT switch_off.
  MAKE my_game NOT talk.
  MAKE my_game NOT talk_to.     -- (+ speak)
  MAKE my_game NOT tear.        -- (+ rip)
  MAKE my_game NOT tell.        -- (+ enlighten, inform)
  MAKE my_game think.
  MAKE my_game think_about.
  MAKE my_game NOT throw.
  MAKE my_game NOT throw_at.
  MAKE my_game NOT throw_in.
  MAKE my_game NOT throw_to.
  MAKE my_game NOT tie.
  MAKE my_game NOT tie_to.
  MAKE my_game NOT touch.       -- (+ feel)
  MAKE my_game NOT touch_with.
  MAKE my_game NOT turn.        -- (+ rotate)
  MAKE my_game NOT turn_on.
  MAKE my_game NOT turn_off.
  MAKE my_game NOT unlock.
  MAKE my_game NOT unlock_with.
  MAKE my_game NOT 'use'.
  MAKE my_game NOT use_with.
  MAKE my_game what_am_i.
  MAKE my_game what_is.
  MAKE my_game where_am_i.
  MAKE my_game where_is.
  MAKE my_game who_am_i.
  MAKE my_game who_is.
  MAKE my_game yes.




ELSIF restricted_level OF my_game = 3   -- all in-game verbs are restricted, even
  THEN                                  -- 'examine', 'look' etc. Only out-of-game verbs like
                                        -- 'save', 'quit' etc work.


  MAKE my_game     abbandonare_partita.  --> 'quit'
  MAKE my_game NOT andare_a.             --> go_to
  MAKE my_game NOT aprire.               --> open
  MAKE my_game NOT aprire_con.           --> open_with
  MAKE my_game NOT aspettare.            --> wait         (+ z)
  MAKE my_game NOT assaggiare.           --> taste        (+ lick)
  MAKE my_game NOT attraversare.         --> climb_through
  MAKE my_game NOT baciare.              --> kiss         (+ hug, embrace)
  MAKE my_game NOT bere.                 --> drink
  MAKE my_game     caricare_partita.     --> 'restore'
  MAKE my_game NOT chiudere.             --> close        (+ shut)
  MAKE my_game NOT chiudere_con.         --> close_with
  MAKE my_game NOT comprare.             --> buy          (+ purchase)
  MAKE my_game NOT consultare.           --> consult
  MAKE my_game NOT danzare.              --> dance
  MAKE my_game NOT dormire.              --> sleep        (+ rest)
  MAKE my_game NOT entrare.              --> enter
  MAKE my_game NOT esaminare.            --> examine      (+ check, inspect, observe, x)
  MAKE my_game NOT gridare.              --> shout        (+ scream, yell)
  MAKE my_game NOT indossare.            --> wear
  MAKE my_game NOT inventariare.         --> i            (+ inv, inventory)
  MAKE my_game NOT lasciare.             --> drop         (+ discard, dump, reject)
  MAKE my_game NOT leggere.              --> read
  MAKE my_game NOT liberare.             --> free         (+ release)
  MAKE my_game NOT mangiare.             --> eat
  MAKE my_game     modalit�_breve.       --> brief
  MAKE my_game     modalit�_lunga.       --> verbose
  MAKE my_game NOT mostrare.             --> 'show'       (+ reveal)
  MAKE my_game NOT nuotare.              --> swim
  MAKE my_game NOT nuotare_in.           --> swim_in
  MAKE my_game NOT pregare.              --> pray
  MAKE my_game NOT prendere.             --> take.        (+ carry, get, grab, hold, obtain)
  MAKE my_game NOT prendere_da.          --> take_from.   (+ remove from)
  MAKE my_game NOT pulire.               --> clean        (+ polish, wipe)
  MAKE my_game     ricominciare_partita. --> 'restart'
  MAKE my_game     rifare.               --> 'again'
  MAKE my_game NOT rompere.              --> break        (+ destroy)
  MAKE my_game NOT rompere_con.          --> break_with
  MAKE my_game NOT saltare.              --> jump
  MAKE my_game NOT saltare_in.           --> jump_in
  MAKE my_game NOT saltare_su.           --> jump_on
  MAKE my_game     salvare_partita.      --> save
  MAKE my_game NOT scavare.              --> dig
  MAKE my_game NOT scrivere.             --> write
  MAKE my_game NOT seguire.              --> follow
  MAKE my_game NOT spingere.             --> push
  MAKE my_game NOT spingere_con.         --> push_with
  MAKE my_game NOT spogliarsi.           --> undress
  MAKE my_game NOT tagliare.             --> cut
  MAKE my_game NOT tagliare_con.         --> cut_with
  MAKE my_game NOT tirare.               --> pull
  MAKE my_game NOT trovare.              --> find         (+ locate)
  MAKE my_game NOT uccidere.             --> kill         (+ murder)
  MAKE my_game NOT uccidere_con.         --> kill_with
  MAKE my_game NOT vendere.              --> sell
  MAKE my_game NOT versare.              --> pour
  MAKE my_game NOT versare_in.           --> pour_in
  MAKE my_game NOT versare_su.           --> pour_on

--# NOT YET TRANSLATED:

  MAKE my_game about.
  MAKE my_game NOT answer.      -- (+ reply)
  MAKE my_game NOT ask.         -- (+ enquire, inquire, interrogate)
  MAKE my_game NOT ask_for.
  MAKE my_game NOT attack.      -- (+ beat, fight, hit, punch)
  MAKE my_game NOT attack_with.
  MAKE my_game NOT bite.        -- (+ chew)
  MAKE my_game NOT bruciare.     --> burn
  MAKE my_game NOT bruciare_con. --> burn_with
  MAKE my_game NOT catch.
  MAKE my_game NOT climb.
  MAKE my_game NOT climb_on.
  MAKE my_game credits.         -- (+ acknowledgments, author, copyright)
  MAKE my_game NOT dive.
  MAKE my_game NOT dive_in.
  MAKE my_game NOT drive.
  MAKE my_game NOT 'empty'.
  MAKE my_game NOT empty_in.
  MAKE my_game NOT empty_on.
  MAKE my_game NOT 'exit'.
  MAKE my_game NOT extinguish.  -- (+ put out, quench)
  MAKE my_game NOT fill.
  MAKE my_game NOT fill_with.
  MAKE my_game NOT fire.
  MAKE my_game NOT fire_at.
  MAKE my_game NOT fix.         -- (+ mend, repair)
  MAKE my_game NOT get_up.
  MAKE my_game NOT get_off.
  MAKE my_game NOT dare.
  MAKE my_game hint.            -- (+ hints)
  MAKE my_game NOT kick.
  MAKE my_game NOT knock.
  MAKE my_game NOT lie_down.
  MAKE my_game NOT lie_in.
  MAKE my_game NOT lie_on.
  MAKE my_game NOT lift.
  MAKE my_game NOT light.       -- (+ lit)
  MAKE my_game NOT listen0.
  MAKE my_game NOT listen.
  MAKE my_game NOT lock.
  MAKE my_game NOT lock_with.
  MAKE my_game NOT 'look'.      -- (+ gaze, peek)
  MAKE my_game NOT look_at.
  MAKE my_game NOT look_behind.
  MAKE my_game NOT look_in.
  MAKE my_game NOT look_out_of.
  MAKE my_game NOT look_through.
  MAKE my_game NOT look_under.
  MAKE my_game NOT look_up.
  MAKE my_game 'no'.
  MAKE my_game 'notify'.
  MAKE my_game notify_on.
  MAKE my_game notify_off.
  MAKE my_game NOT 'play'.
  MAKE my_game NOT play_with.
  MAKE my_game NOT pry.
  MAKE my_game NOT pry_with.
  MAKE my_game NOT put.         -- (+ lay, place)
  MAKE my_game NOT put_against.
  MAKE my_game NOT put_behind.
  MAKE my_game NOT put_down.
  MAKE my_game NOT put_in.      -- (+ insert)
  MAKE my_game NOT put_near.
  MAKE my_game NOT put_on.
  MAKE my_game NOT put_under.
  MAKE my_game NOT remove.
  MAKE my_game NOT rub.
  MAKE my_game NOT 'say'.
  MAKE my_game NOT say_to.
  MAKE my_game 'score'.
  MAKE my_game NOT scratch.
  MAKE my_game 'script'.
  MAKE my_game script_on.
  MAKE my_game script_off.
  MAKE my_game NOT search.
  MAKE my_game NOT shake.
  MAKE my_game NOT shoot.       -- (at)
  MAKE my_game NOT shoot_with.
  MAKE my_game NOT sing.
  MAKE my_game NOT sip.
  MAKE my_game NOT sit.         -- (down)
  MAKE my_game NOT sit_on.
  MAKE my_game NOT smell0.
  MAKE my_game NOT smell.
  MAKE my_game NOT squeeze.
  MAKE my_game NOT stand.       -- (up)
  MAKE my_game NOT stand_on.
  MAKE my_game NOT switch.
  MAKE my_game NOT switch_on.
  MAKE my_game NOT switch_off.
  MAKE my_game NOT talk.
  MAKE my_game NOT talk_to.     -- (+ speak)
  MAKE my_game NOT tear.        -- (+ rip)
  MAKE my_game NOT tell.        -- (+ enlighten, inform)
  MAKE my_game NOT think.
  MAKE my_game NOT think_about.
  MAKE my_game NOT throw.
  MAKE my_game NOT throw_at.
  MAKE my_game NOT throw_in.
  MAKE my_game NOT throw_to.
  MAKE my_game NOT tie.
  MAKE my_game NOT tie_to.
  MAKE my_game NOT touch.       -- (+ feel)
  MAKE my_game NOT touch_with.
  MAKE my_game NOT turn.        -- (+ rotate)
  MAKE my_game NOT turn_on.
  MAKE my_game NOT turn_off.
  MAKE my_game NOT unlock.
  MAKE my_game NOT unlock_with.
  MAKE my_game NOT 'use'.
  MAKE my_game NOT use_with.
  MAKE my_game NOT what_am_i.
  MAKE my_game NOT what_is.
  MAKE my_game NOT where_am_i.
  MAKE my_game NOT where_is.
  MAKE my_game NOT who_am_i.
  MAKE my_game NOT who_is.
  MAKE my_game yes.


ELSIF restricted_level OF my_game = 4   -- the strictest level of restriction;
                                        -- no verbs work, not even out-of-game verbs
  THEN                                  -- like 'save' and 'quit'.


  MAKE my_game NOT abbandonare_partita.  --> 'quit'
  MAKE my_game NOT andare_a.             --> go_to
  MAKE my_game NOT aprire.               --> open
  MAKE my_game NOT aprire_con.           --> open_with
  MAKE my_game NOT aspettare.            --> wait         (+ z)
  MAKE my_game NOT assaggiare.           --> taste        (+ lick)
  MAKE my_game NOT attraversare.         --> climb_through
  MAKE my_game NOT baciare.              --> kiss         (+ hug, embrace)
  MAKE my_game NOT bere.                 --> drink
  MAKE my_game NOT caricare_partita.     --> 'restore'
  MAKE my_game NOT chiudere.             --> close        (+ shut)
  MAKE my_game NOT chiudere_con.         --> close_with
  MAKE my_game NOT comprare.             --> buy          (+ purchase)
  MAKE my_game NOT consultare.           --> consult
  MAKE my_game NOT danzare.              --> dance
  MAKE my_game NOT dormire.              --> sleep        (+ rest)
  MAKE my_game NOT entrare.              --> enter
  MAKE my_game NOT esaminare.            --> examine      (+ check, inspect, observe, x)
  MAKE my_game NOT gridare.              --> shout        (+ scream, yell)
  MAKE my_game NOT indossare.            --> wear
  MAKE my_game NOT inventariare.         --> i               (+ inv, inventory)
  MAKE my_game NOT lasciare.             --> drop         (+ discard, dump, reject)
  MAKE my_game NOT leggere.              --> read
  MAKE my_game NOT liberare.             --> free         (+ release)
  MAKE my_game NOT mangiare.             --> eat
  MAKE my_game NOT modalit�_breve.       --> brief
  MAKE my_game NOT modalit�_lunga.       --> verbose
  MAKE my_game NOT mostrare.             --> 'show'       (+ reveal)
  MAKE my_game NOT nuotare.              --> swim
  MAKE my_game NOT nuotare_in.           --> swim_in
  MAKE my_game NOT pregare.              --> pray
  MAKE my_game NOT prendere.             --> take.        (+ carry, get, grab, hold, obtain)
  MAKE my_game NOT prendere_da.          --> take_from.   (+ remove from)
  MAKE my_game NOT pulire.               --> clean        (+ polish, wipe)
  MAKE my_game NOT ricominciare_partita. --> 'restart'
  MAKE my_game NOT rifare.               --> 'again'
  MAKE my_game NOT rompere.              --> break        (+ destroy)
  MAKE my_game NOT rompere_con.          --> break_with
  MAKE my_game NOT saltare.              --> jump
  MAKE my_game NOT saltare_in.           --> jump_in
  MAKE my_game NOT saltare_su.           --> jump_on
  MAKE my_game NOT salvare_partita.      --> save
  MAKE my_game NOT scavare.              --> dig
  MAKE my_game NOT scrivere.             --> write
  MAKE my_game NOT seguire.              --> follow
  MAKE my_game NOT spingere.             --> push
  MAKE my_game NOT spingere_con.         --> push_with
  MAKE my_game NOT spogliarsi.           --> undress
  MAKE my_game NOT tagliare.             --> cut
  MAKE my_game NOT tagliare_con.         --> cut_with
  MAKE my_game NOT tirare.               --> pull
  MAKE my_game NOT trovare.              --> find         (+ locate)
  MAKE my_game NOT uccidere.             --> kill         (+ murder)
  MAKE my_game NOT uccidere_con.         --> kill_with
  MAKE my_game NOT vendere.              --> sell
  MAKE my_game NOT versare.              --> pour
  MAKE my_game NOT versare_in.           --> pour_in
  MAKE my_game NOT versare_su.           --> pour_on

--# NOT YET TRANSLATED:

  MAKE my_game NOT about.
  MAKE my_game NOT answer.      -- (+ reply)
  MAKE my_game NOT ask.         -- (+ enquire, inquire, interrogate)
  MAKE my_game NOT ask_for.
  MAKE my_game NOT attack.      -- (+ beat, fight, hit, punch)
  MAKE my_game NOT attack_with.
  MAKE my_game NOT bite.        -- (+ chew)
  MAKE my_game NOT bruciare.     --> burn
  MAKE my_game NOT bruciare_con. --> burn_with
  MAKE my_game NOT catch.
  MAKE my_game NOT climb.
  MAKE my_game NOT climb_on.
  MAKE my_game NOT credits.     -- (+ acknowledgments, author, copyright)
  MAKE my_game NOT dive.
  MAKE my_game NOT dive_in.
  MAKE my_game NOT drive.
  MAKE my_game NOT 'empty'.
  MAKE my_game NOT empty_in.
  MAKE my_game NOT empty_on.
  MAKE my_game NOT 'exit'.
  MAKE my_game NOT extinguish.  -- (+ put out, quench)
  MAKE my_game NOT fill.
  MAKE my_game NOT fill_with.
  MAKE my_game NOT fire.
  MAKE my_game NOT fire_at.
  MAKE my_game NOT fix.         -- (+ mend, repair)
  MAKE my_game NOT get_up.
  MAKE my_game NOT get_off.
  MAKE my_game NOT dare.
  MAKE my_game NOT hint.        -- (+ hints)
  MAKE my_game NOT kick.
  MAKE my_game NOT knock.
  MAKE my_game NOT lie_down.
  MAKE my_game NOT lie_in.
  MAKE my_game NOT lie_on.
  MAKE my_game NOT lift.
  MAKE my_game NOT light.       -- (+ lit)
  MAKE my_game NOT listen0.
  MAKE my_game NOT listen.
  MAKE my_game NOT lock.
  MAKE my_game NOT lock_with.
  MAKE my_game NOT 'look'.      -- (+ gaze, peek)
  MAKE my_game NOT look_at.
  MAKE my_game NOT look_behind.
  MAKE my_game NOT look_in.
  MAKE my_game NOT look_out_of.
  MAKE my_game NOT look_through.
  MAKE my_game NOT look_under.
  MAKE my_game NOT look_up.
  MAKE my_game NOT 'no'.
  MAKE my_game NOT 'notify'.
  MAKE my_game NOT notify_on.
  MAKE my_game NOT notify_off.
  MAKE my_game NOT 'play'.
  MAKE my_game NOT play_with.
  MAKE my_game NOT pry.
  MAKE my_game NOT pry_with.
  MAKE my_game NOT put.         -- (+ lay, place)
  MAKE my_game NOT put_against.
  MAKE my_game NOT put_behind.
  MAKE my_game NOT put_down.
  MAKE my_game NOT put_in.      -- (+ insert)
  MAKE my_game NOT put_near.
  MAKE my_game NOT put_on.
  MAKE my_game NOT put_under.
  MAKE my_game NOT remove.
  MAKE my_game NOT rub.
  MAKE my_game NOT 'say'.
  MAKE my_game NOT say_to.
  MAKE my_game NOT 'score'.
  MAKE my_game NOT scratch.
  MAKE my_game NOT 'script'.
  MAKE my_game NOT script_on.
  MAKE my_game NOT script_off.
  MAKE my_game NOT search.
  MAKE my_game NOT shake.
  MAKE my_game NOT shoot.       -- (at)
  MAKE my_game NOT shoot_with.
  MAKE my_game NOT sing.
  MAKE my_game NOT sip.
  MAKE my_game NOT sit.         -- (down)
  MAKE my_game NOT sit_on.
  MAKE my_game NOT smell0.
  MAKE my_game NOT smell.
  MAKE my_game NOT squeeze.
  MAKE my_game NOT stand.       -- (up)
  MAKE my_game NOT stand_on.
  MAKE my_game NOT switch.
  MAKE my_game NOT switch_on.
  MAKE my_game NOT switch_off.
  MAKE my_game NOT talk.
  MAKE my_game NOT talk_to.     -- (+ speak)
  MAKE my_game NOT tear.        -- (+ rip)
  MAKE my_game NOT tell.        -- (+ enlighten, inform)
  MAKE my_game NOT think.
  MAKE my_game NOT think_about.
  MAKE my_game NOT throw.
  MAKE my_game NOT throw_at.
  MAKE my_game NOT throw_in.
  MAKE my_game NOT throw_to.
  MAKE my_game NOT tie.
  MAKE my_game NOT tie_to.
  MAKE my_game NOT touch.       -- (+ feel)
  MAKE my_game NOT touch_with.
  MAKE my_game NOT turn.        -- (+ rotate)
  MAKE my_game NOT turn_on.
  MAKE my_game NOT turn_off.
  MAKE my_game NOT unlock.
  MAKE my_game NOT unlock_with.
  MAKE my_game NOT 'use'.
  MAKE my_game NOT use_with.
  MAKE my_game NOT what_am_i.
  MAKE my_game NOT what_is.
  MAKE my_game NOT where_am_i.
  MAKE my_game NOT where_is.
  MAKE my_game NOT who_am_i.
  MAKE my_game NOT who_is.
  MAKE my_game NOT yes.

END IF.

SCHEDULE check_restriction AFTER 1.

END EVENT.


--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- � X - Il Banner
--------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================
-- Not sure why in the original the 'banner' is an instance of 'DEFINITION_BLOCK'
-- but it doesn't seem to need being one at all (after all, it relies on the
-- attributes of 'my_game' for displaying the banner info). I've brought up the
-- issue to Anssi's attention (Issue #8):
-- 
--    https://github.com/AnssiR66/AlanStdLib/issues/8
-- 
-- In the meantime, I'll change 'banner' to an instance of LOCATION here, since
-- local tests revealed that it works just as fine and consumes less memory
-- (the compiled test adventure was 20Kb smaller with this tweak, and the ARun
-- debugger shows a smaller footprint for the 'banner' instance).
--------------------------------------------------------------------------------

-- THE banner ISA DEFINITION_BLOCK --> Why?!

THE banner ISA LOCATION

    DESCRIPTION

    "$p" STYLE alert. SAY titolo OF my_game. STYLE normal.

    IF sottotitolo OF my_game <> ""
      THEN "$n" SAY sottotitolo OF my_game.
      END IF.

    "$n(C)" SAY autore OF my_game. "," SAY anno OF my_game. "."

    "$nProgrammed with the ALAN Interactive Fiction Language v3.0 beta5
    $nStandard Library v2.1"

    IF versione OF my_game <> "0"
      THEN "$nVersione" SAY versione OF my_game.
      END IF.

    "$nTutti i diritti riservati."

END THE banner.


--< EOF >---
