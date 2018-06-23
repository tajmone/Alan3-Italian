# CHANGELOG

Changelog of Italian translation of Alan Standard Library v2.1.

Status: Alpha stage.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [2018/06/23 \(2\)](#20180623-2)
- [2018/06/23 \(1\)](#20180623-1)
    - [Verb `again`](#verb-again)
- [2018/06/16 \(3\)](#20180616-3)
    - [Verb: `wait`](#verb-wait)
    - [Verb: `sleep`](#verb-sleep)
- [2018/06/16 \(2\)](#20180616-2)
- [2018/06/16 \(1\)](#20180616-1)
    - [Translate `check_obj_suitable_XX` Messages](#translate-check_obj_suitable_xx-messages)
- [2018/06/11](#20180611)
    - [Library Files Renamed to Italian](#library-files-renamed-to-italian)
- [2018/06/10](#20180610)
    - [The New `articolo` Attribute](#the-new-articolo-attribute)
    - [Preposizioni Articolate](#preposizioni-articolate)
- [2018/06/02](#20180602)
- [2018/05/31:2](#201805312)
- [2018/05/31:1](#201805311)
    - [Verb: `restore`](#verb-restore)
    - [Verb: `restart`](#verb-restart)
    - [Verb: `quit`](#verb-quit)
- [2018/05/28](#20180528)
- [2018/05/27](#20180527)
    - [Verb: `save`](#verb-save)
- [2018/05/22 \(3\)](#20180522-3)
    - [Verb: `pray`](#verb-pray)
    - [Verb: `break`](#verb-break)
    - [Verb: `break_with`](#verb-break_with)
    - [Verb Restriction Attributes](#verb-restriction-attributes)
- [2018/05/22 \(2\)](#20180522-2)
    - [Verb Restriction Attributes](#verb-restriction-attributes-1)
- [2018/05/22 \(1\)](#20180522-1)
    - [Verb: `undress`](#verb-undress)
- [2018/05/19](#20180519)
    - [Verb: `take`](#verb-take)
    - [Verb: `take_from`](#verb-take_from)
    - [Verb: `give`](#verb-give)
- [2018/05/15](#20180515)
- [2018/05/12 \(2\)](#20180512-2)
- [2018/05/12 \(1\)](#20180512-1)
- [2018/05/01](#20180501)
    - [Directions](#directions)
    - [Movement Messages](#movement-messages)

<!-- /MarkdownTOC -->

-----

# 2018/06/23 (2)

- [`lib_verbi.i`][lib_verbi] (v0.2.4)

Cleanup code comments and add some notes.

A few verb responses translated on the fly:

|      Verb     |                       English                        |                     Italian                      |
|---------------|------------------------------------------------------|--------------------------------------------------|
| `attack`      | "Resorting to brute force is not the solution here." | "La violenza non è la giusta risposta a questo." |
| `attack_with` | "Resorting to brute force is not the solution here." | "La violenza non è la giusta risposta a questo." |
| `kick`        | "Resorting to brute force is not the solution here." | "La violenza non è la giusta risposta a questo." |
| `ask`         | "There is no reply."                                 | "Nessuna risposta."                              |
| `clean`       | "Nothing would be achieved by that."                 | "Farlo non servirebbe a nulla."                  |
| `kiss`        | "Nothing would be achieved by that."                 | "Farlo non servirebbe a nulla."                  |
| `rub`         | "Nothing would be achieved by that."                 | "Farlo non servirebbe a nulla."                  |
| `scratch`     | "Nothing would be achieved by that."                 | "Farlo non servirebbe a nulla."                  |




# 2018/06/23 (1)

- [`lib_definizioni.i`][lib_definizioni] (v0.2.4)
- [`lib_verbi.i`][lib_verbi] (v0.2.3)


Translated `my_game` attributes for verb restrictions:

|  English  | Italian  |
|-----------|----------|
| `'again'` | `rifare` |


## Verb `again`

Translated verb `again`, "__rifai__" (_again_):

    rifai
    ancora

with no synonyms.

with synonyms:

    g = rifai

Produces the message:  "[Il comando ANCORA non è supportato in questo gioco. In alternativa, prova ad usare i tasti 'su' e 'giù' per navigare tra i comandi precedenti.]"

> __NOTA (IT)__ — Il verbo base è `rifai` e il suo corrispondente attributo `my_game` è `rifare`, ma il messaggio predefinito menziona "Il comando ANCORA...". La ragione per questo è che in genere gli attributi di restrizione verbi sono in forma infinita, è quindi ho optato per usare `rifai` anziché `ancora` (che ho invece implementato come sintassi alternativa) di modo da poter usare l'attributo `rifare`:
> 
> ```alan
> CHECK my_game CAN rifare
> ```
> 
> Però il giocatore medio si aspetterà che il comando classico sia `ancora`, perciò nel messaggio ho preferito riferirmi ad esso.
> 
> Inoltre, ho preferito non definire `ancora` come sinonimo poiché poteva compromettere la creazione di un'àncora nel gioco (che sicuramente andrebbe compresa anche senza accento) dato che l'uso di un sinonimo avrebbe sempre convertito l'input del giocatore `ancora` in `rifai` e quindi impedito l'uso di un oggetto con nome `ancora` nel gioco.

# 2018/06/16 (3)

- [`lib_definizioni.i`][lib_definizioni] (v0.2.3)
- [`lib_verbi.i`][lib_verbi] (v0.2.2)

Translated `my_game` attributes for verb restrictions:

| English |   Italian   |
|---------|-------------|
| `wait`  | `aspettare` |
| `sleep` | `dormire`   |


## Verb: `wait`

Translated verb `aspetta`, "__aspetta__" (_wait_):

    aspetta

with synonyms:

    z, attendi = aspetta

Outputs message: "`Il tempo passa.`"


## Verb: `sleep`

Translated verb `dormi`, "__dormi__" (_sleep_):

    dormi

with synonyms:

    riposa = dormi

Outputs message: "`Non è il momento di riposare.`"

<!---------------------------------------------------------------------------->

# 2018/06/16 (2)

- [`lib_definizioni.i`][lib_definizioni] (v0.2.2)

Some code clean up and translation of library comments.

Part of the `banner` translated to Italian.

<!---------------------------------------------------------------------------->

# 2018/06/16 (1)

- [`lib_definizioni.i`][lib_definizioni] (v0.2.1)
- [`lib_verbi.i`][lib_verbi] (v0.2.1)

Changed default response message for verbs that don't pass a check for objects (English:  `check_obj_suitable_sg`/`_pl`.

Whereas before the approach was to have a dedicated message per verb (because of the need to use the infinitive form in Italian, which is not covered by `$v`), now the message will be without the verb, which will be supplied by the `CHECK` code itself instead.

Before we had `check_obj_idoneo_prendere_sg` for the verb _prendi_ (take), yelding "`$+1 non è qualcosa che puoi prendere.`" (and it's plural counterpart, ending in `_pl`). Now all verbs share the same common (truncated) message:

```alan
HAS check_obj_idoneo_sg "$+1 non è qualcosa che puoi".
HAS check_obj_idoneo_pl "$+1 non sono qualcosa che puoi".
```

... where the `CHECK` code completes the message by adding the infinitive of the verb being checked:

```alan
  VERB prendi
    CHECK [...]
    AND obj IS examinable
      ELSE
        IF obj IS NOT plural
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY check_obj_idoneo_sg OF my_game. "prendere."
          ELSE SAY check_obj_idoneo_pl OF my_game. "prendere."
        END IF.
```

... which will produce as a result "`<the obj> non [è/sono] qualcosa che puoi prendere.`" And so on with all the other verbs.

## Translate `check_obj_suitable_XX` Messages

The `check_obj_idoneo_sg`/`_pl` Italian message has beem implemented for the following verbs (some of which have not been translated yet, apart from this message):

- `attack` — translated as: "attaccare"
- `attack_with` — translated as: "attaccare"
- `bite` — translated as: "mordere"
- `burn` — translated as: "bruciare"
- `burn_with` — translated as: "bruciare"
- `buy` — translated as: "comprare"
- `catch` — translated as: "catturare" (maybe should be "afferrare"?)
- `clean` — translated as: "pulire"
- `close` — translated as: "chiudere"
- `close_with` — translated as: "chiudere"
- `consult` — translated as: "consultare"
- `cut` — translated as: "tagliare"
- `cut_with` — translated as: "tagliare"
- `drink` — translated as: "bere"
- `drive` — translated as: "guidare"
- `eat` — translated as: "mangiare"
- `extinguish` — translated as: "estinguere" (fuoco)
- `fill` — translated as: "riempire"
- `free` — translated as: "liberare"
- `kill` — translated as: "uccidere"
- `kiss` — translated as: "baciare"
- `lift` — translated as: "sollevare" (maybe should be "alzare"?)
- `lock` — translated as: "bloccare"
- `lock_with` — translated as: "bloccare"
- `open` — translated as: "aprire"
- `open_with` — translated as: "aprire"
- `prendi` — EN verb: _take_
- `prendi_da` — EN verb: _take from_
- `read` — translated as: "leggere"
- `rompi` — EN verb: _break_
- `rompi_con` — EN verb: _break with_
- `rub` — translated as: "strofinare" (need to check this!)
- `sell` — translated as: "vendere"
- `sip` — translated as: "sorseggia"
- `taste` — translated as: "assaggiare"
- `tear` — translated as: "strappare"
- `throw` — translated as: "lanciare"
- `throw_at` — translated as: "lanciare"
- `throw_in` — translated as: "lanciare"
- `throw_to` — translated as: "lanciare"
- `tie` — translated as: "legare"
- `tie_to` — translated as: "legare"
- `touch` — translated as: "toccare"
- `touch_with` — translated as: "toccare"
- `unlock_with` — translated as: "sbloccare"


... which covers most of the occurence of the original `check_obj_suitable_XX` English message — so handling of this message is now mostly done with. Some of the above translated message might require tweaking later on, but they are a good start.

But some occurences were left out because they apply to verbs which in Italian would require a special construct in the response message, relying on prepositions (possibly, they will need a custom message not relying on `my_game` attributes), or just because I couldn't yet decide how to translate them (even vaguely). Namely, the occurences of `check_obj_suitable_XX` in the following verbs were not substituted:

- `climb`
- `climb_through`
- `fire` (weapon)
- `fire_at` (weapon)
- `kick` (probaly should be "prendere a calci", but the Italian syntax for this verb is going to be complex)
- `light`
- `pry`
- `pry_with`
- `scratch`
- `shake`
- `shoot`
- `shoot_with`
- `squeeze`
- `turn`

<!---------------------------------------------------------------------------->

# 2018/06/11

> This is another major feature change: all library files are bumped up to `v0.2.0` to mark the adoption of new library file names.

## Library Files Renamed to Italian

All library files are renamed to Italian filenames:

|    ORIGINAL NAME    |                NEW NAME                |
|---------------------|----------------------------------------|
| `library.i`         | [`libreria.i`][libreria]               |
| `lib_classes.i`     | [`lib_classi.i`][lib_classi]           |
| `lib_definitions.i` | [`lib_definizioni.i`][lib_definizioni] |
| `lib_locations.i`   | [`lib_luoghi.i`][lib_luoghi]           |
| `lib_messages.i`    | [`lib_messaggi.i`][lib_messaggi]       |
| `lib_verbs.i`       | [`lib_verbi.i`][lib_verbi]             |
| `lib_supplement.i`  | [`lib_supplemento.i`][lib_supplemento] |

From now on I'll start to italianize the library by translating also comments and internal library IDs.

<!---------------------------------------------------------------------------->

# 2018/06/10

> This is a major feature change: all library files are bumped up to `v0.1.0` to mark the adoption of the new system.

This commit introduces a new article-based system for handling gender, number, articles and "preposizioni articolate" (prepositions that merge with the definite article).

## The New `articolo` Attribute

Now every THING has a new `articolo` string attribute, which the author must set to the definite article of the instance's noun (default to "`il`", masculine singular). At initialization time, the library will take care of setting the correct values of gender, number, DEFINITE/INDEFINITE ARTICLE and prepositions, based on the string of `articolo`.

So, now the author only needs to write:

```alan
THE mela IsA object AT kitchen.
  HAS articolo "la".
END THE mela.
```

... and the library will deduce and set that the instance is feminine and singular. The same goes for all other Italian articles, with the exeception of "`l'`", because it could refer to either a masculine or feminine noun; with this article the author needs to manually specify the gender if the noun is feminine:

```alan
THE arancia IsA object AT kitchen.
  HAS articolo "l'".
  IS femminile. --> Without it, the StdLib will assume it's masculine!
  NAME arancia.
  NAME 'l''arancia'.
END THE.
```

## Preposizioni Articolate

> __NOTE__ — In Italian, prepositions merge with the definite article directly following them, according to fixed and predictable rules. (for more info, see this [article on Italian prepositions])

[article on Italian prepositions]: https://ciaoitaliablog.wordpress.com/classes/italian-preposition-with-definite-article/

Now the library adds to EVERY THING the following new string attributes:

```alan
                        --      <prep> + <art> = preposizione articolata
                        ---------------|-------|------------------------
  HAS prep_DI "del".    -- (of)   "di" + "il"  = "del"
  HAS prep_A  "al".     -- (to)    "a" + "il"  = "al"
  HAS prep_DA "dal".    -- (from) "da" + "il"  = "dal"
  HAS prep_IN "nel".    -- (in)   "in" + "il"  = "nel"
  HAS prep_SU "sul".    -- (on)   "su" + "il"  = "sul"
```

These are used in SAY statements to retrive the correct _preposition_ + _definite article_ form to use in reference to an instance. Example from `put_on` verb (`put (obj) on (surface)`) response:

```alan
"Posi" SAY THE obj. SAY prep_SU of surface. SAY surface. "."
```

... which will produce messages like:

```
Posi la mela sul tavolo.
Posi la mela sulla dispensa.
Posi la mela sulle lenzuola.
Posi la mela sui carboni.
```

At initialization time, the library sets the preposition attributes' strings of every instance according to the string of its `articolo`.

This new system simplifies the authors' task of writing adventures, for now they only need to worry about specifying the article of an instance and let the library handle the rest. It also makes referencing a noun's preposition in messages a simple task, as there is no need to use conditional statements.

The only possible downside is the memory overhead, because now every THING (objects and actors) has six extra string attributes; but [as Greg has pointed out]:

> I really don't think you need to worry about memory usage here. This might add perhaps 20 bytes to every object. If your game has 1000 objects, that's only 20K bytes, which is likely insignificant compared to the text of a game that size.

It's more likely that conditional statements to determine which preposition to use inside library message will have added more overhead than the current solution. 

Ultimately, this solution was adopted after careful consideration of various approaches to the problem, and weighing the pros and cons of each one of them. The adopted solution is a good compromise in terms of library maintainance and authors' usability of the library.

[as Greg has pointed out]: https://groups.yahoo.com/neo/groups/alan-if/conversations/messages/3456

<!---------------------------------------------------------------------------->

# 2018/06/02

- [`lib_classes.i`][lib_classes] (v0.0.2)

Translated some response messages for containers and supporters.

<!---------------------------------------------------------------------------->

# 2018/05/31:2

- [`lib_messages.i`][lib_messages] (v0.0.4)

Translated RUN-TIME MESSAGES:

|        Message        |               Italian Translation               |
|-----------------------|-------------------------------------------------|
| `AFTER_BUT`           | Devi specificare almeno un oggetto dopo '`$1`'. |
| `BUT_ALL`             | Puoi usare '`$1`' solo DOPO '`$2`'.             |
| `MULTIPLE`            | Non puoi usare più di un oggetto con '`$v`'.    |
| `NO_SUCH`             | Qui non puoi vedere nulla del genere.           |
| `NOT_MUCH`            | Così non resta nulla per il verbo '`$v`'!       |
| `NOUN`                | Devi specificare un sostantivo.                 |
| `UNKNOWN_WORD`        | Non conosco la parola '`$1`'.                   |
| `WHAT`                | Non ho capito la frase.                         |
| `WHAT_WORD`           | Non mi è chiaro cosa intendi con '`$1`'.        |
| `WHICH_START`         | Non mi è chiaro se intendi dire `$+1`           |
| `WHICH_COMMA`         | , `$+1`                                         |
| `WHICH_OR`            | o `$+1`.                                        |
| `WHICH_PRONOUN_START` | Non mi è chiaro se con '`$1`'                   |
| `WHICH_PRONOUN_FIRST` | intendi dire `$+1`                              |
| `CANT0`               | Non lo puoi fare.                               |
| `SEE_START`           | Puoi vedere `$01`                               |
| `SEE_COMMA`           | ", `$01`                                        |
| `SEE_AND`             | "e `$01`                                        |
| `SEE_END`             | "qui.                                           |

<!---------------------------------------------------------------------------->

# 2018/05/31:1

- [`lib_definitions.i`][lib_definitions] (v0.0.10)
- [`lib_messages.i`][lib_messages] (v0.0.3)
- [`lib_verbs.i`][lib_verbs] (v0.0.10)


Translated `my_game` attributes for verb restrictions:

|   English   |        Italian         |
|-------------|------------------------|
| `'restore'` | `caricare_partita`     |
| `'restart'` | `ricominciare_partita` |
| `'quit'`    | `abbandonare_partita`  |

Translated RUN-TIME MESSAGES:

|     Message      |                                    Italian Translation                                    |
|------------------|-------------------------------------------------------------------------------------------|
| `REALLY`         | Sei sicuro (premi INVIO per confermare)?                                                  |
| `QUIT_ACTION`    | Cosa vuoi fare: RESTART, RESTORE, QUIT o UNDO?                                            |
| `NOT_A_SAVEFILE` | Caricamento fallito, il file indicato non è una partita salvata.                          |
| `RESTORE_FROM`   | Inserisci il nome del file                                                                |
| `SAVE_MISSING`   | Caricamento fallito, impossibile aprire il file richiesto.                                |
| `SAVE_NAME`      | Caricamento fallito, il file indicato non è una partita salvata di questa avventura.      |
| `SAVE_VERSION`   | Caricamento fallito, il file indicato è stato creato con una versione di Alan differente. |


## Verb: `restore`

Translated verb `carica_partita`, "__carica__" (_restore_):

    carica [partita]
    restore

with no synonyms.

## Verb: `restart`

Translated verb `ricomincia_partita`, "__carica__" (_save_):

    ricomincia [partita]
    restart

with no synonyms.

## Verb: `quit`

Translated verb `abbandona_partita`, "__abbandona__" (_quit_):

    abbandona [partita]
    quit

with synonyms:

    q = 'quit'


> __NOTE__ — I had to leave the English syntaxes `restore`, `restart` and `quit` because after the `QUIT_ACTION` Run-Time message ("Do you want to RESTART, RESTORE, QUIT or UNDO? ") the allowed responses are hardcoded into Alan and can't be translated (even through the `QUIT_ACTION` message can).

<!---------------------------------------------------------------------------->

# 2018/05/28

Code cleanup:

- [`lib_verbs.i`][lib_verbs] (v0.0.9)

Add __Italian Verbs Table__: translated verbs are now added to a new verbs table, which will eventually replace the original English table.

<!---------------------------------------------------------------------------->

# 2018/05/27

- [`lib_definitions.i`][lib_definitions] (v0.0.9)
- [`lib_verbs.i`][lib_verbs] (v0.0.8)
- [`lib_messages.i`][lib_messages] (v0.0.2)

Translated `my_game` attributes for verb restrictions:

| English  |      Italian      |
|----------|-------------------|
| `'save'` | `salvare_partita` |


## Verb: `save`

Translated verb "__salva__" (_save_):

    salva [partita]

with no synonyms.

Translated RUN-TIME MESSAGES:

|     Message      |                     Italian Translation                      |
|------------------|--------------------------------------------------------------|
| `SAVE_FAILED`    | Salvataggio della partita fallito.                           |
| `SAVE_OVERWRITE` | Esiste già un file con questo nome. Vuoi sovrascriverlo? (y) |
| `SAVE_WHERE`     | Inserisci il nome del file                                   |

> __NOTE__ — some of the above run-time messages can only be seen when using ARun.

<!---------------------------------------------------------------------------->

# 2018/05/22 (3)

- [`lib_definitions.i`][lib_definitions] (v0.0.8)
- [`lib_verbs.i`][lib_verbs] (v0.0.7)

## Verb: `pray`

Translated verb "__pregare__" (_pray_):

    prega

Only produces the response "`Sembra che le tue preghiere non siano state esaudite.`" (taken from Inofrm 6 _Infit_).

## Verb: `break`

Translated verb "__rompi__" (_break_):

    rompi (obj)

with synonyms: `distruggi`, `spacca`, `sfonda`.

Only produces the response "`La violenza non è la giusta risposta a questo.`" (taken from Inofrm 6 _Infit_).

## Verb: `break_with`

Translated verb "__rompi con__" (_break_with):

    rompi (obj) con (instr)

Same synonyms of __rompi__ apply here.

Only produces the response "`Tentare di rompere <THE obj> con <THE instr> non risolverebbe nulla.`".


## Verb Restriction Attributes

Translated `my_game` attributes for verb restrictions:

|   English    |   Italian   |
|--------------|-------------|
| `break`      | `rompi`     |
| `break_with` | `rompi_con` |
| `pray`       | `pregare`   |

<!---------------------------------------------------------------------------->

# 2018/05/22 (2)

- [`lib_definitions.i`][lib_definitions] (v0.0.7)
- [`lib_verbs.i`][lib_verbs] (v0.0.6)


## Verb Restriction Attributes

Translated `my_game` attributes for verb restrictions:

|   English    |    Italian     |
|--------------|----------------|
| `brun`       | `bruciare`     |
| `brun_with`  | `bruciare_con` |
| `close`      | `chiudere`     |
| `close_with` | `chiudere_con` |
| `dance`      | `danzare`      |
| `dig`        | `scavare`      |
| `drink`      | `bere`         |
| `eat`        | `mangiare`     |
| `kill`       | `uccidere`     |
| `kill_with`  | `uccidere_con` |
| `open`       | `aprire`       |
| `open_with`  | `aprire_con`   |

<!---------------------------------------------------------------------------->

# 2018/05/22 (1)

- [`lib_definitions.i`][lib_definitions] (v0.0.6)
- [`lib_verbs.i`][lib_verbs] (v0.0.5)

## Verb: `undress`

Translated verb "__spogliati__" (_undress_):

    [spogliati|svestiti]

Its default reponses translation might need some polishing. The commented code example on how to implement the undressing action also needs to be polished.

<!---------------------------------------------------------------------------->

# 2018/05/19

- [`lib_classes.i`][lib_classes] (v0.0.4)
- [`lib_definitions.i`][lib_definitions] (v0.0.5)
- [`lib_supplement.i`][lib_supplement] (v0.0.3)
- [`lib_verbs.i`][lib_verbs] (v0.0.4)

Translate verb "__dai__" (_give_), and "__prendi da__" (_take from_).

## Verb: `take`

Now the status of the translated verbs is more polished:

Verb `prendi` (_take_):

    [prendi|afferra|raccogli|trasporta] (obj)

## Verb: `take_from`

Verb `prendi_da` (_take from_):

    [prendi|rimuovi|togli] (obj) da (holder)

## Verb: `give`

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

<!---------------------------------------------------------------------------->

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

<!---------------------------------------------------------------------------->

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

<!---------------------------------------------------------------------------->

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

<!---------------------------------------------------------------------------->

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

<!-- OLD LIBRARY FILENAMES -->

[library]:         ./libreria.i
[lib_classes]:     ./lib_classi.i
[lib_definitions]: ./lib_definizioni.i
[lib_locations]:   ./lib_luoghi.i
[lib_messages]:    ./lib_messaggi.i
[lib_verbs]:       ./lib_verbi.i
[lib_supplement]:  ./lib_supplemento.i

<!-- NEW LIBRARY FILENAMES -->

[libreria]:         ./libreria.i
[lib_classi]:       ./lib_classi.i
[lib_definizioni]:  ./lib_definizioni.i
[lib_luoghi]:       ./lib_luoghi.i
[lib_messaggi]:     ./lib_messaggi.i
[lib_verbi]:        ./lib_verbi.i
[lib_supplemento]:  ./lib_supplemento.i


[VERBI_IT]: ./VERBI_IT.md

[tests]: ../tests/




