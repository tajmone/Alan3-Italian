-- "lib_supplement.i" v0.0.2 (2018/05/12)
--------------------------------------------------------------------------------
-- Alan ITA Alpha Dev | Alan 3.0beta5 | StdLib 2.1
--------------------------------------------------------------------------------

-- ALAN Standard Library v2.1
-- Verbs (file name: 'lib_supplement.i')

---- This supplementary library file defines some Italian specific synonyms.
---- It was not part of the original Standard Library.



-- =============================================================================


----- Predefined Player Words


-- =============================================================================

---- These are the predefined English Player Words hardcoded in Alan:
----
----    ALL:   all everything
----    AND:   and then
----    BUT:   but except
----    THEM:  them
----    NOISE: go the*
----
---- Until the Italian language gets integrated into Alan as a natively supported
---- language, the library needs to supply some soft-coded synonims for these
---- Player Words.
----
---- NOTE: Although indicated in the Manual as being one, 'the' is not a NOISE WORD. 
----
---- NOTE: Player Words for all supported languages are defined in Alan's source
----       file "compiler/wrd.c" (line 182).


-- =============================================================================
-- CONJUNCTION WORDS
-- =============================================================================
-- AND: and then
-- -----------------------------------------------------------------------------
-- Conjunction words are used by the parse to correctly interpret player commands
-- which refers to multiple onjects, or sequences of independent commands chained
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

