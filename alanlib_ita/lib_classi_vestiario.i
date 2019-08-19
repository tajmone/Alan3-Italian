--= Alan StdLib Italian: Classi Vestiario
--| Tristano Ajmone <tajmone@gmail.com>
--~-----------------------------------------------------------------------------
--~ "lib_classi_vestiario.i"
--| v0.21.1-Alpha, 2019-08-19: Alan 3.0beta6 build 2015
--|=============================================================================
--| Adattamento italiano del modulo `lib_classes.i` della
--| _ALAN Standard Library_ v2.1, (C) Anssi Räisänen, Artistic License 2.1.
--| Ad opera di Tristano Ajmone,  (C) 2018, Artistic License 2.1.
--|=============================================================================




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
--| [NOTE]
--| ============================================================================
--| Questa classe è basata sull'estensione `xwear.i` creata da Alan Bampton per
--| ALAN v2. Con il permesso dell'autore, l'estensione è stata adattata per
--| funzionare con ALAN v3, ed è stata interamente assimilata nella libreria.
--| Si ringrazia Alan Bampton per aver concesso l'autorizzazione a utilizzarne
--| il codice.
--| ============================================================================

--| La classe `indumento` ridefinisce i verbi `esamina`, `indossa` e `togliti`.
--|
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


-- @TODO: Spostali altrove!                                                     TODO!
ADD TO EVERY blocco_definizioni
  HAS temp_bool.   --> Variabile booleana interna usata dalla libreria.
  HAS temp_cnt 0.  --> Contatore interno usato dalla libreria.

  HAS temp_indumenti { indumento }. --> Set temporaneo usato dalla libreria per
                                    --  tracciare gli indumenti che bloccano
                                    --  indossa/rimuovi, per poterli elencare
                                    --  poi nella risposta.
END ADD TO blocco_definizioni.

-->classe_indumento
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
  HAS strato_testa  0.
  HAS strato_viso   0.
  HAS strato_tronco 0.
  HAS strato_gambe  0.
  HAS strato_piedi  0.
  HAS strato_mani   0.

  IS  blocca_gambe. NOT due_pezzi.

--| Gli utlimi due attributi servono a gestire indumenti speciali come gonne e
--| cappotti, ossia indumenti che non prevengono di indossare/rimuovere dagli
--| strati inferiori indumenti che coprono solo le gambe.

--| Per implementare una gonna basterà settarla come `IS NOT blocca_gambe`, e
--| quando la libreria eseguirà i controlli per i verbi `indossa` e `rimuovi`
--| non considererà la gonna un ostacolo a indossare/rimuovere un indumento con
--| valore `strato_gambe` inferiore a quello della gonna, purché l'indumento non
--| rivesta anche il tronco (es. un costume da bango intero), ovvero purché
--| abbia un valore `strato_tronco = 0`.

--| L'attributo `IS NOT due_pezzi` consente di raggirare l'ultimo
--| controllo e implementare un indumento a due pezzi separati (es. un bikini)
--| che possa essere indossato/rimosso mentre si indossa una gonna. Un bikini,
--| sebbene composto da due pezzi, verrebbe indossato in una singola azione, e
--| senza questo ulteriore attributo la libreria impedirebbe di indossarlo o
--| rimuoverlo mentre si indossa una gonna, per via del fatto che il bikini ha
--| un valore `strato_tronco <> 0`. Prima di bloccare l'azione la libreria
--| verifica se l'indumento oggetto dell'azione è `NOT due_pezzi`, e
--| in tal caso lo tratta come se avesse valore `strato_tronco = 0` (senza che
--| questo precluda gli altri controlli, così che se si sta indossando una
--| t-shirt questa impedirà l'azione).


  INITIALIZE
--                                                                              TRANSLATE COMMENTS!
    -- all objects found in a piece of clothing, for example a wallet in a jacket,
    -- will be allowed back in the piece of clothing once taken from there:


    FOR EACH o IsA OBJECT, DIRECTLY IN THIS
      DO INCLUDE o IN consentiti OF THIS.
    END FOR.


--                                                                              TRANSLATE COMMENTS!
    -- all clothing acquired and worn by the hero or an NPC mid-game is checked to
    -- show correctly when the possessions of an actor are listed:

-- >>> dev-vestario: tweaked >>> soppresso EVENT controlla_indossati

    -- SCHEDULE controlla_indossati AFTER 0.

  CONTAINER
--                                                                              TRANSLATE COMMENTS!
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


-->previeni_dislocamento_indossati
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== Impedisci verbi che potrebbero dislocare indossati
--~-----------------------------------------------------------------------------
--~=============================================================================
--| 

  VERB metti_in --> metti (ogg) 'in' (cont)
    WHEN ogg
      CHECK ogg IS NOT indossato
        ELSE
          IF ogg IN hero
            THEN SAY mia_AT:indumento_andrebbe_rimosso.
            ELSE
              IF ogg IS NOT plurale
                -- "Al momento $+1 [è/sono] indossat$$"
                THEN SAY mia_AT:indumento_indossato_PNG_sg.
                ELSE SAY mia_AT:indumento_indossato_PNG_pl.
              END IF. SAY ogg:vocale.
              FOR EACH ac IsA actor DO
                IF ogg IN ac
                  THEN SAY ac:prep_DA. SAY ac. "."
                END IF.
              END FOR.
          END IF.
  END VERB metti_in.


  VERB metti_su --> metti (ogg) su (superficie)
    WHEN ogg
      CHECK ogg IS NOT indossato
        ELSE
          IF ogg IN hero
            THEN SAY mia_AT:indumento_andrebbe_rimosso.
            ELSE
              IF ogg IS NOT plurale
                -- "Al momento $+1 [è/sono] indossat$$"
                THEN SAY mia_AT:indumento_indossato_PNG_sg.
                ELSE SAY mia_AT:indumento_indossato_PNG_pl.
              END IF. SAY ogg:vocale.
              FOR EACH ac IsA actor DO
                IF ogg IN ac
                  THEN SAY ac:prep_DA. SAY ac. "."
                END IF.
              END FOR.
          END IF.
  END VERB metti_su.


  VERB dai_a --> dai (ogg) a (png)
    WHEN ogg
      CHECK ogg IS NOT indossato
        ELSE
          IF ogg IN hero
            THEN SAY mia_AT:indumento_andrebbe_rimosso.
            ELSE
              IF ogg IS NOT plurale
                -- "Al momento $+1 [è/sono] indossat$$"
                THEN SAY mia_AT:indumento_indossato_PNG_sg.
                ELSE SAY mia_AT:indumento_indossato_PNG_pl.
              END IF. SAY ogg:vocale.
              FOR EACH ac IsA actor DO
                IF ogg IN ac
                  THEN SAY ac:prep_DA. SAY ac. "."
                END IF.
              END FOR.
          END IF.
  END VERB dai_a.

--| Se si vuole previnire che i PNG consegnino i loro vestiti, decomenntare il
--| seguente verbo, o aggiungerlo al proprio codice dell'avventura:

  -- VERB chiedi --> chiedi a (png) (ogg)
  --   WHEN ogg
  --     CHECK ogg IS NOT indossato
  --       ELSE
  --         IF ogg IN hero
  --           THEN SAY mia_AT:ogg2_già_posseduto.
  --           ELSE
  --             FOR EACH ac IsA actor DO
  --               IF THIS IN ac
  --                 THEN SAY THE ac. "sta indossando $+2."
  --               END IF.
  --             END FOR.
  --         END IF.
  -- END VERB chiedi.


  VERB lancia --> lancia (proiettile)
    CHECK proiettile IS NOT indossato
      ELSE
        IF proiettile IN hero
          THEN SAY mia_AT:indumento_andrebbe_rimosso.
          ELSE
            IF proiettile IS NOT plurale
              -- "Al momento $+1 [è/sono] indossat$$"
              THEN SAY mia_AT:indumento_indossato_PNG_sg.
              ELSE SAY mia_AT:indumento_indossato_PNG_pl.
            END IF. SAY proiettile:vocale.
            FOR EACH ac IsA actor DO
              IF proiettile IN ac
                THEN SAY ac:prep_DA. SAY ac. "."
              END IF.
            END FOR.
        END IF.
  END VERB lancia.

  VERB lancia_a --> lancia (proiettile) a (png)
    WHEN proiettile
      CHECK proiettile IS NOT indossato
        ELSE
          IF proiettile IN hero
            THEN SAY mia_AT:indumento_andrebbe_rimosso.
            ELSE
              IF proiettile IS NOT plurale
                -- "Al momento $+1 [è/sono] indossat$$"
                THEN SAY mia_AT:indumento_indossato_PNG_sg.
                ELSE SAY mia_AT:indumento_indossato_PNG_pl.
              END IF. SAY proiettile:vocale.
              FOR EACH ac IsA actor DO
                IF proiettile IN ac
                  THEN SAY ac:prep_DA. SAY ac. "."
                END IF.
              END FOR.
          END IF.
  END VERB lancia_a.

  VERB lancia_contro --> lancia (proiettile) contro (bersaglio)
    WHEN proiettile
      CHECK proiettile IS NOT indossato
        ELSE
          IF proiettile IN hero
            THEN SAY mia_AT:indumento_andrebbe_rimosso.
            ELSE
              IF proiettile IS NOT plurale
                -- "Al momento $+1 [è/sono] indossat$$"
                THEN SAY mia_AT:indumento_indossato_PNG_sg.
                ELSE SAY mia_AT:indumento_indossato_PNG_pl.
              END IF. SAY proiettile:vocale.
              FOR EACH ac IsA actor DO
                IF proiettile IN ac
                  THEN SAY ac:prep_DA. SAY ac. "."
                END IF.
              END FOR.
          END IF.
  END VERB lancia_contro.


  VERB lancia_in --> lancia (proiettile) 'in' (cont)
    WHEN proiettile
      CHECK proiettile IS NOT indossato
        ELSE
          IF proiettile IN hero
            THEN SAY mia_AT:indumento_andrebbe_rimosso.
            ELSE
              IF proiettile IS NOT plurale
                -- "Al momento $+1 [è/sono] indossat$$"
                THEN SAY mia_AT:indumento_indossato_PNG_sg.
                ELSE SAY mia_AT:indumento_indossato_PNG_pl.
              END IF. SAY proiettile:vocale.
              FOR EACH ac IsA actor DO
                IF proiettile IN ac
                  THEN SAY ac:prep_DA. SAY ac. "."
                END IF.
              END FOR.
          END IF.
  END VERB lancia_in.


  VERB lega_a --> lega (ogg) a (bersaglio)
    WHEN ogg
      CHECK ogg IS NOT indossato
        ELSE
          IF ogg IN hero
            THEN SAY mia_AT:indumento_andrebbe_rimosso.
            ELSE
              IF ogg IS NOT plurale
                -- "Al momento $+1 [è/sono] indossat$$"
                THEN SAY mia_AT:indumento_indossato_PNG_sg.
                ELSE SAY mia_AT:indumento_indossato_PNG_pl.
              END IF. SAY ogg:vocale.
              FOR EACH ac IsA actor DO
                IF ogg IN ac
                  THEN SAY ac:prep_DA. SAY ac. "."
                END IF.
              END FOR.
          END IF.
  END VERB lega_a.
--<


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
    AND THIS IS NOT indossato
      ELSE
        IF THIS IN hero
          THEN SAY mia_AT:ogg1_già_indossato.
          ELSE
            IF THIS IS NOT plurale
              -- "Al momento $+1 [è/sono] indossat$$"
              THEN SAY mia_AT:indumento_indossato_PNG_sg.
              ELSE SAY mia_AT:indumento_indossato_PNG_pl.
            END IF. SAY THIS:vocale.
            FOR EACH ac IsA actor DO
              IF THIS IN ac
                THEN SAY ac:prep_DA. SAY ac. "."
              END IF.
            END FOR.
        END IF.

    DOES ONLY
--------------------------------------------------------------------
-- Ora gli indumenti che prevengono l'azione vengono memorizzati in
-- un set temporaneo affinché possano essere elencati nel messaggio
-- di risposta, anziché elencare ogni indumento indossato dall'Eroe.
--------------------------------------------------------------------

      -- -------------------------
      -- Svuota il set temporaneo:
      -- -------------------------
      SET mia_AT:temp_indumenti TO {}.
      -- -----------------------------------------------------------------------
      -- Verifica se l'indumento da indossare è soggetto a indossamento ordinato
      -- -----------------------------------------------------------------------
      IF  THIS:strato_testa
        + THIS:strato_viso
        + THIS:strato_tronco
        + THIS:strato_gambe
        + THIS:strato_piedi
        + THIS:strato_mani <> 0
        THEN
          -- -------------------------------------------------------------------
          -- Ogni indumento indossato con valore di copertura uguale o maggiore
          -- a quello dell'indumento che si vuole indossare è un indumento che
          -- impedisce d'indossarlo.
          -- -------------------------------------------------------------------
          FOR EACH ind IsA indumento, DIRECTLY IN hero, IS indossato
            DO
              IF THIS:strato_testa  <> 0 AND THIS:strato_testa  <= ind:strato_testa
                THEN INCLUDE ind IN mia_AT:temp_indumenti.
              END IF.
              IF THIS:strato_viso   <> 0 AND THIS:strato_viso   <= ind:strato_viso
                THEN INCLUDE ind IN mia_AT:temp_indumenti.
              END IF.
              IF THIS:strato_tronco <> 0 AND THIS:strato_tronco <= ind:strato_tronco
                THEN INCLUDE ind IN mia_AT:temp_indumenti.
             END IF.
              IF THIS:strato_gambe  <> 0 AND THIS:strato_gambe  <= ind:strato_gambe
                -- THEN INCLUDE ind IN mia_AT:temp_indumenti.
                THEN
                  -- -----------------------------------------------------------
                  -- Esguiamo i controlli speciali per 'NOT blocca_gambe'
                  -- -----------------------------------------------------------
                  IF ind:blocca_gambe
                  -- Se l'indumento ostacolo è bloccante, blocca l'azione:
                    THEN INCLUDE ind IN mia_AT:temp_indumenti.
                  -- Altrimenti, è una gonna o un cappotto.
                  -- Verifica che l'indumento che si vuole indossare non formi
                  -- un pezzo unico game-tronco.
                  ELSIF THIS:strato_tronco <> 0 AND THIS IS NOT due_pezzi
                    THEN INCLUDE ind IN mia_AT:temp_indumenti.
                  END IF.
              END IF.
              IF THIS:strato_piedi  <> 0 AND THIS:strato_piedi  <= ind:strato_piedi
                THEN INCLUDE ind IN mia_AT:temp_indumenti.
              END IF.
              IF THIS:strato_mani   <> 0 AND THIS:strato_mani   <= ind:strato_mani
                THEN INCLUDE ind IN mia_AT:temp_indumenti.
              END IF.
          END FOR.
      END IF.

      --========================================================================
      -- Esito del tentativo di indossare l'indumento...
      --========================================================================

      SET mia_AT:temp_cnt TO COUNT IsA indumento, IN mia_AT:temp_indumenti.
      IF mia_AT:temp_cnt <> 0
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
          -- ----------------------------------------
          -- Elenca indumenti che prevengono l'azione
          -- ----------------------------------------
          "Per poter indossare $+1 dovresti prima toglierti"
          FOR EACH ind_bloccante IsA indumento, IN mia_AT:temp_indumenti
            DO
              SAY THE ind_bloccante.
              DECREASE mia_AT:temp_cnt.
              DEPENDING ON mia_AT:temp_cnt
                = 1 THEN "e"
                = 0 THEN "."
                ELSE ","
              End Depend.
          END FOR.
        ELSE
          -- --------------------------------
          -- L'indumento può essere indossato
          -- --------------------------------
          IF THIS NOT IN hero
            THEN
              -- -----------------------------------
              -- L'indumento viene preso e indossato
              -- -----------------------------------
              "Prendi" SAY THE THIS. "e l$$" SAY THIS:vocale. "indossi."
            ELSE
              -- ---------------------------
              -- L'indumento viene indossato
              -- ---------------------------
              "Indossi" SAY THE THIS. "."
          END IF.
          LOCATE THIS IN hero.
          MAKE THIS indossato.
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
    CHECK THIS DIRECTLY IN hero AND THIS IS indossato
      ELSE SAY mia_AT:non_indossi.
    AND CURRENT LOCATION IS illuminato
      ELSE SAY mia_AT:imp_luogo_buio.

    DOES ONLY

--------------------------------------------------------------------
-- Ora gli indumenti che prevengono l'azione vengono memorizzati in
-- un set temporaneo affinché possano essere elencati nel messaggio
-- di risposta, anziché elencare ogni indumento indossato dall'Eroe.
--------------------------------------------------------------------

      -- -------------------------
      -- Svuota il set temporaneo:
      -- -------------------------
      SET mia_AT:temp_indumenti TO {}.
      -- -----------------------------------------------------------------------
      -- Verifica se l'indumento da rimuovere è soggetto a indossamento ordinato
      -- -----------------------------------------------------------------------
      IF  THIS:strato_testa
        + THIS:strato_viso
        + THIS:strato_tronco
        + THIS:strato_gambe
        + THIS:strato_piedi
        + THIS:strato_mani <> 0
        THEN
          -- -------------------------------------------------------------------
          -- Ogni indumento indossato con valore di copertura maggiore di quello
          -- dell'indumento che si vuole rimuovere è un indumento che impedisce
          -- l'azione.
          -- -------------------------------------------------------------------
          FOR EACH ind IsA indumento, DIRECTLY IN hero, IS indossato
            DO
              IF THIS:strato_testa  <> 0 AND THIS:strato_testa  < ind:strato_testa
                THEN INCLUDE ind IN mia_AT:temp_indumenti.
              END IF.
              IF THIS:strato_viso   <> 0 AND THIS:strato_viso   < ind:strato_viso
                THEN INCLUDE ind IN mia_AT:temp_indumenti.
              END IF.
              IF THIS:strato_tronco <> 0 AND THIS:strato_tronco < ind:strato_tronco
                THEN INCLUDE ind IN mia_AT:temp_indumenti.
              END IF.
              IF THIS:strato_gambe  <> 0 AND THIS:strato_gambe  < ind:strato_gambe
              -- AND ind:blocca_gambe
                -- THEN INCLUDE ind IN mia_AT:temp_indumenti.
                THEN
                  -- -----------------------------------------------------------
                  -- Esguiamo i controlli speciali per 'NOT blocca_gambe'
                  -- -----------------------------------------------------------
                  IF ind:blocca_gambe
                  -- Se l'indumento ostacolo è bloccante, blocca l'azione:
                    THEN INCLUDE ind IN mia_AT:temp_indumenti.
                  -- Altrimenti, è una gonna o un cappotto.
                  -- Verifica che l'indumento che si vuole indossare non formi
                  -- un pezzo unico game-tronco.
                  ELSIF THIS:strato_tronco <> 0 AND THIS IS NOT due_pezzi
                    THEN INCLUDE ind IN mia_AT:temp_indumenti.
                  END IF.
              END IF.
              IF THIS:strato_piedi  <> 0 AND THIS:strato_piedi  < ind:strato_piedi
                THEN INCLUDE ind IN mia_AT:temp_indumenti.
              END IF.
              IF THIS:strato_mani   <> 0 AND THIS:strato_mani   < ind:strato_mani
                THEN INCLUDE ind IN mia_AT:temp_indumenti.
              END IF.
          END FOR.
      END IF.

      --========================================================================
      -- Esito del tentativo di rimuovere l'indumento...
      --========================================================================

      SET mia_AT:temp_cnt TO COUNT IsA indumento, IN mia_AT:temp_indumenti.
      IF mia_AT:temp_cnt <> 0
        THEN
          -- ----------------------------------
          -- L'indumento non può essere rimosso
          -- ----------------------------------
          "Per poter rimuovere $+1 dovresti prima toglierti"
          FOR EACH ind_bloccante IsA indumento, IN mia_AT:temp_indumenti
            DO
              SAY THE ind_bloccante.
              DECREASE mia_AT:temp_cnt.
              DEPENDING ON mia_AT:temp_cnt
                = 1 THEN "e"
                = 0 THEN "."
                ELSE ","
              END DEPEND.
          END FOR.
        ELSE
          -- ------------------------------
          -- L'indumento può essere rimosso
          -- ------------------------------
          "Ti togli" SAY THE THIS. "."
          LOCATE THIS IN hero.
          MAKE THIS NOT indossato.
      END IF.
  END VERB togliti.
END EVERY.



--                                                                              TRANSLATE COMMENTS!
--------------------------------------------------------------------
-- These attributes are used internally in the library - ignore!
--------------------------------------------------------------------

ADD TO EVERY ACTOR
  IS genere 0.
END ADD TO.

--                                                                              TRANSLATE COMMENTS!
--------------------------------------------------------------------
-- An event checking that clothing acquired and worn by an actor
-- mid-game is recognised to be worn by the actor:
--------------------------------------------------------------------

-- >>> dev-vestario: tweaked! EVENT controlla_indossati >>>

EVENT controlla_indossati
  FOR EACH ac IsA ACTOR
    DO
      "" -- DO NOTHING!

      -- [ NON COMPILAVA A CAUSA DI BACO IN ALAN (RISOLTO IN 1870!) ]
      -----------------------------------------------------
      -- Assicurati che ogni indumento indirettamente in un
      -- attore sia marcato 'NOT indossato'.
      -----------------------------------------------------
      -- FOR EACH ind IsA indumento, INDIRECTLY IN ac, IS indossato
      --   DO
      --     MAKE ind NOT indossato.
      --      "**" SAY THE ind. "IS indossato INDIRECTLY IN" SAY THE ac. "**"
      -- END FOR.
     
      -- SOPPRESSO (PROVA A NON USARE 'indossati')
      -----------------------------------------------------
      -- Ogni indumento direttamente in un attore e marcato
      -- 'indossato' va aggiunto al suo set di 'indossati'.
      -----------------------------------------------------
      -- FOR EACH ind IsA indumento, DIRECTLY IN ac, IS indossato
      --   DO INCLUDE ind IN indossati OF ac.
      -- END FOR.
  END FOR.
  SCHEDULE controlla_indossati AFTER 1.
END EVENT.
-- >>> codice originale >>>
  -- FOR EACH ac IsA ACTOR
  --   DO
  --     FOR EACH cl IsA indumento, IN indossati OF ac
  --       DO
  --         IF ac = hero
  --           THEN
  --             IF cl NOT IN abbigliamento
  --               THEN LOCATE cl IN abbigliamento.
  --                 MAKE cl indossato.
  --             END IF.
  --           ELSE
  --             IF cl NOT IN ac
  --               THEN LOCATE cl IN ac.
  --                 MAKE cl indossato.
  --             END IF.
  --         END IF.
  --     END FOR.
  -- END FOR.
  -- SCHEDULE controlla_indossati AFTER 1.
-- <<< codice originale <<<



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

--                                                                              TRANSLATE CLOTHING ISTRUCTIONS!
-----------------------------------------------------------------------
-- INSTRUCTIONS FOR USING THE CLOTHING CLASS
-----------------------------------------------------------------------


-- Here is a quick overview for using the class 'clothing'.

-- A piece of clothing in your game code should look
-- something similar to the following four examples:


-- THE jacket IsA CLOTHING AT lobby
--   IS strato_tronco 32.
-- END THE.


-- use IN to refer to containers:

-- THE jeans IsA CLOTHING IN wardrobe
--   IS strato_gambe 16.
-- END THE.


-- IN worn = worn by the player character (hero):

-- THE hat IsA CLOTHING IN hero   -- declaring the initial location is optional
--   IS strato_testa 2.
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
--<

-->todo_checklist(.33)
--| * [ ] *Tabella del Vestiario*: finire traduzione.
--<<


-->tabella_vestiario(10960.1)
--| .Indumenti Comuni
--| [.center,cols="<40d,6*^10m",options="header,autowidth"]
--~                                                                             TRANSLATE TABELLA VESTIARIO!
--| |=====================================================================
--| | Indumento/strato    | testa | viso | tronco | gambe | piedi | mani
--~ +-----------------------------+------+--------+-------+-------+------+
--| | cappello                | 2 |    0 |      0 |     0 |     0 |    0
--| | canottiera/reggiseno    | 0 |    0 |      2 |     0 |     0 |    0
--| | mutande/slip            | 0 |    0 |      0 |     2 |     0 |    0
--| | pagliaccetto            | 0 |    0 |      4 |     4 |     0 |    0
--| | blusa/camicia/T-shirt   | 0 |    0 |      8 |     0 |     0 |    0
--| | abito donna/tuta lavoro | 0 |    0 |      8 |    32 |     0 |    0
--| | gonna                   | 0 |    0 |      0 |    32 |     0 |    0
--| | pantaloni/pantaloncini  | 0 |    0 |      0 |    16 |     0 |    0
--| | maglione/pullover       | 0 |    0 |     16 |     0 |     0 |    0
--| | giacca                  | 0 |    0 |     32 |     0 |     0 |    0
--| | cappotto                | 0 |    0 |     64 |    64 |     0 |    0
--| | calze/gambaletti        | 0 |    0 |      0 |     0 |     2 |    0
--| | collant/calzamaglia     | 0 |    0 |      0 |     8 |     2 |    0
--| | scarpe/stivali          | 0 |    0 |      0 |     0 |     4 |    0
--| | guanti                  | 0 |    0 |      0 |     0 |     0 |    2
--| |=====================================================================
--<



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
--| italiano del modulo della classe del vestiario.
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
