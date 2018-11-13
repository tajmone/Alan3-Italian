--= Alan StdLib Italian: Supplemento
--| Tristano Ajmone <tajmone@gmail.com>
--~-----------------------------------------------------------------------------
--~ "lib_supplemento.i"
--| v0.8.0-Alpha, 2018-11-13: Alan 3.0beta6
--|=============================================================================
--| Modulo supplementare della liberia italiana, non presente nell'originale
--| _ALAN Standard Library_ v2.1 di Anssi Räisänen.
--| Creato da Tristano Ajmone,  (C) 2018, Artistic License 2.1.
--|=============================================================================


-->intro(100.1)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| == Introduzione
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| Questo modulo della libreria (non presente nella StdLib originale inglese)
--| definisce vari sinonimi italiani per tradurre le <<Predefined Player Words>>
--| inglesi di Alan.
--| Si tratta di un modulo supplementare in quanto non sarà più necessario una
--| volta aggiunto l'italiano alle lingue supportate nativamente da Alan. Quando
--| ciò avverrà, questo modulo sarà rimosso.
--~-----------------------------------------------------------------------------
--<


-->player_words(1000.1)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| == Predefined Player Words
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Le _predefined Player Words_ sono dei gruppi di vocaboli del giocatore
--| predefiniti in Alan (ossia, integrate nel compilatore stesso). Le loro
--| definizioni variano in ciascuna delle lingue nativamente supportate da Alan.
--| La libreria italiana utilizza la lingua inglese come base di partenza.
--| 
--| Queste sono le _Player Words_ predefinite per la lingua inglese, suddivise
--| in gruppi di appartenenza:

--| --------------------------
--| ALL:   all everything
--| AND:   and then
--| BUT:   but except
--| THEM:  them
--| NOISE: go the
--| --------------------------

--| [NOTE]
--| ============================================================================
--| Le _Player Words_ delle varie lingue sono definite nel file sorgente di Alan
--| `compiler/wrd.c` (riga 182).
--| ============================================================================
--<

-->todo_checklist(.666)
--| * [ ] Doxterizza _CONJUNCTION WORDS_.
--<<
-- =============================================================================
-- CONJUNCTION WORDS
-- =============================================================================
-- AND: and then
-- -----------------------------------------------------------------------------
-- Conjunction words are used by the parse to correctly interpret player commands
-- which refers to multiple objects, or sequences of independent commands chained
-- together on a single command line.

SYNONYMS e, poi = 'and'.

-- examples:
-- "prendi la mela E la pera"                (take the apple AND the pear)
-- "prendi la mela E prendi la pera"         (take the apple AND take the pear)
-- "prendi la mela POI prendi la pera"       (take the apple THEN take the pear)

-- NOTE: The player can't type "E POI" ("<command> E POI <command>") because the
--       parser will see it as "<command> AND AND <command>". Unfortunately,
--       trying to define 'e poi' = 'then' won't solve the problem because the
--       parser seems to work on isolate tokens when substituting synonyms.

-->todo_checklist(.666)
--| * [ ] Doxterizza _NOISE WORDS_.
--<<
-- =============================================================================
-- NOISE WORDS
-- =============================================================================
-- NOISE: go the
-- -----------------------------------------------------------------------------
-- Noise words are completely ignored by the parser.
-- The trick here is to make all noise words synonyms of 'THE'.

-- DEFINITE ARTICLES
-- =================
-- As for article "l'" (eg: "l'altare", "the altar"), it can't be handled because
-- it's seen as a single token by the parser. The only viable solution is to add
-- to the instance a second NAME so that the parse will see it as a synonym of
-- the instance.
SYNONYMS il, lo, la, i, gli, le = 'the'.
-- We also add "l'", to cover cases where the player omits the apostrophe or
-- types a space after it, for conistency with the prepositions workaround (we
-- can't implement "l" because of conflict with "look" shortcut):
SYNONYMS 'l''' = 'the'. --| eg:  "l' albero"

-- This is not going to be useful:
-- SYNONYMS vai = 'go'.
-- ... because player would always type "VAI AI" (GO TO) followed by the direction;
-- but defining 'vai a' = 'go' doesn't work as expected, and 'a' must be preserved
-- for verbs ("a" means "TO", as in "give TO").
-- The best solution seems to be to implement the "VAI A" verb to catch player's
-- attempt to use this syntax, and just tell him that if he wants to go somewhere
-- he should type the direction instead (like the StdLib does with take_from
-- when used to pickup something from the floor).

-->todo_checklist(.666)
--| * [ ] Doxterizza _ALL WORDS_.
--<<
-- =============================================================================
-- ALL WORDS
-- =============================================================================
-- ALL: all everything

SYNONYMS tutto, tutti, tutte = all.


-->todo_checklist(.666)
--| * [ ] Doxterizza _EXCEPT WORDS_.
--<<
-- =============================================================================
-- EXCEPT WORDS
-- =============================================================================
-- BUT: but except
-- -----------------------------------------------------------------------------
-- Except words work in conjuction with ALL words, to exclude some objects from
-- the whole.

SYNONYMS tranne, eccetto, escluso, esclusa, esclusi, escluse = except.

-- examples:
-- "lascia TUTTO TRANNE la mela"              (drop all but the apple)
-- "lascia TUTTO ECCETTO la mela"             (drop all but the apple)
-- "lascia TUTTO ESCLUSA la mela"             (drop all but the apple)
-- "lascia TUTTO ESCLUSO il mango"            (drop all but the mango)
-- "lascia TUTTO ESCLUSI il mango e la mela"  (drop all but the mango and the apple)
-- "lascia TUTTO ESCLUSE la mela e la pera"   (drop all but the apple and the pear)

-->todo_checklist(.666)
--| * [ ] Doxterizza _THEM WORDS_.
--<<
-- =============================================================================
-- THEM WORDS
-- =============================================================================
-- THEM: them
-- -----------------------------------------------------------------------------
-- I haven't yet worked out how these are used. My guess is that they are treated
-- like ALL words, but referring to ACTORs, but I must do some tests to check it.



-->todo_checklist(.666)
--| * [ ] Doxterizza _Preposizioni Articolate_.
--<<
--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- § 2 - Preposizioni Articolate: (di|a|da|in|con|su) + art.det.
--------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================


--        +-----+-------+-------+--------+-----+-------+-------+
--        |  il |    lo |    la |     l' |   i |   gli |    le |
--  +-----+-----+-------+-------+--------+-----+-------+-------+
--  | di  | del | dello | della |  dell' | dei | degli | delle |
--  | a   | al  | allo  |  alla |   all' |  ai |  agli |  alle |
--  | da  | dal | dallo | dalla |  dall' | dai | dagli | dalle |
--  | in  | nel | nello | nella |  nell' | nei | negli | nelle |
--  | con | col | collo | colla | con l' | coi | cogli | colle |
--  | su  | sul | sullo | sulla |  sull' | sui | sugli | sulle |
--  +-----+-----+-------+-------+--------+-----+-------+-------+
--
-- Some forms in the above table are in potential conflict* with other words:
--   "dei"   = "gods"      (but more correctly spelled "dèi")
--   "dai"   = "give"      (imperative)
--   "dallo" = "give it"   (masc. direct obj)
--   "dalla" = "give it"   (fem. direct obj)
--   "dalle" = "give them" (fem. direct obj) and "give to her"
--   "Nello" =  given name (masc.)
--   "Nella" =  given name (fem.)
--   "nei"   = "moles"     (but more correctly spelled "nèi" or "nevi")
--   "collo" = "neck"
--   "colla" = "glue"
--   "cogli" = "pick"
--   "colle" = "glues" or "hill"
-- -----------------------------------------------------------------------------
-- * see.: http://www.tads.org/xlat3/En_vs_It.htm
-- -----------------------------------------------------------------------------
-- We now define sysonyms of prepositions variants to be seen as their base
-- form registered with the verbs syntax.
--
-- **APOSTROPHE LIMITATION** -- prepositions with apostrophe must either be
-- typed without the apostrophe or with a space after it, because the parser will
-- otherwise see them as forming a single token with the following noun:
--   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--   > prendi la mela dall albero
--   > prendi la mela dall' albero
--   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- There is no solution to this problem currently. For this reason, we'll also
-- define as synonms "dall'" and "dall" (and similars).

--==============================================================================
-- "DI" + Articolo
--==============================================================================
SYNONYMS
  del, dello, della, 'dell''', dei, degli, delle = di.
--==============================================================================
-- "A" + Articolo
--==============================================================================
SYNONYMS
  al, allo, alla, 'all''', ai, agli, alle  = a.
-- all    = a.   --| CAN'T BE USED AS ALTERNATIVE because of conflict with
--               --| English ALL word:
--| 333 E : The word 'all' is defined to be both a synonym and another word class.
--|
--| Beside, " all " isn't correct Italian, but could have been a workaround to the
--| limitation mentioned above.

--==============================================================================
-- "DA" + Articolo
--==============================================================================
-- We can't define as synonym the preposition "dai" because it would conflict
-- with the imperative form of the verb "dare" ("dai" = give). The workaround
-- is to define an alternative syntax for every verb that uses "da", so that it
-- will also cover "dai". All other prepositions will be defined as synonyms of
-- "da".
SYNONYMS
  dal, dallo, dalla, 'dall''', dall, dagli, dalle  = da.

--| * " dall " is not correct Italian, but a workaround to the limitation
--|            mentioned above.

--  dai = da.       -- dai (masc.plur.) --| CAN'T BE USED AS ALTERNATIVE because
--                                      --| of conflict with 'dai' verb:
--| 333 E : The word 'dai' is defined to be both a synonym and another word class.

--==============================================================================
-- "IN" + Articolo
--==============================================================================
SYNONYMS
  nel, nello, nella, 'nell''', nei, negli, nelle = 'in'.
--==============================================================================
-- "SU" + Articolo
--==============================================================================
SYNONYMS
  sul, sullo, sulla, 'sull''', sui, sugli, sulle = su.

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
--| italiano del modulo supplementare.
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

-->todo_checklist(.665)
--| 
--| === Check List Doxter 
--| 
--| Finisci di trasformare commenti in documentazione Doxter:
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
