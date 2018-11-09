--= Alan StdLib Italian: Definizioni
--| Tristano Ajmone <tajmone@gmail.com>
--~-----------------------------------------------------------------------------
--~ "lib_definizioni.i"
--| v0.7.16-Alpha, 2018-11-09: Alan 3.0beta6
--|=============================================================================
--| Adattamento italiano del modulo `lib_definitions.i` della
--| _ALAN Standard Library_ v2.1, (C) Anssi Räisänen, Artistic License 2.1.
--| Ad opera di Tristano Ajmone,  (C) 2018, Artistic License 2.1.
--|=============================================================================


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

END ADD TO ENTITY.


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


  -- ----------------------------
  -- Vocale per Accordo Aggettivi
  -- ----------------------------
  
  -- L'attributo 'vocale' contiene la vocale finale di riferimento per gli
  -- aggettivi che seguono la forma "o/a i/e" nell'accordo di genere e numero.
  -- 
  -- Anche 'vocale' sarà inizializzato automaticamente dalla libreria, basandosi
  -- sul valore di 'articolo' dell'istanza.
  -- 
  -- Questo attributo semplifica molto la corretta rappresentazione di aggettivi
  -- nei vari messaggi della libreria poiché consente di stampare direttamente
  -- questo attributo come ultima vocale dell'aggetivo, aniziché dover eseguire
  -- controlli sul genere e sul numero dell'istanza in oggetto, riducendo quindi
  -- drasticamente la lunghezza del codice all'interno dei verbi.
  -- Inoltre, questo attributo potrà essere impiegato anche dagli autori stessi,
  -- poiché la sua utilità non è limitata all'uso interno che ne fa la libreria.

  HAS vocale "o".

END ADD TO THING.

--==============================================================================
--------------------------------------------------------------------------------
-- § x.x - Inizializzazione di Genere, Numero e Preposizioni Articolate
--------------------------------------------------------------------------------
--==============================================================================
-- In questo modulo inizializzeremo solo le istanze di OBJECT, e lasceremo al
-- modulo "lib_classi.i" l'onore di inizializzare le instanze di ACTOR. Questa
-- separazione è necessaria per via del fatto che gli attori possono avere nome
-- proprio, e in tal caso devono avere le stringhe degli articoli nulle, e usare
-- preposizioni semplici anziché articolate.
-- 
-- La libreria originale inizializzava numero e articoli in EVERY THING, ma nel
-- nostro caso questo comprometterebbe gli attributi definiti dall'utente sugli
-- attori, dato che la classe THING ha la precedenza gerarchica su ACTOR, e dato
-- che l'inizializzazione basata sull'articolo modifica anche il genere ed il
-- numero dell'istanza in base ad esso.
ADD TO EVERY OBJECT

  INITIALIZE

-- In base all'articolo specificato possiamo dedurre (e settare) genere e
-- numero dell'istanza.

  IF THIS IS femminile               --| Questo è necessario per coprire il caso
    THEN SET vocale  OF THIS TO "a". --| in cui 'articolo' = "l'", prima che il
  END IF.                            --| codice seguente venga eseguito!

  DEPENDING ON articolo of THIS
    = "lo" THEN
      MAKE THIS NOT femminile.
      MAKE THIS NOT plurale.
      SET vocale  OF THIS TO "o".
      SET prep_DI OF THIS TO "dello".
      SET prep_A  OF THIS TO  "allo".
      SET prep_DA OF THIS TO "dallo".
      SET prep_IN OF THIS TO "nello".
      SET prep_SU OF THIS TO "sullo".

    = "la" THEN
      MAKE THIS femminile.
      MAKE THIS NOT plurale.
      SET vocale  OF THIS TO "a".
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
      SET vocale  OF THIS TO "i".
      SET prep_DI OF THIS TO "dei".
      SET prep_A  OF THIS TO  "ai".
      SET prep_DA OF THIS TO "dai".
      SET prep_IN OF THIS TO "nei".
      SET prep_SU OF THIS TO "sui".

    = "gli" THEN
      MAKE THIS NOT femminile.
      MAKE THIS plurale.
      SET vocale  OF THIS TO "i".
      SET prep_DI OF THIS TO "degli".
      SET prep_A  OF THIS TO  "agli".
      SET prep_DA OF THIS TO "dagli".
      SET prep_IN OF THIS TO "negli".
      SET prep_SU OF THIS TO "sugli".

    = "le" THEN
      MAKE THIS femminile.
      MAKE THIS plurale.
      SET vocale  OF THIS TO "e".
      SET prep_DI OF THIS TO "delle".
      SET prep_A  OF THIS TO  "alle".
      SET prep_DA OF THIS TO "dalle".
      SET prep_IN OF THIS TO "nelle".
      SET prep_SU OF THIS TO "sulle".

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

--==============================================================================
--------------------------------------------------------------------------------
-- § x.x - Inizializzazione Articoli Determinativi
--------------------------------------------------------------------------------
--==============================================================================

  -- Questa parte è stata aggiunta appositamente per l'italiano...

  DEFINITE ARTICLE

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

END ADD TO OBJECT.

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

into, inside = 'in'.      ---> @TODO                                            TRANSLATE!
      onto   = on.
   -- thru   = through.
      using  = 'with'.


-- Here are some synonyms for the player character:

me, myself, yourself, self = hero. ---> @TODO                                   TRANSLATE!


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


-->intestazione(.20)
--~==============================================================================
--~------------------------------------------------------------------------------
--| === Attributi dell'Intestazione
--~------------------------------------------------------------------------------
--~==============================================================================
--| L'istanza `mia_AT` (del `blocco_definizioni`) espone all'autore degli
--| attributi per fornire i dettagli del banner che potrà (facoltativamente)
--| essere mostrato all'inizio della partita tramite il template dell'istanza
--| `intestazione`:

  HAS        titolo  "Nuova Avventura".
  HAS   sottotitolo  "".
  HAS        autore  "Il Mio Nome".
  HAS          anno   2018.
  HAS      versione  "1".
--<

  -- ===============
  -- AZIONI BLOCCATE
  -- ===============


  HAS restricted_level 0.           -- 0 = nessun verbo bloccato.
  HAS previous_restricted_level 0.  -- Serve a rilevare cambiamenti nel livello
                                    -- di restrizione.



--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- § x - Punteggio
--------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================
-- I tre attributi che seguono, e lo `SCHEDULE controlla_punteggio` dopo di essi,
-- sono utilizzati dal comando 'notifica' (in "lib_verbi.i").

  HAS ultimo_punteggio 0.
      -- Traccia l'ultimo punteggio noto affinché l'evento 'controlla_punteggio'
      -- possa compararlo a quello attuale per rilevare cambiamenti e notificare
      -- il giocatore (se 'notifiche_attive' == TRUE).
  HAS notifiche_attive.
      -- Attributo gestito dal verbo 'notifica', serve a tracciare se il
      -- giocatore desidera essere notificato quando consegue punti nel gioco.
  HAS NOT visto_notifica.
      -- Traccia se il giocatore ha già visto le istruzioni riguardo l'uso del
      -- verbo 'notifica' (mostrate la prima volta che ottiene un punto).
 
  INITIALIZE
    SCHEDULE controlla_punteggio AFTER 0.
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
-- § x - Attributi Temporanei
--------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================
-- Gli attributi che seguono servono a immagazzinare temporaneamente i valori di
-- attributi che devono essere modificati e poi ripristinati in alcune parti
-- della libreria (es., il verbo 'chiedi', in cui l'attore deve essere reso
-- temporaneamente condiscendente al fine di portare a termine l'azione).

  HAS temp_condiscendente.


--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- § x - Restricted Actions
--------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================
-->restrizioni_verbali(4000)
--| 
--| == Le Restrizioni Verbali
--| 
--| La libreria dispone di un meccanismo di _restrizioni verbabli_ per limitare
--| in maniera controllata il tipo di azioni consentite al giocatore. Ad ogni
--| verbo della libreria corrisponde un attributo booleano nell'istanza `mia_AT`
--| del `blocco_definizioni` che determina se il verbo (o i verbi) associati ad
--| esso sono abilitati all'uso.
--| 
--| Nel corpo dei verbi definiti dalla libreria, prima di portare a compimento
--| l'azione viene sempre controllato se l'attributo di restrizione verbale cui
--| il verbo fa riferimento è abilitato o meno (ossia, se è `CAN` o `CAN NOT`),
--| e nel caso non lo fosse l'azione viene bloccata sul nascere, mostrando al 
--| giocatore il messaggio "`Non puoi farlo.`".
--<
--| 
--| Qui di seguito è riportato


--------------------------------------------------------------------------------
-- Finally, for restricted actions, we implement the following attributes,
-- corresponding to the library verbs. If you change any of these to CAN NOT...,
-- for examle "CAN NOT attack.", that verb, together with its synonyms, is
-- disabled in-game. The restricted_response of the my_game instance (by default
-- "You can't do that.") will be shown instead. The restriced_response is
-- defined further up this file.
--------------------------------------------------------------------------------

-->restrizioni_tradotte(4100)
--| === Elenco delle Restrizioni Verbali
--| 
--| Questo è l'elenco degli attributi di restrizioni verbali sinora tradotti:

  CAN abbandonare_partita.      ---> 'quit'
  CAN accendere.                ---> turn_on
  CAN alzarsi.                  ---> stand (up)
  CAN andare_a.                 ---> go_to
  CAN annusare.                 ---> smell
  CAN aprire.                   ---> open
  CAN aprire_con.               ---> open_with
  CAN ascoltare.                ---> listen + listen0 | ascolta0 + ascolta
  CAN aspettare.                ---> wait         (+ z)
  CAN assaggiare.               ---> taste        (+ lick)
  CAN attaccare.                ---> attack (+ beat, fight, hit, punch)
  CAN attaccare_con.            ---> attack_with
  CAN attraversare.             ---> climb_through
  CAN baciare.                  ---> kiss         (+ hug, embrace)
  CAN ballare.                  ---> dance
  CAN bere.                     ---> drink
  CAN bloccare.                 ---> lock
  CAN bloccare_con.             ---> lock_with
  CAN bruciare.                 ---> burn
  CAN bruciare_con.             ---> burn_with
  CAN bussare.                  ---> knock
  CAN cantare.                  ---> sing
  CAN caricare_partita.         ---> 'restore'
  CAN chiedere.                 ---> ask_for
  CAN chiudere.                 ---> close        (+ shut)
  CAN chiudere_con.             ---> close_with
  CAN comprare.                 ---> buy          (+ purchase)
  CAN consultare.               ---> consult
  CAN dare.                     ---> give
  CAN dire.                     ---> 'say'
  CAN dire_a.                   ---> say_to
  CAN domandare.                ---> ask (+ enquire, inquire, interrogate)
  CAN domandare_chi_sono_io.    ---> who_am_i
  CAN domandare_chi_è.          ---> who_is
  CAN domandare_cosa_sono_io.   ---> what_am_i
  CAN domandare_cosa_è.         ---> what_is
  CAN domandare_dove_mi_trovo.  ---> where_am_i
  CAN domandare_dove_è.         ---> where_is
  CAN dormire.                  ---> sleep        (+ rest)
  CAN entrare.                  ---> enter
  CAN esaminare.                ---> examine      (+ check, inspect, observe, x)
  CAN giocare_con.              ---> play_with
  CAN grattare.                 ---> scratch
  CAN gridare.                  ---> shout        (+ scream, yell)
  CAN guardare.                 ---> look         (+ gaze, peek)
  CAN guardare_attraverso.      ---> look_through
  CAN guardare_dietro.          ---> look_behind
  CAN guardare_fuori_da.        ---> look_out_of
  CAN guardare_in.              ---> look_in
  CAN guardare_sotto.           ---> look_under
  CAN guardare_su.              ---> look_up
  CAN guidare.                  ---> drive
  CAN indossare.                ---> wear
  CAN inventariare.             ---> i            (+ inv, inventory)
  CAN lanciare.                 ---> throw
  CAN lanciare_a.               ---> throw_to
  CAN lanciare_contro.          ---> throw_at
  CAN lanciare_in.              ---> throw_in
  CAN lasciare.                 ---> drop         (+ discard, dump, reject)
  CAN legare.                   ---> tie
  CAN legare_a.                 ---> tie_to
  CAN leggere.                  ---> read
  CAN liberare.                 ---> free         (+ release)
  CAN mangiare.                 ---> eat
  CAN mettere.                  ---> put          (+ lay, place)
  CAN mettere_contro.           ---> put_against
  CAN mettere_dietro.           ---> put_behind
  CAN mettere_in.               ---> put_in       (+ insert)
  CAN mettere_sotto.            ---> put_under
  CAN mettere_su.               ---> put_on
  CAN mettere_vicino.           ---> put_near
  CAN modalità_breve.           ---> brief
  CAN modalità_lunga.           ---> verbose
  CAN mordere.                  ---> bite         (+ chew)
  CAN mostrare.                 ---> 'show'       (+ reveal)
  CAN notificare.               ---> 'notify'
  CAN notificare_off.           ---> notify_off
  CAN notificare_on.            ---> notify_on
  CAN nuotare.                  ---> swim
  CAN nuotare_in.               ---> swim_in
  CAN parlare.                  ---> talk
  CAN parlare_con.              ---> talk_to      (+ speak)
  CAN pensare.                  ---> think
  CAN pensare_a.                ---> think_about
  CAN pregare.                  ---> pray
  CAN prendere.                 ---> take.        (+ carry, get, grab, hold, obtain)
  CAN prendere_da.              ---> take_from.   (+ remove from)
  CAN pulire.                   ---> clean        (+ polish, wipe)
  CAN raccontare.               ---> tell         (+ enlighten, inform)
  CAN ricominciare_partita.     ---> 'restart'
  CAN riempire.                 ---> fill
  CAN riempire_con.             ---> fill_with
  CAN rifare.                   ---> 'again'
  CAN ringraziamenti.           ---> credits      (+ acknowledgments, author, copyright)
  CAN riparare.                 ---> fix          (+ mend, repair)
  CAN rispondere.               ---> answer       (+ reply)
  CAN rispondere_No.            ---> 'no'
  CAN rispondere_Sì.            ---> yes
  CAN rompere.                  ---> break        (+ destroy)
  CAN rompere_con.              ---> break_with
  CAN salvare_partita.          ---> save
  CAN saltare.                  ---> jump
  CAN saltare_in.               ---> jump_in
  CAN saltare_su.               ---> jump_on
  CAN sbloccare.                ---> unlock
  CAN sbloccare_con.            ---> unlock_with
  CAN scavare.                  ---> dig
  CAN scendere_da.              ---> get_off
  CAN scrivere.                 ---> write
  CAN sdraiarsi.                ---> lie_down
  CAN sdraiarsi_in.             ---> lie_in
  CAN sdraiarsi_su.             ---> lie_on
  CAN sedersi.                  ---> sit (down)
  CAN sedersi_su.               ---> sit_on
  CAN seguire.                  ---> follow
  CAN sorseggiare.              ---> sip
  CAN spegnere.                 ---> turn_off
  CAN spingere.                 ---> push
  CAN spingere_con.             ---> push_with
  CAN spogliarsi.               ---> undress
  CAN strappare.                ---> tear (+ rip)
  CAN suonare.                  ---> play
  CAN svuotare.                 ---> 'empty'
  CAN svuotare_in.              ---> empty_in
  CAN svuotare_su.              ---> empty_on
  CAN tagliare.                 ---> cut
  CAN tagliare_con.             ---> cut_with
  CAN tirare.                   ---> pull
  CAN toccare.                  ---> touch (+ feel)
  CAN toccare_con.              ---> touch_with
  CAN togliersi_indumento.      ---> remove
  CAN trascrivere.              ---> 'script'
  CAN trascrivere_off.          ---> script_off
  CAN trascrivere_on.           ---> script_on
  CAN trovare.                  ---> find         (+ locate)
  CAN tuffarsi.                 ---> dive
  CAN tuffarsi_in.              ---> dive_in
  CAN uccidere.                 ---> kill         (+ murder)
  CAN uccidere_con.             ---> kill_with
  CAN usare.                    ---> 'use'
  CAN usare_con.                ---> use_with
  CAN vedere_punteggio.         ---> 'score'
  CAN vendere.                  ---> sell
  CAN versare.                  ---> pour
  CAN versare_in.               ---> pour_in
  CAN versare_su.               ---> pour_on
--<

-->restrizioni_non_tradotte(50100)
--| === Restrizioni Verbali da Tradurre
--| 
--| Questo è l'elenco degli attributi verbali non ancora tradotti:
  CAN about.
  CAN catch.
  CAN climb.
  CAN climb_on.
  CAN 'exit'.
--CAN extinguish. ----------------> ** VERBO ELIMINATO **  (+ put out, quench)
  CAN fire.
  CAN fire_at.
--CAN get_up. --------------------> ** VERBO ELIMINATO **
  CAN hint.        -- (+ hints)
  CAN kick.
  CAN lift.
--CAN light. ---------------------> ** VERBO ELIMINATO **
--CAN look_at. -------------------> ** VERBO OBSOLETO (StdLib 1?) ** (= esamina)
  CAN pry.
  CAN pry_with.
--CAN put_down. ------------------> ** WASN'T USED! (SEE 'drop'!) **
  CAN rub.
  CAN search.
  CAN shake.
  CAN shoot.       -- (at)
  CAN shoot_with.
--CAN smell0. --------------------> ** ATTRIBUTO ELIMINATO **
  CAN squeeze.
  CAN stand_on.
--CAN switch. --------------------> ** VERBO ELIMINATO **
--CAN switch_on. -----------------> ** VERBO ELIMINATO **
--CAN switch_off. ----------------> ** VERBO ELIMINATO **
  CAN turn.        -- (+ rotate)
--<

END EVERY blocco_definizioni.



--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- § x - The check_restriction Event
--------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================
-- Questo evento, che si ripete ad ogni turno della partita, si occupa della
-- gestione delle azioni bloccate.

EVENT check_restriction

  -- Per ottimizare l'esecuzione, compariamo il valore del livello di
  -- restrizione attuale a quello del turno precdente; se il valore è il
  -- medesimo ci limitiamo a ripianificare questo evento per il prossimo turno.
  -- Se differiscono, allora reimpostiamo gli attributi per la restizione dei
  -- verbi secondo il livello indicato da 'restricted_level'.

  IF restricted_level OF mia_AT <> previous_restricted_level OF mia_AT
    THEN
      -- Il livello di restrizione è cambiato, gli attributi vanno reimpostati. 
      -- Poiché ciascun livello restringe ulteriormente il campo delle azioni
      -- concesse, bloccando una determinata categoria di verbi, e ogni livello
      -- include le restrizioni dei livelli precedenti, procederemo inanzitutto
      -- abilitando tutte le azioni (Livello 0), e poi bloccheremo i vari gruppi
      -- di verbi come richiesto dal livello attuale di restrizione.
--==============================================================================
--------------------------------------------------------------------------------
-- § x.1 - Livello di Restrizione 0
--------------------------------------------------------------------------------
--==============================================================================
-- Al livello 0 tutti i verbi sono abilitati, senza restrizioni.

      MAKE mia_AT abbandonare_partita.      ---> 'quit'
      MAKE mia_AT accendere.                ---> turn_on
      MAKE mia_AT alzarsi.                  ---> stand (up)
      MAKE mia_AT andare_a.                 ---> go_to
      MAKE mia_AT annusare.                 ---> smell
      MAKE mia_AT aprire.                   ---> open
      MAKE mia_AT aprire_con.               ---> open_with
      MAKE mia_AT ascoltare.                ---> listen + listen0 | ascolta0 + ascolta
      MAKE mia_AT aspettare.                ---> wait         (+ z)
      MAKE mia_AT assaggiare.               ---> taste        (+ lick)
      MAKE mia_AT attaccare.                ---> attack (+ beat, fight, hit, punch)
      MAKE mia_AT attaccare_con.            ---> attack_with
      MAKE mia_AT attraversare.             ---> climb_through
      MAKE mia_AT baciare.                  ---> kiss         (+ hug, embrace)
      MAKE mia_AT ballare.                  ---> dance
      MAKE mia_AT bere.                     ---> drink
      MAKE mia_AT bloccare.                 ---> lock
      MAKE mia_AT bloccare_con.             ---> lock_with
      MAKE mia_AT bruciare.                 ---> burn
      MAKE mia_AT bruciare_con.             ---> burn_with
      MAKE mia_AT bussare.                  ---> knock
      MAKE mia_AT cantare.                  ---> sing
      MAKE mia_AT caricare_partita.         ---> 'restore'
      MAKE mia_AT chiedere.                 ---> ask_for
      MAKE mia_AT chiudere.                 ---> close        (+ shut)
      MAKE mia_AT chiudere_con.             ---> close_with
      MAKE mia_AT comprare.                 ---> buy          (+ purchase)
      MAKE mia_AT consultare.               ---> consult
      MAKE mia_AT dare.                     ---> give
      MAKE mia_AT dire.                     ---> 'say'
      MAKE mia_AT dire_a.                   ---> say_to
      MAKE mia_AT domandare.                ---> ask (+ enquire, inquire, interrogate)
      MAKE mia_AT domandare_chi_sono_io.    ---> who_am_i
      MAKE mia_AT domandare_chi_è.          ---> who_is
      MAKE mia_AT domandare_cosa_sono_io.   ---> what_am_i
      MAKE mia_AT domandare_cosa_è.         ---> what_is
      MAKE mia_AT domandare_dove_mi_trovo.  ---> where_am_i
      MAKE mia_AT domandare_dove_è.         ---> where_is
      MAKE mia_AT dormire.                  ---> sleep        (+ rest)
      MAKE mia_AT entrare.                  ---> enter
      MAKE mia_AT esaminare.                ---> examine      (+ check, inspect, observe, x)
      MAKE mia_AT giocare_con.              ---> play_with
      MAKE mia_AT grattare.                 ---> scratch
      MAKE mia_AT gridare.                  ---> shout        (+ scream, yell)
      MAKE mia_AT guardare.                 ---> look         (+ gaze, peek)
      MAKE mia_AT guardare_attraverso.      ---> look_through
      MAKE mia_AT guardare_dietro.          ---> look_behind
      MAKE mia_AT guardare_fuori_da.        ---> look_out_of
      MAKE mia_AT guardare_in.              ---> look_in
      MAKE mia_AT guardare_sotto.           ---> look_under
      MAKE mia_AT guardare_su.              ---> look_up
      MAKE mia_AT guidare.                  ---> drive
      MAKE mia_AT indossare.                ---> wear
      MAKE mia_AT inventariare.             ---> i            (+ inv, inventory)
      MAKE mia_AT lanciare.                 ---> throw
      MAKE mia_AT lanciare_a.               ---> throw_to
      MAKE mia_AT lanciare_contro.          ---> throw_at
      MAKE mia_AT lanciare_in.              ---> throw_in
      MAKE mia_AT lasciare.                 ---> drop         (+ discard, dump, reject)
      MAKE mia_AT legare.                   ---> tie
      MAKE mia_AT legare_a.                 ---> tie_to
      MAKE mia_AT leggere.                  ---> read
      MAKE mia_AT liberare.                 ---> free         (+ release)
      MAKE mia_AT mangiare.                 ---> eat
      MAKE mia_AT mettere.                  ---> put          (+ lay, place)
      MAKE mia_AT mettere_contro.           ---> put_against
      MAKE mia_AT mettere_dietro.           ---> put_behind
      MAKE mia_AT mettere_in.               ---> put_in       (+ insert)
      MAKE mia_AT mettere_sotto.            ---> put_under
      MAKE mia_AT mettere_su.               ---> put_on
      MAKE mia_AT mettere_vicino.           ---> put_near
      MAKE mia_AT modalità_breve.           ---> brief
      MAKE mia_AT modalità_lunga.           ---> verbose
      MAKE mia_AT mordere.                  ---> bite (+ chew)
      MAKE mia_AT mostrare.                 ---> 'show'       (+ reveal)
      MAKE mia_AT nuotare.                  ---> swim
      MAKE mia_AT notificare.               ---> 'notify'
      MAKE mia_AT notificare_off.           ---> notify_off
      MAKE mia_AT notificare_on.            ---> notify_on
      MAKE mia_AT nuotare_in.               ---> swim_in
      MAKE mia_AT parlare.                  ---> talk
      MAKE mia_AT parlare_con.              ---> talk_to (+ speak)
      MAKE mia_AT pensare.                  ---> think
      MAKE mia_AT pensare_a.                ---> think_about
      MAKE mia_AT pregare.                  ---> pray
      MAKE mia_AT prendere.                 ---> take.        (+ carry, get, grab, hold, obtain)
      MAKE mia_AT prendere_da.              ---> take_from.   (+ remove from)
      MAKE mia_AT pulire.                   ---> clean        (+ polish, wipe)
      MAKE mia_AT raccontare.               ---> tell         (+ enlighten, inform)
      MAKE mia_AT ricominciare_partita.     ---> 'restart'
      MAKE mia_AT riempire.                 ---> fill
      MAKE mia_AT riempire_con.             ---> fill_with
      MAKE mia_AT rifare.                   ---> 'again'
      MAKE mia_AT ringraziamenti.           ---> credits (+ acknowledgments, author, copyright)
      MAKE mia_AT riparare.                 ---> fix (+ mend, repair)
      MAKE mia_AT rispondere.               ---> answer (+ reply)
      MAKE mia_AT rispondere_No.            ---> 'no'
      MAKE mia_AT rispondere_Sì.            ---> yes
      MAKE mia_AT rompere.                  ---> break        (+ destroy)
      MAKE mia_AT rompere_con.              ---> break_with
      MAKE mia_AT saltare.                  ---> jump
      MAKE mia_AT saltare_in.               ---> jump_in
      MAKE mia_AT saltare_su.               ---> jump_on
      MAKE mia_AT salvare_partita.          ---> save
      MAKE mia_AT sbloccare.                ---> unlock
      MAKE mia_AT sbloccare_con.            ---> unlock_with
      MAKE mia_AT scavare.                  ---> dig
      MAKE mia_AT scendere_da.              ---> get_off
      MAKE mia_AT scrivere.                 ---> write
      MAKE mia_AT sdraiarsi.                ---> lie_down
      MAKE mia_AT sdraiarsi_in.             ---> lie_in
      MAKE mia_AT sdraiarsi_su.             ---> lie_on
      MAKE mia_AT sedersi.                  ---> sit (down)
      MAKE mia_AT sedersi_su.               ---> sit_on
      MAKE mia_AT seguire.                  ---> follow
      MAKE mia_AT sorseggiare.              ---> sip
      MAKE mia_AT spegnere.                 ---> turn_off
      MAKE mia_AT spingere.                 ---> push
      MAKE mia_AT spingere_con.             ---> push_with
      MAKE mia_AT spogliarsi.               ---> undress
      MAKE mia_AT strappare.                ---> tear (+ rip)
      MAKE mia_AT suonare.                  ---> play
      MAKE mia_AT svuotare.                 ---> 'empty'
      MAKE mia_AT svuotare_in.              ---> empty_in
      MAKE mia_AT svuotare_su.              ---> empty_on
      MAKE mia_AT tagliare.                 ---> cut
      MAKE mia_AT tagliare_con.             ---> cut_with
      MAKE mia_AT tirare.                   ---> pull
      MAKE mia_AT toccare.                  ---> touch (+ feel)
      MAKE mia_AT toccare_con.              ---> touch_with
      MAKE mia_AT togliersi_indumento.      ---> remove
      MAKE mia_AT trascrivere.              ---> 'script'
      MAKE mia_AT trascrivere_off.          ---> script_off
      MAKE mia_AT trascrivere_on.           ---> script_on
      MAKE mia_AT trovare.                  ---> find         (+ locate)
      MAKE mia_AT tuffarsi.                 ---> dive
      MAKE mia_AT tuffarsi_in.              ---> dive_in
      MAKE mia_AT uccidere.                 ---> kill         (+ murder)
      MAKE mia_AT uccidere_con.             ---> kill_with
      MAKE mia_AT usare.                    ---> 'use'
      MAKE mia_AT usare_con.                ---> use_with
      MAKE mia_AT vedere_punteggio.         ---> 'score'
      MAKE mia_AT vendere.                  ---> sell
      MAKE mia_AT versare.                  ---> pour
      MAKE mia_AT versare_in.               ---> pour_in
      MAKE mia_AT versare_su.               ---> pour_on

    --# NOT YET TRANSLATED:
      MAKE mia_AT about.
      MAKE mia_AT catch.
      MAKE mia_AT climb.
      MAKE mia_AT climb_on.
      MAKE mia_AT 'exit'.
    --MAKE mia_AT extinguish. --------> ** VERBO ELIMINATO ** (+ put out, quench)
      MAKE mia_AT fire.
      MAKE mia_AT fire_at.
    --MAKE mia_AT get_up. ------------> ** VERBO ELIMINATO **
      MAKE mia_AT hint.            -- (+ hints)
      MAKE mia_AT kick.
      MAKE mia_AT lift.
    --MAKE mia_AT light. -------------> ** VERBO ELIMINATO **
    --MAKE mia_AT look_at. -----------> ** VERBO OBSOLETO (StdLib 1?) ** (= esamina)
      MAKE mia_AT pry.
      MAKE mia_AT pry_with.
    --MAKE mia_AT put_down. ----------> ** WASN'T USED! (SEE 'drop'!) **
      MAKE mia_AT rub.
      MAKE mia_AT search.
      MAKE mia_AT shake.
      MAKE mia_AT shoot.           -- (at)
      MAKE mia_AT shoot_with.
    --MAKE mia_AT smell0. ------------> ** ATTRIBUTO ELIMINATO **
      MAKE mia_AT squeeze.
      MAKE mia_AT stand_on.
    --MAKE mia_AT switch. ------------> ** VERBO ELIMINATO **
    --MAKE mia_AT switch_on. ---------> ** VERBO ELIMINATO **
    --MAKE mia_AT switch_off. ------> ** VERBO ELIMINATO **
      MAKE mia_AT turn.            -- (+ rotate)

--==============================================================================
--------------------------------------------------------------------------------
-- § x.2 - Livello di Restrizione 1
--------------------------------------------------------------------------------
--==============================================================================
-- Il livello 1 blocca tutti i verbi di comunicazione.

      IF restricted_level OF mia_AT >= 1  
        THEN

          MAKE mia_AT NOT cantare.                  ---> sing
          MAKE mia_AT NOT chiedere.                 ---> ask_for
          MAKE mia_AT NOT dire.                     ---> 'say'
          MAKE mia_AT NOT dire_a.                   ---> say_to
          MAKE mia_AT NOT domandare.                ---> ask (+ enquire, inquire, interrogate)
          MAKE mia_AT NOT gridare.                  ---> shout       (+ scream, yell)
          MAKE mia_AT NOT parlare.                  ---> talk
          MAKE mia_AT NOT parlare_con.              ---> talk_to (+ speak)
          MAKE mia_AT NOT raccontare.               ---> tell         (+ enlighten, inform)
          MAKE mia_AT NOT rispondere.               ---> answer (+ reply)

      END IF.
--==============================================================================
--------------------------------------------------------------------------------
-- § x.3 - Livello di Restrizione 2
--------------------------------------------------------------------------------
--==============================================================================
-- Il livello 2 aggiunge il blocco di tutte le azioni diegetiche tranne quelle
-- mentali, sensoriali o che non implicano interazioni complesse con l'ambiente
-- circostante (pensa, guarda, ascolta, esamina, aspetta, ecc.).

      IF restricted_level OF mia_AT >= 2
        THEN  

          MAKE mia_AT NOT accendere.                ---> turn_on
          MAKE mia_AT NOT alzarsi.                  ---> stand (up)
          MAKE mia_AT NOT andare_a.                 ---> go_to
          MAKE mia_AT NOT aprire.                   ---> open
          MAKE mia_AT NOT aprire_con.               ---> open_with
          MAKE mia_AT NOT assaggiare.               ---> taste        (+ lick)
          MAKE mia_AT NOT attaccare.                ---> attack (+ beat, fight, hit, punch)
          MAKE mia_AT NOT attaccare_con.            ---> attack_with
          MAKE mia_AT NOT attraversare.             ---> climb_through
          MAKE mia_AT NOT baciare.                  ---> kiss         (+ hug, embrace)
          MAKE mia_AT NOT ballare.                  ---> dance
          MAKE mia_AT NOT bere.                     ---> drink
          MAKE mia_AT NOT bloccare.                 ---> lock
          MAKE mia_AT NOT bloccare_con.             ---> lock_with
          MAKE mia_AT NOT bruciare.                 ---> burn
          MAKE mia_AT NOT bruciare_con.             ---> burn_with
          MAKE mia_AT NOT bussare.                  ---> knock
          MAKE mia_AT NOT chiudere.                 ---> close        (+ shut)
          MAKE mia_AT NOT chiudere_con.             ---> close_with
          MAKE mia_AT NOT comprare.                 ---> buy          (+ purchase)
          MAKE mia_AT NOT consultare.               ---> consult
          MAKE mia_AT NOT dare.                     ---> give
          MAKE mia_AT NOT dormire.                  ---> sleep        (+ rest)
          MAKE mia_AT NOT entrare.                  ---> enter
          MAKE mia_AT NOT giocare_con.              ---> play_with
          MAKE mia_AT NOT grattare.                 ---> scratch
          MAKE mia_AT NOT guidare.                  ---> drive
          MAKE mia_AT NOT indossare.                ---> wear
          MAKE mia_AT NOT lanciare.                 ---> throw
          MAKE mia_AT NOT lanciare_a.               ---> throw_to
          MAKE mia_AT NOT lanciare_contro.          ---> throw_at
          MAKE mia_AT NOT lanciare_in.              ---> throw_in
          MAKE mia_AT NOT lasciare.                 ---> drop         (+ discard, dump, reject)
          MAKE mia_AT NOT legare.                   ---> tie
          MAKE mia_AT NOT legare_a.                 ---> tie_to
          MAKE mia_AT NOT leggere.                  ---> read
          MAKE mia_AT NOT liberare.                 ---> free         (+ release)
          MAKE mia_AT NOT mangiare.                 ---> eat
          MAKE mia_AT NOT mettere.                  ---> put          (+ lay, place)
          MAKE mia_AT NOT mettere_contro.           ---> put_against
          MAKE mia_AT NOT mettere_dietro.           ---> put_behind
          MAKE mia_AT NOT mettere_in.               ---> put_in       (+ insert)
          MAKE mia_AT NOT mettere_sotto.            ---> put_under
          MAKE mia_AT NOT mettere_su.               ---> put_on
          MAKE mia_AT NOT mettere_vicino.           ---> put_near
          MAKE mia_AT NOT mordere.                  ---> bite (+ chew)
          MAKE mia_AT NOT mostrare.                 ---> 'show'       (+ reveal)
          MAKE mia_AT NOT nuotare.                  ---> swim
          MAKE mia_AT NOT nuotare_in.               ---> swim_in
          MAKE mia_AT NOT prendere.                 ---> take.        (+ carry, get, grab, hold, obtain)
          MAKE mia_AT NOT prendere_da.              ---> take_from.   (+ remove from)
          MAKE mia_AT NOT pulire.                   ---> clean        (+ polish, wipe)
          MAKE mia_AT NOT riempire.                 ---> fill
          MAKE mia_AT NOT riempire_con.             ---> fill_with
          MAKE mia_AT NOT riparare.                 ---> fix (+ mend, repair)
          MAKE mia_AT NOT rompere.                  ---> break        (+ destroy)
          MAKE mia_AT NOT rompere_con.              ---> break_with
          MAKE mia_AT NOT saltare.                  ---> jump
          MAKE mia_AT NOT saltare_in.               ---> jump_in
          MAKE mia_AT NOT saltare_su.               ---> jump_on
          MAKE mia_AT NOT sbloccare.                ---> unlock
          MAKE mia_AT NOT sbloccare_con.            ---> unlock_with
          MAKE mia_AT NOT scavare.                  ---> dig
          MAKE mia_AT NOT scendere_da.              ---> get_off
          MAKE mia_AT NOT scrivere.                 ---> write
          MAKE mia_AT NOT sdraiarsi.                ---> lie_down
          MAKE mia_AT NOT sdraiarsi_in.             ---> lie_in
          MAKE mia_AT NOT sdraiarsi_su.             ---> lie_on
          MAKE mia_AT NOT sedersi.                  ---> sit (down)
          MAKE mia_AT NOT sedersi_su.               ---> sit_on
          MAKE mia_AT NOT seguire.                  ---> follow
          MAKE mia_AT NOT sorseggiare.              ---> sip
          MAKE mia_AT NOT spegnere.                 ---> turn_off
          MAKE mia_AT NOT spingere.                 ---> push
          MAKE mia_AT NOT spingere_con.             ---> push_with
          MAKE mia_AT NOT spogliarsi.               ---> undress
          MAKE mia_AT NOT strappare.                ---> tear (+ rip)
          MAKE mia_AT NOT suonare.                  ---> play
          MAKE mia_AT NOT svuotare.                 ---> 'empty'
          MAKE mia_AT NOT svuotare_in.              ---> empty_in
          MAKE mia_AT NOT svuotare_su.              ---> empty_on
          MAKE mia_AT NOT tagliare.                 ---> cut
          MAKE mia_AT NOT tagliare_con.             ---> cut_with
          MAKE mia_AT NOT tirare.                   ---> pull
          MAKE mia_AT NOT toccare.                  ---> touch (+ feel)
          MAKE mia_AT NOT toccare_con.              ---> touch_with
          MAKE mia_AT NOT togliersi_indumento.      ---> remove
          MAKE mia_AT NOT trovare.                  ---> find         (+ locate)
          MAKE mia_AT NOT tuffarsi.                 ---> dive
          MAKE mia_AT NOT tuffarsi_in.              ---> dive_in
          MAKE mia_AT NOT uccidere.                 ---> kill         (+ murder)
          MAKE mia_AT NOT uccidere_con.             ---> kill_with
          MAKE mia_AT NOT usare.                    ---> 'use'
          MAKE mia_AT NOT usare_con.                ---> use_with
          MAKE mia_AT NOT vendere.                  ---> sell
          MAKE mia_AT NOT versare.                  ---> pour
          MAKE mia_AT NOT versare_in.               ---> pour_in
          MAKE mia_AT NOT versare_su.               ---> pour_on

        --# NOT YET TRANSLATED:

          MAKE mia_AT NOT catch.
          MAKE mia_AT NOT climb.
          MAKE mia_AT NOT climb_on.
          MAKE mia_AT NOT 'exit'.
        --MAKE mia_AT NOT extinguish. ----> ** VERBO ELIMINATO ** (+ put out, quench)
          MAKE mia_AT NOT fire.
          MAKE mia_AT NOT fire_at.
        --MAKE mia_AT NOT get_up. --------> ** VERBO ELIMINATO **
          MAKE mia_AT NOT kick.
          MAKE mia_AT NOT lift.
        --MAKE mia_AT NOT light. ---------> ** VERBO ELIMINATO **
          MAKE mia_AT NOT pry.
          MAKE mia_AT NOT pry_with.
        --MAKE mia_AT NOT put_down. ------> ** WASN'T USED! (SEE 'drop'!) **
          MAKE mia_AT NOT rub.
          MAKE mia_AT NOT search.
          MAKE mia_AT NOT shake.
          MAKE mia_AT NOT shoot.       -- (at)
          MAKE mia_AT NOT shoot_with.
          MAKE mia_AT NOT squeeze.
          MAKE mia_AT NOT stand_on.
        --MAKE mia_AT NOT switch. --------> ** VERBO ELIMINATO **
        --MAKE mia_AT NOT switch_on. -----> ** VERBO ELIMINATO **
        --MAKE mia_AT NOT switch_off. ----> ** VERBO ELIMINATO **
          MAKE mia_AT NOT turn.        -- (+ rotate)

      END IF.
--==============================================================================
--------------------------------------------------------------------------------
-- § x.4 - Livello di Restrizione 3
--------------------------------------------------------------------------------
--==============================================================================
-- Il livello 3 estende il blocco a tutti i verbi diegetici.

      IF restricted_level OF mia_AT >= 3
        THEN

          MAKE mia_AT NOT annusare.                 ---> smell
          MAKE mia_AT NOT ascoltare.                ---> listen + listen0 | ascolta0 + ascolta
          MAKE mia_AT NOT aspettare.                ---> wait         (+ z)
          MAKE mia_AT NOT domandare_chi_sono_io.    ---> who_am_i
          MAKE mia_AT NOT domandare_chi_è.          ---> who_is
          MAKE mia_AT NOT domandare_cosa_sono_io.   ---> what_am_i
          MAKE mia_AT NOT domandare_cosa_è.         ---> what_is
          MAKE mia_AT NOT domandare_dove_mi_trovo.  ---> where_am_i
          MAKE mia_AT NOT domandare_dove_è.         ---> where_is
          MAKE mia_AT NOT esaminare.                ---> examine      (+ check, inspect, observe, x)
          MAKE mia_AT NOT guardare.                 ---> look         (+ gaze, peek)
          MAKE mia_AT NOT guardare_attraverso.      ---> look_through
          MAKE mia_AT NOT guardare_dietro.          ---> look_behind
          MAKE mia_AT NOT guardare_fuori_da.        ---> look_out_of
          MAKE mia_AT NOT guardare_in.              ---> look_in
          MAKE mia_AT NOT guardare_sotto.           ---> look_under
          MAKE mia_AT NOT guardare_su.              ---> look_up
          MAKE mia_AT NOT inventariare.             ---> i            (+ inv, inventory)
          MAKE mia_AT NOT pensare.                  ---> think
          MAKE mia_AT NOT pensare_a.                ---> think_about
          MAKE mia_AT NOT pregare.                  ---> pray

        --# NOT YET TRANSLATED:

        --MAKE mia_AT NOT look_at. -------> ** VERBO OBSOLETO (StdLib 1?) ** (= esamina)
        --MAKE mia_AT NOT smell0. --------> ** ATTRIBUTO ELIMINATO **
 
      END IF.
--==============================================================================
--------------------------------------------------------------------------------
-- § x.5 - Livello di Restrizione 4
--------------------------------------------------------------------------------
--==============================================================================
-- Il quarto (ed ultimo) livello estende le restrizioni ai verbi extradiegetici.
-- A questo livello di restrizione nessun verbo della libreria è utilizzabile.

      IF restricted_level OF mia_AT >= 4
        THEN

          MAKE mia_AT NOT abbandonare_partita.      ---> 'quit'
          MAKE mia_AT NOT caricare_partita.         ---> 'restore'
          MAKE mia_AT NOT modalità_breve.           ---> brief
          MAKE mia_AT NOT modalità_lunga.           ---> verbose
          MAKE mia_AT NOT notificare.               ---> 'notify'
          MAKE mia_AT NOT notificare_off.           ---> notify_off
          MAKE mia_AT NOT notificare_on.            ---> notify_on
          MAKE mia_AT NOT ricominciare_partita.     ---> 'restart'
          MAKE mia_AT NOT rifare.                   ---> 'again'
          MAKE mia_AT NOT ringraziamenti.           ---> credits (+ acknowledgments, author, copyright)
          MAKE mia_AT NOT rispondere_No.            ---> 'no'
          MAKE mia_AT NOT rispondere_Sì.            ---> yes
          MAKE mia_AT NOT salvare_partita.          ---> save
          MAKE mia_AT NOT trascrivere.              ---> 'script'
          MAKE mia_AT NOT trascrivere_off.          ---> script_off
          MAKE mia_AT NOT trascrivere_on.           ---> script_on
          MAKE mia_AT NOT vedere_punteggio.         ---> 'score'

        --# NOT YET TRANSLATED:

          MAKE mia_AT NOT about.
          MAKE mia_AT NOT hint.        -- (+ hints)

      END IF.

      -- Aggiorna l'attributo che traccia le modifiche del livello di restrizione:
      SET previous_restricted_level OF mia_AT TO restricted_level OF mia_AT.

    END IF.

  -- Riprogramma questo evento:
  SCHEDULE check_restriction AFTER 1.

END EVENT.

-->intestazione(9000.1)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| == L'Intestazione dell'Avventura (Banner)
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| Ogni avventura creata con la Libreria ha una sua _intestazione_ (detta anche
--| _banner_) contenente informazioni sull'avventura, il suo autore e le versioni
--| della libereria e del compilatore Alan utilizzati.
--| 
--| L'uso del banner è facoltativo.

--| L'instestazione viene creata dalla libreria tramite l'instanza
--| `intestazione` della classe `location`. L'espediente consiste nello sfruttate
--| la descrizione di questo luogo fittizio per visualizzare il testo del banner
--| all'inizio della partita tramite `DESCRIBE intestazione.`.

THE intestazione IsA LOCATION

    DESCRIPTION

    "$p" STYLE alert. SAY mia_AT:titolo. STYLE normal.

    IF sottotitolo OF mia_AT <> ""
      THEN "$n" SAY mia_AT:sottotitolo.
      END IF.

    "$n(C)" SAY mia_AT:autore. "," SAY mia_AT:anno. "."
    "$nAvventura realizzata con ALAN Interactive Fiction Language v3.0 beta6
     $nLibreria Standard Italiana v2.1"

    IF versione OF mia_AT <> "0"
      THEN "$nVersione" SAY mia_AT:versione.
      END IF.

    "$nTutti i diritti riservati."

END THE intestazione.

--| La `DESCRIPTION` di `intestazione` agisce da template, e per riempire i
--| dettagli del testo del banner essa attingerà ai vari attributi di intestazione
--| presenti nell'istanza `mia_AT` dell'avventura.
--<

-- *****************************************************************************
-- *                                                                           *
-- *                                   TODO                                    *
-- *                                                                           *
-- *****************************************************************************

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
--| italiano del modulo delle definizioni.
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
