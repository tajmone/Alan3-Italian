-- "lib_definizioni.i" v0.3.5 (2018/07/25)
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
-- § 1 - Attributi
--------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================


--==============================================================================
--------------------------------------------------------------------------------
-- § 1.1 - Attributi Generali
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
     -- La libreria definisce che un SUONO non è esaminabile.
     inanimato.
     -- Gli attori sono NOT inanimato.
     spostabile.
     -- Lo si può spingere, tirare, sollevare, ecc.
     aperto.
     -- = non chiuso.
     raggiungibile.
     -- (vedi attributo 'distante', più giù)
     prendibile.
     -- Si dovranno definire manualmente gli oggetti che non si possono prendere.
     -- Di default, non sono prendibili: pavimento, pareti, soffitto, suolo e
     -- cielo; e anche tutte le porte, finestre, suoni e i liquidi che non sono
     -- dentro un contenitore o un attore.

  HAS consentiti { oggetto_fittizio }.
      -- Nei contenitori è possibile introdurre solo gli oggetti elencati tra i
      -- suoi 'consentiti' (attributo di insieme). Viene usato da quei verbi che
      -- trasferiscono un oggetto in un altro (svuota_in, versa_in, metti_in).
      -- Il valore predefinito 'oggetto_fittizio' serve solo a inizializzare la
      -- tipologia dell'insieme (ossia, riferimenti a istanze).

  HAS xDesc "".
      -- Il testo da mostrare quando l'oggetto viene esaminato. Un'alternativa
      -- semplice al dover implementare 'VERB esamina DOES ONLY...' sull'oggetto
      -- affinché produca una descrizione personalizzata.

  HAS chiave_abbinata  chiave_fittizia.
      -- Ogni porta 'bloccabile' richiede la sua 'chiave_abbinata' per poter
      -- essere bloccata/sbloccata. Questo attributo viene aggiunto ad ogni
      -- cosa, anziché soltanto alle porte, di modo che si possano implementare
      -- altri tipi di oggetti bloccabili con chiave (p.es., scrigni del tesoro,
      -- congegni con chiave a tessera magnetica, ecc.).
      -- La 'chiave_fittizia' è solo un segnaposto per poter creare l'attributo
      -- e inizializzarne la tipologia (ossia, riferimento ad un'istanza).

  HAS testo "".

  NOT rotto.
  NOT distante.
      -- Utilizzo: è possibile parlare ad un attore 'NOT raggiungibile' ma non
      -- ad uno 'distante'. Puoi anche lanciare cose IN, A o CONTRO un bersaglio
      -- non raggiungibile, ma non ad uno distante.
      -- La risposta predefinita per oggetti/attori non raggiungibili è:
      --    "La [cosa] è fuori dalla tua portata."
      -- La risposta predefinita per oggetti/attori distanti è:
      --    "La [cosa] è troppo lontana."

  NOT acceso.
  NOT apribile.
  NOT bloccabile.
  NOT bloccato.
  NOT commestibile.
  NOT leggibile.
  NOT potabile.
  NOT scenario.
      -- Un oggetto 'scenario' risponderà diversamente ai verbi 'esamina' e
      -- 'prendi' (ossia, informando il giocatore che l'oggetto non è importante
      -- ai fini del gioco). A parte questo, si comporta come un normale oggeto.

  NOT indossabile.
  NOT scrivibile.

  CAN
    NOT parlare.
    NOT sparare.
        -- Non può essere usato come arma da fuoco (verbo 'spara').



--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- § x - Articoli e Preposizioni Articolate
--------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================

  -- Ogni THING ha un attributo che ne specifica l'articolo determinativo.
  --
  -- Questo attributo viene utilizzato dalla libreria per inizializzare le
  -- istanze di oggetti ed attori: a seconda dell'articolo indicato, verranno
  -- impostati i valori appropriati di genere e numero, DEFINITE/INDEFINITE
  -- ARTICLE e preposizioni articolate per ciascuna istanza.
  --
  -- L'autore deve semplicemente specficare l'articolo determinativo del
  -- sostantivo, e la libreria farà tutto il resto. L'unica eccezione è
  -- l'articolo "l'", che può rifererirsi sia a un sostantivo maschile che
  -- femminile; per questo articolo l'autore dovrà specificare `IS femminile`
  -- nel caso di sostantivi femminili, altrimenti la libreria presumerà che si
  -- tratti di un sostantivo maschile.

  HAS articolo "il".

  -- -----------------------
  -- Preposizioni Articolate
  -- -----------------------
  -- Questi attributi consentono di usare le preposizioni articolate corrette per
  -- ciascun oggetto nei vari messaggi della libreria e dell'avventura.
  -- I valori di default sono quelli del maschile singolare con articolo "il".
  -- Non è necessario rappresentare tutte le preposizioni articolate, solo quelle
  -- che si uniscono all'articolo.

  HAS prep_DI "del".
  HAS prep_A  "al".
  HAS prep_DA "dal".
  HAS prep_IN "nel".
  HAS prep_SU "sul".



--==============================================================================
--------------------------------------------------------------------------------
-- § x.x - Inizializzazione di Genere, Numero e Preposizioni Articolate
--------------------------------------------------------------------------------
--==============================================================================

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

    = "l'" THEN              --| In questo caso non alteriamo il genere poiché
      MAKE THIS NOT plurale. --| questa forma può essere sia masch. che femm.
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



--==============================================================================
--------------------------------------------------------------------------------
-- § x.x - Inizializzazione Articoli Indeterminativi
--------------------------------------------------------------------------------
--==============================================================================

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

--==============================================================================
--------------------------------------------------------------------------------
-- § x.x - Inizializzazione Articoli Determinativi
--------------------------------------------------------------------------------
--==============================================================================

  -- Questa parte è stata aggiunta appositamente per l'italiano...

  DEFINITE ARTICLE

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

END ADD TO.

-- If you need "an", you should declare it separately at the instance, for example:

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- THE owl IsA ACTOR
--    AT woods
--    INDEFINITE ARTICLE "an"
-- END THE.
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~



--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- § x - Oggetti Fittizzi
--------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================


-- Some null defaults defined that have been mentioned above:


THE oggetto_fittizio IsA OBJECT
END THE.


THE chiave_fittizia IsA OBJECT
END THE.



--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- § x - Valori Predefiniti
--------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================



--==============================================================================
--------------------------------------------------------------------------------
-- § x.1 - Pesi predefiniti
--------------------------------------------------------------------------------
--==============================================================================

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



--==============================================================================
--------------------------------------------------------------------------------
-- § x.2 - Luoghi Annidati Fittizi
--------------------------------------------------------------------------------
--==============================================================================

-- An attribute for keeping track of nested locations; used internally in the library (ignore).

ADD TO EVERY LOCATION
  HAS annidati { limbo }.
END ADD TO.

--------------------------------------------------------------------------------



--==============================================================================
--------------------------------------------------------------------------------
-- § 1.x - Sinonimi Comuni
--------------------------------------------------------------------------------
--==============================================================================

-- Next, we declare synonyms for some common words so that it will be possible
-- for the player to type commands such as both "put ball in box" and
-- "put ball into box", etc:


SYNONYMS

into, inside = 'in'.      --> @TODO                                             TRANSLATE!
      onto   = on.
      thru   = through.
      using  = 'with'.


-- Here are some synonyms for the player character:

me, myself, yourself, self = hero. --> @TODO                                    TRANSLATE!


--------------------------------------------------------------------------------



--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- § x - The my_game DEFINITION_BLOCK
--------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================


-- Attributes for the my_game definition block
-- ===========================================

-- Here, we create a class, "definition_block", to group various definitions under.
-- In the game source file, the author should declare an instance 'my_game' which belongs
-- to this class.


EVERY blocco_definizioni IsA LOCATION



--==============================================================================
--------------------------------------------------------------------------------
-- § x.1 - Attributi del Banner
--------------------------------------------------------------------------------
--==============================================================================

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



--==============================================================================
--------------------------------------------------------------------------------
-- § x.2 - Messaggi sull'Eroe
--------------------------------------------------------------------------------
--==============================================================================

  -- messages for the hero:
  -- ======================

  -- The hero is not defined as an instance in the library; the game author
  -- has all the freedom to define the hero as they see fit. However,
  -- there are some messages for the hero defined in the library. These can be
  -- easily overridden. Two of these messages are right here, the rest are
  -- for example in verb checks.

  HAS hero_worn_header "You are wearing".
  HAS hero_worn_else   "You are not wearing anything.".



--==============================================================================
--------------------------------------------------------------------------------
-- § x.3 - Messaggi sui Luoghi Bui
--------------------------------------------------------------------------------
--==============================================================================

  -- description messages for dark locations:
  -- ========================================

  HAS dark_loc_desc  "È buio e non riesci a vedere nulla".
    --#i7: "È buio e non riesci a vedere nulla".
    --#i6: "È completamente buio, e non riesci a vedere niente.".
    -- "It is pitch black. You can't see anything at all.".
    -- This message is shown when the player tries to LOOK or do actions requiring light
    -- in a dark location.

  HAS light_goes_off  "It is now pitch black.".
    -- This message is shown when a light goes off and the location becomes dark.




--==============================================================================
--------------------------------------------------------------------------------
-- § x.4 - Messaggi dei Verbi
--------------------------------------------------------------------------------
--==============================================================================

  -- Siccome i messaggi in italiano richiedono l'uso della forma infinita del
  -- verbo, molti di questi messaggi sono troncati e spetterà al codice che si
  -- occupa dei controlli sul verbo di far seguire al messaggio l'infinito del
  -- verbo in questione.
   -----------------------------------------------------------------------------
  -- @NOTA: Alcune stringhe di messaggi sono identiche (anche nell'originale)
  --        tranne per il nome dell'attributo. Questo perché l'autore originale
  --        ha voluto preservare la coerenza nei nomi degli attributi rispetto
  --        alla funzione che svolgono. Quando tutti i messaggi saranno tradotti
  --        in italiano varebbe la pena valutare se eliminare i messaggi duplicati,
  --        a costo di rivedere la metodologia dei nomi di attributi.
  ------------------------------------------------------------------------------

  -- ===============
  -- AZIONI BLOCCATE
  -- ===============

  HAS azione_bloccata  "Non puoi farlo.". -- "You can't do that."
    --| Questo è il messaggio mostrato quando il giocatore tenta di usare un
    --| verbo che è stato disabilitato tramite "CAN NOT [verb]" (vedi sotto).

  -- response for restricted actions:
  -- ================================
  -- HAS restricted_response "You can't do that.".
      -- This message is shown whenever the player used a verb that has been restricted
      -- by the "CAN NOT [verb]" attributes further down this file.

  HAS restricted_level 0.   -- 0 = no verbs are restricted



  -- =============================
  -- PARAMETRI INADATTI (SEMPLICI)
  -- =============================
  -- Messaggi per quando uno dei parametri è inadatto al verbo.
  -- Questi messaggi vengono utilizzati sia nei blocchi condizionali ELSE della
  -- definizione SYNTAX del verbo che nel blocco di CHECK del verbo stesso.
  -- A differenza della libreria originale inglese, qui non distinguiamo tra
  -- messaggi per SYNTAX e CHECK, ma ci concentriamo sul parametro che impedisce
  -- lo svolgimento dell'azione (qui riferiti come obj1 e obj2).

  --@NOTA: | S3RioUs JokER consiglia di semplificare con la frase:
  --       |    "Non è qualcosa che si possa <verbo inf>."
  --       | ...sia per il singolare che per il plurale, omettendo di menzionare
  --       | l'oggetto.  Tuttavia, menzionare l'oggetto può servire al  giocatore
  --       | ai fini della disambugazione nel caso di verbi che consentono l'uso
  --       | di oggetti multipli o di "TUTTO".

  HAS ogg1_inadatto_sg  "$+1 non è qualcosa che puoi".                          --> (verbi vari)
  HAS ogg1_inadatto_pl  "$+1 non sono qualcosa che puoi".

  -- =====================================
  -- PARAMETRI INADATTI (CON PREPOSIZIONI)
  -- =====================================
  -- Varianti dei messaggi precedenti, quando si tratta di parametri che richiedono
  -- preposizioni.

  -- ------------------
  -- PREPOSIZIONE "CON"
  -- ------------------
  HAS parametro2_illegale_CON_sg  "$+2 non è qualcosa con cui poter".           --> brucia_con
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
  -- Messaggi che riferiscono l'impossibilità di portare a termine l'azione a
  -- causa di uno (o più) parametri fuori dalla portata dell'eroe.
  -- (attributi: "NOT raggiungibile" e "distante").

  HAS ogg1_non_raggiungibile_sg  "$+1 è fuori dalla tua portata.".       -- (numerous)
  HAS ogg1_non_raggiungibile_pl  "$+1 sono fuori dalla tua portata.".
  HAS ogg2_non_raggiungibile_sg  "$+2 è fuori dalla tua portata.".        -- empty_in, fill_with, pour_in, put_in, take_from, tie_to
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
  HAS check_locazione_illuminata  "È troppo buio.".                             --> (svariati verbi)
  -- HAS check_current_loc_lit "It is too dark to see.".           -- (numerous)


  -- ============================================================================

  -- MESSAGGI DEI VERBI (ORIGINALI INGLESE)

  -- ============================================================================
  -- @NOTA: Quando tutti i messaggi saranno stati tradotti/implmentati in italiano
  --        gli originali inglesi qui di seguito verranno cancellati. Fino ad
  --        allora bisogna tenerli poiché sono richiesti dai verbi non ancora
  --        tradotti. Però mano mano che mi concentro su un blocco di messaggi
  --        simili li sposto nella sezione italiana, così posso seguire meglio
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
  --# siccome in italiano serve l'infinito qui, questo messaggio è troncato e
  --  spetterà al codice che si occupa dei controlli sul verbo di farlo seguire
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
  HAS check_obj_not_scenery_sg "$+1 non è importante ai fini del gioco.". -- examine, take, take_from
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






--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- § x - Punteggio
--------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================



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

        FOR EACH l IsA LOCATION
          DO
            EXCLUDE limbo FROM annidati OF l.
            IF COUNT IsA LOCATION, AT l > 0
              THEN
                FOR EACH x IsA LOCATION, AT l
                  DO
                    INCLUDE x IN annidati OF l.
                END FOR.
            END IF.
        END FOR.

        FOR EACH l IsA LOCATION
          DO
              IF l <> mia_AT AND l <> limbo
              THEN LOCATE l AT mia_AT.
            END IF.
        END FOR.

        FOR EACH r1 IsA stanza
          DO
            LOCATE r1 AT interno.
        END FOR.

        FOR EACH s1 IsA luogo_esterno
          DO
            LOCATE s1 AT esterno.
        END FOR.

        FOR EACH l IsA LOCATION
          DO
            IF annidati OF l <> {} AND l <> mia_AT AND l <> limbo
            THEN
                    FOR EACH x IsA LOCATION, IN annidati OF l
                DO
                  IF l <> mia_AT AND x <> mia_AT
                        THEN LOCATE x AT l.
                  END IF.
                  END FOR.
            END IF.
        END FOR.



-- We ensure that the 'visited' and 'described' attributes of the starting location
-- are correct at the start of the game:

    SET visitato  OF location OF hero TO 1.
    SET descritto OF location OF hero TO 1.



--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- § x - Restricted Actions
--------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================



--------------------------------------------------------------------------------

-- Finally, for restricted actions, we implement the following attributes, corresponding to the library verbs.
-- If you change any of these to CAN NOT..., for examle "CAN NOT attack.", that verb, together with its
-- synonyms, is disabled in-game. The restricted_response of the my_game instance (by default "You can't
-- do that.") will be shown instead. The restriced_response is defined further up this file.

  CAN abbandonare_partita.      --> 'quit'
  CAN andare_a.                 --> go_to
  CAN aprire.                   --> open
  CAN aprire_con.               --> open_with
  CAN aspettare.                --> wait         (+ z)
  CAN assaggiare.               --> taste        (+ lick)
  CAN attraversare.             --> climb_through
  CAN baciare.                  --> kiss         (+ hug, embrace)
  CAN bere.                     --> drink
  CAN bloccare.                 --> lock
  CAN bloccare_con.             --> lock_with
  CAN bruciare.                 --> burn
  CAN bruciare_con.             --> burn_with
  CAN bussare.                  --> knock
  CAN cantare.                  --> sing
  CAN caricare_partita.         --> 'restore'
  CAN chiudere.                 --> close        (+ shut)
  CAN chiudere_con.             --> close_with
  CAN comprare.                 --> buy          (+ purchase)
  CAN consultare.               --> consult
  CAN danzare.                  --> dance
  CAN dare.                     --> give
  CAN dire_no.                  --> 'no'
  CAN dire_sì.                  --> yes
  CAN domandare_chi_sono_io.    --> who_am_i
  CAN domandare_chi_è.          --> who_is
  CAN domandare_cosa_sono_io.   --> what_am_i
  CAN domandare_cosa_è.         --> what_is
  CAN domandare_dove_mi_trovo.  --> where_am_i
  CAN domandare_dove_è.         --> where_is
  CAN dormire.                  --> sleep        (+ rest)
  CAN entrare.                  --> enter
  CAN esaminare.                --> examine      (+ check, inspect, observe, x)
  CAN giocare_con.              --> play_with
  CAN gridare.                  --> shout        (+ scream, yell)
  CAN guidare.                  --> drive
  CAN indossare.                --> wear
  CAN inventariare.             --> i            (+ inv, inventory)
  CAN lasciare.                 --> drop         (+ discard, dump, reject)
  CAN leggere.                  --> read
  CAN liberare.                 --> free         (+ release)
  CAN mangiare.                 --> eat
  CAN modalità_breve.           --> brief
  CAN modalità_lunga.           --> verbose
  CAN mostrare.                 --> 'show'       (+ reveal)
  CAN nuotare.                  --> swim
  CAN nuotare_in.               --> swim_in
  CAN pensare.                  --> think
  CAN pensare_a.                --> think_about
  CAN pregare.                  --> pray
  CAN prendere.                 --> take.        (+ carry, get, grab, hold, obtain)
  CAN prendere_da.              --> take_from.   (+ remove from)
  CAN pulire.                   --> clean        (+ polish, wipe)
  CAN ricominciare_partita.     --> 'restart'
  CAN rifare.                   --> 'again'
  CAN rompere.                  --> break        (+ destroy)
  CAN rompere_con.              --> break_with
  CAN salvare_partita.          --> save
  CAN saltare.                  --> jump
  CAN saltare_in.               --> jump_in
  CAN saltare_su.               --> jump_on
  CAN sbloccare.                --> unlock
  CAN sbloccare_con.            --> unlock_with
  CAN scavare.                  --> dig
  CAN scrivere.                 --> write
  CAN seguire.                  --> follow
  CAN spingere.                 --> push
  CAN spingere_con.             --> push_with
  CAN spogliarsi.               --> undress
  CAN suonare.                  --> play
  CAN svuotare.                 --> 'empty'
  CAN svuotare_in.              --> empty_in
  CAN svuotare_su.              --> empty_on
  CAN tagliare.                 --> cut
  CAN tagliare_con.             --> cut_with
  CAN tirare.                   --> pull
  CAN trovare.                  --> find         (+ locate)
  CAN tuffarsi.                 --> dive
  CAN tuffarsi_in.              --> dive_in
  CAN uccidere.                 --> kill         (+ murder)
  CAN uccidere_con.             --> kill_with
  CAN usare.                    --> 'use'
  CAN usare_con.                --> use_with
  CAN vendere.                  --> sell
  CAN versare.                  --> pour
  CAN versare_in.               --> pour_in
  CAN versare_su.               --> pour_on

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
  CAN lie_down.
  CAN lie_in.
  CAN lie_on.
  CAN lift.
  CAN light.       -- (+ lit)
  CAN listen0.
  CAN listen.
  CAN 'look'.      -- (+ gaze, peek)
  CAN look_at.
  CAN look_behind.
  CAN look_in.
  CAN look_out_of.
  CAN look_through.
  CAN look_under.
  CAN look_up.
  CAN 'notify'.
  CAN notify_on.
  CAN notify_off.
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


END EVERY blocco_definizioni.


--==============================================================================
--------------------------------------------------------------------------------
-- § x.x - The check_restriction Event
--------------------------------------------------------------------------------
--==============================================================================

-- This event runs every turn from the start of the game:

EVENT check_restriction



--==============================================================================
--------------------------------------------------------------------------------
-- § x.1 - Restriction Level 0
--------------------------------------------------------------------------------
--==============================================================================

IF restricted_level OF mia_AT = 0    -- all verbs work normally
  THEN

  MAKE mia_AT abbandonare_partita.      --> 'quit'
  MAKE mia_AT andare_a.                 --> go_to
  MAKE mia_AT aprire.                   --> open
  MAKE mia_AT aprire_con.               --> open_with
  MAKE mia_AT aspettare.                --> wait         (+ z)
  MAKE mia_AT assaggiare.               --> taste        (+ lick)
  MAKE mia_AT attraversare.             --> climb_through
  MAKE mia_AT baciare.                  --> kiss         (+ hug, embrace)
  MAKE mia_AT bere.                     --> drink
  MAKE mia_AT bloccare.                 --> lock
  MAKE mia_AT bloccare_con.             --> lock_with
  MAKE mia_AT bruciare.                 --> burn
  MAKE mia_AT bruciare_con.             --> burn_with
  MAKE mia_AT bussare.                  --> knock
  MAKE mia_AT cantare.                  --> sing
  MAKE mia_AT caricare_partita.         --> 'restore'
  MAKE mia_AT chiudere.                 --> close        (+ shut)
  MAKE mia_AT chiudere_con.             --> close_with
  MAKE mia_AT comprare.                 --> buy          (+ purchase)
  MAKE mia_AT consultare.               --> consult
  MAKE mia_AT danzare.                  --> dance
  MAKE mia_AT dare.                     --> give
  MAKE mia_AT dire_no.                  --> 'no'
  MAKE mia_AT dire_sì.                  --> yes
  MAKE mia_AT domandare_chi_sono_io.    --> who_am_i
  MAKE mia_AT domandare_chi_è.          --> who_is
  MAKE mia_AT domandare_cosa_sono_io.   --> what_am_i
  MAKE mia_AT domandare_cosa_è.         --> what_is
  MAKE mia_AT domandare_dove_mi_trovo.  --> where_am_i
  MAKE mia_AT domandare_dove_è.         --> where_is
  MAKE mia_AT dormire.                  --> sleep        (+ rest)
  MAKE mia_AT entrare.                  --> enter
  MAKE mia_AT esaminare.                --> examine      (+ check, inspect, observe, x)
  MAKE mia_AT giocare_con.              --> play_with
  MAKE mia_AT gridare.                  --> shout        (+ scream, yell)
  MAKE mia_AT guidare.                  --> drive
  MAKE mia_AT indossare.                --> wear
  MAKE mia_AT inventariare.             --> i            (+ inv, inventory)
  MAKE mia_AT lasciare.                 --> drop         (+ discard, dump, reject)
  MAKE mia_AT leggere.                  --> read
  MAKE mia_AT liberare.                 --> free         (+ release)
  MAKE mia_AT mangiare.                 --> eat
  MAKE mia_AT modalità_breve.           --> brief
  MAKE mia_AT modalità_lunga.           --> verbose
  MAKE mia_AT mostrare.                 --> 'show'       (+ reveal)
  MAKE mia_AT nuotare.                  --> swim
  MAKE mia_AT nuotare_in.               --> swim_in
  MAKE mia_AT pensare.                  --> think
  MAKE mia_AT pensare_a.                --> think_about
  MAKE mia_AT pregare.                  --> pray
  MAKE mia_AT prendere.                 --> take.        (+ carry, get, grab, hold, obtain)
  MAKE mia_AT prendere_da.              --> take_from.   (+ remove from)
  MAKE mia_AT pulire.                   --> clean        (+ polish, wipe)
  MAKE mia_AT ricominciare_partita.     --> 'restart'
  MAKE mia_AT rifare.                   --> 'again'
  MAKE mia_AT rompere.                  --> break        (+ destroy)
  MAKE mia_AT rompere_con.              --> break_with
  MAKE mia_AT saltare.                  --> jump
  MAKE mia_AT saltare_in.               --> jump_in
  MAKE mia_AT saltare_su.               --> jump_on
  MAKE mia_AT salvare_partita.          --> save
  MAKE mia_AT sbloccare.                --> unlock
  MAKE mia_AT sbloccare_con.            --> unlock_with
  MAKE mia_AT scavare.                  --> dig
  MAKE mia_AT scrivere.                 --> write
  MAKE mia_AT seguire.                  --> follow
  MAKE mia_AT spingere.                 --> push
  MAKE mia_AT spingere_con.             --> push_with
  MAKE mia_AT spogliarsi.               --> undress
  MAKE mia_AT suonare.                  --> play
  MAKE mia_AT svuotare.                 --> 'empty'
  MAKE mia_AT svuotare_in.              --> empty_in
  MAKE mia_AT svuotare_su.              --> empty_on
  MAKE mia_AT tagliare.                 --> cut
  MAKE mia_AT tagliare_con.             --> cut_with
  MAKE mia_AT tirare.                   --> pull
  MAKE mia_AT trovare.                  --> find         (+ locate)
  MAKE mia_AT tuffarsi.                 --> dive
  MAKE mia_AT tuffarsi_in.              --> dive_in
  MAKE mia_AT uccidere.                 --> kill         (+ murder)
  MAKE mia_AT uccidere_con.             --> kill_with
  MAKE mia_AT usare.                    --> 'use'
  MAKE mia_AT usare_con.                --> use_with
  MAKE mia_AT vendere.                  --> sell
  MAKE mia_AT versare.                  --> pour
  MAKE mia_AT versare_in.               --> pour_in
  MAKE mia_AT versare_su.               --> pour_on

--# NOT YET TRANSLATED:
  MAKE mia_AT about.
  MAKE mia_AT answer.          -- (+ reply)
  MAKE mia_AT ask.             -- (+ enquire, inquire, interrogate)
  MAKE mia_AT ask_for.
  MAKE mia_AT attack.          -- (+ beat, fight, hit, punch)
  MAKE mia_AT attack_with.
  MAKE mia_AT bite.            -- (+ chew)
  MAKE mia_AT catch.
  MAKE mia_AT climb.
  MAKE mia_AT climb_on.
  MAKE mia_AT credits.         -- (+ acknowledgments, author, copyright)
  MAKE mia_AT 'exit'.
  MAKE mia_AT extinguish.      -- (+ put out, quench)
  MAKE mia_AT fill.
  MAKE mia_AT fill_with.
  MAKE mia_AT fire.
  MAKE mia_AT fire_at.
  MAKE mia_AT fix.             -- (+ mend, repair)
  MAKE mia_AT get_up.
  MAKE mia_AT get_off.
  MAKE mia_AT hint.            -- (+ hints)
  MAKE mia_AT kick.
  MAKE mia_AT lie_down.
  MAKE mia_AT lie_in.
  MAKE mia_AT lie_on.
  MAKE mia_AT lift.
  MAKE mia_AT light.           -- (+ lit)
  MAKE mia_AT listen0.
  MAKE mia_AT listen.
  MAKE mia_AT 'look'.          -- (+ gaze, peek)
  MAKE mia_AT look_at.
  MAKE mia_AT look_behind.
  MAKE mia_AT look_in.
  MAKE mia_AT look_out_of.
  MAKE mia_AT look_through.
  MAKE mia_AT look_under.
  MAKE mia_AT look_up.
  MAKE mia_AT 'notify'.
  MAKE mia_AT notify_on.
  MAKE mia_AT notify_off.
  MAKE mia_AT pry.
  MAKE mia_AT pry_with.
  MAKE mia_AT put.             -- (+ lay, place)
  MAKE mia_AT put_against.
  MAKE mia_AT put_behind.
  MAKE mia_AT put_down.
  MAKE mia_AT put_in.          -- (+ insert)
  MAKE mia_AT put_near.
  MAKE mia_AT put_on.
  MAKE mia_AT put_under.
  MAKE mia_AT remove.
  MAKE mia_AT rub.
  MAKE mia_AT 'say'.
  MAKE mia_AT say_to.
  MAKE mia_AT 'score'.
  MAKE mia_AT scratch.
  MAKE mia_AT 'script'.
  MAKE mia_AT script_on.
  MAKE mia_AT script_off.
  MAKE mia_AT search.
  MAKE mia_AT shake.
  MAKE mia_AT shoot.           -- (at)
  MAKE mia_AT shoot_with.
  MAKE mia_AT sip.
  MAKE mia_AT sit.             -- (down)
  MAKE mia_AT sit_on.
  MAKE mia_AT smell0.
  MAKE mia_AT smell.
  MAKE mia_AT squeeze.
  MAKE mia_AT stand.           -- (up)
  MAKE mia_AT stand_on.
  MAKE mia_AT switch.
  MAKE mia_AT switch_on.
  MAKE mia_AT switch_off.
  MAKE mia_AT talk.
  MAKE mia_AT talk_to.         -- (+ speak)
  MAKE mia_AT tear.            -- (+ rip)
  MAKE mia_AT tell.            -- (+ enlighten, inform)
  MAKE mia_AT throw.
  MAKE mia_AT throw_at.
  MAKE mia_AT throw_in.
  MAKE mia_AT throw_to.
  MAKE mia_AT tie.
  MAKE mia_AT tie_to.
  MAKE mia_AT touch.           -- (+ feel)
  MAKE mia_AT touch_with.
  MAKE mia_AT turn.            -- (+ rotate)
  MAKE mia_AT turn_on.
  MAKE mia_AT turn_off.



--==============================================================================
--------------------------------------------------------------------------------
-- § x.2 - Restriction Level 1
--------------------------------------------------------------------------------
--==============================================================================

ELSIF restricted_level OF mia_AT = 1  -- communication verbs are restricted
  THEN

  MAKE mia_AT NOT cantare.                  --> sing
  MAKE mia_AT NOT gridare.                  --> shout       (+ scream, yell)

--# NOT YET TRANSLATED:
  MAKE mia_AT NOT answer.
  MAKE mia_AT NOT ask.
  MAKE mia_AT NOT ask_for.
  MAKE mia_AT NOT 'say'.
  MAKE mia_AT NOT say_to.
  MAKE mia_AT NOT tell.




--==============================================================================
--------------------------------------------------------------------------------
-- § x.3 - Restriction Level 2
--------------------------------------------------------------------------------
--==============================================================================

ELSIF restricted_level OF mia_AT = 2   -- all action verbs, including communication verbs,
                -- are restricted. Verbs like 'examine', 'look', , 'inventory, 'think'
                -- 'wait' and sensory verbs as well as all out-of-game verbs work
  THEN

  MAKE mia_AT     abbandonare_partita.      --> 'quit'
  MAKE mia_AT NOT andare_a.                 --> go_to
  MAKE mia_AT NOT aprire.                   --> open
  MAKE mia_AT NOT aprire_con.               --> open_with
  MAKE mia_AT     aspettare.                --> wait         (+ z)
  MAKE mia_AT NOT assaggiare.               --> taste        (+ lick)
  MAKE mia_AT NOT attraversare.             --> climb_through
  MAKE mia_AT NOT baciare.                  --> kiss         (+ hug, embrace)
  MAKE mia_AT NOT bere.                     --> drink
  MAKE mia_AT NOT bloccare.                 --> lock
  MAKE mia_AT NOT bloccare_con.             --> lock_with
  MAKE mia_AT NOT bruciare.                 --> burn
  MAKE mia_AT NOT bruciare_con.             --> burn_with
  MAKE mia_AT NOT bussare.                  --> knock
  MAKE mia_AT NOT cantare.                  --> sing
  MAKE mia_AT     caricare_partita.         --> 'restore'
  MAKE mia_AT NOT chiudere.                 --> close        (+ shut)
  MAKE mia_AT NOT chiudere_con.             --> close_with
  MAKE mia_AT NOT comprare.                 --> buy          (+ purchase)
  MAKE mia_AT NOT consultare.               --> consult
  MAKE mia_AT NOT danzare.                  --> dance
  MAKE mia_AT NOT dare.                     --> give
  MAKE mia_AT     dire_no.                  --> 'no'
  MAKE mia_AT     dire_sì.                  --> yes
  MAKE mia_AT     domandare_chi_sono_io.    --> who_am_i
  MAKE mia_AT     domandare_chi_è.          --> who_is
  MAKE mia_AT     domandare_cosa_sono_io.   --> what_am_i
  MAKE mia_AT     domandare_cosa_è.         --> what_is
  MAKE mia_AT     domandare_dove_mi_trovo.  --> where_am_i
  MAKE mia_AT     domandare_dove_è.         --> where_is
  MAKE mia_AT NOT dormire.                  --> sleep        (+ rest)
  MAKE mia_AT NOT entrare.                  --> enter
  MAKE mia_AT     esaminare.                --> examine      (+ check, inspect, observe, x)
  MAKE mia_AT NOT giocare_con.              --> play_with
  MAKE mia_AT NOT gridare.                  --> shout        (+ scream, yell)
  MAKE mia_AT NOT guidare.                  --> drive
  MAKE mia_AT NOT indossare.                --> wear
  MAKE mia_AT     inventariare.             --> i            (+ inv, inventory)
  MAKE mia_AT NOT lasciare.                 --> drop         (+ discard, dump, reject)
  MAKE mia_AT NOT leggere.                  --> read
  MAKE mia_AT NOT liberare.                 --> free         (+ release)
  MAKE mia_AT NOT mangiare.                 --> eat
  MAKE mia_AT     modalità_breve.           --> brief
  MAKE mia_AT     modalità_lunga.           --> verbose
  MAKE mia_AT NOT mostrare.                 --> 'show'       (+ reveal)
  MAKE mia_AT NOT nuotare.                  --> swim
  MAKE mia_AT NOT nuotare_in.               --> swim_in
  MAKE mia_AT     pensare.                  --> think
  MAKE mia_AT     pensare_a.                --> think_about
  MAKE mia_AT     pregare.                  --> pray
  MAKE mia_AT NOT prendere.                 --> take.        (+ carry, get, grab, hold, obtain)
  MAKE mia_AT NOT prendere_da.              --> take_from.   (+ remove from)
  MAKE mia_AT NOT pulire.                   --> clean        (+ polish, wipe)
  MAKE mia_AT     ricominciare_partita.     --> 'restart'
  MAKE mia_AT     rifare.                   --> 'again'
  MAKE mia_AT NOT rompere.                  --> break        (+ destroy)
  MAKE mia_AT NOT rompere_con.              --> break_with
  MAKE mia_AT NOT saltare.                  --> jump
  MAKE mia_AT NOT saltare_in.               --> jump_in
  MAKE mia_AT NOT saltare_su.               --> jump_on
  MAKE mia_AT     salvare_partita.          --> save
  MAKE mia_AT NOT sbloccare.                --> unlock
  MAKE mia_AT NOT sbloccare_con.            --> unlock_with
  MAKE mia_AT NOT scavare.                  --> dig
  MAKE mia_AT NOT scrivere.                 --> write
  MAKE mia_AT NOT seguire.                  --> follow
  MAKE mia_AT NOT spingere.                 --> push
  MAKE mia_AT NOT spingere_con.             --> push_with
  MAKE mia_AT NOT spogliarsi.               --> undress
  MAKE mia_AT NOT suonare.                  --> play
  MAKE mia_AT NOT svuotare.                 --> 'empty'
  MAKE mia_AT NOT svuotare_in.              --> empty_in
  MAKE mia_AT NOT svuotare_su.              --> empty_on
  MAKE mia_AT NOT tagliare.                 --> cut
  MAKE mia_AT NOT tagliare_con.             --> cut_with
  MAKE mia_AT NOT tirare.                   --> pull
  MAKE mia_AT NOT trovare.                  --> find         (+ locate)
  MAKE mia_AT NOT tuffarsi.                 --> dive
  MAKE mia_AT NOT tuffarsi_in.              --> dive_in
  MAKE mia_AT NOT uccidere.                 --> kill         (+ murder)
  MAKE mia_AT NOT uccidere_con.             --> kill_with
  MAKE mia_AT NOT usare.                    --> 'use'
  MAKE mia_AT NOT usare_con.                --> use_with
  MAKE mia_AT NOT vendere.                  --> sell
  MAKE mia_AT NOT versare.                  --> pour
  MAKE mia_AT NOT versare_in.               --> pour_in
  MAKE mia_AT NOT versare_su.               --> pour_on

--# NOT YET TRANSLATED:

  MAKE mia_AT about.
  MAKE mia_AT NOT answer.      -- (+ reply)
  MAKE mia_AT NOT ask.         -- (+ enquire, inquire, interrogate)
  MAKE mia_AT NOT ask_for.
  MAKE mia_AT NOT attack.      -- (+ beat, fight, hit, punch)
  MAKE mia_AT NOT attack_with.
  MAKE mia_AT NOT bite.        -- (+ chew)
  MAKE mia_AT NOT catch.
  MAKE mia_AT NOT climb.
  MAKE mia_AT NOT climb_on.
  MAKE mia_AT credits.         -- (+ acknowledgments, author, copyright)
  MAKE mia_AT NOT 'exit'.
  MAKE mia_AT NOT extinguish.  -- (+ put out, quench)
  MAKE mia_AT NOT fill.
  MAKE mia_AT NOT fill_with.
  MAKE mia_AT NOT fire.
  MAKE mia_AT NOT fire_at.
  MAKE mia_AT NOT fix.         -- (+ mend, repair)
  MAKE mia_AT NOT get_up.
  MAKE mia_AT NOT get_off.
  MAKE mia_AT hint.            -- (+ hints)
  MAKE mia_AT NOT kick.
  MAKE mia_AT NOT lie_down.
  MAKE mia_AT NOT lie_in.
  MAKE mia_AT NOT lie_on.
  MAKE mia_AT NOT lift.
  MAKE mia_AT NOT light.       -- (+ lit)
  MAKE mia_AT listen0.
  MAKE mia_AT listen.
  MAKE mia_AT 'look'.          -- (+ gaze, peek)
  MAKE mia_AT look_at.
  MAKE mia_AT look_behind.
  MAKE mia_AT look_in.
  MAKE mia_AT look_out_of.
  MAKE mia_AT look_through.
  MAKE mia_AT look_under.
  MAKE mia_AT look_up.
  MAKE mia_AT 'notify'.
  MAKE mia_AT notify_on.
  MAKE mia_AT notify_off.
  MAKE mia_AT NOT pry.
  MAKE mia_AT NOT pry_with.
  MAKE mia_AT NOT put.         -- (+ lay, place)
  MAKE mia_AT NOT put_against.
  MAKE mia_AT NOT put_behind.
  MAKE mia_AT NOT put_down.
  MAKE mia_AT NOT put_in.      -- (+ insert)
  MAKE mia_AT NOT put_near.
  MAKE mia_AT NOT put_on.
  MAKE mia_AT NOT put_under.
  MAKE mia_AT NOT remove.
  MAKE mia_AT NOT rub.
  MAKE mia_AT NOT 'say'.
  MAKE mia_AT NOT say_to.
  MAKE mia_AT 'score'.
  MAKE mia_AT NOT scratch.
  MAKE mia_AT 'script'.
  MAKE mia_AT script_on.
  MAKE mia_AT script_off.
  MAKE mia_AT NOT search.
  MAKE mia_AT NOT shake.
  MAKE mia_AT NOT shoot.       -- (at)
  MAKE mia_AT NOT shoot_with.
  MAKE mia_AT NOT sip.
  MAKE mia_AT NOT sit.         -- (down)
  MAKE mia_AT NOT sit_on.
  MAKE mia_AT smell0.
  MAKE mia_AT smell.
  MAKE mia_AT NOT squeeze.
  MAKE mia_AT NOT stand.       -- (up)
  MAKE mia_AT NOT stand_on.
  MAKE mia_AT NOT switch.
  MAKE mia_AT NOT switch_on.
  MAKE mia_AT NOT switch_off.
  MAKE mia_AT NOT talk.
  MAKE mia_AT NOT talk_to.     -- (+ speak)
  MAKE mia_AT NOT tear.        -- (+ rip)
  MAKE mia_AT NOT tell.        -- (+ enlighten, inform)
  MAKE mia_AT NOT throw.
  MAKE mia_AT NOT throw_at.
  MAKE mia_AT NOT throw_in.
  MAKE mia_AT NOT throw_to.
  MAKE mia_AT NOT tie.
  MAKE mia_AT NOT tie_to.
  MAKE mia_AT NOT touch.       -- (+ feel)
  MAKE mia_AT NOT touch_with.
  MAKE mia_AT NOT turn.        -- (+ rotate)
  MAKE mia_AT NOT turn_on.
  MAKE mia_AT NOT turn_off.



--==============================================================================
--------------------------------------------------------------------------------
-- § x.4 - Restriction Level 3
--------------------------------------------------------------------------------
--==============================================================================


ELSIF restricted_level OF mia_AT = 3   -- all in-game verbs are restricted, even
  THEN                                  -- 'examine', 'look' etc. Only out-of-game verbs like
                                        -- 'save', 'quit' etc work.


  MAKE mia_AT     abbandonare_partita.      --> 'quit'
  MAKE mia_AT NOT andare_a.                 --> go_to
  MAKE mia_AT NOT aprire.                   --> open
  MAKE mia_AT NOT aprire_con.               --> open_with
  MAKE mia_AT NOT aspettare.                --> wait         (+ z)
  MAKE mia_AT NOT assaggiare.               --> taste        (+ lick)
  MAKE mia_AT NOT attraversare.             --> climb_through
  MAKE mia_AT NOT baciare.                  --> kiss         (+ hug, embrace)
  MAKE mia_AT NOT bere.                     --> drink
  MAKE mia_AT NOT bloccare.                 --> lock
  MAKE mia_AT NOT bloccare_con.             --> lock_with
  MAKE mia_AT NOT bruciare.                 --> burn
  MAKE mia_AT NOT bruciare_con.             --> burn_with
  MAKE mia_AT NOT bussare.                  --> knock
  MAKE mia_AT NOT cantare.                  --> sing
  MAKE mia_AT     caricare_partita.         --> 'restore'
  MAKE mia_AT NOT chiudere.                 --> close        (+ shut)
  MAKE mia_AT NOT chiudere_con.             --> close_with
  MAKE mia_AT NOT comprare.                 --> buy          (+ purchase)
  MAKE mia_AT NOT consultare.               --> consult
  MAKE mia_AT NOT danzare.                  --> dance
  MAKE mia_AT NOT dare.                     --> give
  MAKE mia_AT     dire_no.                  --> 'no'
  MAKE mia_AT     dire_sì.                  --> yes
  MAKE mia_AT NOT domandare_chi_sono_io.    --> who_am_i
  MAKE mia_AT NOT domandare_chi_sono_io.    --> who_am_i
  MAKE mia_AT NOT domandare_chi_è.          --> who_is
  MAKE mia_AT NOT domandare_chi_è.          --> who_is
  MAKE mia_AT NOT domandare_cosa_sono_io.   --> what_am_i
  MAKE mia_AT NOT domandare_cosa_sono_io.   --> what_am_i
  MAKE mia_AT NOT domandare_cosa_è.         --> what_is
  MAKE mia_AT NOT domandare_cosa_è.         --> what_is
  MAKE mia_AT NOT domandare_dove_mi_trovo.  --> where_am_i
  MAKE mia_AT NOT domandare_dove_mi_trovo.  --> where_am_i
  MAKE mia_AT NOT domandare_dove_è.         --> where_is
  MAKE mia_AT NOT domandare_dove_è.         --> where_is
  MAKE mia_AT NOT dormire.                  --> sleep        (+ rest)
  MAKE mia_AT NOT entrare.                  --> enter
  MAKE mia_AT NOT esaminare.                --> examine      (+ check, inspect, observe, x)
  MAKE mia_AT NOT giocare_con.              --> play_with
  MAKE mia_AT NOT gridare.                  --> shout        (+ scream, yell)
  MAKE mia_AT NOT guidare.                  --> drive
  MAKE mia_AT NOT indossare.                --> wear
  MAKE mia_AT NOT inventariare.             --> i            (+ inv, inventory)
  MAKE mia_AT NOT lasciare.                 --> drop         (+ discard, dump, reject)
  MAKE mia_AT NOT leggere.                  --> read
  MAKE mia_AT NOT liberare.                 --> free         (+ release)
  MAKE mia_AT NOT mangiare.                 --> eat
  MAKE mia_AT     modalità_breve.           --> brief
  MAKE mia_AT     modalità_lunga.           --> verbose
  MAKE mia_AT NOT mostrare.                 --> 'show'       (+ reveal)
  MAKE mia_AT NOT nuotare.                  --> swim
  MAKE mia_AT NOT pensare.                  --> think
  MAKE mia_AT NOT pensare_a.                --> think_about
  MAKE mia_AT NOT nuotare_in.               --> swim_in
  MAKE mia_AT NOT pregare.                  --> pray
  MAKE mia_AT NOT prendere.                 --> take.        (+ carry, get, grab, hold, obtain)
  MAKE mia_AT NOT prendere_da.              --> take_from.   (+ remove from)
  MAKE mia_AT NOT pulire.                   --> clean        (+ polish, wipe)
  MAKE mia_AT     ricominciare_partita.     --> 'restart'
  MAKE mia_AT     rifare.                   --> 'again'
  MAKE mia_AT NOT rompere.                  --> break        (+ destroy)
  MAKE mia_AT NOT rompere_con.              --> break_with
  MAKE mia_AT NOT saltare.                  --> jump
  MAKE mia_AT NOT saltare_in.               --> jump_in
  MAKE mia_AT NOT saltare_su.               --> jump_on
  MAKE mia_AT     salvare_partita.          --> save
  MAKE mia_AT NOT sbloccare.                --> unlock
  MAKE mia_AT NOT sbloccare_con.            --> unlock_with
  MAKE mia_AT NOT scavare.                  --> dig
  MAKE mia_AT NOT scrivere.                 --> write
  MAKE mia_AT NOT seguire.                  --> follow
  MAKE mia_AT NOT spingere.                 --> push
  MAKE mia_AT NOT spingere_con.             --> push_with
  MAKE mia_AT NOT spogliarsi.               --> undress
  MAKE mia_AT NOT suonare.                  --> play
  MAKE mia_AT NOT svuotare.                 --> 'empty'
  MAKE mia_AT NOT svuotare_in.              --> empty_in
  MAKE mia_AT NOT svuotare_su.              --> empty_on
  MAKE mia_AT NOT tagliare.                 --> cut
  MAKE mia_AT NOT tagliare_con.             --> cut_with
  MAKE mia_AT NOT tirare.                   --> pull
  MAKE mia_AT NOT trovare.                  --> find         (+ locate)
  MAKE mia_AT NOT tuffarsi.                 --> dive
  MAKE mia_AT NOT tuffarsi_in.              --> dive_in
  MAKE mia_AT NOT uccidere.                 --> kill         (+ murder)
  MAKE mia_AT NOT uccidere_con.             --> kill_with
  MAKE mia_AT NOT usare.                    --> 'use'
  MAKE mia_AT NOT usare_con.                --> use_with
  MAKE mia_AT NOT vendere.                  --> sell
  MAKE mia_AT NOT versare.                  --> pour
  MAKE mia_AT NOT versare_in.               --> pour_in
  MAKE mia_AT NOT versare_su.               --> pour_on

--# NOT YET TRANSLATED:

  MAKE mia_AT about.
  MAKE mia_AT NOT answer.      -- (+ reply)
  MAKE mia_AT NOT ask.         -- (+ enquire, inquire, interrogate)
  MAKE mia_AT NOT ask_for.
  MAKE mia_AT NOT attack.      -- (+ beat, fight, hit, punch)
  MAKE mia_AT NOT attack_with.
  MAKE mia_AT NOT bite.        -- (+ chew)
  MAKE mia_AT NOT catch.
  MAKE mia_AT NOT climb.
  MAKE mia_AT NOT climb_on.
  MAKE mia_AT credits.         -- (+ acknowledgments, author, copyright)
  MAKE mia_AT NOT 'exit'.
  MAKE mia_AT NOT extinguish.  -- (+ put out, quench)
  MAKE mia_AT NOT fill.
  MAKE mia_AT NOT fill_with.
  MAKE mia_AT NOT fire.
  MAKE mia_AT NOT fire_at.
  MAKE mia_AT NOT fix.         -- (+ mend, repair)
  MAKE mia_AT NOT get_up.
  MAKE mia_AT NOT get_off.
  MAKE mia_AT hint.            -- (+ hints)
  MAKE mia_AT NOT kick.
  MAKE mia_AT NOT lie_down.
  MAKE mia_AT NOT lie_in.
  MAKE mia_AT NOT lie_on.
  MAKE mia_AT NOT lift.
  MAKE mia_AT NOT light.       -- (+ lit)
  MAKE mia_AT NOT listen0.
  MAKE mia_AT NOT listen.
  MAKE mia_AT NOT 'look'.      -- (+ gaze, peek)
  MAKE mia_AT NOT look_at.
  MAKE mia_AT NOT look_behind.
  MAKE mia_AT NOT look_in.
  MAKE mia_AT NOT look_out_of.
  MAKE mia_AT NOT look_through.
  MAKE mia_AT NOT look_under.
  MAKE mia_AT NOT look_up.
  MAKE mia_AT 'notify'.
  MAKE mia_AT notify_on.
  MAKE mia_AT notify_off.
  MAKE mia_AT NOT pry.
  MAKE mia_AT NOT pry_with.
  MAKE mia_AT NOT put.         -- (+ lay, place)
  MAKE mia_AT NOT put_against.
  MAKE mia_AT NOT put_behind.
  MAKE mia_AT NOT put_down.
  MAKE mia_AT NOT put_in.      -- (+ insert)
  MAKE mia_AT NOT put_near.
  MAKE mia_AT NOT put_on.
  MAKE mia_AT NOT put_under.
  MAKE mia_AT NOT remove.
  MAKE mia_AT NOT rub.
  MAKE mia_AT NOT 'say'.
  MAKE mia_AT NOT say_to.
  MAKE mia_AT 'score'.
  MAKE mia_AT NOT scratch.
  MAKE mia_AT 'script'.
  MAKE mia_AT script_on.
  MAKE mia_AT script_off.
  MAKE mia_AT NOT search.
  MAKE mia_AT NOT shake.
  MAKE mia_AT NOT shoot.       -- (at)
  MAKE mia_AT NOT shoot_with.
  MAKE mia_AT NOT sip.
  MAKE mia_AT NOT sit.         -- (down)
  MAKE mia_AT NOT sit_on.
  MAKE mia_AT NOT smell0.
  MAKE mia_AT NOT smell.
  MAKE mia_AT NOT squeeze.
  MAKE mia_AT NOT stand.       -- (up)
  MAKE mia_AT NOT stand_on.
  MAKE mia_AT NOT switch.
  MAKE mia_AT NOT switch_on.
  MAKE mia_AT NOT switch_off.
  MAKE mia_AT NOT talk.
  MAKE mia_AT NOT talk_to.     -- (+ speak)
  MAKE mia_AT NOT tear.        -- (+ rip)
  MAKE mia_AT NOT tell.        -- (+ enlighten, inform)
  MAKE mia_AT NOT throw.
  MAKE mia_AT NOT throw_at.
  MAKE mia_AT NOT throw_in.
  MAKE mia_AT NOT throw_to.
  MAKE mia_AT NOT tie.
  MAKE mia_AT NOT tie_to.
  MAKE mia_AT NOT touch.       -- (+ feel)
  MAKE mia_AT NOT touch_with.
  MAKE mia_AT NOT turn.        -- (+ rotate)
  MAKE mia_AT NOT turn_on.
  MAKE mia_AT NOT turn_off.

--==============================================================================
--------------------------------------------------------------------------------
-- § x.5 - Restriction Level 4
--------------------------------------------------------------------------------
--==============================================================================

ELSIF restricted_level OF mia_AT = 4   -- the strictest level of restriction;
                                        -- no verbs work, not even out-of-game verbs
  THEN                                  -- like 'save' and 'quit'.


  MAKE mia_AT NOT abbandonare_partita.      --> 'quit'
  MAKE mia_AT NOT andare_a.                 --> go_to
  MAKE mia_AT NOT aprire.                   --> open
  MAKE mia_AT NOT aprire_con.               --> open_with
  MAKE mia_AT NOT aspettare.                --> wait         (+ z)
  MAKE mia_AT NOT assaggiare.               --> taste        (+ lick)
  MAKE mia_AT NOT attraversare.             --> climb_through
  MAKE mia_AT NOT baciare.                  --> kiss         (+ hug, embrace)
  MAKE mia_AT NOT bere.                     --> drink
  MAKE mia_AT NOT bloccare.                 --> lock
  MAKE mia_AT NOT bloccare_con.             --> lock_with
  MAKE mia_AT NOT bruciare.                 --> burn
  MAKE mia_AT NOT bruciare_con.             --> burn_with
  MAKE mia_AT NOT bussare.                  --> knock
  MAKE mia_AT NOT cantare.                  --> sing
  MAKE mia_AT NOT caricare_partita.         --> 'restore'
  MAKE mia_AT NOT chiudere.                 --> close        (+ shut)
  MAKE mia_AT NOT chiudere_con.             --> close_with
  MAKE mia_AT NOT comprare.                 --> buy          (+ purchase)
  MAKE mia_AT NOT consultare.               --> consult
  MAKE mia_AT NOT danzare.                  --> dance
  MAKE mia_AT NOT dare.                     --> give
  MAKE mia_AT NOT dire_no.                  --> 'no'
  MAKE mia_AT NOT dire_sì.                  --> yes
  MAKE mia_AT NOT dormire.                  --> sleep        (+ rest)
  MAKE mia_AT NOT entrare.                  --> enter
  MAKE mia_AT NOT esaminare.                --> examine      (+ check, inspect, observe, x)
  MAKE mia_AT NOT giocare_con.              --> play_with
  MAKE mia_AT NOT gridare.                  --> shout        (+ scream, yell)
  MAKE mia_AT NOT guidare.                  --> drive
  MAKE mia_AT NOT indossare.                --> wear
  MAKE mia_AT NOT inventariare.             --> i               (+ inv, inventory)
  MAKE mia_AT NOT lasciare.                 --> drop         (+ discard, dump, reject)
  MAKE mia_AT NOT leggere.                  --> read
  MAKE mia_AT NOT liberare.                 --> free         (+ release)
  MAKE mia_AT NOT mangiare.                 --> eat
  MAKE mia_AT NOT modalità_breve.           --> brief
  MAKE mia_AT NOT modalità_lunga.           --> verbose
  MAKE mia_AT NOT mostrare.                 --> 'show'       (+ reveal)
  MAKE mia_AT NOT nuotare.                  --> swim
  MAKE mia_AT NOT nuotare_in.               --> swim_in
  MAKE mia_AT NOT pensare.                  --> think
  MAKE mia_AT NOT pensare_a.                --> think_about
  MAKE mia_AT NOT pregare.                  --> pray
  MAKE mia_AT NOT prendere.                 --> take.        (+ carry, get, grab, hold, obtain)
  MAKE mia_AT NOT prendere_da.              --> take_from.   (+ remove from)
  MAKE mia_AT NOT pulire.                   --> clean        (+ polish, wipe)
  MAKE mia_AT NOT ricominciare_partita.     --> 'restart'
  MAKE mia_AT NOT rifare.                   --> 'again'
  MAKE mia_AT NOT rompere.                  --> break        (+ destroy)
  MAKE mia_AT NOT rompere_con.              --> break_with
  MAKE mia_AT NOT saltare.                  --> jump
  MAKE mia_AT NOT saltare_in.               --> jump_in
  MAKE mia_AT NOT saltare_su.               --> jump_on
  MAKE mia_AT NOT salvare_partita.          --> save
  MAKE mia_AT NOT sbloccare.                --> unlock
  MAKE mia_AT NOT sbloccare_con.            --> unlock_with
  MAKE mia_AT NOT scavare.                  --> dig
  MAKE mia_AT NOT scrivere.                 --> write
  MAKE mia_AT NOT seguire.                  --> follow
  MAKE mia_AT NOT spingere.                 --> push
  MAKE mia_AT NOT spingere_con.             --> push_with
  MAKE mia_AT NOT spogliarsi.               --> undress
  MAKE mia_AT NOT suonare.                  --> play
  MAKE mia_AT NOT svuotare.                 --> 'empty'
  MAKE mia_AT NOT svuotare_in.              --> empty_in
  MAKE mia_AT NOT svuotare_su.              --> empty_on
  MAKE mia_AT NOT tagliare.                 --> cut
  MAKE mia_AT NOT tagliare_con.             --> cut_with
  MAKE mia_AT NOT tirare.                   --> pull
  MAKE mia_AT NOT trovare.                  --> find         (+ locate)
  MAKE mia_AT NOT tuffarsi.                 --> dive
  MAKE mia_AT NOT tuffarsi_in.              --> dive_in
  MAKE mia_AT NOT uccidere.                 --> kill         (+ murder)
  MAKE mia_AT NOT uccidere_con.             --> kill_with
  MAKE mia_AT NOT usare.                    --> 'use'
  MAKE mia_AT NOT usare_con.                --> use_with
  MAKE mia_AT NOT vendere.                  --> sell
  MAKE mia_AT NOT versare.                  --> pour
  MAKE mia_AT NOT versare_in.               --> pour_in
  MAKE mia_AT NOT versare_su.               --> pour_on

--# NOT YET TRANSLATED:

  MAKE mia_AT NOT about.
  MAKE mia_AT NOT answer.      -- (+ reply)
  MAKE mia_AT NOT ask.         -- (+ enquire, inquire, interrogate)
  MAKE mia_AT NOT ask_for.
  MAKE mia_AT NOT attack.      -- (+ beat, fight, hit, punch)
  MAKE mia_AT NOT attack_with.
  MAKE mia_AT NOT bite.        -- (+ chew)
  MAKE mia_AT NOT catch.
  MAKE mia_AT NOT climb.
  MAKE mia_AT NOT climb_on.
  MAKE mia_AT NOT credits.     -- (+ acknowledgments, author, copyright)
  MAKE mia_AT NOT 'exit'.
  MAKE mia_AT NOT extinguish.  -- (+ put out, quench)
  MAKE mia_AT NOT fill.
  MAKE mia_AT NOT fill_with.
  MAKE mia_AT NOT fire.
  MAKE mia_AT NOT fire_at.
  MAKE mia_AT NOT fix.         -- (+ mend, repair)
  MAKE mia_AT NOT get_up.
  MAKE mia_AT NOT get_off.
  MAKE mia_AT NOT hint.        -- (+ hints)
  MAKE mia_AT NOT kick.
  MAKE mia_AT NOT lie_down.
  MAKE mia_AT NOT lie_in.
  MAKE mia_AT NOT lie_on.
  MAKE mia_AT NOT lift.
  MAKE mia_AT NOT light.       -- (+ lit)
  MAKE mia_AT NOT listen0.
  MAKE mia_AT NOT listen.
  MAKE mia_AT NOT 'look'.      -- (+ gaze, peek)
  MAKE mia_AT NOT look_at.
  MAKE mia_AT NOT look_behind.
  MAKE mia_AT NOT look_in.
  MAKE mia_AT NOT look_out_of.
  MAKE mia_AT NOT look_through.
  MAKE mia_AT NOT look_under.
  MAKE mia_AT NOT look_up.
  MAKE mia_AT NOT 'notify'.
  MAKE mia_AT NOT notify_on.
  MAKE mia_AT NOT notify_off.
  MAKE mia_AT NOT pry.
  MAKE mia_AT NOT pry_with.
  MAKE mia_AT NOT put.         -- (+ lay, place)
  MAKE mia_AT NOT put_against.
  MAKE mia_AT NOT put_behind.
  MAKE mia_AT NOT put_down.
  MAKE mia_AT NOT put_in.      -- (+ insert)
  MAKE mia_AT NOT put_near.
  MAKE mia_AT NOT put_on.
  MAKE mia_AT NOT put_under.
  MAKE mia_AT NOT remove.
  MAKE mia_AT NOT rub.
  MAKE mia_AT NOT 'say'.
  MAKE mia_AT NOT say_to.
  MAKE mia_AT NOT 'score'.
  MAKE mia_AT NOT scratch.
  MAKE mia_AT NOT 'script'.
  MAKE mia_AT NOT script_on.
  MAKE mia_AT NOT script_off.
  MAKE mia_AT NOT search.
  MAKE mia_AT NOT shake.
  MAKE mia_AT NOT shoot.       -- (at)
  MAKE mia_AT NOT shoot_with.
  MAKE mia_AT NOT sip.
  MAKE mia_AT NOT sit.         -- (down)
  MAKE mia_AT NOT sit_on.
  MAKE mia_AT NOT smell0.
  MAKE mia_AT NOT smell.
  MAKE mia_AT NOT squeeze.
  MAKE mia_AT NOT stand.       -- (up)
  MAKE mia_AT NOT stand_on.
  MAKE mia_AT NOT switch.
  MAKE mia_AT NOT switch_on.
  MAKE mia_AT NOT switch_off.
  MAKE mia_AT NOT talk.
  MAKE mia_AT NOT talk_to.     -- (+ speak)
  MAKE mia_AT NOT tear.        -- (+ rip)
  MAKE mia_AT NOT tell.        -- (+ enlighten, inform)
  MAKE mia_AT NOT throw.
  MAKE mia_AT NOT throw_at.
  MAKE mia_AT NOT throw_in.
  MAKE mia_AT NOT throw_to.
  MAKE mia_AT NOT tie.
  MAKE mia_AT NOT tie_to.
  MAKE mia_AT NOT touch.       -- (+ feel)
  MAKE mia_AT NOT touch_with.
  MAKE mia_AT NOT turn.        -- (+ rotate)
  MAKE mia_AT NOT turn_on.
  MAKE mia_AT NOT turn_off.

END IF.

SCHEDULE check_restriction AFTER 1.

END EVENT.


--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- § X - L'Intestazione dell'Avventura (Banner)
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

-- THE banner IsA blocco_definizioni --> Why?!

THE intestazione IsA LOCATION

    DESCRIPTION

    "$p" STYLE alert. SAY titolo OF mia_AT. STYLE normal.

    IF sottotitolo OF mia_AT <> ""
      THEN "$n" SAY sottotitolo OF mia_AT.
      END IF.

    "$n(C)" SAY autore OF mia_AT. "," SAY anno OF mia_AT. "."

    "$nProgrammed with the ALAN Interactive Fiction Language v3.0 beta5
    $nStandard Library v2.1"

    IF versione OF mia_AT <> "0"
      THEN "$nVersione" SAY versione OF mia_AT.
      END IF.

    "$nTutti i diritti riservati."

END THE intestazione.


---< Fine del File >---
