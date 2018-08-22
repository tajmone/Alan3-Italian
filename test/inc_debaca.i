--==============================================================================
-- Debug degli Attributi degli ACTOR
--==============================================================================
-- Il verbo 'debaca' mostra gli attributi per la grammatica italiana (usati
-- dalla libreria) di un'istanza di attore. Utile per verificarne la corretta 
-- inizializzazione da parte della libreria.
-- 
-- NOTA: "debaca" è la forma italianizzata del verbo inglese "debug" ("rimuovere
--       un baco"). Se ritieni che il termine sia orribile, o se questo offende
--       la tua sensibilità linguistica, sei libero di presentare un reclamo
--       ufficiale all'ADGAT:
-- 
--            ADGAT - Associazione Difesa Giocatori di Avventure Testuali
--            Piazza della Repubblica d'IF, 41/bis
--            10100 -- Torino
--------------------------------------------------------------------------------
SYNTAX debaca = debaca (act)*
  WHERE act IsA ACTOR
    ELSE "$+1 non è un attore!"

ADD TO EVERY ACTOR
  VERB debaca
    DOES
      "$n+------------------------------------------"
      "$n| NOME: $1"
      "$n+------------------------------------------"
      "$n| HA NOME PROPRIO:$$"
      IF THIS HAS nome_proprio
        THEN " Sì"
        ELSE " No"
      END IF.
      "$n| GENERE:$$"
      IF THIS IS femminile
        THEN " femminile"
        ELSE " maschile"
      END IF.
      "$n| NUMERO:$$"
      IF THIS IS plurale
        THEN " plurale"
        ELSE " singolare"
      END IF.
      "$n| ARTICOLO: " SAY act:articolo.
      "$n| FORMA DETERMINATA:$t$+1"
      "$n| FORMA INDETERMINATA:$t$01"
      "$n| VOCALE: " SAY act:vocale.
      "$n| PREP. DI:$t" SAY act:prep_DI.
      "$n| PREP.  A:$t" SAY act:prep_A.
      "$n| PREP. DA:$t" SAY act:prep_DA.
      "$n| PREP. IN:$t" SAY act:prep_IN.
      "$n| PREP. SU:$t" SAY act:prep_SU.
      "$n+------------------------------------------"
  END VERB debaca.
END ADD TO.
