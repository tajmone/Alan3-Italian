-- "lib_supplemento.i" v0.3.0 (2018/07/24)
--------------------------------------------------------------------------------
-- Alan ITA Alpha Dev | Alan 3.0beta5 | StdLib 2.1
--------------------------------------------------------------------------------
--| Questo modulo della libreria definisce vari sinonimi italiani per tradurre
--| le Predefined Player Words inglesi di Alan.
--| Si tratta di un modulo supplementare in quanto non sarà più necessario una
--| volta aggiunto l'italiano alle lingue supportate nativamente da Alan. Quando
--| ciò avverrà, questo modulo verrà rimosso.
--------------------------------------------------------------------------------
---- This supplementary library file defines some Italian specific synonyms.
---- It was not part of the original Standard Library.


--|============
--| TODOs LIST:
--|============
--| Preposizioni Articolate (SYNONYMS):
--|   - [x] DI + Art ( untested !!! )
--|   - [x]  A + Art
--|   - [x] DA + Art
--|   - [x] IN + Art ( untested !!! )
--|   - [x] SU + Art ( untested !!! )


--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- § 1 - Predefined Player Words
--------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================


-- These are the predefined English Player Words hardcoded in Alan:
--
--    ALL:   all everything
--    AND:   and then
--    BUT:   but except
--    THEM:  them
--    NOISE: go the*
--
-- Until the Italian language gets integrated into Alan as a natively supported
-- language, the library needs to supply some soft-coded synonims for these
-- Player Words.
--
-- NOTE: Although indicated in the Manual as being one, 'the' is not a NOISE WORD.
--
-- NOTE: Player Words for all supported languages are defined in Alan's source
--       file "compiler/wrd.c" (line 182).


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

-- =============================================================================
-- NOISE WORDS
-- =============================================================================
-- NOISE: go the*
-- -----------------------------------------------------------------------------
-- Noise words are completely ignored by the parser.
-- The trick here is to make all noise words synonyms of 'GO' and not 'THE'.
-- Even though the Alan Manual mentions 'THE' as being one of the NOISE WORDS, it
-- actually isn't (as can be seen from the "compiler/wrd.c" source), so you can't
-- refer to 'THE' in the RHS of a synonym.

-- DEFINITE ARTICLES
-- =================
-- As for article "l'" (eg: "l'altare", "the altar"), it can't be handled because
-- it's seen as a single token by the parser. The only viable solution is to add
-- to the instance a second NAME so that the parse will see it as a synonym of
-- the instance.
SYNONYMS il, lo, la, i, gli, le = 'go'.
-- We also add "l'", to cover cases where the player omits the apostrophe or
-- types a space after it, for conistency with the prepositions workaround (we
-- can't implement "l" because of conflict with "look" shortcut):
SYNONYMS 'l''' = 'go'. --| eg:  "l' albero"

-- This is not going to be useful:
-- SYNONYMS vai = 'go'.
-- ... because player would always type "VAI AI" (GO TO) followed by the direction;
-- but defining 'vai a' = 'go' doesn't work as expected, and 'a' must be preserved
-- for verbs ("a" means "TO", as in "give TO").
-- The best solution seems to be to implement the "VAI A" verb to catch player's
-- attempt to use this syntax, and just tell him that if he wants to go somewhere
-- he should type the direction instead (like the StdLib does with take_from
-- when used to pickup something from the floor).

-- =============================================================================
-- ALL WORDS
-- =============================================================================
-- ALL: all everything

SYNONYMS tutto, tutti, tutte = all.


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

-- =============================================================================
-- THEM WORDS
-- =============================================================================
-- THEM: them
-- -----------------------------------------------------------------------------
-- I haven't yet worked out how these are used. My guess is that they are treated
-- like ALL words, but referring to ACTORs, but I must do some tests to check it.




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

--< EOF >---
