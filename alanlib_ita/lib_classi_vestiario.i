--= Alan StdLib Italian: Classi Vestiario
--| Tristano Ajmone <tajmone@gmail.com>
--~-----------------------------------------------------------------------------
--~ "lib_classi_vestiario.i"
--| v0.15.0-Alpha, 2019-02-19: Alan 3.0beta6 build 1866
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

-- >>> dev-vestario: added

-- @TODO: Spostali altrove prima di eseguire il merge in master!                TODO!
ADD TO EVERY blocco_definizioni
  HAS temp_cnt 0.                   --> Contatore interno usato dalla libreria.

  HAS temp_indumenti { indumento }. --> Set temporaneo usato dalla libreria per
                                    --  tracciare gli indumenti che bloccano
                                    --  indossa/rimuovi, per poterli elencare
                                    --  poi nella risposta.
END ADD TO blocco_definizioni.

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

-- >>> dev-vestario: deleted! ENTITY abbigliamento >>>

-- THE abbigliamento IsA ENTITY
--   CONTAINER TAKING indumento.
--     HEADER  SAY mia_AT:header_abbigliamento.
--     ELSE    SAY mia_AT:header_abbigliamento_else.
-- END THE.

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

-- >>> dev-vestario: tweaked ( spostato su THING in "lib_definizioni.i")
  -- IS NOT indossato. -- Ossia, non è nel set degli `indossati` di alcun attore.
-- <<<

  INITIALIZE

    -- L'attributo d'insieme 'indossati' è concepito per funzionare sia con
    -- l'Eroe che con i PNG:

-- >>> dev-vestario: tweaked INITIALIZE indumento >>>
-- SOPPRESSO (PROVO A NON USARE NEANCHE IL SET 'indossati')
    -- FOR EACH ac IsA ACTOR
    --   DO
    --     -- * Eliminata gestione Hero tramite 'abbigliamento'.
    --     -- * Usa l'attributo 'indossato' come criterio gestionale.
    --     ------------------------------------------------------------
    --     -- Qualsiasi indumento che sia direttamente in un attore e
    --     -- marcato 'indossato' deve essere incluso nel set degli
    --     -- 'indossati' di quell'attore.
    --     ------------------------------------------------------------
    --     FOR EACH ind IsA indumento, DIRECTLY IN ac, IS indossato
    --       DO INCLUDE ind IN indossati OF ac.
    --     END FOR.
    -- END FOR.
-- >>> codice originale >>>
    -- IF THIS IN abbigliamento
    --   THEN INCLUDE THIS IN indossati OF hero.
    -- END IF.

    -- FOR EACH ac IsA ACTOR
    --   DO
    --     IF ac = hero
    --       THEN
    --         IF THIS IN indossati OF hero AND THIS <> indumento_fittizio
    --           THEN
    --             IF THIS NOT IN abbigliamento
    --               THEN LOCATE THIS IN abbigliamento.
    --             END IF.
    --             MAKE THIS indossato.
    --         END IF.
    --     ELSIF THIS IN indossati OF ac AND THIS <> indumento_fittizio
    --       THEN
    --         IF THIS NOT IN ac
    --           THEN
    --             LOCATE THIS IN ac.
    --         END IF.
    --         MAKE THIS indossato.
    --     END IF.
    -- END FOR.
-- <<< codice originale <<<

--                                                                              TRANSLATE!

    -- all objects found in a piece of clothing, for example a wallet in a jacket,
    -- will be allowed back in the piece of clothing once taken from there:


    FOR EACH o IsA OBJECT, DIRECTLY IN THIS
      DO INCLUDE o IN consentiti OF THIS.
    END FOR.

--                                                                              TRANSLATE!

    -- all clothing acquired and worn by the hero or an NPC mid-game is checked to
    -- show correctly when the possessions of an actor are listed:

-- >>> dev-vestario: tweaked >>> soppresso EVENT controlla_indossati
    -- SCHEDULE controlla_indossati AFTER 0.



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

-- >>> dev-vestario: added

-->verbo_indossa
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
-- >>> dev-vestario: added
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
-- >>> dev-vestario: added:
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
      IF  THIS:val_testa
        + THIS:val_tronco
        + THIS:val_gambe
        + THIS:val_piedi
        + THIS:val_mani <> 0
        THEN
          -- -------------------------------------------------------------------
          -- Ogni indumento indossato con valore di copertura uguale o maggiore
          -- a quello dell'indumento che si vuole indossare è un indumento che
          -- impedisce d'indossarlo.
          -- -------------------------------------------------------------------
          FOR EACH ind IsA indumento, DIRECTLY IN hero, IS indossato
            DO
              IF THIS:val_testa  <> 0 AND THIS:val_testa  <= ind:val_testa
                THEN INCLUDE ind IN mia_AT:temp_indumenti.
              END IF.
              IF THIS:val_tronco <> 0 AND THIS:val_tronco <= ind:val_tronco
                THEN INCLUDE ind IN mia_AT:temp_indumenti.
              END IF.
              IF THIS:val_gambe  <> 0 AND THIS:val_gambe  <= ind:val_gambe
                THEN INCLUDE ind IN mia_AT:temp_indumenti.
              END IF.
              IF THIS:val_piedi  <> 0 AND THIS:val_piedi  <= ind:val_piedi
                THEN INCLUDE ind IN mia_AT:temp_indumenti.
              END IF.
              IF THIS:val_mani   <> 0 AND THIS:val_mani   <= ind:val_mani
                THEN INCLUDE ind IN mia_AT:temp_indumenti.
              END IF.
          END FOR.
      END IF.

--~-----------------------------------------------------------------------------
--| Il `wear_flag` è un flag multiuso impiegato per vari scopi nella libreria.
--| In questo contesto, viene resettato a `0` prima di procedere con il codice,
--| 
--~-----------------------------------------------------------------------------
-- @NOTA: Il termine 'flag' è usato erroneamente qui, poiché i flag sono        FIXME!
--        sono booleani. Dovrei cambiare il nome dell'attributo in qualcosa
--        di più consono -- 'variabile'? Oppure specificare meglio (i valori
--        validi qui sono due: 0 e 1, altri valori sono indice di problemi.)

--                                                                              TRANSLATE!
--------------------------------------------------------------------
-- 'wear_flag' is a multi-purpose flag used for several purposes in
-- this library, here it is reset to 0 before proceeding as a matter
-- of 'housekeeping' for the code.
--------------------------------------------------------------------

      -- SET hero:wear_flag TO 0.

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

      -- IF THIS NOT IN hero
      --   THEN SET hero:wear_flag TO 1.
      -- END IF.

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


      -- IF  THIS:val_tronco <> 0
      -- AND THIS:val_tronco <= SUM OF val_tronco DIRECTLY IN abbigliamento
      --   THEN INCREASE hero:wear_flag BY 5.
      -- END IF.

--~-----------------------------------------------------------------------------
--| Ora procederemo con test analoghi sugli altri attributi.
--~-----------------------------------------------------------------------------

--                                                                              TRANSLATE!
--------------------------------------------------------------------
-- Perform a similar test for other attributes.
--------------------------------------------------------------------

--~ Controllo mani
--~ ==============

      -- IF  THIS:val_mani <> 0
      -- AND THIS:val_mani <= SUM OF val_mani DIRECTLY IN abbigliamento
      --   THEN INCREASE hero:wear_flag BY 5.
      -- END IF.

--~ Controllo piedi
--~ ===============

      -- IF  THIS:val_piedi <> 0
      -- AND THIS:val_piedi <= SUM OF val_piedi DIRECTLY IN abbigliamento
      --   THEN INCREASE hero:wear_flag BY 5.
      -- END IF.

--~ Controllo testa
--~ ===============

      -- IF  THIS:val_testa <> 0
      -- AND THIS:val_testa <= SUM OF val_testa DIRECTLY IN abbigliamento
      --   THEN INCREASE hero:wear_flag BY 5.
      -- END IF.

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


      -- SET hero:tempcovered TO SUM OF val_gambe DIRECTLY IN abbigliamento.

      -- IF hero:tempcovered >63 AND THIS:val_gambe < 33
      --   THEN SET hero:tempcovered TO hero:tempcovered -64.
      -- END IF.
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


      -- IF hero:tempcovered >31 AND THIS:val_gambe < 16 AND THIS:val_gambe <> 4
      --   THEN SET hero:tempcovered TO hero:tempcovered -32.
      -- END IF.

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


      -- IF hero:tempcovered >15 AND THIS:val_gambe > 16
      --   THEN SET hero:tempcovered TO hero:tempcovered +16.
      -- END IF.

--                                                                              FINISH/REVISE!
--~-----------------------------------------------------------------------------
--| Da qui in poi, gli indumenti sono trattati come con le altre zone del corpo.
--~-----------------------------------------------------------------------------

--                                                                              TRANSLATE!
--------------------------------------------------------------------
--  From here down, clothes DO work as they do for other areas.
--------------------------------------------------------------------


      -- IF THIS:val_gambe <> 0 AND THIS:val_gambe <= hero:tempcovered
      --   THEN INCREASE hero:wear_flag BY 5.
      -- END IF.

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
-- >>> dev-vestario: NO INDOSSATI! (prova a non usare set 'indossati')
          -- INCLUDE THIS IN indossati OF hero.
      END IF.


-- >>> codice originale >>>
--       IF hero:wear_flag >1
--         THEN
--           -- ------------------------------------
--           -- L'indumento non può essere indossato
--           -- ------------------------------------
--           -- Ci limitiamo a prenderlo (se non già posseduto)
--           IF THIS NOT IN hero
--           -- >>> prendi implicito: >>>
--             THEN "prendi" SAY THE THIS. "."
--           END IF.
--           LOCATE THIS IN hero.
--           -- <<< prendi implicito <<<

--           LIST abbigliamento.
-- --                                                                              TRANSLATE!
--           "Trying to put" SAY THE THIS. "on isn't very sensible."

--       -- ELSIF hero:wear_flag = 1
--       ELSE
--         -- --------------------------------
--         -- L'indumento può essere indossato
--         -- --------------------------------
--         LOCATE THIS IN abbigliamento.
--         MAKE THIS indossato.
--         INCLUDE THIS IN indossati OF hero.
--         IF hero:wear_flag = 1
--           THEN
--             -- -----------------------------------
--             -- L'indumento viene preso e indossato
--             -- -----------------------------------
--             "prendi" SAY THE THIS. "e l$$" SAY THIS:vocale. "indossi."
--           ELSE
--             -- ---------------------------
--             -- L'indumento viene indossato
--             -- ---------------------------
--             "indossi" SAY THE THIS. "."
--         END IF.
--       END IF.
-- <<< codice originale <<<

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
-- >>> codice originale >>>
  -- CHECK THIS IN abbigliamento
  --   ELSE SAY mia_AT:non_indossi.
-- <<< codice originale <<<
  AND CURRENT LOCATION IS illuminato
    ELSE SAY mia_AT:imp_luogo_buio.

  DOES ONLY

-- >>> dev-vestario: added:
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
      IF  THIS:val_testa
        + THIS:val_tronco
        + THIS:val_gambe
        + THIS:val_piedi
        + THIS:val_mani <> 0
        THEN
          -- -------------------------------------------------------------------
          -- Ogni indumento indossato con valore di copertura maggiore di quello
          -- dell'indumento che si vuole rimuovere è un indumento che impedisce
          -- l'azione.
          -- -------------------------------------------------------------------
          FOR EACH ind IsA indumento, DIRECTLY IN hero, IS indossato
            DO
              IF THIS:val_testa  <> 0 AND THIS:val_testa  < ind:val_testa
                THEN INCLUDE ind IN mia_AT:temp_indumenti.
              END IF.
              IF THIS:val_tronco <> 0 AND THIS:val_tronco < ind:val_tronco
                THEN INCLUDE ind IN mia_AT:temp_indumenti.
              END IF.
              IF THIS:val_gambe  <> 0 AND THIS:val_gambe  < ind:val_gambe
                THEN INCLUDE ind IN mia_AT:temp_indumenti.
              END IF.
              IF THIS:val_piedi  <> 0 AND THIS:val_piedi  < ind:val_piedi
                THEN INCLUDE ind IN mia_AT:temp_indumenti.
              END IF.
              IF THIS:val_mani   <> 0 AND THIS:val_mani   < ind:val_mani
                THEN INCLUDE ind IN mia_AT:temp_indumenti.
              END IF.
          END FOR.
      END IF.

-- >>> codice originale >>>

    -- SET hero:wear_flag TO 0.


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


    -- SET hero:tempcovered TO SUM OF val_tronco DIRECTLY IN abbigliamento /2.
    --   IF THIS:val_tronco <> 0 AND THIS:val_tronco < hero:tempcovered
    --     THEN INCREASE hero:wear_flag BY 1.
    --   END IF.


--                                                                              TRANSLATE!
--------------------------------------------------------------------
-- Perform a similar test for other attributes.
--------------------------------------------------------------------


    -- SET hero:tempcovered TO SUM OF val_mani DIRECTLY IN abbigliamento /2.
    --   IF THIS:val_mani <> 0 AND THIS:val_mani < hero:tempcovered
    --     THEN INCREASE hero:wear_flag BY 1.
    --   END IF.


    -- SET hero:tempcovered TO SUM OF val_piedi DIRECTLY IN abbigliamento /2.
    -- IF THIS:val_piedi <> 0 AND THIS:val_piedi < hero:tempcovered
    --   THEN INCREASE hero:wear_flag BY 1.
    -- END IF.


    -- SET hero:tempcovered TO SUM OF val_testa DIRECTLY IN abbigliamento /2.
    -- IF THIS:val_testa <> 0 AND THIS:val_testa < hero:tempcovered
    --   THEN INCREASE hero:wear_flag BY 1.
    -- END IF.


--                                                                              TRANSLATE!
--------------------------------------------------------------------
-- botcover is a special case - first discount any coatlike clothes
-- as these do not affect ability to take off other lower garments.
--------------------------------------------------------------------


    -- SET hero:tempcovered TO SUM OF val_gambe DIRECTLY IN abbigliamento.
    -- IF hero:tempcovered >63
    --   THEN SET hero:tempcovered TO hero:tempcovered -64.
    -- END IF.


--                                                                              TRANSLATE!
--------------------------------------------------------------------
-- Now discount any dress/ skirt coverall like clothes as these do
-- not affect ability to take off other lower garments. The 'teddy'
-- type garment is expressly NOT included in the exclusion here.
--------------------------------------------------------------------


    -- IF hero:tempcovered >31 AND THIS:val_gambe <>4
    --   THEN SET hero:tempcovered TO hero:tempcovered -32.
    -- END IF.


--                                                                              TRANSLATE!
--------------------------------------------------------------------
-- Now process the manipulated value just as was done for the others
--------------------------------------------------------------------


    -- SET hero:tempcovered TO hero:tempcovered /2.
    -- IF THIS:val_gambe <> 0 AND THIS:val_gambe < hero:tempcovered
    --   THEN INCREASE hero:wear_flag BY 1.
    -- END IF.


--                                                                              TRANSLATE!
--------------------------------------------------------------------
-- Depending on the value of 'wear_flag' print and process the obj
-- as needed. If 'wear_flag' is NOT 0 then the clothes cannot be
-- removed.
--------------------------------------------------------------------


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
-- >>> dev-vestario: NO INDOSSATI! (prova a non usare set 'indossati')
          -- EXCLUDE THIS FROM indossati OF hero.
      END IF.


-- >>> codice originale >>>
--  Use $1 instead of THIS:                                                     OPTIMIZE!

--     IF hero:wear_flag > 0
--       THEN
--         LIST abbigliamento.
-- --                                                                              TRANSLATE!
--         "Trying to take" SAY THE THIS. "off isn't very sensible."
--       ELSE
--         LOCATE THIS IN hero.
--         "Ti togli" SAY THE THIS. "."
--         EXCLUDE THIS FROM hero:indossati.
--         MAKE THIS NOT indossato.
--     END IF.
-- <<< codice originale <<<
END VERB togliti.


END EVERY.



--                                                                              TRANSLATE!
--------------------------------------------------------------------
-- These attributes are used internally in the library - ignore!
--------------------------------------------------------------------

ADD TO EVERY ACTOR
-- >>> dev-vestario: deleted
  -- IS tempcovered 0.
  -- IS wear_flag 0.
  IS genere 0.
END ADD TO.

--                                                                              TRANSLATE!
--------------------------------------------------------------------
-- An event checking that clothing acquired and worn by an actor
-- mid-game is recognised to be worn by the actor:
--------------------------------------------------------------------

-- >>> dev-vestario: tweaked

EVENT controlla_indossati
  FOR EACH ac IsA ACTOR
    DO
      "" -- DO NOTHING!

      -- [ NON COMPILA! SEMBRA ESSERCI UN BACO IN ALAN ]
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
--| |==============================================================================
--| | Indumento      |`val_testa` |`val_tronco`|`val_gambe`|`val_piedi`|`val_mani`
--~ +-----------------------------+------------+-----------+-----------+----------+
--| | cappello                | 2 |          0 |         0 |         0 |        0
--| | canottiera/reggiseno    | 0 |          2 |         0 |         0 |        0
--| | mutande/slip            | 0 |          0 |         2 |         0 |        0
--| | pagliaccetto            | 0 |          4 |         4 |         0 |        0
--| | blusa/camicia/T-shirt   | 0 |          8 |         0 |         0 |        0
--| | abito donna/tuta lavoro | 0 |          8 |        32 |         0 |        0
--| | gonna                   | 0 |          0 |        32 |         0 |        0
--| | pantaloni/pantaloncini  | 0 |          0 |        16 |         0 |        0
--| | maglione/pullover       | 0 |         16 |         0 |         0 |        0
--| | giacca                  | 0 |         32 |         0 |         0 |        0
--| | cappotto                | 0 |         64 |        64 |         0 |        0
--| | calze/gambaletti        | 0 |          0 |         0 |         2 |        0
--| | collant/calzamaglia     | 0 |          0 |         8 |         2 |        0
--| | scarpe/stivali          | 0 |          0 |         0 |         4 |        0
--| | guanti                  | 0 |          0 |         0 |         0 |        2
--| |==============================================================================
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
