-- Alan >= 3.0beta6 build 1852 | Alan Italian >= v0.10.0-Alpha
--==============================================================================
-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--------------------------------------------------------------------------------
--
--                             SUITE DI DEBACAGGIO
--
--------------------------------------------------------------------------------
--* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--==============================================================================

-- Questo modulo offre strumenti per il "debacaggio" (o "debacatura") delle
-- istanze del gioco. I seguenti comandi saranno aggiunti all'avventura:
-- 
--    DEBACA <OGG>

--------------------------------------------------------------------------------
-- NOTA: "debaca" � la forma italianizzata del verbo inglese "debug" ("rimuovere
--       un baco"). Se ritieni che il termine sia orribile, o se questo offende
--       la tua sensibilit� linguistica, sei libero di presentare un reclamo
--       ufficiale all'ADGAT:
-- 
--            ADGAT - Associazione Difesa Giocatori di Avventure Testuali
--            Piazza della Repubblica d'IF, 41/bis
--            10100 -- Torino
--------------------------------------------------------------------------------


--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- INIZIALIZZAZIONE MODULO 
-------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================

-- Aggiungiamo a mia_AT qualche stringa utile:
ADD TO EVERY blocco_definizioni
  HAS dbgsep -- Separatore voci di debacazione
    "$n+-------------------------------------------------------------------------------".
  HAS dbgsep_no_nl -- Separatore senza accapo (per xDesc)
    "+-------------------------------------------------------------------------------".
  HAS tmpstr "". -- Per manipolazione stringhe.
END ADD TO.


--==============================================================================
--------------------------------------------------------------------------------
-- Marca attributo xDesk 
--------------------------------------------------------------------------------
--==============================================================================
-- Per alcuni tipi di oggetti, la libreria fornisce una descrizione aggiuntiva
-- quando vengono descritti o esaminati (p.es. se una porta � aperta o chiusa). 
-- Per distinguire i messaggi prodotti dalla libreria da quelli implementati
-- dall'autore, se un'instanza del tipo descritto sopra ha una stringa xDesc non
-- vuota, aggiungeremo un marcatore per separare la fine della xDesc dal testo
-- della libreria.
ADD TO EVERY THING
  INITIALIZE
  FOR EACH ogg IsA object DO
    IF  ogg:xDesc <> ""
    AND ogg:xDesc NOT CONTAINS "[[ /xDesk ]]"
      THEN
        IF ogg IsA contenitore_elencato
        OR ogg IsA dispositivo
        OR ogg IsA fonte_di_luce
        OR ogg IS apribile
          THEN
            SET ogg:xDesc to ogg:xDesc + "[[ /xDesk ]]$n".
      END IF.
    END IF.
  END FOR EACH.
END ADD TO.
--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- COMANDI DI DEBACATURA
-------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================


--==============================================================================
--------------------------------------------------------------------------------
-- DEBACA <OGG>
--------------------------------------------------------------------------------
--==============================================================================

-- Il comando 'DEBACA OGGETTO' mostrer� informazioni utili riguardo l'istanza
-- del parametro, inclusi  gli attributi per la grammatica italiana (usati dalla
-- libreria). A seconda della classe dell'istanza, il tipo di informazioni
-- visualizzate varier�.
-- 
-- Questo comando � utile per:
-- 
--  (1) Verificare la corretta inizializzazione delle istanze da parte della
--      libreria, soprattutto per quanto riguarda gli attributi grammaticali.
--  (2) Appurare che gli attributi siano gestiti correttamente dai vari verbi,
--      eventi, ecc.


SYNTAX debaca = debaca (ogg)*
  WHERE ogg IsA thing
    ELSE "Questo comando funziona solo con oggetti e attori!"

ADD TO EVERY thing
  VERB debaca
    DOES
      SAY mia_AT:dbgsep.
      "$n| NOME: $1"
      "$n| CLASSE: "
      IF ogg IsA actor
        THEN "actor"
          -- ===================================================================
          -- ACTOR
          -- ===================================================================
          IF ogg IsA persona
            THEN
              "> persona"
              IF ogg IsA maschio
                THEN "> maschio"
              ELSIF ogg IsA femmina
                THEN "> femmina"
              END IF.
          END IF. SAY mia_AT:dbgsep. --------------( separatore )--------------
          "$n| HA NOME PROPRIO:"
          IF ogg HAS nome_proprio
            THEN "S�"
            ELSE "No"
          END IF.
          -- ---------------------------------
          "$n| � CONDISCENDENTE"
          IF ogg IS condiscendente
            THEN "S�"
            ELSE "No"
          END IF.
          -- ---------------------------------
          "$n| STA SEGUENDO:"
          IF ogg IS seguendo
            THEN "S�"
            ELSE "No"
          END IF.
          -- ---------------------------------
          "$n| POSTURA:"
          IF ogg IS sdraiato
            THEN "sdraiato"
          END IF.
          IF ogg IS sdraiato AND ogg IS seduto
            THEN "+"
          END IF.
          IF ogg IS seduto
            THEN "seduto"
          END IF.
          IF ogg IS NOT sdraiato AND ogg IS NOT seduto
            THEN "($$" STYLE EMPHASIZED. "nessuna" STYLE NORMAL. "$$)"
          END IF.
        ELSE "object"
          -- ===================================================================
          -- INDUMENTO
          -- ===================================================================
          IF ogg IsA indumento
            THEN "> indumento"
              SAY mia_AT:dbgsep. --------------( separatore )--------------
              "$n| val_testa:$t"  SAY ogg:val_testa.
              "$n| val_tronco:$t" SAY ogg:val_tronco.
              "$n| val_gambe:$t"  SAY ogg:val_gambe.
              "$n| val_piedi:$t"  SAY ogg:val_piedi.
              "$n| val_mani:$t$t" SAY ogg:val_mani.
              SAY mia_AT:dbgsep. --------------( separatore )--------------
              "$n| GENERE INDUMENTO: " SAY ogg:genere.
              "$n| INDOSSATO:"
              IF ogg IS indossato
                THEN "S�"
                  IF THIS IN abbigliamento
                    THEN "(da hero)"
                  END IF.
                ELSE "No"
              END IF.
          -- ===================================================================
          -- CONTENITORE_ELENCATO
          -- ===================================================================
          ELSIF ogg IsA contenitore_elencato
            THEN "> contenitore_elencato"
          -- ===================================================================
          -- LIQUIDO
          -- ===================================================================
          ELSIF ogg IsA liquido
            THEN "> liquido"
              SAY mia_AT:dbgsep. --------------( separatore )--------------
              "$n| RECIPIENTE: "
              IF ogg:recipiente = recipiente_fittizio
                THEN "(recipiente_fittizio)"
                ELSE SAY ogg:recipiente.
              END IF.
              "$n| POTABILE:"
              IF ogg IS potabile
                THEN "S�"
                ELSE "No"
              END IF.
         -- ===================================================================
          -- SUONO
          -- ===================================================================
          ELSIF ogg IsA suono
            THEN "> suono"
          -- ===================================================================
          -- DISPOSITIVO
          -- ===================================================================
          ELSIF ogg IsA dispositivo
            THEN "> dispositivo"
              SAY mia_AT:dbgsep. --------------( separatore )--------------
              "$n| STATO:"
              IF ogg IS NOT acceso THEN "NON" END IF. "acceso / "
              IF ogg IS NOT rotto  THEN "NON" END IF. "rotto"
          -- ===================================================================
          -- FONTE_DI_LUCE
          -- ===================================================================
          ELSIF ogg IsA fonte_di_luce
            THEN "> fonte_di_luce"
              "$n| STATO:"
              IF ogg IS NOT illuminato THEN "NON" END IF. "illuminato / "
              IF ogg IS NOT rotto      THEN "NON" END IF. "rotto"
          -- ===================================================================
          -- PORTA
          -- ===================================================================
          ELSIF ogg IsA porta
            THEN "> porta ($$"
            IF ogg IS aperto
              THEN "aperta"
              ELSE "chiusa"
            END IF. "&"
            IF ogg IS bloccato
              THEN "bloccata"
              ELSE "sbloccata"
            END IF. "|"
            IF ogg IS NOT apribile      THEN "NON" END IF. "apribile &"
            IF ogg IS NOT bloccabile    THEN "NON" END IF. "bloccabile)"
            SAY mia_AT:dbgsep. --------------( separatore )--------------
            "$n| ALTRO LATO: ""$$" SAY ogg:altro_lato.
            "$$"" (in ""$$" SAY ogg:altro_lato:location. "$$"")"
          -- ===================================================================
          -- FINESTRA
          -- ===================================================================
          ELSIF ogg IsA finestra
            THEN "> finestra"
            IF ogg IS aperto
              THEN "aperta"
              ELSE "chiusa"
            END IF. "&"
            IF ogg IS bloccato
              THEN "bloccata"
              ELSE "sbloccata"
            END IF. "|"
            IF ogg IS NOT apribile      THEN "NON" END IF. "apribile &"
            IF ogg IS NOT bloccabile    THEN "NON" END IF. "bloccabile)"
          -- ===================================================================
          -- ARMA
          -- ===================================================================
          ELSIF ogg IsA arma
            THEN "> arma ($$"
              IF ogg CAN NOT sparare THEN "NON" END IF. "PU� sparare)"
          -- ===================================================================
          -- SUPPORTO
          -- ===================================================================
          ELSIF ogg IsA supporto
            THEN "> supporto"
        END IF.
      END IF. SAY mia_AT:dbgsep. --------------( separatore )--------------
      "$n| GENERE:"
      IF ogg IS femminile
        THEN "femminile"
        ELSE "maschile"
      END IF.
      "$n| NUMERO:"
      IF ogg IS plurale
        THEN "plurale"
        ELSE "singolare"
      END IF.
      "$n| ARTICOLO: " SAY ogg:articolo.
      "$n| FORMA DETERMINATA:$t$+1"
      "$n| FORMA INDETERMINATA:$t$01"
      "$n| VOCALE: "    SAY ogg:vocale.
      "$n| PRONOME: $!1"
      "$n| PREP. DI:$t" SAY ogg:prep_DI.
      "$n| PREP.  A:$t" SAY ogg:prep_A.
      "$n| PREP. DA:$t" SAY ogg:prep_DA.
      "$n| PREP. IN:$t" SAY ogg:prep_IN.
      "$n| PREP. SU:$t" SAY ogg:prep_SU.
      SAY mia_AT:dbgsep. --------------( separatore )--------------
      "$n| ATTRIBUTI GENERICI:"
      "$n| - SCENARIO:"
      IF ogg IS scenario
        THEN "S�"
        ELSE "No"
      END IF.
      "$n| - INTERAZIONE:"
      IF ogg IS NOT esaminabile   THEN "NON" END IF. "esaminabile / "
      IF ogg IS NOT prendibile    THEN "NON" END IF. "prendibile / "
      IF ogg IS NOT spostabile    THEN "NON" END IF. "spostabile / "
      IF ogg IS NOT indossabile   THEN "NON" END IF. "indossabile"
      "$n| - PORTATA:"
      IF ogg IS NOT raggiungibile THEN "NON" END IF. "raggiungibile / "
      IF ogg IS NOT distante      THEN "NON" END IF. "distante"
      "$n| - CIBO:"
      IF ogg IS NOT commestibile  THEN "NON" END IF. "commestibile / "
      IF ogg IS NOT potabile      THEN "NON" END IF. "potabile"
      "$n| - ABILIT�:"
      IF ogg IS NOT parlare       THEN "NON" END IF. "PU� parlare / "
      IF ogg IS NOT sparare       THEN "NON" END IF. "PU� sparare / "
      IF ogg IS NOT inanimato     THEN "NON" END IF. "inanimato"
      "$n| - APRI/CHIUDI:"
      IF ogg IS NOT aperto        THEN "NON" END IF. "aperto / "
      IF ogg IS NOT apribile      THEN "NON" END IF. "apribile / "
      IF ogg IS NOT bloccabile    THEN "NON" END IF. "bloccabile / "
      IF ogg IS NOT bloccato      THEN "NON" END IF. "bloccato"
      SAY mia_AT:dbgsep. --------------( separatore )--------------
      IF ogg IS leggibile OR ogg IS scrivibile
        THEN
          "$n| TESTUALIT�:"
          IF ogg IS NOT leggibile     THEN "NON" END IF. "leggibile / "
          IF ogg IS NOT scrivibile    THEN "NON" END IF. "scrivibile"
          --{{ testo }}------------------------------------------------
          "$n| TESTO"
          IF ogg:testo <> ""
            THEN
              -- Limitiamone la lunghezza mostrata a 80-9:
              STRIP 71 CHARACTERS FROM ogg:testo INTO mia_AT:tmpstr.
              "$$:" SAY mia_AT:tmpstr.
            ELSE
              "(stringa vuota)"
          END IF.
          SAY mia_AT:dbgsep. --------------( separatore )--------------
      END IF.
      --{{ xDesc }}---------------------------------
      "$n| xDesc"
      IF ogg:xDesc <> ""
        THEN
          -- Limitiamone la lunghezza mostrata a 80-9:
          STRIP 71 CHARACTERS FROM ogg:xDesc INTO mia_AT:tmpstr.
          "$$:" SAY mia_AT:tmpstr.
        ELSE
          "(stringa vuota)"
      END IF.
      SAY mia_AT:dbgsep_no_nl. --------------( separatore senza \n )------------
  END VERB debaca.
END ADD TO.

