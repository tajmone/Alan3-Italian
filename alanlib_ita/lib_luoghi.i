--= Alan StdLib Italian: Luoghi
--| Tristano Ajmone <tajmone@gmail.com>
--~-----------------------------------------------------------------------------
--~ "lib_luoghi.i"
--| v0.22.1-Alpha, 2019-08-25: Alan 3.0beta6 build 2022
--|=============================================================================
--| Adattamento italiano del modulo `lib_locations.i` della
--| _ALAN Standard Library_ v2.1, (C) Anssi Räisänen, Artistic License 2.1.
--| Ad opera di Tristano Ajmone,  (C) 2018, Artistic License 2.1.
--|=============================================================================


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
--| è stato visitato dal giocatore e a lui descritto, rispettivamente.
--~-----------------------------------------------------------------------------
--<

-- @TODO:                                                                       CHECK!
--------------------------------------------------------------------------------
-- @TODO | Il testo inglese qui sotto è un po' ambiguo:
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- You may modify this file in any way that suits your purposes.
-- To use this file, you should have it in the same folder as your source code file,
-- and the line
--
-- IMPORT 'locations.i'.
--
-- in your source code.
-- ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--       | poiché sembra sottendere:
--       |  1) Che le definizioni di questo modulo non influiscono sugli altri
--       |     moduli della libreria.
--       |  2) Che si tratti di un modulo indipendente ed opzionale.
--       |
--       | Entrambi i punti non corrispondono allo stato attuale della StdLib,
--       | e mi chiedo se non si tratti di testo vecchio, che fa riferimento a
--       | versioni precedenti della libreria. P.es., il 'limbo' (ex 'nowhere')
--       | è utilizzato spesso nei modulo dei verbi, e quindi non può essere
--       | modificato a piacimento. Molto pobabilmente lo stesso vale per altri
--       | elementi definiti in questo modulo, quindi l'affermazione secondo cui
--       | si è completamente liberi di editare questo file è un po' azzardata.
--       | Quanto al punto (2), allo stato attuale la StdLib viene caricata
--       | tramite un unico file ("liberia.i") che si occupa di importare tutti
--       | i moduli richiesti; intoltre, questo modulo non è affatto opzionale
--       | dato che alcune classi qui definite (es, il 'limbo') sono indispensabili
--       | per i verbi, e senza questo modulo si avrebbe un errore di compilazione.
--       | Credo che l'ideale sia ignorare questi paragrafi nella traduzione.
--------------------------------------------------------------------------------


-->todo_checklist(.666)
--| * [ ] Doxterizza _Il 'LIMBO' e Le Direzioni Cardinali Predefinite_.
--<<

-->limbo(1000)
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Il LIMBO e le direzioni predefinite
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--|
--| Il `limbo` è un luogo speciale, definito dalla libreria con duplice scopo:
--|
--| 1. Mettere a disposizione un non-luogo in cui poter parcheggiare tutte le
--|    istanze che si vogliono fare sparire dal gioco.
--| 2. Definire le direzioni di spostamento predefinite.
--|
--| Siccome Alan non consente la creazione o la distruzione dinamica di instanze
--| durante il gioco, l'unico modo per poter far sparire di scena un'instanza è
--| collocarla in un luogo a cui il giocatore non potrà aver accesso -- ossia,
--| il limbo.
--|
--| Quanto alla definizione delle direzioni predefinite, Alan non dispone di una
--| classe speciale per le direzioni, né definisce alcuna direzione predefinta;
--| Alan estrae la lista delle direzioni dalle varie occorrenze di `EXIT` nel
--| sorgente dell'avventura. Per questo motivo, la libreria definisce le
--| direzioni standard sull'istanza di luogo `limbo`:


THE limbo ISA LOCATION
  EXIT
    nord,
    sud,
    est,
    ovest,
    nordest,
    sudest,
    nordovest,
    sudovest,
    su,
    giù,
   'in', --> per "dentro" (sinonimo)
    fuori

    TO limbo.
END THE limbo.

--| Le direzioni definite nel blocco `EXIT` del `limbo` saranno riconosciute
--| come comandi di direzione in tutti i luoghi dell'avventura -- se esse
--| saranno praticabili o meno dipenderà dalla loro presenza nella definizioni
--| di `EXIT` del luogo in cui si trova il giocatore, ma il comando di direzione
--| verrà sempre riconisciuto come tale.
--|
--| [NOTE]
--| ========================================================================
--| Il limbo definisce un'unica `EXIT` che contiene tutti i nomi delle direzioni
--| predefinite e che porta al `limbo` stesso. Questo escamotage serve solo a
--| informare Alan dei nomi delle direzioni. Dato che il giocatore non dovrebbe
--| mai finire nel limbo, creare uscite che puntano al luogo di partenza non
--| rappresenta un problema, bensì uno stratagemma.
--| ========================================================================
--<

-->direzioni(1100)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Direzioni predefinite
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--|
--| Oltre alle direzioni predefinite sul `limbo`, la libreria definisce anche
--| dei sinonimi comuni per esse, che includono sintassi alternative e comandi
--| brevi:


SYNONYMS
    nest    = nordest.
    sest    = sudest.
    novest  = nordovest.
    sovest  = sudovest.
    sopra   = su.
    giu     = giù.

--| [IMPORTANT]
--| ========================================================================
--| Dovrei implementare `in` come sinomimo di `dentro`?
--|
--| In molti verbi i due termini sono equivalenti -- e.s. "`guarda nella/dentro
--| la scatola`", "`entra in/dentro casa`". Devo valutare se potrebbero esserci
--| verbi per i quali questo non vale -- e.s. "`scrivi in calce`" -- e se tali
--| occorrenze giustificherebbo non utilizzare un sinonimo e lasciare invece
--| all'autore il compito di definire sintassi alternative.
--| ========================================================================


--| [NOTE]
--| ========================================================================
--| La ragione per cui non è stato possibile definire le direzioni brevi
--| classiche `n`, `e`, `s`, `o`, `ne`, `no`, `se`, `so` è dovuto al fatto che
--| alcune di esse avrebbero conflitto con altri identificativi definiti
--| altrove:
--|
--| [horizontal]
--| `e` -> `est`        :: ignorato dal parsing dei comandi poiché `e` è una
--|                        "`noise word`".
--| `a` -> `su`         :: causerebbe conflitti con la preposizione `a`.
--| `no` -> `nordovest` :: in conflitto con la sintassi del verbo `rispondi_No`.
--| `sotto` -> `giù`    :: in conflitto con la sintassi "`guarda sotto`".
--|
--| Ragion per cui si è preferito adottare un sistema di abbreviazioni coerente,
--| limitandone l'uso alle direzioni composite.
--| ========================================================================

--| Alcune abbreviazioni comunemente utilizzate in altri sistemi IF sono state
--| qui omesse poiché potrebbero confliggere con sostantivi utilizzati nelle
--| varie avventure -- e.s. `basso`/`alto`, che potrebbero essere utilizzati come
--| aggettivi, e.s. "`l'uomo alto`" -- o perché giudicate di scarsa importanza
--| (e.s. `b` per `giù`).
--<

-->tabella_direzioni_intro(1200)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== Tabella direzioni predefinite
--~-----------------------------------------------------------------------------
--~=============================================================================
--|
--| La seguente tabella riassume tutte le direzioni predefinite dalla libreria:
--<
-->tabella_direzioni(1210)
--| [cols="2*<5m",options="header,autowidth"]
--| |=======================
--| | DIREZIONE | SINONIMI
--~ +-----------+----------+
--| | nord      |
--| | sud       |
--| | est       |
--| | ovest     |
--| | nordest   | nest
--| | sudest    | sest
--| | nordovest | novest
--| | sudovest  | sovest
--| | su        | sopra
--| | giù       | giu
--| | dentro    |
--| | fuori     |
--| |=======================
--<


--@NOTA: i6 implementa anche "esterno" e "esternamente" per "fuori"

--                                                                              TRANSLATE COMMENTS!
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
--      DOES ONLY "You tear the piece of paper to shreds."
--        LOCATE piece_of_paper AT limbo.
--    END VERB tear.
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

--                                                                              TRANSLATE COMMENTS!
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
-- THE kitchen IsA location
--
-- etc, but the floor, walls and ceiling won't be automatically included there.
-- The walls, floor, ceiling, ground and sky are not takeable or movable.
-- This library file also defines the sky to be distant and the ceiling to be out of reach,
-- so that they can't be touched, for example.

-- (We make use of ALAN's nested locations feature in the following definitions: )


THE esterno ISA LOCATION
END THE esterno.


THE interno ISA LOCATION
END THE interno.


EVERY stanza ISA LOCATION AT interno
  HAS desc_pavimento "".  -- if these values are left unchanged,
  HAS desc_pareti    "".  -- the descriptions of the walls, floor and
  HAS desc_soffitto  "".  -- ceiling will be the default "You notice nothing unusual
END EVERY.                -- about the [object]."


EVERY luogo_esterno ISA LOCATION AT esterno
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


-- @NOTE: It doesn't seem this ever gets executed!                              CHECK!
  VERB svuota_in, versa_in
    WHEN cont
      DOES ONLY "That's not something you can $v things into."
  END VERB svuota_in.


  VERB guarda_in
    DOES ONLY "That's not possible."
  END VERB guarda_in.


-- @NOTE: It doesn't seem this ever gets executed!                              CHECK!
--        The problem seems to be that 'metti_in' checks that
--        OGG IN CONSENTITI OF CONT -- so we never get here because checks are
--        inherited also if there is DOES ONLY cause!
  VERB metti_in
    WHEN cont
      DOES ONLY
   -- DOES ONLY "That's not something you can $v things into."
        IF ogg IS NOT plurale
          --  "$+2 non [è/sono] qualcosa in cui poter"
          THEN SAY mia_AT:ogg2_inadatto_IN_sg.
          ELSE SAY mia_AT:ogg2_inadatto_IN_pl.
        END IF.
        "mettere le cose."
  END VERB metti_in.

-- @PRENDI_DA -> @TAKE_FROM (VERB) => FLOOR
  VERB prendi_da
     WHEN detentore
    DOES ONLY "If you want to pick up something, just TAKE it."
  END VERB prendi_da.


  VERB lancia_in
     WHEN cont
    DOES ONLY "That's not something you can $v things into."
  END VERB lancia_in.

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


--                                                                              TRANSLATE COMMENTS!
  -- As we have declared the ground to be a container, we will disable some verbs
  -- defined to work with containers:

-- @NOTE: It doesn't seem this ever gets executed!                              CHECK!
  VERB svuota_in, versa_in
    WHEN cont
      DOES ONLY "That's not something you can $v things into."
  END VERB svuota_in.


  VERB guarda_in
    DOES ONLY "That's not possible."
  END VERB guarda_in.


  VERB metti_in
     WHEN cont
    DOES ONLY "That's not something you can $v things into."
  END VERB metti_in.


-- @PRENDI_DA -> @TAKE_FROM (VERB) => GROUND
  VERB prendi_da
     WHEN detentore
    DOES ONLY "If you want to pick up something, just TAKE it."
  END VERB prendi_da.


  VERB lancia_in
     WHEN cont
    DOES ONLY "That's not something you can $v things into."
  END VERB lancia_in.


END THE.



THE cielo IsA oggetto_luogo_esterno
  IS NOT prendibile.
  IS distante.
  DESCRIPTION ""
END THE.

--                                                                              TRANSLATE COMMENTS!
-- We still declare some shared behaviour for all indoor and outdoor objects:


ADD TO EVERY oggetto_stanza

  VERB metti_contro
    WHEN bulk
      CHECK THIS = pareti
        ELSE SAY mia_AT:non_fattibile.    ---> "Non è una cosa fattibile."
  END VERB metti_contro.

  VERB metti_dietro, metti_vicino, metti_sotto
    WHEN bulk
      DOES ONLY SAY mia_AT:non_fattibile. ---> "Non è una cosa fattibile."
  END VERB metti_dietro.

  VERB guarda_dietro, guarda_attraverso, guarda_sotto
    DOES ONLY SAY mia_AT:non_fattibile.   ---> "Non è una cosa fattibile."
  END VERB guarda_dietro.

END ADD TO.


ADD TO EVERY oggetto_luogo_esterno

  VERB metti_contro, metti_dietro, metti_vicino, metti_sotto
    WHEN bulk
      DOES ONLY SAY mia_AT:non_fattibile. ---> "Non è una cosa fattibile."
  END VERB metti_contro.

  VERB guarda_dietro, guarda_attraverso, guarda_sotto
    DOES ONLY SAY mia_AT:non_fattibile.   ---> "Non è una cosa fattibile."
  END VERB guarda_dietro.

END ADD TO.

--                                                                              TRANSLATE COMMENTS!
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
-- END VERB examine.
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

--                                                                              TRANSLATE COMMENTS!
    -- These ENTERED statements take care
    -- of the dark location being correctly lit or not lit at entrance,
    -- the WHEN rules below take care of the change when the hero is
    -- already in the location.


  DESCRIPTION
    CHECK THIS IS illuminato
      ELSE SAY mia_AT:desc_luogo_buio.

END EVERY luogo_buio.


WHEN LOCATION OF hero IS NOT illuminato
  AND COUNT IsA fonte_di_luce, IS illuminato, AT hero > 0
THEN MAKE LOCATION OF hero illuminato.
  SCHEDULE light_on AT hero AFTER 0.


EVENT light_on
  LOOK.
END EVENT.


WHEN LOCATION OF hero IsA luogo_buio
  AND LOCATION OF hero IS illuminato
  AND COUNT IsA fonte_di_luce, IS illuminato, AT hero = 0
THEN MAKE LOCATION OF hero NOT illuminato.
  SCHEDULE luci_spente AT hero AFTER 0.

-- @TODO: Usa messaggi diversi per 'stanza' e 'luogo_esterno'                   IMPROVE!
EVENT luci_spente
  SAY mia_AT:luci_spente.
END EVENT.


--                                                                              TRANSLATE COMMENTS!
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

--                                                                              TRANSLATE COMMENTS!

-- This event is initialized in the start_section instance ('definitions.i').


-- To define a dark location, use a formulation like the following:


-- THE basement IsA luogo_buio
--  EXIT up TO kitchen.
-- ...
-- END THE.


-- The description of a dark_location will automatically be: "It is pitch black.
-- You can't see anything at all." (Edit the desc_luogo_buio in 'definitions.i' to change this.)


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
-- § x - Gli attribuiti VISITATO e DESCRITTO
--------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================
--                                                                              DOXTERIZE!
-- Un luogo ha il valore 'visitato 0' finché il giocatore non lo visita la prima
-- volta, dopodiché il suo valore verrà incrementato ad ogni visita. L'attributo
-- 'visitato' è un contatore che registra il numero di volte in cui il giocatore
-- è entrato in un determinato luogo, e può tornare utile in molti frangenti;
-- ad es., per mostrare una descrizione diversa (più breve) nelle visite succes-
-- sive alla prima.

-- L'attributo 'descritto' funziona in maniera analoga, ma registra il numero di
-- volte che un luogo è stato descritto, ed il suo valore incrementa ogni volta
-- che viene mostrata al giocatore la descrizione del luogo. La distinzione tra
-- questi due attributi è utile quando si vuole assicurarsi che le descrizioni
-- successive alla prima saranno diverse (anche se il giocatore seguita a
-- trovarsi per la prima volta in quel luogo).

ADD TO EVERY LOCATION
  HAS visitato  0.
  HAS descritto 0.

  ENTERED
    IF CURRENT ACTOR = hero
      THEN
        INCREASE THIS:visitato.
        INCREASE THIS:descritto.
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
--| === Check-list generale
--~-----------------------------------------------------------------------------
--~=============================================================================
--|
--| Lista della spesa per le varie cosucce da fare:
--|
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
