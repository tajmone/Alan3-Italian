--= Alan StdLib Italian: Classi
--| Tristano Ajmone <tajmone@gmail.com>
--~-----------------------------------------------------------------------------
--~ "lib_classi.i"
--| v0.22.0-Alpha, 2019-08-22: Alan 3.0beta6 build 2022
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
--| | HAS altro_lato porta_fittizia.       | Nessuna porta abbinata.
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
  HAS chiave_abbinata  chiave_fittizia.

  INITIALIZE

    -- Assicuriamoci che prima dell'inizio del gioco ogni porta che è bloccata
    -- sia anche chiusa (`NOT aperto`), così da dispensare l'autore dal doverlo
    -- specificare manualmente.

    IF THIS IS bloccato
      THEN
        IF THIS IS aperto
          THEN MAKE THIS NOT aperto.
        END IF.
    END IF.

    -- Se una porta ha un `altro_lato` che non sia una `porta_fittizia` allora
    -- definiamo questa porta come `altro_lato` dell'altra, di modo che siano
    -- abbinate entrambe. Questo consente all'utore di specificare l'altro lato
    -- su una sola delle due porte, confidando che la libreria farà il resto.

    IF THIS:altro_lato <> porta_fittizia
      THEN
        SET THIS:altro_lato:altro_lato TO THIS.

        -- Usando come riferimento la porta su cui l'atuore ha definito l'altro
        -- lato, assicuriamoci che gli attributi della porta dall'altro lato
        -- rispecchino lo stato di questo lato. Ci occuperemo solo dei valori
        -- che differiscono da quelli predefiniti.

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

    IF  THIS:altro_lato <> porta_fittizia
    AND THIS:chiave_abbinata <> chiave_fittizia
      THEN SET THIS:altro_lato:chiave_abbinata TO THIS:chiave_abbinata.
    END IF.

    -->porte(12000.2)

    --| Se si crea una porta bloccabile, si dovrà anche creare una chiave con
    --| cui il giocatore potrà sbloccarla. Esempio:

    --| [source,alan,role=example]
    --| ---------------------------------------
    --| The portone_casa IsA porta at vialetto.
    --|   Name portone.
    --|   Has altro_lato portone_casa_retro.
    --|   Has chiave_abbinata chiave_portone.
    --| End the.
    --|
    --| The chiave_portone IsA object.
    --|   Name chiave.
    --|   Has articolo "la".
    --| End the.
    --| ---------------------------------------
    --<

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
        "è troppo stretto per poter sbirciare."
-- @TODO: Qui tornerebbe utile il PRONOUN "di $!1" ("al di là di esso/a/e/i")   IMPROVE!
--        Ma attualmente non sono disponibili!
        ELSE "Non noti nulla di interessante dietro $+1."
-- @TODO: Se la porta è aperta che senso ha GUARDARE SOTTO di essa?             FIXME!
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
    HEADER SAY THIS:prep_IN. SAY THIS. "puoi vedere"
    ELSE "Non c'è nulla" SAY THIS:prep_IN. SAY THIS. "."

    -- Dichiariamo questa classe un contenitore al fine di consentire comandi
    -- come "butta il sacco in acqua", "guarda nell'acqua" e "prendi la perla
    -- dall'acqua". Vi sono anche altri casi che richiedono che questa classe
    -- si comporti come un contenitore, ad esempio "versa la pozione rossa nella
    -- pozione blu."

  HAS recipiente recipiente_fittizio.

  -- L'attributo `recipiente` consente alla Libreria di gestire automaticamente
  -- i liquidi all'interno di contenitori, di modo che il verbo `prendi` usato
  -- con un liquido farà sì che venga preso il suo contenitore anziché il
  -- liquido stesso (es. "prendi il vino" farò prendere la bottiglia di vino).
  --
  -- Cercare di prendere un liquido contenuto in un recipiente `NON prendibile`,
  -- o un liquido con `recipiente_fittizio`, risulterà nel messaggio che non è
  -- possibile prendere il liquido a mani nude.
  --
  -- Il valore predefinito `recipiente_fittizio` indica che il liquido non è
  -- all'interno di un recipiente. Gli autori non devono preoccuparsi di questo
  -- valore predefinito, che è riservato all'uso interno della Libreria.

  INITIALIZE

  -- Qualsiasi oggetto che si trovi all'interno del liquido all'inizio della
  -- partita (e.s. un pesce nello stagno) sarà aggiunto alla lista degli oggetti
  -- consentiti nel liquido, di modo che sia possibile rimettervelo dentro una
  -- volta asportatolo.

    FOR EACH liq IsA liquido
      DO
        FOR EACH o IsA OBJECT, DIRECTLY IN liq
          DO
            INCLUDE o IN consentiti OF liq.
        END FOR.
    END FOR.

  -- A ogni liquido che si trovi all'interno di un contenitore (elencato)
  -- all'inizio della partita, gli verrà assegnato  quel `contenitore_elencato`
  -- come `recipiente`:

    FOR EACH lc IsA contenitore_elencato
      DO
        FOR EACH lq IsA liquido, DIRECTLY IN lc
          DO
            SET lq:recipiente TO lc.
        END FOR.
    END FOR.

  -- Se nella vostra avventura ci sarà un liquido all'interno di un recipiente,
  -- dovrete dichiarare l'istanza del liquido in questo modo:
  --
  --    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  --    THE vino IsA liquido IN bottiglia
  --    END THE vino.
  --    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

  -- Il verbo "versa", definito dalla Liberia, agisce tenendo conto del
  -- contenitore di un liquido; p.es. se vi è del vino nella bottiglia, "versa
  -- la bottiglia" e "versa il vino"conseguiranno il medesimo risultato. Sì noti
  -- però che il verbo "svuota" non è sinonimo di "versa", poiché "svuota"
  -- agisce solo sui contenitori.


    SCHEDULE check_vessel AT THIS AFTER 0. -- Questo evento è definito più avanti.


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

-- @TODO: Se ha 'xDesc', mostra il testo?                                       IMPROVE!

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
-- @NOTA: Questo sistema non tiene conto del fatto che sia il liquido che il    CHECK!
--        suo contenitore potrebbero avere una xDesc!

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
        ELSE -- Se il liquido ha un receipiente fittizio, descrivi liquido:
          IF THIS:xDesc <> ""    -- Onora la xDesc, se presente.
            THEN SAY THIS:xDesc.
            ELSE SAY mia_AT:descrizione_standard_ogg1.
          END IF.
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
--      TODO: ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~FIXME!
--            Questa clausola non ha alcuna senso dato che se il recipiente
--            fosse chiuso sarebbe OPAQUE e quindi il suo contenuto non sarebbe
--            utilizzabile come parametro! Se però introdurrò contenitori
--            trasparenti, allora avrebbe senso, ma non allo stato attuale.
--            ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
          IF THIS:recipiente IS aperto
--          @TODO: List contents instead!                                       TODO!
            THEN "Non noti nulla di insolito" SAY THIS:prep_IN. "$1."
--                                                                              TRANSLATE!
            ELSE "You can't, since" SAY THE recipiente OF THIS.
                IF THIS IS NOT plurale
                  THEN "is"
                  ELSE "are"
                END IF.
                "closed."
                -- Qui impediamo al giocatore di guardare dentro un liquido
                -- contenuto in un recipiente chiuso.
          END IF.
--      @TODO: List contents instead!                                           TODO!
        ELSE "Non noti nulla di insolito" SAY THIS:prep_IN. "$1."
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
              "(prima prendi" SAY THE THIS:recipiente. SAY THIS:prep_DI. "$1)$n"
          END IF.
      END IF.
      -- <<< prendi implicito <<<

-- @TODO: Se il prendi implicito dovesse fallire l'esecuzione del verbo         OPTIMIZE!
--        si interromperebbe, quindi non sembra essere necessario lo IF
--        seguente, dato che non c'è il rischio che il recipiente venga.
--        trasferito se il prendi implicito fallisce. (verificato! è così)

      IF THIS IN hero -- (se il prendi implicito è andato a buon fine)
        THEN
          "Consegni" SAY THE THIS:recipiente. SAY THIS:prep_DI. "$1"
                     SAY png:prep_A. "$2."
          LOCATE recipiente OF THIS IN png.
      END IF.

      -- NOTA: L'ultima clausola IF non contiene un ELSE poiché l'alternativa
      --       viene già gestita dal precedente `IF THIS NOT IN hero` che si
      --       occupa del "prendi implicito". Si noti inoltre che se per

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
          -- IF THIS:recipiente = recipiente_fittizio
          -- OR THIS:recipiente IS NOT prendibile
          --   THEN SAY mia_AT:ogg1_non_posseduto.
          IF THIS:recipiente = recipiente_fittizio
            THEN SAY mia_AT:impossibile_maneggiare_liq1.
          ELSIF THIS:recipiente IS NOT prendibile
            THEN
              "Per poterlo fare dovresti prima impossessarti"
              SAY THIS:recipiente:prep_DI. SAY THIS:recipiente. "."
          ELSE LOCATE recipiente OF THIS IN hero.
            "(prima prendi" SAY THE THIS:recipiente. SAY THIS:prep_DI. SAY THIS. "$$)$n"
          END IF.
      END IF.
      -- <<< prendi implicito <<<

-- @TODO: La clausola IF qui è inutile (vedi nota in `dai_a` su `liquido`)      OPTIMIZE!
      IF THIS IN hero
        THEN LOCATE THIS AT hero.
          SET THIS:recipiente TO recipiente_fittizio.
          "Versi $+1"
          IF pavimento HERE
            THEN "sul pavimento"
            ELSE "in terra"
          END IF. "."
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
              THEN
                "Per poterlo fare dovresti prima impossessarti"
                SAY THIS:recipiente:prep_DI. SAY THIS:recipiente. "."
              ELSE LOCATE recipiente OF THIS IN hero.
                "(prima prendi" SAY THE THIS:recipiente. SAY THIS:prep_DI. SAY THIS. "$$)$n"
            END IF.
        END IF.
        -- <<< prendi implicito <<<

-- @TODO: La clausola IF qui è inutile (vedi nota in `dai_a` su `liquido`)      OPTIMIZE!
       IF THIS IN hero   --i.e. if the implicit taking was successful
          THEN LOCATE THIS IN cont.
            SET THIS:recipiente TO cont.
            "Versi $+1" SAY cont:prep_IN. "$2."
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
-- @TODO: Ci vorrebbe un messaggio un po' più articolato qui:                   IMPROVE!
              THEN SAY mia_AT:azione_futile.
           -- THEN "It wouldn't accomplish anything trying to pour" SAY THE ogg.
           --   "into" SAY THE THIS. "."
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
                "Versi $+1" SAY superficie:prep_SU. "$2."
                SET THIS:recipiente TO recipiente_fittizio.
            ELSIF superficie IsA supporto
              THEN LOCATE THIS IN superficie.
                "Versi $+1" SAY superficie:prep_SU. "$2."
                  SET THIS:recipiente TO recipiente_fittizio.
-- @TODO: Ci vorrebbe un messaggio un po' più articolato qui:                   IMPROVE!
            ELSE SAY mia_AT:azione_futile.
         -- ELSE "It wouldn't be sensible to pour anything on" SAY THE superficie.
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


-- @TODO: Se ha 'xDesc', mostra il testo?                                       IMPROVE!

  VERB esamina
    DOES ONLY
      -- Onora la xDesc, se presente.
      IF THIS:xDesc <> ""
         THEN SAY THIS:xDesc.
      END IF.
      IF THIS IS NOT OPAQUE
        THEN LIST THIS.
        ELSE "Non puoi vedere dentro" SAY THE THIS. "perché"
        IF THIS IS plurale
          THEN  "sono"
          ELSE  "è"
        END IF. "chius$$" SAY THIS:vocale. "."
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
      ELSE  "Non c'è nulla sopra" SAY THE THIS. "."

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
--                                                                              TRANSLATE!
        IF THIS IS NOT plurale
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
  IS  NOT condiscendente.                                   ---> compliant
      --  Per poter prendere un oggetto da un attore è necessario che questi sia
      --  condiscendente. Il codice nell'`EXTRACT` delle classi `actor` e `persona`
      --  controlla lo stato di questo attributo e impedirà la rimozione di
      --  oggetti se l'attore non è `condiscendente`.

      --  Il verbo `chiedi` modifica temporaneamente questo attributo al fine di
      --  poter conseguire l'azione. I verbi che richiedono di prendere
      --  implicitamente un oggetto posseduto da un PNG non condiscendente non
      --  porteranno a termine l'operazione.

      --  @DOXTERIZZA: Il paragrafo precedente  deve essere taggato per         TODO!
      --               poterlo includere nelle regole dei verbi prendi, etc.



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
--       della classe actor)! Se si modifica il testo delle risposte qui, ci si
--       ricordi di modificarlo anche su actor!
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
--      @TODO: Usa attributi stringa mia_AT                                     FIXME!
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

    MAKE hero condiscendente.
    -- so that the hero can give, drop, etc. carried objects.

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
          THEN  "C'è" SAY AN THIS.
          ELSE  "Ci sono" SAY AN THIS.
        END IF. "qui."
    ELSE SAY THIS.
      IF THIS IS NOT plurale
        THEN  "è"
        ELSE  "sono"
      END IF. "qui."
    END IF.

--==============================================================================
-- § 2.2.4 - Verbo esamina
--==============================================================================
-- Questo corpo aggiuntivo del verbo 'esamina' sulla classe actor, fà in modo
-- che dopo aver esaminato un PNG ne venga elencato l'inventario.

  VERB esamina
    DOES AFTER
      IF THIS <> hero
        THEN
          -- --------------------------
          -- Elenca oggetti trasportati
          -- --------------------------
          -- @NOTA: Evita di usare il set 'indossati', se è NOT indossato è portato:
          SET mia_AT:temp_cnt TO COUNT IsA OBJECT, IS NOT indossato, DIRECTLY IN THIS.
          IF  mia_AT:temp_cnt <> 0
            THEN "$+1 sta"
              IF THIS IS plurale
                THEN "$$no"
              END IF. "portando"
              FOR EACH ogg_portato ISA OBJECT, IS NOT indossato, DIRECTLY IN THIS
                DO
                  SAY AN ogg_portato.
                  DECREASE mia_AT:temp_cnt.
                  DEPENDING ON mia_AT:temp_cnt
                    = 1 THEN "e"
                    = 0 THEN "."
                    ELSE ","
                  END DEPEND.
              END FOR.
          END IF.
          -- --------------------------
          -- Elenca indumenti indossati
          -- --------------------------
          SET mia_AT:temp_cnt TO COUNT IsA indumento, DIRECTLY IN THIS, IS indossato.
          IF  mia_AT:temp_cnt <> 0
            THEN "$+1 sta"
              IF THIS IS plurale
                THEN "$$no"
              END IF. "indossando"
              FOR EACH ind_indossato IsA indumento, DIRECTLY IN THIS, IS indossato
                DO
                  SAY AN ind_indossato.
                  DECREASE mia_AT:temp_cnt.
                  DEPENDING ON mia_AT:temp_cnt
                    = 1 THEN "e"
                    = 0 THEN "."
                    ELSE ","
                  END DEPEND.
              END FOR.
          END IF.
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
--| La libreria definisce alcune sottoclassi specializzate di `actor`:
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
--          +-- maschi  (colletivo attori maschili, o misto maschi e femmine)
--          |
--          +-- femmina
--          |
--          +-- femmine (colletivo attrici)

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


--==============================================================================
--------------------------------------------------------------------------------
-- Collettivi di persone
--------------------------------------------------------------------------------
--==============================================================================
-- A volte è utile rappresentare con un unico attore un colletivo di persone
-- (es. i professori, le streghe). In questi casi si potrà usare la classe
-- 'maschi' per un gruppo di soli maschi o di maschi e femmine (per il quale
-- l'italiano richiede l'accordo al maschile), e la casse 'femmine' per un
-- gruppo di sole femmine.

-- Queste classi possono essere usate anche per rappresentare più personaggi con
-- nome proprio (es. Romeo e Giuglietto, Thelma e Luise), purché l'autore abbia
-- l'accortezza di fare in modo di catturare nell'input del giocatore riferimenti
-- ad ogni membro di questo gruppo unificato, e che le risposte dei verbi si
-- rifescano sempre ad essi come ad un gruppo. Questi casi limite sono un po'
-- più difficili da gestire e potrebbero richiedere adattamenti ad hoc.

--==============================================================================
-- § 3.1.1 - MASCHI
--==============================================================================

EVERY maschi IsA persona
  IS NOT femminile.
  IS plurale.
  HAS articolo "i".
  PRONOUN essi, loro.
END EVERY.

--==============================================================================
-- § 3.1.2 - FEMMINE
--==============================================================================

EVERY femmine IsA persona
  IS femminile.
  IS plurale.
  HAS articolo "le".
  PRONOUN esse, loro.
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
