# CHANGELOG

Changelog of Italian translation of Alan Standard Library v2.1.

Status: Alpha stage.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [2018/05/19](#20180519)
- [2018/05/15](#20180515)
- [2018/05/12 \(2\)](#20180512-2)
- [2018/05/12 \(1\)](#20180512-1)
- [2018/05/01](#20180501)
    - [Directions](#directions)
    - [Movement Messages](#movement-messages)

<!-- /MarkdownTOC -->

-----

# 2018/05/19

- [`lib_classes.i`][lib_classes] (v0.0.4)
- [`lib_definitions.i`][lib_definitions] (v0.0.5)
- [`lib_supplement.i`][lib_supplement] (v0.0.3)
- [`lib_verbs.i`][lib_verbs] (v0.0.4)

Translate verb "__dai__" (_give_), and "__prendi da__" (_take from_).

Now the status of the translated verbs is more polished:

Verb `prendi` (_take_):

    [prendi|afferra|raccogli|trasporta] (obj)

Verb `prendi_da` (_take from_):

    [prendi|rimuovi|togli] (obj) da (holder)

Verb `dai_a` (_give_):

    [dai|porgi|offri] (obj) a (recipient)

Now [`lib_supplement.i`][lib_supplement] implements all the required synonyms for prepositions "da" and "a".

> __NOTE__ — To prevent conflicts betwen "__dai__" (da + i) and "__dai__" (verb), the preposition "`dai`" is not declared as synonym of "`da`", and an extra syntax is declared on the verb in order to cover it:
> 
> ```alan
>   prendi_da = prendi  (obj)  'dai' (holder).
>   prendi_da = rimuovi (obj)* 'da'  (holder).
>   prendi_da = rimuovi (obj)* 'dai' (holder).
>   prendi_da = togli   (obj)  'da'  (holder).
>   prendi_da = togli   (obj)  'dai' (holder).
> ``` 


# 2018/05/15

- [`lib_definitions.i`][lib_definitions] (v0.0.4) — __PREDEFINED ARTICLES__ of THINGS implemented in Italian.
- [`lib_classes.i`][lib_classes] (v0.0.3) — added comments about predefined articles in ACTORS and some comment draft code on how these might be implemented in Italian (the topic needs to be further investigated before apllying changes).
- [`../tests/`][tests] folder — added Alan source and script files to test articles implementation:
    + [`../tests/articoli.alan`](../tests/articoli.alan)
    + [`../tests/articoli.bat`](../tests/articoli.bat)
    + [`../tests/articoli.log`](../tests/articoli.log)
    + [`../tests/articoli.script`](../tests/articoli.script)



This commit translates to Italian the predefined articles (determinate and indeterminate) that are assigned to all children of `THING`, according to number and _genre_ — genre (which wasn't handled in the original Library, due to things being of neuter genre in English) is determined via the `femminile` attribute that was added to the Italian library.

These are the default articles added at initialization time:

| G | N | DET | INDET |
|---|---|-----|-------|
| M | S | il  | un    |
| M | P | i   | dei   |
| F | S | la  | una   |
| F | P | le  | delle |

These defaults will work with many nouns, but not all. For nouns requiring different articles, end users will have to specify them manually:

```alan
--------------------------------------------------------------------------------
-- Example: "zaino" (backpack) -> Masc. Sing.              (uno zaino, lo zaino)
--------------------------------------------------------------------------------
THE zaino IsA object AT salotto.
  DEFINITE ARTICLE   "lo"
  INDEFINITE ARTICLE "uno"
END THE zaino.

```

... and so on. The possible combinations of nouns and articles are too numerous to implement them via subclasses or special attributes. Also, the grammar rules that govern which article forms should be uesed for a noun can be rather obscure for some edge cases, and forcing the end user to remember them would add a useless burden on his side. It's simpler and more practical to let him/her just override the defaults as needed, handing full control to the author as to which articles should be used.

As for nouns requiring articles with apostrophe, they will need an extra `NAME` aliasing because the parser sees the article and the noun as a single word:

```alan
--------------------------------------------------------------------------------
-- Example: "arco" (bow) -> Masc. Sing.                        (un arco, l'arco)
--------------------------------------------------------------------------------
THE arco IsA object AT salotto.
  NAME arco        --> Base name must be redefined.
  NAME 'l''arco'   --> Don't forget escaping the quote ('').

  DEFINITE ARTICLE   "l'$$" --> Special char `$$` keeps article and noun together.
  -- no need to redefine the indefinite article (the default "un" is fine in this case).
END THE arco.
```

See test file [`../tests/articoli.alan`](../tests/articoli.alan) for more examples on how to use articles.

> __NOTE__ — this commit didn't change the way the library predefines articles for ACTORS; that part of the code was left untouched as it needs to be further looked into before changing it.


# 2018/05/12 (2)

- [`lib_supplement.i`][lib_supplement] — __DEFINITE ARTICLES__ are now defined as __NOISE WORDS__ and ignored by the parser in player's input. This means that it's no longer required to add multiple `NAME`s to instances to include the noun preceded by its article as a synonym of the instance.

Before:

```alan
THE palla IsA object AT 'Sala Collaudo Verbi'
  NAME palla
  NAME la palla
  IS femminile.
  INDEFINITE ARTICLE "una"
  DEFINITE ARTICLE "la"
END THE palla.
```

... now, just:

```alan
THE palla IsA object AT 'Sala Collaudo Verbi'
  IS femminile.
  INDEFINITE ARTICLE "una"
  DEFINITE ARTICLE "la"
END THE palla.
```

As for articles with apostrophe (eg: "l'altare" — _the altar_), these can't be handled as noise words synonyms because the parser sees them as a single token. So, for objects that take the article `l'`, the old NAME trick has to be used even now:

```alan
THE orzo IsA object AT piazza.
  NAME orzo.
  NAME 'l''orzo'.
  INDEFINITE ARTICLE "dell'$$"
  DEFINITE ARTICLE "l'$$"
END THE orzo.
```

The above changes had some side effects which required me to also change the English library in various places:

- verb `i` (+ `inventory`, `inv`) » `inventario` (+ `inv`)
- attribute `i` of `my_game` (`CAN i`, etc.) » `CAN inventariare.` (etc.)
- Syntaxes `what_am_i`, `where_am_i` and `who_am_i`, where their `i` conflicted with the newly defined NOISE WORD `i` synonym:
    + `SYNTAX what_am_i = 'what' am i.` » `what_am_i = cosa sono.`
    + `SYNTAX where_am_i = 'where' am i.` » `where_am_i = dove mi trovo.` (+ `dove sono`)
    + `SYNTAX who_am_i = who am i.` » `chi sono.`

... since these changes were prematurely forced on me, I've implemented them without giving them much through, but just to end the conflicts which prevented compiling the library. So, they might need to be looked into more carefully at some point.

# 2018/05/12 (1)

- New [`lib_supplement.i`][lib_supplement] — this supplement to the Standard Library deals with implementing Italian synonyms for the Predefined Player Words. It's kept separate because it will be removed from the Library once Italian language gets natively supported in Alan:
    + Predefined Player Words synonyms:
        * `e`, `poi` = `'and'`
        * `tutto`, `tutti`, `tutte` = `all`
        * `tranne`, `eccetto`, `escluso`, `esclusa`, `esclusi`, `escluse` = `except`
- [`lib_locations.i`][lib_locations]:
    + remove `e` as synonym of `est` (now conflicts with `e` = `'and'`)
- [`library.i`][library]: added `IMPORT 'lib_supplement.i'.`
- New [`VERBI_IT.md`][VERBI_IT] doc to resume current state of verbs translated to Italian.
- Added to [`../tests/`][tests] folder Alan source and script files to test Player Words implementation.

# 2018/05/01

- All library files have now been set to `v0.0.1` to allow tracking changes consistently.
- [`lib_locations.i`][lib_locations]:
    + Translated all stdLib directions and their shorthand synonims.
- [`lib_messages.i`][lib_messages]:
    + Translated the `NO_WAY` message (Alan native message)


## Directions

| direction |      aliases      | short |  English  | short |
|-----------|-------------------|-------|-----------|-------|
| nord      |                   | n     | north     | n     |
| sud       |                   | s     | south     | s     |
| est       |                   |       | east      | e     |
| ovest     |                   | o     | west      | w     |
| nordest   |                   | ne    | northeast | ne    |
| sudest    |                   | se    | southeast | se    |
| nordovest |                   | nov   | northwest | nw    |
| sudovest  |                   | so    | southwest | sw    |
| su        | sopra, alto       |       | up        | u     |
| giù       | giu, sotto, basso | b     | down      | d     |
| dentro    |                   |       | 'in'      |       |
| fuori     |                   |       | out       |       |

> __NOTE 1__ — Couldn't create synonym "`no`" for "`nordovest`" because of conflict with `NO` keyword. Trying to use `'no'` produced error:
> 
> ```
> 333 E : The word 'no' is defined to be both a synonym and another word
>         class.
> 1 error(s).
> ```

<!-- separator -->

> __NOTE 2__ — Add to remove synonym "`e`" for "`est`" due to conflict with `e` now being a synonym for `'and'` (Player Word).

<!-- separator -->

> __NOTE 3__ — Inform 6 Italian also implements "a" synonym for "alto", but I've left it out right now in case it might conflict with "a" as in "dai a/_give to_".


## Movement Messages

|   messg   |              translation               |
|-----------|----------------------------------------|
| `NO_WAY:` | "Non puoi andare in quella direzione." |

> __NOTE 1__ — "Non puoi andare in quella direzione." was taken from i6 translation; i7 uses "Non puoi andare da quella parte." instead.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[library]:         ./library.i
[lib_classes]:     ./lib_classes.i
[lib_definitions]: ./lib_definitions.i
[lib_locations]:   ./lib_locations.i
[lib_messages]:    ./lib_messages.i
[lib_supplement]:  ./lib_supplement.i
[lib_verbs]:       ./lib_verbs.i


[VERBI_IT]: ./VERBI_IT.md

[tests]: ../tests/




