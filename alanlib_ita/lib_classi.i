--= Alan StdLib Italian: Classi
--| Tristano Ajmone <tajmone@gmail.com>
--~-----------------------------------------------------------------------------
--~ "lib_classi.i"
--| v0.12.1-Alpha, 2019-02-01: Alan 3.0beta6 build 1862
--|=============================================================================
--| Adattamento italiano del modulo `lib_classes.i` della
--| _ALAN Standard Library_ v2.1, (C) Anssi Räisänen, Artistic License 2.1.
--| Ad opera di Tristano Ajmone,  (C) 2018, Artistic License 2.1.
--|=============================================================================


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
--|| § 0     | Panoramica del Modulo
--|| § 0.1   | - Elenco e descrizione delle classi
--||---------|-----------------------------------------------------------------
--|| § 2     | Attori
--|| § 2.1   | - Attributi Comuni
--|| § 2.2   | - Inizializzazione degli Attori
--|| § 2.3   | - Inizializzazione di Genere, Numero e Preposizioni Articolate
--|| § 2.3.1 |   - Attori con Nome Proprio
--|| § 2.3.2 |   - Attori Senza Nome Proprio
--|| § 2.4   | - Inizializzazione Articoli Indeterminativi
--|| § 2.4.1 |   - Attori con Nome Proprio
--|| § 2.4.2 |   - Attori Senza Nome Proprio
--|| § 2.5   | - Inizializzazione Articoli Determinativi
--|| § 2.5.1 |   - Attori con Nome Proprio
--|| § 2.5.2 |   - Attori Senza Nome Proprio
--||---------|-----------------------------------------------------------------
--|| § 3     | Sottoclassi di ACTOR
--|| § 3.1   | - PERSONA (può parlare)
--|| § 3.1.1 |   - MASCHIO
--|| § 3.1.2 |   - FEMMINA
--||---------|-----------------------------------------------------------------
--|| § x     | Oggetti Fittizi
--|| § x.x   | - Indumento Fittizio
--++===========================================================================+


-->intro(100.1)
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Introduzione
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--|
--| Questo modulo della libreria definisce varie classi di oggetti e attori.
--| Siccome molte di queste classi ricorrono spesso nelle definizioni dei verbi
--| nel modulo `lib_verbi.i`, si consiglia di procedere con cautela prima di
--| modificarle o cancellarle. Per semplificare tale compito, all'inizio di
--| ciascuna classe viene riportato se e dove venga fatto riferimento ad essa
--| negli altri moduli della libreria.
--<


-->elenco_classi(1000.1)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Elenco delle classi
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--|
--| [WARNING]
--| =================================
--| Sezione non ancora disponibile...
--| =================================
--<



-->vestiario(10000.1)
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Vestiario
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--| 
--| 
--| Un `indumento` è un capo di vestiario implementato secondo le regole
--| dell'estensione `xwear.i` di Alan Bampton. Il codice di questa classe
--| impedisce di indossare gli indumenti in ordine insensato -- per esempio, non
--| puoi indossare una camicia se stai già indossando una giacca, e via dicendo.
--| Queste funzionalità si applicano solo al protagonista, e non possono essere
--| estese ai PNG.
--|
--| Questa classe include la ridefinizione dei verbi `esamina`, `indossa` e
--| `togliti`.
--|
--| [NOTE]
--| ============================================================================
--| Questa classe è basata sull'estensione `xwear.i` creata da Alan Bampton per
--| ALAN v2. Con il permesso dell'autore, l'estensione è stata adattata per
--| funzionare con ALAN v3, ed è stata interamente assimilata nella libreria.
--| Si ringrazia Alan Bampton per aver concesso l'autorizzazione a utilizzarne
--| il codice.
--| ============================================================================

--|
--| [NOTE]
--| ========================================================================
--| Il modulo `lib_verbi.i` fa riferimento a questa classe nei verbi `inventario`
--| e `prendi`, che utilizzano il contenitore `abbigliamento` definito in questa
--| classe.
--| ========================================================================
--<

-- @TODO: Sostituisci questa parte con un'introduzione generale in cui viene    TODO!
--        introdotto il vestiario in generale, con un riassunto dei vari
--        componenti definiti; e sposta le parti che riguardano la classe
--        indumento nella sezione dedicata ad essa, e idem per altri riferimenti.


-->abbigliamento
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === L'abbigliamento dell'eroe
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Gli indumenti indossati dall'eroe (a differenza di quelli semplicemente in
--| suo possesso) vengono immagazzinati nell'entità `abbigliamento`, che ha la
--| proprietà contenitore:

THE abbigliamento IsA ENTITY
  CONTAINER TAKING indumento.
    HEADER
      SAY  mia_AT:header_abbigliamento.
    ELSE
      SAY  mia_AT:header_abbigliamento_else.
END THE.

--| Poiché le entità sono ubiquiescenti nel mondo dell'avventura, l'istanza
--| `abbigliamento` e gli indumenti in essa contenuti saranno sempre accessibili
--| durante il gioco.
--| 
--| Il verbo `inventario`, dopo aver elencato gli oggetti in possesso dell'eroe,
--| elencherà anche gli indumenti da lui indossati tramite l'istruzione
--| `LIST abbigliamento` (che invocherà lo `HEADER` dell'entità contenitore
--| `abbigliamento`). Questo crea l'illusione che gli indumenti indossati siano
--| parte dei possedimenti dell'eroe, mentre in realtà sono contenuti nell'entità
--| `abbigliamento`.
--| 
--| [NOTE]
--| =======================================================================
--| L'entità `abbigliamento` è finalizzata all'uso interno della libereria,
--| gli autori di avventure non devono preoccuparsi di essa.
--| =======================================================================

--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Gli indumenti
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Ora definiamo la classe `indumento` ed i suoi attributi comuni, dopodiché
--| ridefiniamo su questa classe i verbi `esamina`, `indossa` e `togliti`.

--<
EVERY indumento IsA OBJECT

  IS indossabile.

  HAS genere 0.     -- Il genere `0` è neutro; qualsiasi altro valore impedirà
                    -- all'eroe di indossare indumenti il cui valore non sia
                    -- uguale al valore di `hero:genere`.
  HAS val_testa  0.
  HAS val_tronco 0.
  HAS val_gambe  0.
  HAS val_piedi  0.
  HAS val_mani   0.

  IS NOT indossato. -- Ossia, non è nel set degli `indossati` di alcun attore.


  INITIALIZE

--                                                                              TRANSLATE!

    -- the set attribute 'IS wearing' is defined to work for both the hero
    -- and NPCs:

    IF THIS IN abbigliamento
      THEN INCLUDE THIS IN indossati OF hero.
    END IF.

    FOR EACH ac IsA ACTOR
      DO
        IF ac = hero
          THEN
            IF THIS IN indossati OF hero AND THIS <> indumento_fittizio
              THEN
                IF THIS NOT IN abbigliamento
                  THEN LOCATE THIS IN abbigliamento.
                END IF.
                MAKE THIS indossato.
            END IF.
        ELSIF THIS IN indossati OF ac AND THIS <> indumento_fittizio
            THEN
              IF THIS NOT IN ac
                THEN
                  LOCATE THIS IN ac.
              END IF.
              MAKE THIS indossato.
        END IF.
    END FOR.

--                                                                              TRANSLATE!

    -- all objects found in a piece of clothing, for example a wallet in a jacket,
    -- will be allowed back in the piece of clothing once taken from there:


    FOR EACH o IsA OBJECT, DIRECTLY IN THIS
      DO INCLUDE o IN consentiti OF THIS.
    END FOR.

--                                                                              TRANSLATE!

    -- all clothing acquired and worn by the hero or an NPC mid-game is checked to
    -- show correctly when the possessions of an actor are listed:


    SCHEDULE worn_clothing_check AFTER 0.



  CONTAINER
--                                                                              TRANSLATE!
  -- to allow for example a wallet to be put into a jacket

  -- If the clothing contains something, for example if a jacket contains a wallet,
  -- the wallet will be mentioned by default when the jacket is examined:

-->verbo_esamina
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== Verbo `esamina`
--~-----------------------------------------------------------------------------
--~=============================================================================
--| 
--<

  VERB esamina
    DOES AFTER
      IF THIS IS NOT OPAQUE
        THEN
          IF COUNT IsA OBJECT, DIRECTLY IN THIS > 0
            THEN LIST THIS.
          END IF.
      END IF.
  END VERB esamina.


-->verbo_indossa
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== Verbo `indossa`
--~-----------------------------------------------------------------------------
--~=============================================================================
--| 
--<

  VERB indossa

    CHECK THIS:genere = hero:genere OR THIS:genere = 0
--                                                                              TRANSLATE!
      ELSE SAY mia_AT:check_clothing_sex.

    DOES ONLY

-- @NOTA: Il termine 'flag' è usato erroneamente qui, poiché i flag sono        FIXME!
--        sono booleani. Dovrei cambiare il nome dell'attributo in qualcosa
--        di più consono -- 'variabile'? Oppure specificare meglio (i valori
--        validi qui sono due: 0 e 1, altri valori sono indice di problemi.)
--~-----------------------------------------------------------------------------
--| Il `wear_flag` è un flag multiuso impiegato per vari scopi nella libreria.
--| In questo contesto, viene resettato a `0` prima di procedere con il codice,
--| 
--~-----------------------------------------------------------------------------

--                                                                              TRANSLATE!
--------------------------------------------------------------------
-- 'wear_flag' is a multi-purpose flag used for several purposes in
-- this library, here it is reset to 0 before proceeding as a matter
-- of 'housekeeping' for the code.
--------------------------------------------------------------------

      SET hero:wear_flag TO 0.

--~-----------------------------------------------------------------------------
--| Anzitutto, verifichiamo se l'eroe possiede già l'indumento e, in caso
--| contrario, settiamo il `wear_flag` a `1` per indicare che l'indumento è
--| stato raccolto nel corso dell'azione.
--~-----------------------------------------------------------------------------

--                                                                              TRANSLATE!
--------------------------------------------------------------------
-- First check to see if the player is carrying the item already, if
-- not, set the 'wear_flag' to 1 to indicate the item was picked up
-- in this turn.
--------------------------------------------------------------------

      IF THIS NOT IN hero
        THEN SET hero:wear_flag TO 1.
      END IF.

--                                                                              FINISH/REVISE!
--~-----------------------------------------------------------------------------
--| Ora verificheremo se l'eroe può indossare l'indumento, esaminandone tutti i
--| valori degli attributi per la mappatura delle zone del corpo interessate,
--| e della stratificazione di indossamento, confrontandoli con lo stato attuale
--| dell'abbigliamento dell'eroe.
--~-----------------------------------------------------------------------------

--                                                                              TRANSLATE!
--------------------------------------------------------------------
--  Now see if the player can put this item on by testing
--  all of its coverage attributes against the player's state.
--------------------------------------------------------------------

--~ Controllo tronco
--~ ================
--                                                                              FINISH/REVISE!
--~-----------------------------------------------------------------------------
--| Iniziamo con l'attributo `val_tronco`. Se l'indumento del parametro fallisce
--| questo test significa che l'eroe sta già indossando indumenti che coprono
--| la zona del tronco e che questi indumenti appartengono allo stesso strato
--| del parametro, o ad uno strato più esterno che ne blocca l'indossamento.
--| In entrambi i casi non sarà possibile indossare l'indumento del parametro.
--| Per tracciare se il testo è fallito, aggiungeremo 5 a `wear_flag`.
--~-----------------------------------------------------------------------------

--                                                                              TRANSLATE!
--------------------------------------------------------------------
-- First check the 'topcover' attributes, if 'obj' fails this test
-- then it means the hero is already wearing clothes that cover the
-- topcover area and those clothes are of the same layer or a layer
-- that belongs on top of the 'obj' item. In either case it would
-- NOT be possible to put on the 'obj'. To 'flag' this condition add
-- 5 to the 'wear_flag' attribute as an indicator this test failed.
--------------------------------------------------------------------


      IF  THIS:val_tronco <> 0
      AND THIS:val_tronco <= SUM OF val_tronco DIRECTLY IN abbigliamento
        THEN INCREASE hero:wear_flag BY 5.
      END IF.

--~-----------------------------------------------------------------------------
--| Ora procederemo con test analoghi sugli altri attributi.
--~-----------------------------------------------------------------------------

--                                                                              TRANSLATE!
--------------------------------------------------------------------
-- Perform a similar test for other attributes.
--------------------------------------------------------------------

--~ Controllo mani
--~ ==============

      IF  THIS:val_mani <> 0
      AND THIS:val_mani <= SUM OF val_mani DIRECTLY IN abbigliamento
        THEN INCREASE hero:wear_flag BY 5.
      END IF.

--~ Controllo piedi
--~ ===============

      IF  THIS:val_piedi <> 0
      AND THIS:val_piedi <= SUM OF val_piedi DIRECTLY IN abbigliamento
        THEN INCREASE hero:wear_flag BY 5.
      END IF.

--~ Controllo testa
--~ ===============

      IF  THIS:val_testa <> 0
      AND THIS:val_testa <= SUM OF val_testa DIRECTLY IN abbigliamento
        THEN INCREASE hero:wear_flag BY 5.
      END IF.

--~ Controllo gambe
--~ ===============
--                                                                              FINISH/REVISE!
--~-----------------------------------------------------------------------------
--| L'attributo `val_gambe` è un caso speciale e richiede di ritoccare l'attributo
--| `tempcovered` dell'eroe affinché il codice rigetti opzioni insensate.
--| Anzitutto, dispensiamo dai calcoli qualsiasi indumento simile a un cappotto,
--| dato che questi non impedirebbe di indossare indumenti che interesssano la
--| parte inferiore del corpo.
--~-----------------------------------------------------------------------------

--                                                                              TRANSLATE!
--------------------------------------------------------------------
--  botcover is a special case, adjust the 'tempcovered OF hero'
--  attribute so that the code rejects non sensible options.
--  First of all, discount any coatlike clothes as these never
--  affect ability to put on other lower body only garments.
--------------------------------------------------------------------


      SET hero:tempcovered TO SUM OF val_gambe DIRECTLY IN abbigliamento.

      IF hero:tempcovered >63 AND THIS:val_gambe < 33
        THEN SET hero:tempcovered TO hero:tempcovered -64.
      END IF.
--                                                                              FINISH/REVISE!
--~-----------------------------------------------------------------------------
--| Ora, dispensiamo indumenti quali dress/la gonna/coverall, dato che questi
--| non impediscono di indossare indumenti che interassano la parte inferiore
--| del corpo. Una clausola nel codice esclude dall'indossabilità un indumento
--| tipo un pagliaccetto, poiché una gonna ne ostacolerebbe l'indossamento.
--| (indumenti quali dress/cappotto prevengono questo automaticamente in virtù
--| del loro valore `val_tronco` superiore rispetto al pagliaccetto)
--~-----------------------------------------------------------------------------

--                                                                              TRANSLATE!
--------------------------------------------------------------------
-- Now discount any dress/ skirt coverall like clothes as these do
-- not technically affect ability to put on lower body only clothes.
-- Special clause here excludes the full body coverage 'teddy' type
-- garment - as a skirt WOULD prevent that from being removed.
-- ( dress/coat garments automatically prevent this by virtue of
-- having higher 'topcover' settings than the teddy )
--------------------------------------------------------------------


      IF hero:tempcovered >31 AND THIS:val_gambe < 16 AND THIS:val_gambe <> 4
        THEN SET hero:tempcovered TO hero:tempcovered -32.
      END IF.

--                                                                              FINISH/REVISE!
--~-----------------------------------------------------------------------------
--| Se a questo punto il `tempcovered` dell'eroe è ancora > 15 significa che stà
--| indossando indumenti del tipo pantaloni, e quindi impediremo l'indossamento
--| di indumenti del tipo ???'dress'??? poiché, nonostante sia tecnicamente fattibile
--| è da considerarsi una scelta insensata.
--~-----------------------------------------------------------------------------

--                                                                              TRANSLATE!
--------------------------------------------------------------------
-- IF tempcovered OF hero is still > 15 then must have trousers
-- type clothing on - therefore disallow wearing dress type clothing
-- because, although technically possible, it is not very sensible.
--------------------------------------------------------------------


      IF hero:tempcovered >15 AND THIS:val_gambe > 16
        THEN SET hero:tempcovered TO hero:tempcovered +16.
      END IF.

--                                                                              FINISH/REVISE!
--~-----------------------------------------------------------------------------
--| Da qui in poi, gli indumenti sono trattati come con le altre zone del corpo.
--~-----------------------------------------------------------------------------

--                                                                              TRANSLATE!
--------------------------------------------------------------------
--  From here down, clothes DO work as they do for other areas.
--------------------------------------------------------------------


      IF THIS:val_gambe <> 0 AND THIS:val_gambe <= hero:tempcovered
        THEN INCREASE hero:wear_flag BY 5.
      END IF.

--~ Esito finale
--~ ============

--~-----------------------------------------------------------------------------
--| A questo punto, il `wear_flag` avrà valore `0` se l'eroe possedeva già
--| l'indumento e questi è indossabile, valore `1` se l'eroe l'ha raccolto nel
--| corso dell'azione ed è indossabile. Qualsiasi valore superiore indicherà che
--| l'indumento non ha passato uno o più test, e che l'eroe non potrà indossarlo. 
--~-----------------------------------------------------------------------------

--                                                                              TRANSLATE!
--------------------------------------------------------------------
-- At this point, 'wear_flag' will be 0 if the obj was held by the
-- player and can be put on, or 1 if he picked it up this turn and
-- it can be put on. Any higher value means one or more of the
-- tests failed and the player cannot put on these clothes.
--------------------------------------------------------------------


      IF hero:wear_flag >1
        THEN
          -- ------------------------------------
          -- L'indumento non può essere indossato
          -- ------------------------------------
          -- Ci limitiamo a prenderlo (se non già posseduto)
          IF THIS NOT IN hero
          -- >>> prendi implicito: >>>
            THEN "prendi" SAY THE THIS. "."
          END IF.
          LOCATE THIS IN hero.
          -- <<< prendi implicito <<<

          LIST abbigliamento.
--                                                                              TRANSLATE!
          "Trying to put" SAY THE THIS. "on isn't very sensible."

      -- ELSIF hero:wear_flag = 1
      ELSE
        -- --------------------------------
        -- L'indumento può essere indossato
        -- --------------------------------
        LOCATE THIS IN abbigliamento.
        MAKE THIS indossato.
        INCLUDE THIS IN indossati OF hero.
        IF hero:wear_flag = 1
          THEN
            -- -----------------------------------
            -- L'indumento viene preso e indossato
            -- -----------------------------------
            "prendi" SAY THE THIS. "e l$$" SAY THIS:vocale. "indossi."
          ELSE
            -- ---------------------------
            -- L'indumento viene indossato
            -- ---------------------------
            "indossi" SAY THE THIS. "."
        END IF.
      END IF.

END VERB indossa.


-->verbo_togliti
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== Verbo `togliti`
--~-----------------------------------------------------------------------------
--~=============================================================================
--| 
--<

VERB togliti
  CHECK THIS IN abbigliamento
    ELSE SAY mia_AT:non_indossi.
  AND CURRENT LOCATION IS illuminato
    ELSE SAY mia_AT:imp_luogo_buio.

  DOES ONLY

    SET hero:wear_flag TO 0.


--                                                                              TRANSLATE!
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


    SET hero:tempcovered TO SUM OF val_tronco DIRECTLY IN abbigliamento /2.
      IF THIS:val_tronco <> 0 AND THIS:val_tronco < hero:tempcovered
        THEN INCREASE hero:wear_flag BY 1.
      END IF.


--                                                                              TRANSLATE!
--------------------------------------------------------------------
-- Perform a similar test for other attributes.
--------------------------------------------------------------------


    SET hero:tempcovered TO SUM OF val_mani DIRECTLY IN abbigliamento /2.
      IF THIS:val_mani <> 0 AND THIS:val_mani < hero:tempcovered
        THEN INCREASE hero:wear_flag BY 1.
      END IF.


    SET hero:tempcovered TO SUM OF val_piedi DIRECTLY IN abbigliamento /2.
    IF THIS:val_piedi <> 0 AND THIS:val_piedi < hero:tempcovered
      THEN INCREASE hero:wear_flag BY 1.
    END IF.


    SET hero:tempcovered TO SUM OF val_testa DIRECTLY IN abbigliamento /2.
    IF THIS:val_testa <> 0 AND THIS:val_testa < hero:tempcovered
      THEN INCREASE hero:wear_flag BY 1.
    END IF.


--                                                                              TRANSLATE!
--------------------------------------------------------------------
-- botcover is a special case - first discount any coatlike clothes
-- as these do not affect ability to take off other lower garments.
--------------------------------------------------------------------


    SET hero:tempcovered TO SUM OF val_gambe DIRECTLY IN abbigliamento.
    IF hero:tempcovered >63
      THEN SET hero:tempcovered TO hero:tempcovered -64.
    END IF.


--                                                                              TRANSLATE!
--------------------------------------------------------------------
-- Now discount any dress/ skirt coverall like clothes as these do
-- not affect ability to take off other lower garments. The 'teddy'
-- type garment is expressly NOT included in the exclusion here.
--------------------------------------------------------------------


    IF hero:tempcovered >31 AND THIS:val_gambe <>4
      THEN SET hero:tempcovered TO hero:tempcovered -32.
    END IF.


--                                                                              TRANSLATE!
--------------------------------------------------------------------
-- Now process the manipulated value just as was done for the others
--------------------------------------------------------------------


    SET hero:tempcovered TO hero:tempcovered /2.
    IF THIS:val_gambe <> 0 AND THIS:val_gambe < hero:tempcovered
      THEN INCREASE hero:wear_flag BY 1.
    END IF.


--                                                                              TRANSLATE!
--------------------------------------------------------------------
-- Depending on the value of 'wear_flag' print and process the obj
-- as needed. If 'wear_flag' is NOT 0 then the clothes cannot be
-- removed.
--------------------------------------------------------------------

--  Use $1 instead of THIS:                                                     OPTIMIZE!

    IF hero:wear_flag > 0
      THEN
        LIST abbigliamento.
--                                                                              TRANSLATE!
        "Trying to take" SAY THE THIS. "off isn't very sensible."
      ELSE
        LOCATE THIS IN hero.
        "Ti togli" SAY THE THIS. "."
        EXCLUDE THIS FROM hero:indossati.
        MAKE THIS NOT indossato.
    END IF.
END VERB togliti.


END EVERY.



--                                                                              TRANSLATE!
--------------------------------------------------------------------
-- These attributes are used internally in the library - ignore!
--------------------------------------------------------------------

ADD TO EVERY ACTOR
  IS tempcovered 0.
  IS wear_flag 0.
  IS genere 0.
END ADD TO.

--                                                                              TRANSLATE!
--------------------------------------------------------------------
-- An event checking that clothing acquired and worn by an actor
-- mid-game is recognised to be worn by the actor:
--------------------------------------------------------------------

-- @TODO: traduci attributo 'worn_clothing_check'                               TRANSLATE!

EVENT worn_clothing_check
  FOR EACH ac IsA ACTOR
    DO
      FOR EACH cl IsA indumento, IN indossati OF ac
        DO
          IF ac = hero
            THEN
              IF cl NOT IN abbigliamento
                THEN LOCATE cl IN abbigliamento.
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



-->vestiario_istruzioni(10900.1)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Istruzioni per l'uso del vestiario
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--<

--------------------------------------------------------------------

--                                                                              TRANSLATE!
-----------------------------------------------------------------------
-- INSTRUCTIONS FOR USING THE CLOTHING CLASS
-----------------------------------------------------------------------


-- Here is a quick overview for using the class 'clothing'.

-- A piece of clothing in your game code should look
-- something similar to the following four examples:


-- THE jacket IsA CLOTHING AT lobby
--   IS val_tronco 32.
-- END THE.


-- use IN to refer to containers:

-- THE jeans IsA CLOTHING IN wardrobe
--   IS val_gambe 16.
-- END THE.


-- IN worn = worn by the player character (hero):

-- THE hat IsA CLOTHING IN hero   -- declaring the initial location is optional
--   IS val_testa 2.
-- END THE.

-- THE hero IsA ACTOR
--   IS wearing {hat}.
-- END THE hero.


-- worn by an NPC called Joe:

-- THE sweater IsA CLOTHING IN joe    -- declaring the initial location is optional
  -- Don't declare clothing attributes for NPCs (unless the hero is meant to take
  -- and wear the NPC's clothing).
  -- NPCs cannot wear clothing in layers!
-- END THE.

-- THE joe IsA ACTOR AT room1
--   IS wearing {sweater}.
-- END THE joe.

-- Note that if the piece of clothing worn
-- by an NPC is not meant to be takeable by the
-- player character, you should declare the
-- the piece of clothing to be NOT takeable.


-- In defining a piece of clothing, you should
--
--  1) define it IsA CLOTHING (and not: IsA OBJECT)
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

-- THE hero IsA ACTOR
--   IS wearing {jeans, shirt, flipflops}.
-- END THE hero.

-- THE jill IsA ACTOR
--   IS wearing {dress}.
-- END THE jill.




-- The above is enough; the rest is then handled automatically by the library.


-- The quick guide ends here.



-->tabella_vestiario_intro(10950.1)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== La tabella del vestiario
--~-----------------------------------------------------------------------------
--~=============================================================================
--|
--| La tabella che segue riporta una selezione di indumenti d'uso comune ed i
--| corrispettivi valori degli attributi per una corretta implementazione.
--|
--| Per creare un indumento non figurante nella tabella, dovrebbe bastare un
--| po' di ingegno nel rapportare il nuovo capo di vestiario a quelli presenti
--| nella tabella, cercando di cogliere somilianze e differenze fino ad ottenere
--| dei valori adatti allo scopo.
--~
--| Teniate a mente che *è obbligatorio* impiegare i valori esatti riportati nella
--| tabella, e che sommare a casaccio valori intermedi produrrà quasi sicuramente
--| dei bachi nell'avventura.
--<

-->todo_checklist(.33)
--| * [ ] *Tabella del Vestiario*: finire traduzione.
--<<


-->tabella_vestiario(10960.1)
--| .Indumenti Comuni
--| [cols="<25d,5*^15m",options="header"]
--~                                                                             TRANSLATE!
--| |===========================================================================
--| | Indumento    |`val_testa`|`val_tronco`|`val_gambe`|`val_piedi`|`val_mani`
--~ +--------------------------+------------+-----------+-----------+----------+
--| | cappello             | 2 |          0 |         0 |         0 |        0
--| | canottiera/reggiseno | 0 |          2 |         0 |         0 |        0
--| | mutande/slip         | 0 |          0 |         2 |         0 |        0
--| | teddy                | 0 |          4 |         4 |         0 |        0
--| | blusa/shirt/T-shirt  | 0 |          8 |         0 |         0 |        0
--| | dress/coveralls      | 0 |          8 |        32 |         0 |        0
--| | gonna                | 0 |          0 |        32 |         0 |        0
--| | pantaloni/shorts     | 0 |          0 |        16 |         0 |        0
--| | sweater/pullover     | 0 |         16 |         0 |         0 |        0
--| | giacca               | 0 |         32 |         0 |         0 |        0
--| | cappotto             | 0 |         64 |        64 |         0 |        0
--| | socks/stockings      | 0 |          0 |         0 |         2 |        0
--| | tights/pantiehose    | 0 |          0 |         8 |         2 |        0
--| | scarpe/stivali       | 0 |          0 |         0 |         4 |        0
--| | guanti               | 0 |          0 |         0 |         0 |        2
--| |===========================================================================
--<


-->dispositiv(11000.1)                                  @DISPOSITIVO <-- @DEVICE
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Dispositivi
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--| 
--| Un macchinario o congengo ellettrico che è possibile accendere e spegnere,
--| a meno che non sia rotto. Se esaminato, la descrizione includerà il suo
--| stato attuale (acceso o spento).
--|
--| ESEMPI: Interruttore, Tv, computer, radio, generatore elettrico.
--|
--| [cols="50m,50d",options="header"]
--| |===========================================================================
--| | attributi e valori predefiniti | significato
--~ |--------------------------------+------------------------------------------
--| | IS NOT acceso.                 | È spento.
--| | IS NOT rotto.                  | È funzionante.
--| |===========================================================================
--|
--| [NOTE]
--| ========================================================================
--| Questa classe non ricorre altrove, né in questo file né in altri moduli.
--| ========================================================================
--<


EVERY dispositivo IsA OBJECT

  VERB esamina
    DOES AFTER
      IF THIS IS NOT plurale
        THEN "È"
        ELSE "Sono"
      END IF.

      IF THIS IS acceso
        THEN "acces$$"
        ELSE "spent$$"
      END IF. SAY THIS:vocale. "."
  END VERB esamina.


  VERB accendi
    CHECK THIS IS NOT acceso
      ELSE
        IF THIS IS NOT plurale
          THEN SAY mia_AT:ogg1_già_sg.
          ELSE SAY mia_AT:ogg1_già_pl.
        END IF. "acces$$" SAY THIS:vocale. "."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND THIS IS raggiungibile AND THIS IS NOT distante
      ELSE
        IF THIS IS NOT raggiungibile
          THEN
            IF THIS IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF THIS IS distante
          THEN
            IF THIS IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    AND THIS IS NOT rotto
      ELSE SAY mia_AT:non_succede_nulla.
    DOES ONLY
      "Fatto. Ora" SAY THE THIS.
      IF THIS IS NOT plurale
        THEN SAY "è".
        ELSE SAY "sono".
      END IF.
      "acces$$" SAY THIS:vocale. "."
      MAKE THIS acceso.
  END VERB accendi.


  VERB spegni
    CHECK THIS IS acceso
      ELSE
        IF THIS IS NOT plurale
          THEN SAY mia_AT:ogg1_già_sg.
          ELSE SAY mia_AT:ogg1_già_pl.
        END IF. "spent$$" SAY THIS:vocale. "."
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.
    AND THIS IS raggiungibile AND THIS IS NOT distante
      ELSE
        IF THIS IS NOT raggiungibile
          THEN
            IF THIS IS NOT plurale
              THEN SAY mia_AT:ogg1_non_raggiungibile_sg.
              ELSE SAY mia_AT:ogg1_non_raggiungibile_pl.
            END IF.
        ELSIF THIS IS distante
          THEN
            IF THIS IS NOT plurale
              THEN SAY mia_AT:ogg1_distante_sg.
              ELSE SAY mia_AT:ogg1_distante_pl.
            END IF.
        END IF.
    DOES ONLY
      "Fatto. Ora" SAY THE THIS.
      IF THIS IS NOT plurale
        THEN SAY "è".
        ELSE SAY "sono".
      END IF.
      "spent$$" SAY THIS:vocale. "."
      MAKE THIS NOT acceso.
  END VERB spegni.

END EVERY.


-->porte(12000.1)                                               @PORTA <-- @DOOR
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Porte
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--| 
--| Può essere aperta o chiusa, e (opzionale) bloccata e sbloccata. Di default
--| le porte sono chiuse e non bloccate. Per poter aprire una porta bloccata è
--| richiesta la sua chiave (`chiave_abbinata`). Se esaminata, la descrizione
--| includerà il suo stato attuale (aperta o chiusa).
--|
--| Le porte hanno anche l'attributo `altro_lato` tramite il quale è possibile
--| abbinare tra loro due porte situate in stanze diverse, creando l'illusione
--| di una sola porta che si affaccia su entrambe le stanze. Quando due porte
--| sono associate tra loro in questo modo, ossia dichiarando ciascuna porta
--| come `altro_lato` dell'altra, la libreria sincronizzerà i cambiamenti di
--| stato (aperta/chiusa, bloccata/sbloccata) tra esse, di modo che aprendo,
--| chiudendo, sbloccando o bloccando una di esse tali azioni abbiano effetto
--| automatico anche sulla porta associata.
--|
--|
--| [cols="50m,50d",options="header"]
--| |===========================================================================
--| | attributi e valori predefiniti       | significato
--~ |--------------------------------------+------------------------------------
--| | IS apribile.                         | Può essere aperta e chiusa.
--| | IS NOT aperto.                       | È chiusa.
--| | IS NOT bloccabile.                   | Non ha una serratura.
--| | IS NOT bloccato.                     | Non è blocata.
--| | IS NOT prendibile.                   | È fissa.
--| | HAS chiave_abbinata chiave_fittizia. | Non ha nessuna chiave abbinata.
--| |===========================================================================
--|
--| [NOTE]
--| ========================================================================
--| Questa classe non ricorre altrove, né in questo file né in altri moduli.
--| ========================================================================
--<

EVERY porta IsA OBJECT
  IS apribile.
  IS NOT aperto.
  IS NOT bloccabile.
  IS NOT bloccato.
  IS NOT prendibile.


  HAS altro_lato  porta_fittizia.
    --                                                                          TRANSLATE!
    
    -- The other side of the door in the next room will be automatically taken
    -- care of so that it shows correctly in any room or object descriptions.
    -- 'null_door' is a dummy default that can be ignored.



  INITIALIZE

    --                                                                          TRANSLATE!
    
    -- ensuring that the author didn't forget to declare a locked door closed
    -- (= NOT open), as well. This is just double-checking, as any door is by
    -- default closed (= "NOT open") at the start of the game:

    IF THIS IS bloccato
      THEN
        IF THIS IS aperto
          THEN MAKE THIS NOT aperto.
        END IF.
    END IF.

    --                                                                          TRANSLATE!

    -- ensuring that if a door has an otherside attribute declared, this
    -- otherside will have the original door as its otherside in turn:

    IF THIS:altro_lato <> porta_fittizia
      THEN
        SET THIS:altro_lato:altro_lato TO THIS.


        --                                                                      TRANSLATE!
      
        -- next, ensuring that some attributes are correctly assigned to the
        -- otherside of the door, as well. Only some non-default cases need to
        -- be addressed here:

        IF THIS IS NOT apribile
          THEN MAKE THIS:altro_lato NOT apribile.
        END IF.

        IF THIS IS aperto
          THEN MAKE THIS:altro_lato aperto.
        END IF.

        IF THIS IS bloccabile
          THEN MAKE THIS:altro_lato bloccabile.
        END IF.

        IF THIS IS bloccato
          THEN MAKE THIS:altro_lato bloccato.
        END IF.

    END IF.


   --                                                                           TRANSLATE!
   -- making the same matching_key open both sides of a door:

    IF  THIS:altro_lato <> porta_fittizia
    AND THIS:chiave_abbinata <> chiave_fittizia
      THEN SET THIS:altro_lato:chiave_abbinata TO THIS:chiave_abbinata.
    END IF.

   --                                                                           TRANSLATE!

    -- If a door is lockable/locked, you should state at the door instance
    -- which object will unlock it, with the matching_key attribute.
    -- for example

    -- THE attic_door IsA DOOR
    --   HAS matching_key brass_key.
    --   ...
    -- END THE.

    -- THE brass_key IsA OBJECT AT basement
    -- END THE.

  -- (null_key is a default dummy object that can be ignored.)



  VERB esamina
    DOES AFTER
      IF THIS IS NOT plurale
        THEN "È"
        ELSE "Sono"
      END IF.
      IF THIS IS aperto
        THEN "apert$$"
        ELSE "chius$$"
      END IF. SAY THIS:vocale. "."
  END VERB esamina.


  VERB bussa
    DOES ONLY
      IF THIS IS NOT aperto
        THEN
          "Bussi" SAY THIS:prep_A. "$1 ma non ottieni risposta."
        ELSE
          "Non è il caso di bussare" SAY THIS:prep_A. "$1 visto che"
          IF THIS IS NOT plurale
            THEN "è"
            ELSE "sono"
          END IF. "già apert$$" SAY THIS:vocale. "."
      END IF.
  END VERB bussa.


  VERB guarda_dietro
    DOES ONLY
      IF THIS IS NOT aperto
        THEN "Non puoi guardare dietro $+1,"
          IF THIS IS NOT plurale
            THEN "è"
            ELSE "sono"
          END IF. "chius$$" SAY THIS:vocale. "."
        ELSE "Non noti nulla di interessante dietro $+1."
      END IF.
  END VERB guarda_dietro.



  VERB guarda_sotto
    DOES ONLY
      IF THIS IS NOT aperto
        THEN "Lo spiraglio sotto $+1 chius$$" SAY THIS:vocale.
        "è troppo stretto per riuscire a vedere cosa vi sia al di là."
--      @TODO: Qui servirà il pronome "di $!1" ("al di là di esso/a/e/i")       FIXME!
--             Ma attualmente non sono disponibili!
        ELSE "Non noti nulla di interessante dietro $+1."
      END IF.
  END VERB guarda_sotto.



  VERB chiudi
    DOES
      IF THIS:altro_lato <> porta_fittizia
        THEN MAKE THIS:altro_lato NOT aperto.
      END IF.
  END VERB chiudi.


  VERB blocca
    DOES
      IF THIS:altro_lato <> porta_fittizia
        THEN  MAKE THIS:altro_lato NOT aperto.
              MAKE THIS:altro_lato bloccato.
      END IF.
  END VERB blocca.


  VERB apri
    DOES
      IF THIS:altro_lato <> porta_fittizia
        THEN  MAKE THIS:altro_lato aperto.
              MAKE THIS:altro_lato NOT bloccato.
      END IF.
  END VERB apri.


  VERB sblocca
    DOES
      IF THIS:altro_lato <> porta_fittizia
        THEN MAKE THIS:altro_lato NOT bloccato.
      END IF.
  END VERB sblocca.


END EVERY.


-- a default dummy, ignore:

THE porta_fittizia IsA porta
END THE.


-->finestre(13000.1)  @FINESTRA ---> @WINDOW
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Finestre
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--| 
--| Può essere aperta o chiusa; si può guardare attraverso e fuori da essa. Se
--| esaminata, la descrizione includerà il suo stato attuale (aperta o chiusa).
--|
--| [cols="50m,50d",options="header"]
--| |===========================================================================
--| | attributi e valori predefiniti | significato
--~ |--------------------------------+------------------------------------------
--| | IS apribile.                   |
--| | IS NOT aperto.                 |
--| | IS NOT prendibile.             |
--| |===========================================================================
--|
--| [NOTE]
--| ========================================================================
--| Questa classe non ricorre altrove, né in questo file né in altri moduli.
--| ========================================================================
--<


-- You can look out of and through a window.
-- When examined, a window is by default described as being either open or closed.


EVERY finestra IsA OBJECT
  IS apribile.
  IS NOT aperto.
  IS NOT prendibile.

  VERB esamina
    -- Se l'istanza ha una 'xDesc' questa verrà mostrata dato che qui il verbo
    -- non usa una clausola DOES ONLY.
    DOES
      IF THIS IS NOT plurale
        THEN "È"
        ELSE "Sono"
      END IF.
      IF THIS IS aperto
        THEN "apert$$"
        ELSE "chius$$"
      END IF. SAY THIS:vocale. "."
  END VERB esamina.


  VERB guarda_dietro
    DOES ONLY
      SAY mia_AT:non_fattibile.
  END VERB guarda_dietro.

-- @TODO: Trasforma in attributo messaggio la parte condivisa delle             TODO!
--        risposte "Non noti/vedi nulla di interessante"
  VERB guarda_fuori_da
--  @TODO: non mi piace questa risposta!                                        FIXME!
    DOES ONLY "Non noti nulla di interessante fuori" SAY THIS:prep_DA. "$1."
  END VERB guarda_fuori_da.


  VERB guarda_attraverso
--  @TODO: non mi piace questa risposta!                                        FIXME!
    DOES ONLY "Non noti nulla di interessante attraverso" SAY THIS:prep_DA. "$1."
  END VERB guarda_attraverso.
END EVERY.


-->fonte_di_luce(14000.1)  @FONTE_DI_LUCE --> @LIGHTSOURCE
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Fonti di luce
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--| 
--|
--<

--.---------------------------.
--| F O N T E   D I   L U C E |
--+---------------------------+------------------------------------------------.
--|                                                                            |

-- **** TESTO DELLA SCHEDA COMPLETAMENTE DA RIVEDERE!!! ****

--@NOTA: Questo non sarà più così dopo la traduzione italiana dei verbi dato
--       che alcuni verbi si sovrapporranno e non ci sarà tale distinguo.
--       Inoltre, il controllo per 'rotto' viene applicato in ogni caso, anche
--       per le luci naturali!
--       Il testo andrà rivisto!

--| Una fonte di luce può essere 'naturale' (p.es. una candela, una fiaccola,
--| un falò) o 'NOT naturale' (ossia artificiale, come una torcia elettrica,
--| una bajour).


--| Una fonte di luce artificiale la si può accendere, spegnere ed estinguere,
--| purché non sia rotta.

--| Una fonte di luce naturale può essere appiccata ed estinta, ma non accessa
--| o spenta.

--| Quando si esamina una fonte di luce, nella descrizione ne verrà menzionato
--| automaticamente lo stato (accesa/spenta).

--`----------------------------------------------------------------------------'

-- LIGHTSOURCE
  -- IS natural or NOT natural
  -- (a natural lightsource is for example a match or a torch).
  -- Can be turned on and off, lighted and extinguished (= put out) if it
  -- is not broken. A natural lightsource
  -- cannot be turned on or off, it can only be lighted and extinguished (= put out).
  -- When examined, a lightsource is automatically supplied with a description of
  -- whether it is providing light or not.

-- (In the file 'lib_verbi.i', IsA fonte_di_luce is used in the syntax definition of the verb 'light'.
-- Also, in 'lib_luoghi.i', LIGHTSOURCE is used in defining the behavior of the class DARK_LOCATION.)



EVERY fonte_di_luce IsA OBJECT
  IS NOT illuminato.

  VERB esamina
    DOES AFTER

      IF THIS IS NOT plurale
        THEN "È"
        ELSE "Sono"
      END IF.

      IF THIS IS illuminato
        THEN "acces$$"
        ELSE "spent$$"
      END IF. SAY THIS:vocale. "."
  END VERB esamina.


  VERB accendi
    CHECK THIS IS NOT illuminato
      ELSE
        IF THIS IS NOT plurale
          THEN SAY mia_AT:ogg1_già_sg.
          ELSE SAY mia_AT:ogg1_già_pl.
        END IF. "acces$$" SAY THIS:vocale. "."
    AND THIS IS NOT rotto
      ELSE SAY mia_AT:non_succede_nulla.
    DOES ONLY
      "Fatto. Ora" SAY THE THIS.
      IF THIS IS NOT plurale
        THEN SAY "è".
        ELSE SAY "sono".
      END IF.
      "acces$$" SAY THIS:vocale. "."
      MAKE THIS illuminato.
  END VERB accendi.


  VERB spegni
    CHECK THIS IS illuminato
      ELSE
        IF THIS IS NOT plurale
          THEN SAY mia_AT:ogg1_già_sg.
          ELSE SAY mia_AT:ogg1_già_pl.
        END IF. "spent$$" SAY THIS:vocale. "."
    DOES ONLY
      "Fatto. Ora" SAY THE THIS.
      IF THIS IS NOT plurale
        THEN SAY "è".
        ELSE SAY "sono".
      END IF.
      "spent$$" SAY THIS:vocale. "."
      MAKE THIS NOT illuminato.
  END VERB spegni.




END EVERY.


-->liquido(15000.1)  @LIQUIDO --> @LIQUID
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Liquidi
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--| 
--|
--| Si può prendere un liquido solo se è in un contenitore. Si possono usare i
--| liquidi per riempire qualcosa, e li si può versare.
--| Di default un liquido non è potabile.
--<


-- (In the file 'lib_verbi.i', IsA liquid is used in the syntax definitions of the verbs 'drink' and 'sip'.)


EVERY liquido IsA OBJECT

  CONTAINER
--                                                                              TRANSLATE!
    HEADER "In" SAY THE THIS. "you see"
    ELSE "There is nothing in" SAY THE THIS. "."

    -- Dichiariamo questa classe un contenitore al fine di consentire comandi
    -- come "butta il sacco in acqua", "guarda nell'acqua" e "prendi la perla
    -- dall'acqua". Vi sono anche altri casi che richiedono che questa classe
    -- si comporti come un contenitore, ad esempio "versa la pozione rossa nella
    -- pozione blu."

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

    FOR EACH liq IsA liquido
      DO
        FOR EACH o IsA OBJECT, DIRECTLY IN liq
          DO
            INCLUDE o IN consentiti OF liq.
        END FOR.
    END FOR.


  -- Every liquid in a container at the start of the game
  -- will have that container as its vessel:

    FOR EACH lc IsA contenitore_elencato
      DO
        FOR EACH lq IsA liquido, DIRECTLY IN lc
          DO
            SET lq:recipiente TO lc.
        END FOR.
    END FOR.


  -- If you have some liquid in a container in your game, you should declare the
  -- liquid instance thus:

  -- THE juice IsA liquid
  --      IN bottle
  -- END THE juice.

  -- The verb 'pour', as defined in this library, also works for the container of a liquid;
  -- i.e. if there is some juice in a bottle, 'pour bottle' and 'pour juice' will work equally well.
  -- Note, however, that the verb 'empty' is not a synonym for 'pour';
  -- 'empty' only works for container objects.



    SCHEDULE check_vessel AT THIS AFTER 0.    -- this event is defined further below


-->liquido
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Verbi
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--<



-->liquido
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== esamina
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `esamina`.
--<

-- @TODO: Se ha 'xDesc', mostra il testo?                                       IMPROVE

  VERB esamina
    DOES ONLY
      IF THIS:recipiente <> recipiente_fittizio
        THEN
          IF THIS:recipiente IS aperto
            THEN -- Descrivi liquido:
              -- Onora la xDesc, se presente.
              IF THIS:recipiente:xDesc <> ""
                THEN SAY ogg:xDesc.
                ELSE SAY mia_AT:descrizione_standard_ogg1.
              END IF.
-- @NOTA: se il contenitore è chiuso il liquido non può essere usato            CHECK!
--        dal giocatore nel comando (dato che di default chiuso=OPAQUE).
--        Quindi questa condizione non si verificherà mai. (verifica!)
--                                                                              TRANSLATE!
            ELSE "You can't, since" SAY THE recipiente OF THIS.
                IF THIS IS NOT plurale
                  THEN "is"
                  ELSE "are"
                END IF.
                "closed."
                -- Here we prohibit the player from examining
                -- a liquid when the liquid is in a closed container.
          END IF.
        ELSE SAY mia_AT:descrizione_standard_ogg1.
      END IF.
  END VERB esamina.


-->liquido    @LOOK IN
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== guarda_in
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `guarda_in`.
--<

  VERB guarda_in
    DOES ONLY
      IF THIS:recipiente <> recipiente_fittizio
        THEN
          IF THIS:recipiente IS aperto
--          @TODO: List contents instead!                                       TODO!
--                                                                              TRANSLATE!
            THEN "You see nothing special in" SAY THE THIS. "."
--                                                                              TRANSLATE!
            ELSE "You can't, since" SAY THE recipiente OF THIS.
                IF THIS IS NOT plurale
                  THEN "is"
                  ELSE "are"
                END IF.
                "closed."
                -- Here we prohibit the player from looking into
                -- a liquid when the liquid is in a closed container.
          END IF.
--      @TODO: List contents instead!                                           TODO!
        ELSE "You see nothing special in" SAY THE THIS. "."
      END IF.
  END VERB guarda_in.

-->liquido
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== prendi
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `prendi`.
--<

-- @PRENDI -> @TAKE (VERB) => LIQUID
  VERB prendi
    CHECK THIS:recipiente NOT IN hero
      ELSE
        SAY mia_AT:ogg1_già_posseduto.
    DOES ONLY
      IF THIS:recipiente = recipiente_fittizio
      OR THIS:recipiente IS NOT prendibile
        THEN SAY mia_AT:impossibile_maneggiare_liq1.
      ELSE
        LOCATE recipiente OF THIS IN hero.
        "($$" SAY THE THIS:recipiente. SAY THIS:prep_DI. SAY THIS. "$$)
        $nPres$$" SAY THIS:vocale. "."
      END IF.
  END VERB prendi.

-->liquido
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== prendi_da
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `prendi_da`.
--<

-- @PRENDI_DA -> @TAKE_FROM (VERB) => LIQUID
  VERB prendi_da
    WHEN ogg
      CHECK detentore <> THIS:recipiente
        ELSE SAY mia_AT:impossibile_maneggiare_liq1.
        -- Questo messaggio viene mostrato quando il giocatore tenta di prendere
        -- un liquido dal suo contenitore (es. "prendi il vino dalla bottiglia").
    DOES ONLY
      IF THIS:recipiente = recipiente_fittizio
      OR THIS:recipiente IS NOT prendibile
        THEN SAY mia_AT:impossibile_maneggiare_liq1.
      ELSE
        LOCATE recipiente OF THIS IN hero.
        "($$" SAY THE THIS:recipiente. SAY THIS:prep_DI. SAY THIS. "$$)
        $nPres$$" SAY THIS:vocale. "."
      END IF.
  END VERB prendi_da.

-->liquido
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== lascia
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `lascia`.
--<

  VERB lascia
    DOES ONLY
      LOCATE recipiente OF THIS AT hero.
--                                                                              CHECK!
-- @NOTE: Non sono sicuro se lasciarlo così o se usare invece come sopra (prendi_da):
--    "($$" SAY THE THIS:recipiente. SAY THIS:prep_DI. SAY THIS. "$$)
--     $nLasciat$$" SAY THIS:vocale. ".""
      "Lasci" SAY THE THIS:recipiente. SAY THIS:prep_DI. SAY THIS. "."
      -- @DELME when done:
      -- "($$" SAY THE recipiente OF THIS. "of" SAY THIS. "$$)$nDropped."
  END VERB lascia.

-->liquido
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== chiedi
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `chiedi`.
--<

  -- chiedi a (png) (ogg)

  VERB chiedi
    DOES ONLY
      -- Preserviamo copia dello stato di condiscendenza attuale del PNG:
      IF png IS condiscendente
        THEN MAKE mia_AT temp_condiscendente.
        ELSE MAKE mia_AT NOT temp_condiscendente.
      END IF.
      -- Rendiamo temporaneamente condiscendente il PNG affinché sia possibile
      -- rimuovere un oggetto contenuto da esso: 
      MAKE png condiscendente.
      LOCATE recipiente OF THIS IN hero.
      "$+1 ti"
      IF png IS NOT plurale
        THEN "dà"
        ELSE "danno"
      END IF.
      SAY THE recipiente OF THIS. SAY THIS:prep_DI. SAY THIS. "."
      -- Ora ripristiniamo lo stato di condiscendenza originale del PNG:
      IF mia_AT IS NOT temp_condiscendente
        THEN MAKE png NOT condiscendente.
      END IF.
  END VERB chiedi.

-->liquido   @DAI_A -> @GIVE TO => LIQUID
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== dai_a
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `dai_a`.
--<

  VERB dai_a
    WHEN ogg
    DOES ONLY
      -- >>> prendi implicito: >>>
      IF THIS NOT IN hero
        THEN
          IF THIS:recipiente = recipiente_fittizio
          OR THIS:recipiente IS NOT prendibile
            THEN SAY mia_AT:impossibile_maneggiare_liq1.
            ELSE LOCATE recipiente OF THIS IN hero.
              "(prima prendi" SAY THE THIS:recipiente. SAY THIS:prep_DI. SAY THIS. "$$)$n"
          END IF.
      END IF.
      -- <<< prendi implicito <<<

      IF THIS IN hero
        -- i.e. if the implicit taking was successful
        THEN
--                                                                              TRANSLATE!
          "You give" SAY THE recipiente OF THIS. "of" SAY THIS. "to" SAY THE ricevente. "."
          LOCATE recipiente OF THIS IN ricevente.
      END IF.

      -- there is no 'ELSE' statement in this last IF -clause, as the 'IF THIS NOT
      -- IN hero' clause above it takes care of the 'ELSE' alternative.

  END VERB dai_a.

-->liquido  @VERSA --> @POUR
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== versa
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `versa`.
--<

  VERB versa
    DOES ONLY
      -- >>> prendi implicito: >>>
      IF THIS NOT IN hero
        THEN
          IF THIS:recipiente = recipiente_fittizio
          OR THIS:recipiente IS NOT prendibile
--                                                                              TRANSLATE!
            THEN
              "You can't pour" SAY THE THIS. "anywhere since you are not carrying"
                IF THIS IS NOT plurale
                  THEN "it."
                  ELSE "them."
                END IF.
          ELSE LOCATE recipiente OF THIS IN hero.
            "(prima prendi" SAY THE THIS:recipiente. SAY THIS:prep_DI. SAY THIS. "$$)$n"
          END IF.
      END IF.
      -- <<< prendi implicito <<<

      IF THIS IN hero
        THEN LOCATE THIS AT hero.
          SET THIS:recipiente TO recipiente_fittizio.
--                                                                              TRANSLATE!
          "You pour" SAY THE THIS.
            IF pavimento HERE
              THEN "on the floor."
              ELSE "on the ground."
            END IF.
      END IF.

  END VERB versa.

-->liquido
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== versa_in
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `versa_in`.
--<

  VERB versa_in
    WHEN ogg
      DOES ONLY
        -- >>> prendi implicito: >>>
        IF THIS NOT IN hero
          THEN
            IF THIS:recipiente = recipiente_fittizio
              THEN SAY mia_AT:impossibile_maneggiare_liq1.
            ELSIF THIS:recipiente IS NOT prendibile
--                                                                              TRANSLATE!
              THEN "You don't have" SAY THE recipiente OF THIS. "of" SAY THIS. "."
              ELSE LOCATE recipiente OF THIS IN hero.
                "(prima prendi" SAY THE THIS:recipiente. SAY THIS:prep_DI. SAY THIS. "$$)$n"
            END IF.
        END IF.
        -- <<< prendi implicito <<<

        IF THIS IN hero   --i.e. if the implicit taking was successful
          THEN LOCATE THIS IN cont.
            SET THIS:recipiente TO cont.
--                                                                              TRANSLATE!
            "You pour" SAY THE THIS. "into" SAY THE cont. "."
        END IF.
    WHEN cont
      DOES ONLY
        IF THIS:recipiente = recipiente_fittizio
          THEN
--                                                                              TRANSLATE!
            "There's not much sense pouring" SAY THE ogg. "into" SAY THE THIS. "."
          ELSE
            IF THIS:recipiente IS aperto
-- @NOTE: Why not? You can empty containers with solids into liquids but you    CHECK!
--        can't 'pour' thme -- yet both verbs are good with them when no liquids
--        are involved!
--                                                                              TRANSLATE!
              THEN "It wouldn't accomplish anything trying to pour" SAY THE ogg.
                "into" SAY THE THIS. "."
              ELSE "You can't, since" SAY THE recipiente OF THIS.
                IF THIS IS NOT plurale
--                                                                              TRANSLATE!
                  THEN "is"
                  ELSE "are"
                END IF.
                "closed."
            END IF.
        END IF.
  END VERB versa_in.

-->liquido
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== versa_su
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `versa_su`.
--<


  VERB versa_su
    WHEN ogg
      DOES ONLY
        -- >>> prendi implicito: >>>
        IF THIS NOT IN hero
          THEN
            IF THIS:recipiente = recipiente_fittizio
              THEN SAY mia_AT:impossibile_maneggiare_liq1.
            ELSIF THIS:recipiente IS NOT prendibile
--                                                                              TRANSLATE!
              THEN "You don't have" SAY THE recipiente OF THIS. "of" SAY THIS. "."
            ELSE LOCATE recipiente OF THIS IN hero.
              "(prima prendi" SAY THE THIS:recipiente. SAY THIS:prep_DI. SAY THIS. "$$)$n"
            END IF.
        END IF.
        -- <<< prendi implicito <<<

        IF THIS IN hero
          -- i.e. if the implicit taking was successful
          THEN
            IF superficie = pavimento OR superficie = suolo
              THEN LOCATE THIS AT hero.
--                                                                              TRANSLATE!
                "You pour" SAY THE THIS. "on" SAY THE superficie. "."
                SET THIS:recipiente TO recipiente_fittizio.
            ELSIF superficie IsA supporto
              THEN LOCATE THIS IN superficie.
--                                                                              TRANSLATE!
                "You pour" SAY THE THIS. "on" SAY THE superficie. "."
                  SET THIS:recipiente TO recipiente_fittizio.
            ELSE "It wouldn't be sensible to pour anything on" SAY THE superficie.
            END IF.
        END IF.
  END VERB versa_su.


-->liquido
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== svuota
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `svuota`.
--<

-- The verbs 'empty', 'empty_in' and 'empty_on' will be disabled as ungrammatical with liquids:

  VERB svuota
    WHEN ogg
      DOES ONLY SAY mia_AT:svuotare_solo_contenitori.
  END VERB svuota.

-->liquido
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== svuota_in
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `svuota_in`.
--<

  VERB svuota_in
    WHEN ogg
      DOES ONLY SAY mia_AT:svuotare_solo_contenitori.
  END VERB svuota_in.

-->liquido
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== svuota_su
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `svuota_su`.
--<

  VERB svuota_su
    WHEN ogg
      DOES ONLY SAY mia_AT:svuotare_solo_contenitori.
  END VERB svuota_su.


-->liquido    @PUT IN 
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== metti_in
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `metti_in`.
--<

  VERB metti_in
    WHEN ogg
      DOES ONLY
        IF THIS:recipiente = recipiente_fittizio
          THEN SAY mia_AT:impossibile_maneggiare_liq1.
          ELSE
            IF THIS:recipiente IS prendibile
              THEN
                -- >>> prendi implicito: >>>
                IF THIS NOT IN hero
                  THEN
                    IF THIS:recipiente = recipiente_fittizio
                      THEN SAY mia_AT:impossibile_maneggiare_liq1.
                      ELSE LOCATE recipiente OF THIS IN hero.
                        "(prima prendi" SAY THE THIS:recipiente. SAY THIS:prep_DI. SAY THIS. "$$)$n"
                    END IF.
                END IF.
                -- <<< prendi implicito <<<

                LOCATE recipiente OF THIS IN cont.
--                                                                              TRANSLATE!
                    "You put" SAY THE recipiente OF THIS. "of" SAY THIS. "into" SAY THE cont. "."

              ELSE "You don't have" SAY THE recipiente OF THIS. "of" SAY THIS. "."
            END IF.
        END IF.
        WHEN cont
      DOES ONLY
      IF THIS:recipiente = recipiente_fittizio
        THEN
--                                                                              TRANSLATE!
          "There's not much sense putting" SAY THE ogg. "into" SAY THE THIS. "."
        ELSE
          IF THIS:recipiente IS aperto
            THEN
              IF ogg = THIS:recipiente
--                                                                              TRANSLATE!
                THEN "That doesn't make sense."
                ELSE "It wouldn't accomplish anything trying to put" SAY THE ogg.
                  "into" SAY THE recipiente OF THIS. "of" SAY THIS. "."
              END IF.
            ELSE "You can't, since" SAY THE recipiente OF THIS. "of" SAY THIS.
                IF THIS IS NOT plurale
--                                                                              TRANSLATE!
                  THEN "is"
                  ELSE "are"
                END IF.
              "closed."
          END IF.
      END IF.
  END VERB metti_in.

-->liquido    @PUT ON 
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== metti_su
--~-----------------------------------------------------------------------------
--~=============================================================================
--<
-->todo_checklist(.666) Doxter
--| * [ ] Descrizione `metti_su`.
--<


  VERB metti_su
    WHEN ogg
      DOES ONLY
        -- >>> prendi implicito: >>>
        IF THIS NOT IN hero
          THEN
            IF THIS:recipiente = recipiente_fittizio
              THEN SAY mia_AT:impossibile_maneggiare_liq1.
              ELSIF THIS:recipiente IS NOT prendibile
--                                                                              TRANSLATE!
              THEN "You don't have" SAY THE recipiente OF THIS. "of" SAY THIS. "."
              ELSE LOCATE recipiente OF THIS IN hero.
                "(prima prendi" SAY THE THIS:recipiente. SAY THIS:prep_DI. SAY THIS. "$$)$n"
            END IF.
        END IF.
        -- <<< prendi implicito <<<

        IF THIS IN hero
          -- ossia, se il giocatore era già in possesso del liquido o se il
          -- 'prendi implicito' qui sopra è andato a buon fine...
          THEN
            "Posi" SAY THE THIS:recipiente. SAY superficie:prep_SU. SAY superficie. "."
            LOCATE recipiente OF THIS IN superficie.
        END IF.
    WHEN superficie
--                                                                              TRANSLATE!
      DOES ONLY "It is not possible to $v" SAY ogg. "onto" SAY THE THIS. "."
  END VERB metti_su.


END EVERY.



-- Here is the default vessel for liquids; if the vessel of a liquid is
-- 'null_vessel', it means that the liquid is not in any container; ignore.


THE recipiente_fittizio IsA OBJECT
  CONTAINER
END THE.



-- This event checks that if a liquid is outside a container, its container will
-- be 'null_vessel'; ignore:


EVENT check_vessel
  FOR EACH liq IsA liquido, DIRECTLY AT CURRENT LOCATION DO
      SET liq:recipiente TO recipiente_fittizio.
  END FOR.

  FOR EACH contel IsA contenitore_elencato DO
    FOR EACH liq IsA liquido, DIRECTLY IN contel
      DO SET liq:recipiente TO contel.
    END FOR.
  END FOR.

  SCHEDULE check_vessel AFTER 1.
END EVENT.



-->contenitore_elencato(16000.1)  @CONTENITORE_ELENCATO --> @LISTED_CONTAINER
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Contenitore elencato
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--| 
--| Si tratta di un contenitore i cui contenuti (se è aperto) saranno elencati
--| sia nella descrizione del luogo (entrandovi, o usando '`guarda`') sia quando
--| viene esaminato o aperto. La libreria autogestisce lo stato di opacità di
--| questo tipo di contenitore, rendendolo non opaco (`NOT OPAQUE`) quando viene
--| aperto, e opaco quando viene chiuso, affinché i suoi contenuti non vengano
--| svelati (elencati) quando esso è chiuso.
--|
--| [NOTE]
--| ============================================================================
--| I contenuti di un contenitore normale non vengono elencati con il verbo
--| '`esamina`', ma solo con '`guarda`', '`guarda dentro`' o quando viene
--| effettuata la descrizione del luogo.
--| ============================================================================
--|
--| [NOTE]
--| ========================================================================
--| Questa classe non ricorre altrove, né in questo file né in altri moduli.
--| ========================================================================
--<

EVERY contenitore_elencato IsA OBJECT
  CONTAINER



-->contenitore_elencato
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Inizializzazione dei contenitori elencati
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| All'avvio, la libreria inizializzerà ogni istanza di `contenitore_elencato`
--| aggiungendo ai suoi `consentiti` tutti gli oggetti contenuti in esso, di modo
--| che sia possibile rimetterveli dentro dopo averli rimossi.

  INITIALIZE

    FOR EACH lc IsA contenitore_elencato
      DO
        FOR EACH o IsA OBJECT, DIRECTLY IN lc
          DO
            INCLUDE o IN consentiti OF lc.
        END FOR.
    END FOR.

--| Questa automatizzazione risparmia all'autore l'incomodo di dover dichiarare
--| manualmente, uno ad uno, che questi oggetti andranno annoverati tra i membri
--| dell'insieme di oggetti che è consentito introdurre in quel contenitore.
--| Dovrà comunque dichiarare manualmente quegli oggetti consentiti che non si
--| trovano all'interno del contenitore all'inizio del gioco.
--<


-- @TODO: Se ha 'xDesc', mostra il testo?                                       IMPROVE

  VERB esamina
    DOES ONLY
      IF THIS IS NOT OPAQUE
        THEN LIST THIS.
        ELSE "Non puoi vedere dentro" SAY THE THIS. "."
      END IF.
  END VERB esamina.


  VERB guarda_in
    DOES ONLY
      IF THIS IS NOT OPAQUE
        THEN LIST THIS.
        ELSE "Non puoi vedere dentro" SAY THE THIS. "."
      END IF.
  END VERB guarda_in.


  VERB ispeziona
    DOES ONLY
      IF THIS IS NOT OPAQUE
        THEN LIST THIS.
        ELSE "Non puoi vedere dentro" SAY THE THIS. "."
      END IF.
  END VERB ispeziona.


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
      IF THIS IS aperto ---> verifica che sia davvero aperta!
        THEN
          MAKE THIS NOT OPAQUE.
          LIST THIS.
      END IF.
  END VERB apri.


  VERB apri_con
    WHEN ogg DOES
      IF THIS IS aperto ---> verifica che sia davvero aperta!
        THEN
          MAKE THIS NOT OPAQUE.
          LIST THIS.
      END IF.
  END VERB apri_con.


  VERB chiudi, blocca
    DOES
      IF THIS IS NOT aperto ---> verifica che sia davvero chiuso!
        THEN
          MAKE THIS OPAQUE.
      END IF.
  END VERB chiudi.


  VERB chiudi_con
    WHEN ogg DOES
      IF THIS IS NOT aperto ---> verifica che sia davvero chiuso!
        THEN
           MAKE THIS OPAQUE.
      END IF.
  END VERB chiudi_con.

  VERB blocca_con
    WHEN ogg DOES
      IF THIS IS NOT aperto ---> verifica che sia davvero chiuso!
        THEN
          MAKE THIS OPAQUE.
      END IF.
  END VERB blocca_con.

-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~


END EVERY.


-->suono(17000.1)  @SUONO --> @SOUND
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Suoni
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--| 
--| È possibile ascoltare i suoni ma non esaminarli, annusarli né manipolarli.
--| (volendo, li si può accendere e spegnere.)
--|
--| [cols="50m,50d",options="header"]
--| |===========================================================================
--| | attributi e valori predefiniti | significato
--~ |--------------------------------+------------------------------------------
--| | IS NOT esaminabile.            |
--| | IS NOT prendibile.             |
--| | IS NOT raggiungibile.          |
--| | IS NOT spostabile.             |
--| |===========================================================================
--|
--| [NOTE]
--| ========================================================================
--| Questa classe non ricorre altrove, né in questo file né in altri moduli.
--| ========================================================================
--<

EVERY suono IsA OBJECT
  IS NOT esaminabile.
  IS NOT prendibile.
  IS NOT raggiungibile.
  IS NOT spostabile.

  VERB annusa
    DOES ONLY
      IF THIS IS NOT plurale
        THEN SAY mia_AT:ogg1_inadatto_sg.
        ELSE SAY mia_AT:ogg1_inadatto_pl.
      END IF. "annusare."
  END VERB annusa.


END EVERY.


-->supporto(18000.1) @SUPPORTO --> @SUPPORTER
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Supporti
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--| 
--| Una superficie su cui poter mettere cose e su cui si può salire e scendere.
--| Si tratta di un oggetto di tipo contenitore, perciò è possibile prendere le
--| cose vi si trovano sopra (in realtà, dentro di esso, ma viene presentato in
--| modo da crare l'illusione che sia una superficie).
--| Di default, gli oggetti su un supporto saranno elencati nella descrizione
--| del luogo o quando il supporto viene esamintao.
--<



-- (See the file 'verbs.i', verbs 'climb_on', 'empty_on', 'get_off', 'jump_on',
-- 'lie_on', 'pour_on', 'metti_in', 'put_on', 'sit_on', 'stand_on', and 'take_from'
-- where SUPPORTER is used in either syntax definitions, verb checks
-- or verb definitions.)


EVERY supporto IsA OBJECT


  CONTAINER
    HEADER  "Sopra" SAY THE THIS. "vedi"
    ELSE    "Non c'è nulla sopra" SAY THE THIS. "."

  VERB esamina
    DOES
      LIST THIS.
  END VERB esamina.


  -- in the following, we disable some verbs that are defined to work with normal containers:


  VERB guarda_in
    DOES ONLY
      IF THIS IS NOT plurale
--                                                                              TRANSLATE!
        THEN "That's not"
        ELSE "Those are not"
      END IF.
      "something you can look into."
  END VERB guarda_in.


  VERB svuota_in, versa_in
     WHEN cont
    DOES ONLY
       IF THIS IS NOT plurale
  --                                                                              TRANSLATE!
      THEN "That's not"
        ELSE "Those are not"
      END IF.
      "something you can pour things into."
  END VERB svuota_in.


  VERB metti_in
      WHEN cont
    DOES ONLY "Non puoi mettere nulla dentro" SAY THE THIS. "."
  END VERB metti_in.


  VERB lancia_in
      WHEN cont
    DOES ONLY "Non puoi mettere nulla dentro" SAY THE THIS. "."
  END VERB lancia_in.


END EVERY.


-->19000(arma.1)  @ARMA ---> @WEAPON
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| === Armi
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--| 
--| Di default un'arma non può essere sparata (p.es., un coltello, una mazza),
--| ma settando l'attributo `CAN sparare` si avrà un'arma da fuoco che sarà
--| utilizzabile con il verbo "spara" (p.es., una pistola, un cannone).
--|
--| [cols="50m,50d",options="header"]
--| |===========================================================================
--| | attributi e valori predefiniti | significato
--~ |--------------------------------+------------------------------------------
--| | CAN NOT sparare.               | È un'arma bianca
--| |===========================================================================
--<


-- (See the file 'lib_verbi.i', verbs 'attack_with', 'fire',
-- 'fire_with', 'kill_with', 'shoot' and 'shoot_with' where WEAPON is used
-- either in the syntax definitions or verb checks.)


EVERY arma IsA OBJECT
  CAN NOT sparare.
END EVERY.


-->classi_attori(20000.1)
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Attori
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--|
--<


-- First, we declare some common characteristics for all actors:

--==============================================================================
--------------------------------------------------------------------------------
-- § 2.1 - Attributi comuni
--------------------------------------------------------------------------------
--==============================================================================
-- Aggiungiamo alla classe degli attori degli attributi comuni a tutti i tipi di
-- attori e le sue sottoclassi.

ADD TO EVERY ACTOR
  IS  NOT inanimato.                                        ---> inanimate
  IS  NOT prendibile.                                       ---> takeable
  IS  NOT sdraiato.                                         ---> lying_down
  IS  NOT seduto.                                           ---> sitting
  IS  NOT seguendo.                                         ---> following
  HAS NOT nome_proprio.                                     ---> named
      --  Il giocatore non ne conosce il nome.
  HAS indossati { indumento_fittizio }.                     ---> wearing
  -- = the actor's clothing is not specified.
  -- "null_clothing" is a dummy default that can be ignored.
  IS  NOT condiscendente.                                   ---> compliant
  
      --  Per poter prendere un oggetto da un attore è necessario che questi sia
      --  condiscendente. Il codice nell'`EXTRACT` della classe `actor`
      --  controlla lo stato di questo attributo e impedirà la rimozione di
      --  oggetti se l'attore non è `condiscendente`.

      --  Il verbo `chiedi` modifica temporaneamente questo attributo al fine di
      --  poter conseguire l'azione. I verbi che richiedono di prendere
      --  implicitamente un oggetto posseduto da un PNG non condiscendente non
      --  porteranno a termine l'operazione.


--==============================================================================
--------------------------------------------------------------------------------
-- § 2.4 - Inizializzazione articoli indeterminativi
--------------------------------------------------------------------------------
--==============================================================================
  INDEFINITE ARTICLE
--==============================================================================
-- § 2.4.1 - Attori con nome proprio
--==============================================================================
  IF THIS HAS nome_proprio
    THEN ""
    ELSE
--==============================================================================
-- § 2.4.2 - Attori senza nome proprio
--==============================================================================
      DEPENDING ON articolo of THIS
        = "il"  THEN   "un"               ---> ms indet.
        = "lo"  THEN   "uno"              ---> ms indet.
        = "la"  THEN   "una"              ---> fs indet.

        = "l'"  THEN
          IF THIS IS NOT femminile
                THEN   "un"               ---> ms indet.
                ELSE   "un'$$"            ---> fs indet.
          END IF.

        = "i"   THEN   "dei"              ---> mp indet.
        = "gli" THEN   "degli"            ---> mp indet.
        = "le"  THEN   "delle"            ---> fp indet.

        ELSE -- se non è definito
          IF THIS IS NOT femminile
          THEN
            IF THIS IS NOT plurale
                THEN   "un"               ---> ms indet.
                ELSE   "dei"              ---> mp indet.
            END IF.
          ELSE
            IF THIS IS NOT plurale
                THEN   "una"              ---> fs indet.
                ELSE   "delle"            ---> fp indet.
            END IF.
          END IF.
      END DEPEND.
  END IF.
--==============================================================================
--------------------------------------------------------------------------------
-- § 2.5 - Inizializzazione articoli determinativi
--------------------------------------------------------------------------------
--==============================================================================
  DEFINITE ARTICLE
--==============================================================================
-- § 2.5.1 - Attori con nome proprio
--==============================================================================
  IF THIS HAS nome_proprio
    THEN ""
    ELSE
--==============================================================================
-- § 2.5.2 - Attori senza nome proprio
--==============================================================================
      DEPENDING ON articolo of THIS
        = "il"  THEN   "il"               ---> ms indet.
        = "lo"  THEN   "lo"               ---> ms indet.
        = "la"  THEN   "la"               ---> fs indet.

        = "l'"  THEN   "l'$$"             ---> *s det.  (masc & femm)

        = "i"   THEN   "i"                ---> mp det.
        = "gli" THEN   "gli"              ---> mp det.
        = "le"  THEN   "le"               ---> fp det.

        ELSE -- se non è definito
          IF THIS IS NOT femminile
          THEN
            IF THIS IS NOT plurale
                THEN   "il"               ---> ms det.
                ELSE   "i"                ---> mp det.
            END IF.
          ELSE
            IF THIS IS NOT plurale
                THEN   "la"               ---> fs det.
                ELSE   "le"               ---> fp det.
            END IF.
          END IF.
      END DEPEND.
  END IF.

  ------------------------------------------------------------------------------


--==============================================================================
--------------------------------------------------------------------------------
-- § 2.2 - Possesso di oggetti
--------------------------------------------------------------------------------
--==============================================================================
  CONTAINER -- Rendi gli attori dei contentitori affinché possano ricevere e
            -- trasportare oggetti.

-- Il codice che segue gestisce il testo per elencare gli oggetti posseduti da
-- un attore (tecnicamente, gli ogetti contenuti in un contenitore di questa
-- classe).
-- Per il protagonista, viene eseguito quando si usa 'inventario', per i PNG con
-- il verbo esamina.

--==============================================================================
-- § 2.2.1 - Descrizione inventario non vuoto
--==============================================================================
-- NOTA: Un codice simile è riprodotto anche nella classe PERSONA, tranne che
--       per i controlli se l'attore è il protagonista (che sarà sempre e solo
--       della classe ACTOR)! Se si modifica il testo delle risposte qui, ci si
--       ricordi di modificarlo anche su ACTOR!
  HEADER
    IF THIS = hero
      -- ==========================
      -- L'Attore è il protagonista
      -- ==========================
      THEN "stai"
      -- =================
      -- L'Attore è un PNG
      -- =================
      ELSE
        SAY THE THIS. "sta"
        IF THIS IS plurale
          THEN "$$nno"
        END IF.
    END IF.
    "portando"
--==============================================================================
-- § 2.2.2 - Descrizione inventario vuoto
--==============================================================================
  ELSE
    IF THIS = hero
      -- ==========================
      -- L'Attore è il protagonista
      -- ==========================
      THEN "non stai"
      -- =================
      -- L'Attore è un PNG
      -- =================
      ELSE
        SAY THE THIS. "non sta"
        IF THIS IS plurale
          THEN "$$nno"
        END IF.
    END IF.
    "portando niente."
--==============================================================================
-- § 2.2.3 - Estrazione oggetti
--==============================================================================
-- Questa parte del codice interviene quando si cerca di estrarre i contenuti di
-- un attore (in altre parole, quando si cerca di prendere ad un attore oggetti
-- che gli appartengono).

  EXTRACT
    CHECK THIS IS condiscendente
      ELSE
        SAY THE THIS. "non sarebbe"
        IF THIS IS plurale
          THEN "$$ro"
        END IF. "d'accordo."

END ADD TO ACTOR.

--==============================================================================
--------------------------------------------------------------------------------
-- § 2.2 - Inizializzazione degli attori
--------------------------------------------------------------------------------
--==============================================================================
ADD TO EVERY ACTOR

  INITIALIZE


--==============================================================================
--------------------------------------------------------------------------------
-- § 2.3 - Inizializzazione di genere, numero e preposizioni articolate
--------------------------------------------------------------------------------
--==============================================================================
-- Valgono qui le stesse regole per gli oggetti tranne quando l'attore ha un
-- nome proprio: in tal caso DEINITE/INDEFINITE ARTICLE dovranno essere stringhe
-- vuote, e le preposizioni dovranno essere semplici anziché articolate.
-- Questo al fine di visualizzare correttamente le risposte dei verbi quando un
-- parametro è un attore con nome proprio, esempio:
--
--    "Hai dato la palla A Maria"
--
-- e non:
--
--    "Hai dato la palla ALLA Maria"
--
-- La presenza dello IF statement ci costringe a ripetere qui il
-- codice usato in "lib_definizioni.i" per definire ARTICLE, altrimenti i valori
-- di default verrebbero sovrascritti da una stringa nulla. Invece, per quanto
-- riguarda le preposizioni, il genere ed il numero, gli attori erediteranno da
-- THING i valori correttamente impostati dalla libreria.

-- @TODO: Devo ancora controllare alcune cose su come la libreria originale
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
--        (5) Potrei creare altre due sottoclassi di PERSONA, per le varianti
--            plurali di attori maschili e femminili:
--             * MASCHI  : IS NOT femminile.  IS plurale.
--             * FEMMINE : IS femminile.      IS plurale.
--        (6) HERO: devo controllare che venga inizializzato a dovere per la
--            la lingua italiana, e assicurarmi che sia un attore maschile di
--            default, ma vorrei anche fare in modo che sia possibile crare un
--            hero femminile, e che questi venga inizializzazo correttamente
--            (sinomini, ecc.).

-- In base all'articolo specificato possiamo dedurre (e settare) genere e
-- numero dell'istanza.



--==============================================================================
-- § 2.3.1 - Attori con nome proprio
--==============================================================================
--| Se l'attore ha nome proprio, verrà inizializzato ad hoc.
    IF THIS HAS nome_proprio
      THEN
        -- Stabilisci quale vocale impostare per l'accordo degli aggettivi:
        IF THIS IS NOT femminile
          THEN
            IF THIS IS NOT plurale
              THEN SET THIS:vocale TO "o". ---> ms
              ELSE SET THIS:vocale TO "i". ---> mp
            END IF.
          ELSE
            IF THIS IS NOT plurale
              THEN SET THIS:vocale TO "a". ---> fs
              ELSE SET THIS:vocale TO "e". ---> fp
            END IF.
        END IF.
        -- Imposta le preposizioni semplici, anziché articolate:
        SET THIS:prep_DI TO "di".
        SET THIS:prep_A TO  "a".
        SET THIS:prep_DA TO "da".
        SET THIS:prep_IN TO "in".
        SET THIS:prep_SU TO "su".

--==============================================================================
-- § 2.3.2 - Attori senza nome proprio
--==============================================================================
    ELSE
--| Se l'attore non ha nome proprio, verrà inizializzato come gli altri oggetti
--| (si tratta di un sostantivo a tutti gli effetti).
      IF THIS IS femminile           --| Questo è necessario per coprire il caso
        THEN SET THIS:vocale TO "a". --| in cui 'articolo' = "l'", prima che il
      END IF.                        --| codice seguente venga eseguito!

      DEPENDING ON articolo of THIS
        = "lo" THEN
          MAKE THIS NOT femminile.
          MAKE THIS NOT plurale.
          SET THIS:vocale TO "o".
          SET THIS:prep_DI TO "dello".
          SET THIS:prep_A TO  "allo".
          SET THIS:prep_DA TO "dallo".
          SET THIS:prep_IN TO "nello".
          SET THIS:prep_SU TO "sullo".

        = "la" THEN
          MAKE THIS femminile.
          MAKE THIS NOT plurale.
          SET THIS:vocale TO "a".
          SET THIS:prep_DI TO "della".
          SET THIS:prep_A TO  "alla".
          SET THIS:prep_DA TO "dalla".
          SET THIS:prep_IN TO "nella".
          SET THIS:prep_SU TO "sulla".

        = "l'" THEN              --| In questo caso non alteriamo il genere poiché
          MAKE THIS NOT plurale. --| questa forma può essere sia masch. che femm.
                                 --| Sta all'autore specificare il genere nell'istanza.
          SET THIS:prep_DI TO "dell'$$".
          SET THIS:prep_A TO  "all'$$".
          SET THIS:prep_DA TO "dall'$$".
          SET THIS:prep_IN TO "nell'$$".
          SET THIS:prep_SU TO "sull'$$".

        = "i" THEN
          MAKE THIS NOT femminile.
          MAKE THIS plurale.
          SET THIS:vocale TO "i".
          SET THIS:prep_DI TO "dei".
          SET THIS:prep_A TO  "ai".
          SET THIS:prep_DA TO "dai".
          SET THIS:prep_IN TO "nei".
          SET THIS:prep_SU TO "sui".

        = "gli" THEN
          MAKE THIS NOT femminile.
          MAKE THIS plurale.
          SET THIS:vocale TO "i".
          SET THIS:prep_DI TO "degli".
          SET THIS:prep_A TO  "agli".
          SET THIS:prep_DA TO "dagli".
          SET THIS:prep_IN TO "negli".
          SET THIS:prep_SU TO "sugli".

        = "le" THEN
          MAKE THIS femminile.
          MAKE THIS plurale.
          SET THIS:vocale TO "e".
          SET THIS:prep_DI TO "delle".
          SET THIS:prep_A TO  "alle".
          SET THIS:prep_DA TO "dalle".
          SET THIS:prep_IN TO "nelle".
          SET THIS:prep_SU TO "sulle".

        ELSE -- = "il" (o dovrebbe esserlo)
          MAKE THIS NOT femminile.
          MAKE THIS NOT plurale.
          SET THIS:prep_DI TO "del".
          SET THIS:prep_A TO  "al".
          SET THIS:prep_DA TO "dal".
          SET THIS:prep_IN TO "nel".
          SET THIS:prep_SU TO "sul".

      END DEPEND.
    END IF.


    MAKE hero condiscendente.
    -- so that the hero can give, drop, etc. carried objects.


    -- excluding the default dummy clothing object from all actors; ignore.

    EXCLUDE indumento_fittizio FROM THIS:indossati.

--~=============================================================================
--~-----------------------------------------------------------------------------
--| Attori che seguono l'eroe
--~-----------------------------------------------------------------------------
--~=============================================================================
-- 
-- Tutti gli attori seguiranno questo copione sin dall'inizio del gioco:

    IF THIS <> hero
      THEN USE SCRIPT following_hero FOR THIS.
    END IF.

--------------------------------------------------------------------------------

  SCRIPT following_hero
    -- this code will make any actor follow the hero
    -- if the actor is given the attribute 'following'.

    STEP WAIT UNTIL hero NOT HERE

      IF THIS IS seguendo
        THEN
          LOCATE THIS AT hero.
          "$p" SAY THE THIS. "ti"
            IF THIS IS NOT plurale
              THEN "segue."
              ELSE "seguono."
            END IF.
      END IF.

      USE SCRIPT following_hero FOR THIS.

--~=============================================================================
--~-----------------------------------------------------------------------------
--| Descrizioni degli attori
--~-----------------------------------------------------------------------------
--~=============================================================================

  DESCRIPTION
    IF THIS IS scenario
      THEN "$$"
    ELSIF THIS HAS NOT nome_proprio
      THEN
        IF THIS IS NOT plurale
--                                                                              TRANSLATE!
          THEN "C'è" SAY AN THIS.
          ELSE "Ci sono" SAY AN THIS.
       -- THEN "There is" SAY AN THIS. "here."
       -- ELSE "There are" SAY THIS. "here."
        END IF. "qui."
    ELSE SAY THIS.
      IF THIS IS NOT plurale
--                                                                              TRANSLATE!
        THEN "è"
        ELSE "sono"
     -- THEN "is here."
     -- ELSE "are here."
      END IF. "qui."
    END IF.

--==============================================================================
-- § 2.2.4 - Verbo esamina
--==============================================================================
-- Questo corpo aggiuntivo del verbo 'esamina' sulla classe ACTOR, fà in modo
-- che dopo aver esaminato un PNG ne venga elencato l'inventario.

  VERB esamina
    DOES AFTER
      IF THIS <> hero
        THEN
          LIST THIS.
      END IF.
  END VERB esamina.


END ADD TO ACTOR.


-->some_tag(21000.1)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Sottoclassi di actor
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--|
--| La libreria definisce alcune sottoclassi specializzate di `ACTOR`:
--|
--| * `ACTOR`
--| ** `persona`
--| *** `maschio`
--| *** `femmina`
--<

--
-- ACTOR
--   |
--   +-- persona
--          |
--          +-- maschio
--          |
--          +-- femmina

--==============================================================================
--------------------------------------------------------------------------------
-- § 3.1 - PERSONA (può parlare)
--------------------------------------------------------------------------------
--==============================================================================
-- La classe 'persona' definisce le caratteristiche comuni per gli attori che
-- sono persone (o comunque, esseri in grado di parlare), gettando le basi per
-- le sue sottoclassi 'maschio' e 'femmina' che specializzano 'persona' in base
-- al genere. Solitamente in un'avventura non si userà direttamente la classe
-- 'persona' ma una delle sue sottoclassi: 'maschio' e 'femmina'.

EVERY persona IsA ACTOR
  CAN parlare.

  CONTAINER
--==============================================================================
-- § 3.1.2 - Descrizione inventario non vuoto
--==============================================================================
-- NOTA: Questo codice è simile a quello presente sulla classe ACTOR, tranne per
--       il fatto che qui non si verifica se l'attore possa essere HERO! Se si
--       modifica il testo qui, ricordarsi di modificarlo anche su ACTOR!
    HEADER
      SAY THE THIS. "sta"
      IF THIS IS plurale
        THEN "$$nno"
      END IF. "portando"
--==============================================================================
-- § 3.1.2 - Descrizione inventario vuoto
--==============================================================================
    ELSE
      SAY THE THIS. "non sta"
      IF THIS IS plurale
        THEN "$$nno"
      END IF.
      "portando niente."
--==============================================================================
-- § 3.1.3 - Estrazione oggetti
--==============================================================================
-- Questa parte del codice interviene quando si cerca di estrarre i contenuti di
-- un attore (in altre parole, quando si cerca di prendere ad un attore oggetti
-- che gli appartengono).
    EXTRACT
      CHECK THIS IS condiscendente
        ELSE
          SAY THE THIS. "non sarebbe"
          IF THIS IS plurale
            THEN "$$ro"
          END IF. "d'accordo."
END EVERY.


--==============================================================================
-- § 3.1.1 - MASCHIO
--==============================================================================

EVERY maschio IsA persona
  IS NOT femminile.
  HAS articolo "il".
  PRONOUN lui
END EVERY.

--==============================================================================
-- § 3.1.2 - FEMMINA
--==============================================================================

EVERY femmina IsA persona
  IS femminile.
  HAS articolo "la".
  PRONOUN lei
END EVERY.


-->oggetti_fittizi(30000.1)
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Oggetti fittizi
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--|
--| Gli oggetti fittizi sono istanze utilizzate per inizializzare correttamente
--| gli attributi delle classi definite in questo modulo che fanno riferimento ad
--| altre istanze o classi (attributi di tipo istanza o insieme).
--<



--==============================================================================
--------------------------------------------------------------------------------
-- § x.x - Indumento fittizio
--------------------------------------------------------------------------------
--==============================================================================

-- the default dummy clothing object; ignore

THE indumento_fittizio IsA indumento
END THE.


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
--| italiano del modulo delle classi.
--<

-->todo_checklist(51000.1)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| === Check-list generale
--~-----------------------------------------------------------------------------
--~=============================================================================
--|
--| Lista della spesa per le varie cosucce da fare:
--<

-->todo_checklist(.665)
--|
--| === Check-list per Doxter
--|
--| Finisci di trasformare commenti in documentazione Doxter:
--<



-->custom_attributes(100)
--| ////
--| ============================================================================
--| Custom AsciiDoc Attributes for Doxter
--| ============================================================================
--| ////

--| // Traduzione italiana degli attributi predefiniti di Asciidoctor:
--| include::attributes-it.adoc[tag=attributes-it]

--| // Definisci sostituzione di {X} con il carattere Unicode 'heavy check mark'
--| // (U+2714), usato nelle tabelle dei verbi:
--| :X: &#x2714;
--<

---< Fine del File >---
