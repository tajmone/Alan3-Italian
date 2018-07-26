# CHANGELOG

Changelog of Italian translation of Alan Standard Library v2.1.

Status: Alpha stage.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [2018/07/27](#20180727)
    - [Italian Responses For Illegal Obj2 With](#italian-responses-for-illegal-obj2-with)
- [2018/07/26 \(10\)](#20180726-10)
    - [Verb Response Attributes Renaming](#verb-response-attributes-renaming)
    - [Renamed Verb Responses](#renamed-verb-responses)
        - [Changed Suffixes](#changed-suffixes)
        - [Other Responses Renames](#other-responses-renames)
- [2018/07/26 \(9\)](#20180726-9)
    - [Translate Verb Responses for Closed Obj2 Blocking the Action](#translate-verb-responses-for-closed-obj2-blocking-the-action)
- [2018/07/26 \(8\)](#20180726-8)
    - [Translate Verb Responses for Closed Obj1 Blocking the Action](#translate-verb-responses-for-closed-obj1-blocking-the-action)
- [2018/07/26 \(7\)](#20180726-7)
    - [Translate Verb Responses for Already Unlocked Objects](#translate-verb-responses-for-already-unlocked-objects)
- [2018/07/26 \(6\)](#20180726-6)
    - [Translate Verb Responses for Already Locked Objects](#translate-verb-responses-for-already-locked-objects)
- [2018/07/26 \(5\)](#20180726-5)
    - [Translate Verb Responses for Already Close Objects](#translate-verb-responses-for-already-close-objects)
- [2018/07/26 \(4\)](#20180726-4)
    - [Translate Verb Responses for Already Open Objects](#translate-verb-responses-for-already-open-objects)
- [2018/07/26 \(3\)](#20180726-3)
    - [Translate Verb Responses for Distant Params](#translate-verb-responses-for-distant-params)
- [2018/07/26 \(2\)](#20180726-2)
    - [Implement Italian Verb Responses](#implement-italian-verb-responses)
        - [Param 1 Illegal or Unsuitable](#param-1-illegal-or-unsuitable)
- [2018/07/26 \(1\)](#20180726-1)
    - [Polish and Fix Translated Verbs](#polish-and-fix-translated-verbs)
    - [Verb Parameters Fixes](#verb-parameters-fixes)
- [2018/07/25 \(8\)](#20180725-8)
    - [Verb Restriction Attributes](#verb-restriction-attributes)
    - [Verbs: `yes` and `no`](#verbs-yes-and-no)
- [2018/07/25 \(7\)](#20180725-7)
- [2018/07/25 \(6\)](#20180725-6)
    - [Verb Restriction Attributes](#verb-restriction-attributes-1)
    - [Verb: `play`](#verb-play)
    - [Verb: `play_with`](#verb-play_with)
- [2018/07/25 \(5\)](#20180725-5)
    - [Verb Restriction Attributes](#verb-restriction-attributes-2)
- [2018/07/25 \(4\)](#20180725-4)
- [2018/07/25 \(3\)](#20180725-3)
    - [Library Instances](#library-instances)
    - [Library Classes](#library-classes)
- [2018/07/25 \(2\)](#20180725-2)
    - [Library Classes](#library-classes-1)
- [2018/07/25 \(1\)](#20180725-1)
    - [Clothing Attributes](#clothing-attributes)
- [2018/07/24 \(5\)](#20180724-5)
    - [Library Attributes](#library-attributes)
    - [Library Classes](#library-classes-2)
    - [Library Instances](#library-instances-1)
- [2018/07/24 \(4\)](#20180724-4)
- [2018/07/24 \(3\)](#20180724-3)
    - [Input Response Messages](#input-response-messages)
- [2018/07/24 \(2\)](#20180724-2)
- [2018/07/24 \(1\)](#20180724-1)
    - [Who/Where Verbs](#whowhere-verbs)
- [2018/07/23 \(5\)](#20180723-5)
- [2018/07/23 \(4\)](#20180723-4)
    - [Verb: `use`](#verb-use)
    - [Verb: `use_with`](#verb-use_with)
- [2018/07/23 \(2\)](#20180723-2)
    - [Verb: `drop`](#verb-drop)
- [2018/07/23 \(1\)](#20180723-1)
- [2018/07/22 \(7\)](#20180722-7)
    - [Tweaked `LISTED_CONTAINER`](#tweaked-listed_container)
    - [Small Fixes](#small-fixes)
- [2018/07/22 \(6\)](#20180722-6)
- [2018/07/22 \(5\)](#20180722-5)
- [2018/07/22 \(4\)](#20180722-4)
    - [Verb: `sell`](#verb-sell)
- [2018/07/22 \(3\)](#20180722-3)
    - [Translate Verb Parameters](#translate-verb-parameters)
- [2018/07/22 \(2\)](#20180722-2)
    - [Changed Behaviour of `examine`](#changed-behaviour-of-examine)
- [2018/07/22 \(1\)](#20180722-1)
    - [Verb: `write`](#verb-write)
- [2018/07/21 \(5\)](#20180721-5)
    - [Verb: `examine`](#verb-examine)
    - [Verb: `read`](#verb-read)
- [2018/07/21 \(4\)](#20180721-4)
- [2018/07/21 \(3\)](#20180721-3)
- [2018/07/21 \(2\)](#20180721-2)
- [2018/07/21 \(1\)](#20180721-1)
- [2018/07/20 \(3\)](#20180720-3)
    - [Library Locations](#library-locations)
        - [Rooms](#rooms)
        - [Sites](#sites)
        - [Other Locations ...](#other-locations-)
- [2018/07/20 \(2\)](#20180720-2)
    - [Null Objects](#null-objects)
- [2018/07/20 \(1\)](#20180720-1)
    - [Make `banner` an Instance of `LOCATION`](#make-banner-an-instance-of-location)
- [2018/07/19 \(5\)](#20180719-5)
- [2018/07/19 \(4\)](#20180719-4)
    - [Banner Attributes](#banner-attributes)
- [2018/07/19 \(3\)](#20180719-3)
    - [Add Remaining Preposizioni Articolate Synonyms](#add-remaining-preposizioni-articolate-synonyms)
- [2018/07/19 \(2\)](#20180719-2)
- [2018/07/19 \(1\)](#20180719-1)
- [2018/07/18 \(4\)](#20180718-4)
- [2018/07/18 \(3\)](#20180718-3)
    - [Verb Responses Attributes](#verb-responses-attributes)
        - [Translated verb responses attributes:](#translated-verb-responses-attributes)
        - [Renamed verb responses attributes:](#renamed-verb-responses-attributes)
- [2018/07/18 \(2\)](#20180718-2)
    - [Verb: `drink`](#verb-drink)
- [2018/07/18 \(1\)](#20180718-1)
- [2018/07/17 \(5\)](#20180717-5)
- [2018/07/17 \(4\)](#20180717-4)
    - [Verb: `eat`](#verb-eat)
- [2018/07/17 \(3\)](#20180717-3)
    - [Meta Verbs](#meta-verbs)
- [2018/07/17 \(2\)](#20180717-2)
- [2018/07/17 \(1\)](#20180717-1)
    - [Verb: `climb_through`](#verb-climb_through)
- [2018/07/03 \(3\)](#20180703-3)
    - [Verb: `go_to`](#verb-go_to)
- [2018/07/03 \(2\)](#20180703-2)
    - [Verb: `buy`](#verb-buy)
- [2018/07/03 \(1\)](#20180703-1)
- [2018/07/02](#20180702)
    - [Verb: `burn`/`burn_with`](#verb-burnburn_with)
    - [`my_game` Verb Messages](#my_game-verb-messages)
        - [Translated Messages](#translated-messages)
        - [New Messages for Missing Parameters](#new-messages-for-missing-parameters)
- [2018/06/29](#20180629)
- [2018/06/24 \(3\)](#20180624-3)
- [2018/06/24 \(2\)](#20180624-2)
- [2018/06/24 \(1\)](#20180624-1)
    - [Translate StdLib's `plural`](#translate-stdlibs-plural)
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
    - [Verb Restriction Attributes](#verb-restriction-attributes-3)
- [2018/05/22 \(2\)](#20180522-2)
    - [Verb Restriction Attributes](#verb-restriction-attributes-4)
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

-------------------------------------------------------------------------------

# 2018/07/27

- [`lib_definizioni.i`][lib_definizioni] (v0.3.14)
- [`lib_verbi.i`][lib_verbi] (v0.3.18)

## Italian Responses For Illegal Obj2 With

Implemented Italian translation of `illegal_parameter2_with_sg`/`pl` to all verbs (even not translated ones).


|         EN Attribute         |      IT Attrobute      |
|------------------------------|------------------------|
| `illegal_parameter2_with_sg` | `ogg2_illegale_CON_sg` |
| `illegal_parameter2_with_pl` | `ogg2_illegale_CON_pl` |

Now the original `illegal_parameter2_with_sg`/`pl` is no longer needed and was commented out!

<!---------------------------------------------------------------------------->


# 2018/07/26 (10)

- [`lib_classi.i`][lib_classi] (v0.3.6)
- [`lib_definizioni.i`][lib_definizioni] (v0.3.13)
- [`lib_verbi.i`][lib_verbi] (v0.3.17)

## Verb Response Attributes Renaming

Some small tweaks in naming convention (reasons why explained in Italian).

## Renamed Verb Responses

Rename ``imp_ogg_chiuso_*` to `imp_ogg1_chiuso_*`:

|        Before        |       Renamed        |
|----------------------|----------------------|
| `imp_ogg_chiuso_sgm` | `imp_ogg1_chiuso_ms` |
| `imp_ogg_chiuso_plm` | `imp_ogg1_chiuso_mp` |
| `imp_ogg_chiuso_sgf` | `imp_ogg1_chiuso_fs` |
| `imp_ogg_chiuso_plf` | `imp_ogg1_chiuso_fp` |

> __MOTIVAZIONE__ — Negli attributi per le risposte dei verbi, `ogg1` e `ogg2` vengono adottati laddove la stringa del messaggio è diversa per il primo ed il secondo parametro (per via dell'uso di `$1` e `$2`, rispettamente).
> 
> In quegli attributi in cui il messaggio è adatto a qualsiasi parametro, si userà semplicemente `ogg`.
> 
> Si noti inoltre come nella rinomina degli attributi qui sopra si siano accorciati i suffissi. D'ora in poi si adotterà la seguente convenzione:
> 
> - `sg`/`pl`: per i messaggi disponibili in un'unica versione singolare e plurale per entrambi i generi,
> - `ms`/`mp`/`fs`/`fp`: per quei messaggi disponibili in versione maschile-singolare, maschile-plurale, femminile-singolare e femminile-plurale, poiché richiedono un preciso accordo di genere e numero.
> 
> La versione precedente (a tre lettere) era poco intuitiva, mentre i suffissi di due lettere sono più immediati — inoltre, il contesto in cui appaiono non lascia dubbio circa il loro significato ed utilizzo.

### Changed Suffixes

Quindi, in base a quanto appena detto, tutti i suffissi degli attributi messaggi tradotti vengono rinominati secondo tale schema:

|           | neutro | maschile | femminile |
|-----------|--------|----------|-----------|
| singolare | `_sg`  | `_ms`    | `_fs`     |
| plurale   | `_pl`  | `_mp`    | `_fp`     |

### Other Responses Renames

Some other translated response-attributes:

|            Before            |        Renamed         |
|------------------------------|------------------------|
| `parametro2_illegale_CON_sg` | `ogg2_illegale_CON_sg` |
| `parametro2_illegale_CON_pl` | `ogg2_illegale_CON_pl` |

> Come già detto, ci limiteremo a usare `ogg` o `ogg1`/`ogg2`, perché sono più brevi e rendono l'idea.

|            Before            |     Renamed      |
|------------------------------|------------------|
| `check_locazione_illuminata` | `imp_luogo_buio` |

> __MOTIVAZIONE__ — Il sistema adottato dalla libreria originale, che usa `check_` per distinguere tra i messaggi invocati duranti un verb check da quelli del corpo del verbo, poco si addice al sistema adottato dalla libreria italiana (poiché la limitazione linguistica a poter usare `$v`, come si fa con l'inglese, ne vanifica lo scopo). Cercheremo quindi di adottare un sistema di nomi degli attributi che sia indicativo della natura del messagio, anziché del controllo effettuato.
> 
> Ho usato qui (come anche in altri attributi) un prefisso `imp_` per indicare un problema che impedisce il compimento dell'azione. Probabilmente verrà successivamente cambiato poiché non mi soddisfa del tutto, ma per ora lo utilizzerò per accomunare certi tipi di messaggi.

<!-- 
| `xxx`                        | `xxx`   |
 -->

<!---------------------------------------------------------------------------->


# 2018/07/26 (9)

- [`lib_definizioni.i`][lib_definizioni] (v0.3.12)
- [`lib_verbi.i`][lib_verbi] (v0.3.16)

## Translate Verb Responses for Closed Obj2 Blocking the Action

Translated and substituted the following verb responses attributes:

|     Attribute EN     |         Attribute IT         |                      Text                     |
|----------------------|------------------------------|-----------------------------------------------|
| `check_obj2_open_sg` | `imp_ogg2_chiuso_sgm`/`_sgf` | `Non puoi farlo perché $+2 è chiuso"`/`a.`    |
| `check_obj2_open_pl` | `imp_ogg2_chiuso_plm`/`_plf` | `Non puoi farlo perché $+2 sono chiusi.`/`e.` |

Similar to changes in previous commit. Code changed:

```alan
      AND cont IS aperto
        ELSE
          IF cont IS NOT plurale --> "You can't, since $+1 [is/are] closed."
            THEN SAY check_obj2_open_sg OF mia_AT.
            ELSE SAY check_obj2_open_pl OF mia_AT.
          END IF.

```

... to:

```alan
AND cont IS aperto
  ELSE
    IF cont IS NOT femminile
      THEN
        IF cont IS NOT plurale
          THEN SAY imp_ogg2_chiuso_sgm OF mia_AT.
          ELSE SAY imp_ogg2_chiuso_plm OF mia_AT.
        END IF.
      ELSE
        IF cont IS NOT plurale
          THEN SAY imp_ogg2_chiuso_sgf OF mia_AT.
          ELSE SAY imp_ogg2_chiuso_plf OF mia_AT.
        END IF.
    END IF.
```



<!---------------------------------------------------------------------------->


# 2018/07/26 (8)

- [`lib_definizioni.i`][lib_definizioni] (v0.3.11)
- [`lib_verbi.i`][lib_verbi] (v0.3.15)

## Translate Verb Responses for Closed Obj1 Blocking the Action

Translated and substituted the following verb responses attributes:

|     Attribute EN     |         Attribute IT        |                      Text                     |
|----------------------|-----------------------------|-----------------------------------------------|
| `check_obj_open2_sg` | `imp_ogg_chiuso_sgm`/`_sgf` | `Non puoi farlo perché $+1 è chiuso"`/`a.`    |
| `check_obj_open2_pl` | `imp_ogg_chiuso_plm`/`_plf` | `Non puoi farlo perché $+1 sono chiusi.`/`e.` |

Similar to changes in previous commit. Code changed:

```alan
    AND ogg IS aperto
      ELSE
        IF ogg IS NOT plurale
          THEN SAY check_obj_open2_sg OF mia_AT.
          ELSE SAY check_obj_open2_pl OF mia_AT.
        END IF.

```

... to:

```alan
AND ogg IS aperto
  ELSE
    IF ogg IS NOT femminile
      THEN
        IF ogg IS NOT plurale
          THEN SAY imp_ogg_chiuso_sgm OF mia_AT.
          ELSE SAY imp_ogg_chiuso_plm OF mia_AT.
        END IF.
      ELSE
        IF ogg IS NOT plurale
          THEN SAY imp_ogg_chiuso_sgf OF mia_AT.
          ELSE SAY imp_ogg_chiuso_plf OF mia_AT.
        END IF.
    END IF.
```


<!---------------------------------------------------------------------------->


# 2018/07/26 (7)

- [`lib_definizioni.i`][lib_definizioni] (v0.3.10)
- [`lib_verbi.i`][lib_verbi] (v0.3.14)

## Translate Verb Responses for Already Unlocked Objects

Translated and substituted the following verb responses attributes:

|      Attribute EN     |          Attribute IT          |              Text              |
|-----------------------|--------------------------------|--------------------------------|
| `check_obj_locked_sg` | `ogg_già_sbloccato_sgm`/`_sgf` | `$+1 è già sbloccato.`/`a.`    |
| `check_obj_locked_pl` | `ogg_già_sbloccato_plm`/`_plf` | `$+1 sono già sbloccati.`/`e.` |

Similar to changes in previous commit. Code changed:

```alan
    AND ogg IS bloccato
          ELSE
        IF ogg IS NOT plurale
          THEN SAY check_obj_locked_sg OF mia_AT.
          ELSE SAY check_obj_locked_pl OF mia_AT.
        END IF.
```

... to:

```alan
AND ogg IS bloccato
  ELSE
    IF ogg IS NOT femminile
      THEN
        IF ogg IS NOT plurale
          THEN SAY ogg_già_sbloccato_sgm OF mia_AT.
          ELSE SAY ogg_già_sbloccato_plm OF mia_AT.
        END IF.
      ELSE
        IF ogg IS NOT plurale
          THEN SAY ogg_già_sbloccato_sgf OF mia_AT.
          ELSE SAY ogg_già_sbloccato_plf OF mia_AT.
        END IF.
    END IF.
```


<!---------------------------------------------------------------------------->


# 2018/07/26 (6)

- [`lib_definizioni.i`][lib_definizioni] (v0.3.9)
- [`lib_verbi.i`][lib_verbi] (v0.3.13)

## Translate Verb Responses for Already Locked Objects

Translated and substituted the following verb responses attributes:

|        Attribute EN       |          Attribute IT         |              Text             |
|---------------------------|-------------------------------|-------------------------------|
| `check_obj_not_locked_sg` | `ogg_già_bloccato_sgm`/`_sgf` | `$+1 è già bloccato.`/`a.`    |
| `check_obj_not_locked_pl` | `ogg_già_bloccato_plm`/`_plf` | `$+1 sono già bloccati.`/`e.` |

Similar to changes in previous commit. Code changed:

```alan
    AND ogg IS NOT bloccato
          ELSE
        IF ogg IS NOT plurale -- @TODO:                                         TRANSLATE!
          THEN SAY check_obj_not_locked_sg OF mia_AT.
          ELSE SAY check_obj_not_locked_pl OF mia_AT.
      END IF.

```

... to:

```alan
AND ogg IS NOT bloccato
  ELSE
    IF ogg IS NOT femminile
      THEN
        IF ogg IS NOT plurale
          THEN SAY ogg_già_bloccato_sgm OF mia_AT.
          ELSE SAY ogg_già_bloccato_plm OF mia_AT.
        END IF.
      ELSE
        IF ogg IS NOT plurale
          THEN SAY ogg_già_bloccato_sgf OF mia_AT.
          ELSE SAY ogg_già_bloccato_plf OF mia_AT.
        END IF.
    END IF.
```


<!---------------------------------------------------------------------------->


# 2018/07/26 (5)

- [`lib_definizioni.i`][lib_definizioni] (v0.3.8)
- [`lib_verbi.i`][lib_verbi] (v0.3.12)

## Translate Verb Responses for Already Close Objects

Translated and substituted the following verb responses attributes:

|     Attribute EN     |         Attribute IT        |             Text            |
|----------------------|-----------------------------|-----------------------------|
| `check_obj_open1_sg` | `ogg_già_chiuso_sgm`/`_sgf` | `$+1 è già chiuso.`/`a.`    |
| `check_obj_open1_pl` | `ogg_già_chiuso_plm`/`_plf` | `$+1 sono già chiusi.`/`e.` |

Similar to changes in previous commit. Code changed:

```alan
    AND ogg IS aperto
      ELSE
        IF ogg IS NOT plurale
          THEN SAY check_obj_open1_sg OF mia_AT.
          ELSE SAY check_obj_open1_pl OF mia_AT.
        END IF.
```

... to:

```alan
AND ogg IS aperto
  ELSE
    IF ogg IS NOT femminile
      THEN
        IF ogg IS NOT plurale
          THEN SAY ogg_già_chiuso_sgm OF mia_AT.
          ELSE SAY ogg_già_chiuso_plm OF mia_AT.
        END IF.
      ELSE
        IF ogg IS NOT plurale
          THEN SAY ogg_già_chiuso_sgf OF mia_AT.
          ELSE SAY ogg_già_chiuso_plf OF mia_AT.
        END IF.
    END IF.
```



<!---------------------------------------------------------------------------->


# 2018/07/26 (4)

- [`lib_definizioni.i`][lib_definizioni] (v0.3.7)
- [`lib_verbi.i`][lib_verbi] (v0.3.11)

## Translate Verb Responses for Already Open Objects

Translated and substituted the following verb responses attributes:

|       Attribute EN      |         Attribute IT        |             Text            |
|-------------------------|-----------------------------|-----------------------------|
| `check_obj_not_open_sg` | `ogg_già_aperto_sgm`/`_sgf` | `$+1 è già aperto.`/`a.`    |
| `check_obj_not_open_pl` | `ogg_già_aperto_plm`/`_plf` | `$+1 sono già aperti.`/`e.` |

Italian requires distinguishing also between feminine and mascunline here, so there are actually four variants of the message insted of just two (sing. and plur.). This also means that the code was changed from:

```alan
AND ogg IS NOT aperto
  ELSE
    IF ogg IS NOT plurale
      THEN SAY check_obj_not_open_sg OF mia_AT.
      ELSE SAY check_obj_not_open_pl OF mia_AT.
    END IF.
```

... to:

```alan
AND ogg IS NOT aperto
  ELSE
    IF ogg IS NOT femminile
      THEN
        IF ogg IS NOT plurale
          THEN SAY ogg_già_aperto_sgm OF mia_AT.
          ELSE SAY ogg_già_aperto_plm OF mia_AT.
        END IF.
      ELSE
        IF ogg IS NOT plurale
          THEN SAY ogg_già_aperto_sgf OF mia_AT.
          ELSE SAY ogg_già_aperto_plf OF mia_AT.
        END IF.
    END IF.
```


<!---------------------------------------------------------------------------->


# 2018/07/26 (3)

- [`lib_classi.i`][lib_classi] (v0.3.5)
- [`lib_definizioni.i`][lib_definizioni] (v0.3.6)
- [`lib_verbi.i`][lib_verbi] (v0.3.10)

## Translate Verb Responses for Distant Params

Translated and substituted the following verb responses attributes:

|         Attribute EN        |    Attribute IT    |             Text            |
|-----------------------------|--------------------|-----------------------------|
| `check_obj_not_distant_sg`  | `ogg1_distante_sg` | `$+1 è troppo distante.`    |
| `check_obj_not_distant_pl`  | `ogg1_distante_pl` | `$+1 sono troppo distanti.` |
| `check_obj2_not_distant_sg` | `ogg2_distante_sg` | `$+2 è troppo distante.`    |
| `check_obj2_not_distant_pl` | `ogg2_distante_pl` | `$+2 sono troppo distanti.` |



<!---------------------------------------------------------------------------->


# 2018/07/26 (2)

- [`lib_verbi.i`][lib_verbi] (v0.3.9)

## Implement Italian Verb Responses

### Param 1 Illegal or Unsuitable

Change almost all occurences of `illegal_parameter_sg`/`pl` and `check_obj_suitable_sg`/`pl` with `ogg1_inadatto_sg`/`pl` (the two English responses map to a single Italian response).

These changes affect also verbs which haven't been translated yet, as long as the Italian response will apply to it once translated (which is usually the case).

Now there are only very few verbs left which still use the English responses: these are verbs for which the `ogg1_inadatto_sg`/`pl` response doesn't quite fit in Italian due to semantic differences, or verbs for which I still haven't worked out the Italian equivalent verb.

Therefore, I can't yet delete the `illegal_parameter_sg`/`pl` and `check_obj_suitable_sg`/`pl` English attributes from the "`lib_definizioni.i`" module because a small number of verbs still rely on them.



<!---------------------------------------------------------------------------->



# 2018/07/26 (1)

- [`lib_verbi.i`][lib_verbi] (v0.3.8)

## Polish and Fix Translated Verbs 

This commit cleans up the verbs so far translated:

- Annotate untranslated responses
- Fix some incorrect parameters references (error in original Lib code)
- Apply available Italian responses (attributes) to some translated verbs whose code still references the English response.

## Verb Parameters Fixes

This commit also fixes some erroneus parameters references in the original library code (See my [PR #12 on StdLib])

This is the lis of verbs that had wrong parameters referencing in their checks, and which are now fixed:

|      verb     | wrong param | fixed param |
|---------------|-------------|-------------|
| `apri_con`    | `ogg`       | `strum`     |
| `blocca_con`  | `ogg`       | `chiave`    |
| `brucia_con`  | `ogg`       | `strum`     |
| `chiudi_con`  | `ogg`       | `strum`     |
| `cut_with`    | `ogg`       | `strum`     |
| `dai_a`       | `ogg`       | `ricevente` |
| `empty_in`    | `ogg`       | `cont`      |
| `prendi_da`   | `ogg`       | `detentore` |
| `pry_with`    | `ogg`       | `strum`     |
| `push_with`   | `ogg`       | `strum`     |
| `rompi_con`   | `ogg`       | `strum`     |
| `sblocca_con` | `ogg`       | `chiave`    |
| `touch_with`  | `ogg`       | `strum`     |




<!---------------------------------------------------------------------------->


# 2018/07/25 (8)

- [`lib_definizioni.i`][lib_definizioni] (v0.3.6)
- [`lib_verbi.i`][lib_verbi] (v0.3.7)


## Verb Restriction Attributes

Translated `my_game` attributes for verb restrictions:

| English |  Italian  |
|---------|-----------|
| `yes`   | `dire_sì` |
| `'no'`  | `dire_no` |


## Verbs: `yes` and `no`

Translated verbs `dici_Sì` and `dici_No`, "__sì__" and "__no__":

    sì
    no

with no synonyms.

> __NOTA__ — Ho scelto di dare il suffisso `dire_*` all'attributo `mia_AT` (ex `my_game`) e `dici_*` all'ID del verbo (seguito da lettera maiuscola) per consentire di tenere vicini (in orderine Alfa/Asciibetico) questi due attributi/verbi correlati.
> 
> Inoltre, ritengo siano forme più chiare rispetto agli originali `yes` e `no`, poiché i suffissi forniscono un contesto più chiaro a questi due "verbi" anomali (che verbi proprio non sono).
> 
> L'utilità di questi due "verbi" è per poter implementare alla bisogna l'intercettazione di risposte "Sì/No" dal giocatore a domande postegli dal gioco (es. "_Vuoi ...?_").

<!---------------------------------------------------------------------------->


# 2018/07/25 (7)

- [`lib_verbi.i`][lib_verbi] (v0.3.6)

Reorder translated verbs alphabetically.

<!---------------------------------------------------------------------------->



# 2018/07/25 (6)

- [`lib_definizioni.i`][lib_definizioni] (v0.3.4)
- [`lib_verbi.i`][lib_verbi] (v0.3.5)


## Verb Restriction Attributes

Translated `my_game` attributes for verb restrictions:

|   English   |    Italian    |
|-------------|---------------|
| `'play'`    | `suonare`     |
| `play_with` | `giocare_con` |

## Verb: `play`

Translated verb `suona`, (_play_):

    suona (ogg)

with no synonyms.

## Verb: `play_with`

Translated verb `gioca_con`, (_play with_):

    gioca con (ogg)

with no synonyms.



<!---------------------------------------------------------------------------->



# 2018/07/25 (5)

- [`lib_definizioni.i`][lib_definizioni] (v0.3.3)
- [`lib_verbi.i`][lib_verbi] (v0.3.4)


## Verb Restriction Attributes

Translated `my_game` attributes for verb restrictions:

|    English    |    Italian    |
|---------------|---------------|
| `'empty'`     | `svuotare`    |
| `dive_in`     | `tuffarsi_in` |
| `dive`        | `tuffarsi`    |
| `drive`       | `guidare`     |
| `empty_in`    | `svuotare_in` |
| `empty_on`    | `svuotare_su` |
| `knock`       | `bussare`     |
| `sing`        | `cantare`     |
| `think_about` | `pensare_a`   |
| `think`       | `pensare`     |


<!---------------------------------------------------------------------------->



# 2018/07/25 (4)

- [`lib_luoghi.i`][lib_luoghi] (v0.3.3)

Translate commented documentation in the library sources.

<!---------------------------------------------------------------------------->



# 2018/07/25 (3)

- [`lib_classi.i`][lib_classi] (v0.3.4)
- [`lib_definizioni.i`][lib_definizioni] (v0.3.2)
- [`lib_luoghi.i`][lib_luoghi] (v0.3.2)
- [`lib_verbi.i`][lib_verbi] (v0.3.3)


## Library Instances

Translated library instances:

|  English  |    Italian     |       Class        |
|-----------|----------------|--------------------|
| `my_game` | `mia_AT`       | `DEFINITION_BLOCK` |
| `banner`  | `intestazione` | `LOCATION`         |


## Library Classes

Translated CLASSes:

|      Class EN      |       Class IT       |    Type    |
|--------------------|----------------------|------------|
| `DEFINITION_BLOCK` | `blocco_definizioni` | `LOCATION` |



<!---------------------------------------------------------------------------->


# 2018/07/25 (2)

- [`lib_classi.i`][lib_classi] (v0.3.3)
- [`lib_verbi.i`][lib_verbi] (v0.3.2)

## Library Classes

Translated CLASSes:

|      Class EN      |        Class IT        |    Type   |
|--------------------|------------------------|-----------|
| `LISTED_CONTAINER` | `contenitore_elencato` | `OBJECT`  |
| `SUPPORTER`        | `supporto`             | `OBJECT`  |
| `female`           | `femmina`              | `persona` |
| `male`             | `maschio`              | `persona` |


<!---------------------------------------------------------------------------->


# 2018/07/25 (1)

- [`lib_classi.i`][lib_classi] (v0.3.2)


## Clothing Attributes

Translated library attributes:

|   English    |   Italian    |   Type  |
|--------------|--------------|---------|
| `sex`        | `genere`     | numeric |
| `botcover`   | `val_gambe`  | numeric |
| `feetcover`  | `val_piedi`  | numeric |
| `handscover` | `val_mani`   | numeric |
| `headcover`  | `val_testa`  | numeric |
| `topcover`   | `val_tronco` | numeric |



<!---------------------------------------------------------------------------->


# 2018/07/24 (5)

- [`lib_classi.i`][lib_classi] (v0.3.1)
- [`lib_definizioni.i`][lib_definizioni] (v0.3.1)
- [`lib_luoghi.i`][lib_luoghi] (v0.3.1)
- [`lib_messaggi.i`][lib_messaggi] (v0.3.1)
- [`lib_verbi.i`][lib_verbi] (v0.3.1)

This commit covers the translation of many library identifiers.

## Library Attributes

Translated library attributes:

|    English    |   Italian    |           Class            |
|---------------|--------------|----------------------------|
| `described`   | `descritto`  | `LOCATION`                 |
| `visited`     | `visitato`   | `LOCATION`                 |
| `lit`         | `illuminato` | `LOCATION` + `lightsource` |
| `ground_desc` | `desc_suolo` | `site` » `luogo_esterno`   |


## Library Classes

Translated CLASSes:

|    Class EN   |         Class IT        |                   Type                  |
|---------------|-------------------------|-----------------------------------------|
| `site`        | `luogo_esterno`         | `LOCATION`                              |
| `site_object` | `oggetto_luogo_esterno` | `OBJECT`                                |
| `ground`      | `suolo`                 | `site_object` » `oggetto_luogo_esterno` |
| `nowhere`     | `limbo`                 | `LOCATION`                              |
| `lightsource` | `fonte_di_luce`         | `OBJECT`                                |
| `clothing`    | `indumento`             | `OBJECT`                                |

## Library Instances

| Instance EN |   Instance IT   |  Class   |
|-------------|-----------------|----------|
| `worn`      | `abbigliamento` | `ENTITY` |


<!---------------------------------------------------------------------------->



# 2018/07/24 (4)

- [`libreria.i`][libreria] (v0.3.0)
- [`lib_classi.i`][lib_classi] (v0.3.0)
- [`lib_definizioni.i`][lib_definizioni] (v0.3.0)
- [`lib_luoghi.i`][lib_luoghi] (v0.3.0)
- [`lib_messaggi.i`][lib_messaggi] (v0.3.0)
- [`lib_verbi.i`][lib_verbi] (v0.3.0)
- [`lib_supplemento.i`][lib_supplemento] (v0.3.0)


All run-time built-in messages are now translated.

Housekeeping:

- General code clean-up.
- Add commented section headings.
- Change all occurences of `ISA` to `IsA`.
- Bump up all library files version to `v0.3.0`.

<!---------------------------------------------------------------------------->



# 2018/07/24 (3)

- [`lib_messaggi.i`][lib_messaggi] (v0.2.4)

## Input Response Messages

Translate more Input Response Messages (still a few left).

<!---------------------------------------------------------------------------->



# 2018/07/24 (2)

- [`lib_verbi.i`][lib_verbi] (v0.2.41)

Just some code cleanup.

<!---------------------------------------------------------------------------->


# 2018/07/24 (1)

- [`lib_definizioni.i`][lib_definizioni] (v0.2.37)
- [`lib_verbi.i`][lib_verbi] (v0.2.40)

Translated `my_game` attributes for verb restrictions:

|    English     |          Italian          |
|----------------|---------------------------|
| `'what_am_i'`  | `domandare_cosa_sono_io`  |
| `'what_is'`    | `domandare_cosa_è`        |
| `'where_am_i'` | `domandare_dove_mi_trovo` |
| `'where_is'`   | `domandare_dove_è`        |
| `'who_am_i'`   | `domandare_chi_sono_io`   |
| `'who_is'`     | `domandare_chi_è`         |

## Who/Where Verbs

This commit translates the group of `who/where_*` verbs:

|   EN Verb    |     IT Verb     | Affected by `è` Bug? |
|--------------|-----------------|----------------------|
| `who_is`     | `chi_è`         | YES                  |
| `who_am_i`   | `chi_sono_io`   |                      |
| `what_is`    | `cosa_è`        | YES                  |
| `what_am_i`  | `cosa_sono_io`  |                      |
| `where_is`   | `dove_è`        | YES                  |
| `where_am_i` | `dove_mi_trovo` |                      |


> __THE `è` ALAN BUG__ — Translation of these verbs unveiled a subtle bug in Alan: The `è` character doesn't work in `SYNTAX` and `SYNONYM` statements! All other Italian accented letters work fine (`é`, `à`, `ì`, `ò`, `ù`); also, the `è` works fine in instances names and is parsed correctly.
> 
> Therefore, as a workaround in three of these verbs I had to use `é` instead of `è`, which is grammatically incorrect but will have to do until the bug is fixed in Alan!
> 
> For more info, see my bug report:
> 
> - https://groups.yahoo.com/neo/groups/alan-if/conversations/messages/3472

<!---------------------------------------------------------------------------->



# 2018/07/23 (5)


- [`lib_classi.i`][lib_classi] (v0.2.17)
- [`lib_verbi.i`][lib_verbi] (v0.2.39)

A few code optimizations:

- remove unneeded `SAY` statements when just a string was sufficient.

# 2018/07/23 (4)


- [`lib_definizioni.i`][lib_definizioni] (v0.2.36)
- [`lib_verbi.i`][lib_verbi] (v0.2.38)


Translated `my_game` attributes for verb restrictions:

|  English   |   Italian   |
|------------|-------------|
| `'use'`    | `usare`     |
| `use_with` | `usare_con` |


## Verb: `use`

Translated verb `usa`, (_use_):

    usa (ogg)

with no synonyms.



## Verb: `use_with`

Translated verb `usa_con`, "__usa con__" (_use_with_):

    usa (ogg) con (strum)

with no synonyms.



<!---------------------------------------------------------------------------->



# 2018/07/23 (2)

- [`lib_classi.i`][lib_classi] (v0.2.16)
- [`lib_verbi.i`][lib_verbi] (v0.2.37)

## Verb: `drop`

Translated verb `lascia`, (_drop_):

    lascia (ogg)*
    abbandona (ogg)*
    metti giù (ogg)*
    posa (ogg)*

with no synonyms.



<!---------------------------------------------------------------------------->


# 2018/07/23 (1)

- [`lib_classi.i`][lib_classi] (v0.2.15)
- [`lib_definizioni.i`][lib_definizioni] (v0.2.35)
- [`lib_verbi.i`][lib_verbi] (v0.2.36)

Translated `my_game` attributes for verb restrictions:

|    English    |     Italian     |
|---------------|-----------------|
| `lock`        | `bloccare`      |
| `lock_with`   | `bloccare_con`  |
| `unlock`      | `sbloccare`     |
| `unlock_with` | `sbloccare_con` |


Translate verbs:

|    Verb EN    |    Verb IT    | Synonyms |
|---------------|---------------|----------|
| `open`        | `apri`        |          |
| `open_with`   | `apri_con`    |          |
| `close`       | `chiudi`      |          |
| `close_with`  | `chiudi_con`  |          |
| `lock`        | `blocca`      | serra    |
| `lock_with`   | `blocca_con`  | serra    |
| `unlock`      | `sblocca`     |          |
| `unlock_with` | `sblocca_con` |          |



<!---------------------------------------------------------------------------->


# 2018/07/22 (7)

- [`lib_classi.i`][lib_classi] (v0.2.14)
- [`lib_verbi.i`][lib_verbi] (v0.2.35)

## Tweaked `LISTED_CONTAINER`

In the original library code, the `LISTED_CONTAINER` class defined verb bodies for `open` and `close` in order to ensure that when a `LISTED_CONTAINER` was opened it would become `NOT OPAQUE`, and when closed `OPAQUE`.

The problem with the default behavior was that it didn't check if the `open` verb body on the instance actualy succeeded — for example, if the `LISTED_CONTAINER` was implemented as being `locked` and `lockable`, attempts to open it without being in possesion of its `matching_key` would fail on the instance VERB, yet the library would always make it `NOT OPAQUE` and `LIST` it's contents.

Also, the library didn't define some other verbs which might open or close a container: `open_with`, `lock`, `close_with` and `lock_with`.

Therefore, this commit tweaks the code and implements also the other open/close/lock verbs, and before changing its opaqueness all verbs now always test the `open` attribute to check if the opening/closing action actually succeeded.

## Small Fixes

In `lib_classi.i` some `examine` verb definitions hadn't been translated to `esamina`, and they weren't acting as expected (with `LISTED_CONTAINER`s). Now fixed.

<!---------------------------------------------------------------------------->


# 2018/07/22 (6)

- [`lib_definizioni.i`][lib_definizioni] (v0.2.34)

Translate documentation comments in library sources.


<!---------------------------------------------------------------------------->


# 2018/07/22 (5)

- [`lib_definizioni.i`][lib_definizioni] (v0.2.33)
- [`lib_verbi.i`][lib_verbi] (v0.2.34)

Translated library attributes:

| English | Italian |  Class  |
|---------|---------|---------|
| `ex`    | `xDesc` | `THING` |



<!---------------------------------------------------------------------------->


# 2018/07/22 (4)

- [`lib_verbi.i`][lib_verbi] (v0.2.33)


## Verb: `sell`

Translated verb `vendi`, (_sell_):

    vendi (merce)

with no synonyms.



<!---------------------------------------------------------------------------->


# 2018/07/22 (3)


- [`lib_classi.i`][lib_classi] (v0.2.13)
- [`lib_luoghi.i`][lib_luoghi] (v0.2.5)
- [`lib_verbi.i`][lib_verbi] (v0.2.32)


## Translate Verb Parameters

This commit italianizes verbs parameters:


|   English    |   Italian    |       Annotazioni        |
|--------------|--------------|--------------------------|
| `obj`        | `ogg`        | oggetto                  |
| `act`        | `png`        | personaggio non giocante |
| `food`       | `cibo`       |                          |
| `instr`      | `strum`      | strumento                |
| `recipient`  | `ricevente`  |                          |
| `key`        | `chiave`     |                          |
| `app`        | `disp`       | dispositivo              |
| `odour`      | `odore`      |                          |
| `vehicle`    | `veicolo`    |                          |
| `holder`     | `detentore`  |                          |
| `topic`      | `argomento`  |                          |
| `target`     | `bersaglio`  |                          |
| `surface`    | `superficie` |                          |
| `item`       | `merce`      | (compravendita)          |
| `source`     | `fonte`      | (consultazione)          |
| `substance`  | `sostanza`   | (riempi con)             |
| `weapon`     | `arma`       |                          |
| `projectile` | `proiettile` | (lancia)                 |
| `victim`     | `vittima`    |                          |


> __NOTA__ — l'unico parametro non ancora tradotto è `bulk` (nei verbi come: guarda/metti dietro/sopra/sotto (bulk)). Non riesco a tradurlo. Il termine qui indica una "massa", un corpo che occupa uno spazio significativo e che (implicitamente) è un ostacolo per operazioni come vedere sopra, sotto, dietro di esso.
> 
> La soluzione più ovvia sarebbere usare "oggetto", ma non va bene perché la convenzione nella libreria è che `ogg` sia riservato a certi parametri con un contesto specifico (e `bulk` non rientra tra loro).
> 
> Tra i termini presi in considerazione: _massa_, _mole_, _ostacolo_, _corpo_ — ma seppure rendevano l'idea, nessuno di questi è adatto.


<!---------------------------------------------------------------------------->


# 2018/07/22 (2)

- [`lib_verbi.i`][lib_verbi] (v0.2.31)

## Changed Behaviour of `examine`

In the original library, when the verb `examine` was used with readable objects it behaved just like `read`.

I wanted to change this because in some circumstances you'd like an object to both examinable and readable. For example, an ancient book: you'd like provide to the player a detailed description of the book when he examines it ("_It's an old leather bound book covered in esoteric symbols and secured by a golden seal._"), which increases the curiosity towards its contents, which can then be accessed by reading it.

At other times, you might just want both `examine` and `read` to act the same. For example, a small note, a sticky-post, for which the description is not relevant to the game atmosphere.

So, I've opted for a solution that allows to preserve the old behavior and also introduce the possibility of examining a readable object.

Now the `examine` verb was changed so that when obj is a readable object:

- If the object's `ex` string is not empty, _examine it_ and print the contents `ex`
- If its `ex` is empty, and it's a readable object with a non empty `text`, then _read it_ instead.
- If both `ex` and `text` of a readable obj are null strings, just print the usual "_You notice nothing unusual about (the obj)._"

With the new system, to old library behavior is preserved for readable objects which have text only in their `text` attribute. If the author also adds text to `ex`, then it means that he wants the object to be separately examined and read, and the new behavior prevails.

<!---------------------------------------------------------------------------->


# 2018/07/22 (1)

- [`lib_definizioni.i`][lib_definizioni] (v0.2.32)
- [`lib_verbi.i`][lib_verbi] (v0.2.30)


Translated `my_game` attributes for verb restrictions:

| English |  Italian   |
|---------|------------|
| `write` | `scrivere` |


## Verb: `write`

Translated verb `scrivi`, (_write_):

    scrivi "testo" (su|in) (obj)

with no synonyms.




<!---------------------------------------------------------------------------->


# 2018/07/21 (5)

- [`lib_verbi.i`][lib_verbi] (v0.2.29)


## Verb: `examine`

Translated verb `esamina` (_examine_):

    esamina (obj)
    guarda (obj)

with synonyms:

    esamina = descrivi, osserva, X


## Verb: `read`

Translated verb `leggi` (_read_):

    leggi (obj)

with no synonyms.



<!---------------------------------------------------------------------------->


# 2018/07/21 (4)

- [`lib_classi.i`][lib_classi] (v0.2.12)

Added Italian translation of classes descriptions at beginning of file. I'm now working toward a full Italian documentation of the library modules via comments, by translating the original English comments as well as adding my own.

<!---------------------------------------------------------------------------->



# 2018/07/21 (3)

- [`lib_classi.i`][lib_classi] (v0.2.11)
- [`lib_definizioni.i`][lib_definizioni] (v0.2.31)
- [`lib_verbi.i`][lib_verbi] (v0.2.28)


Translated library attributes:

|    English     |      Italian      |      Class       |
|----------------|-------------------|------------------|
| `otherside`    | `altro_lato`      | `DOOR` » `PORTA` |
| `matching_key` | `chiave_abbinata` | `THING`          |



<!---------------------------------------------------------------------------->


# 2018/07/21 (2)

- [`lib_classi.i`][lib_classi] (v0.2.10)
- [`lib_definizioni.i`][lib_definizioni] (v0.2.30)
- [`lib_verbi.i`][lib_verbi] (v0.2.27)


Translated library attributes:

|     English     |     Italian     |     Class     |
|-----------------|-----------------|---------------|
| `fireable` (IS) | `sparare` (CAN) | `THING`       |
| `lockable`      | `bloccabile`    | `THING`       |
| `locked`        | `bloccato`      | `THING`       |
| `natural`       | `naturale`      | `lightsource` |
| `open`          | `aperto`        | `THING`       |



Translated CLASSes:

| Class EN | Class IT | Child OF |
|----------|----------|----------|
| `weapon` | `arma`   | `OBJECT` |




<!---------------------------------------------------------------------------->


# 2018/07/21 (1)

- [`lib_classi.i`][lib_classi] (v0.2.9)
- [`lib_definizioni.i`][lib_definizioni] (v0.2.29)
- [`lib_luoghi.i`][lib_luoghi] (v0.2.4)
- [`lib_verbi.i`][lib_verbi] (v0.2.26)


Translated library attributes:

|   English   |   Italian    |   Class    |
|-------------|--------------|------------|
| `allowed`   | `consentiti` | `THING`    |
| `movable`   | `spostabile` | `THING`    |
| `nested`    | `annidati`   | `LOCATION` |
| `scenery`   | `scenario`   | `THING`    |
| `takeable`  | `prendibile` | `THING`    |
| `talk`      | `parlare`    | `THING`    |
| `text`      | `testo`      | `THING`    |
| `writeable` | `scrivibile` | `THING`    |

Translated CLASSes:

| Class EN |  Class IT | Child OF |
|----------|-----------|----------|
| `liquid` | `liquido` | `OBJECT` |




<!---------------------------------------------------------------------------->



# 2018/07/20 (3)

- [`lib_classi.i`][lib_classi] (v0.2.8)
- [`lib_definizioni.i`][lib_definizioni] (v0.2.28)
- [`lib_luoghi.i`][lib_luoghi] (v0.2.3)
- [`lib_verbi.i`][lib_verbi] (v0.2.25)


## Library Locations

This commit deals with the translation of some classes, instances and attributes of Library LOCATIONS.


### Rooms

|       EN       |        IT        |   Synonyms   |             Type            |
|----------------|------------------|--------------|-----------------------------|
| `ceiling`      | `soffitto`       |              | `room_object`               |
| `ceiling_desc` | `desc_soffitto`  |              | `ROOM` attribute (_string_) |
| `floor`        | `pavimento`      |              | `room_object`               |
| `floor_desc`   | `desc_pavimento` |              | `ROOM` attribute (_string_) |
| `room`         | `stanza`         |              | `LOCATION`                  |
| `room_object`  | `oggetto_stanza` |              | `OBJECT`                    |
| `wall`         | `pareti`         | parete, muro | `room_object`               |
| `walls_desc`   | `desc_pareti`    |              | `ROOM` attribute (_string_) |


### Sites

|     EN     |      IT      | Synonyms |             Type            |
|------------|--------------|----------|-----------------------------|
| `sky`      | `cielo`      |          | `site_object`               |
| `sky_desc` | `desc_cielo` |          | `SITE` attribute (_string_) |


> __NOTE 1__ — I haven't yet decided how to translate `site`, therefore quite a few site-related identifiers are still left untranslated.


### Other Locations ...

|        EN       |      IT      |    Type    |
|-----------------|--------------|------------|
| `dark_location` | `luogo_buio` | `LOCATION` |
| `indoor`        | `interno`    | `LOCATION` |
| `outdoor`       | `esterno`    | `LOCATION` |

> __NOTE 2__ — I haven't yet decided how to translate the `nowhere` location.

<!-- TODO:
| `nowhere`       | `xxx`     | `LOCATION`    |
-->



<!---------------------------------------------------------------------------->



# 2018/07/20 (2)

- [`lib_classi.i`][lib_classi] (v0.2.7)
- [`lib_definizioni.i`][lib_definizioni] (v0.2.27)
- [`lib_verbi.i`][lib_verbi] (v0.2.24)

## Null Objects

Translate all `null_*` objects:

|      Obj EN     |         Obj IT        |
|-----------------|-----------------------|
| `null_clothing` | `indumento_fittizio`  |
| `null_door`     | `porta_fittizia`      |
| `null_key`      | `chiave_fittizia`     |
| `null_object`   | `oggetto_fittizio`    |
| `null_vessel`   | `recipiente_fittizio` |



<!---------------------------------------------------------------------------->


# 2018/07/20 (1)

- [`lib_definizioni.i`][lib_definizioni] (v0.2.26)

## Make `banner` an Instance of `LOCATION`

I've changed the library to make `banner` an instance of `LOCATION` instead of `DEFINITION_BLOCK` — since `DEFINITION_BLOCK` is a _huge_ class, I'd rather avoid having two of them (there's already `my_game`)!

For the full story behing this change, see __[Issue #8]__ on Alan StdLib upstream repository.

Tests seem to confirm that it works just as fine, and the compiled adventure is 20Kb smaller. Debuggin confirms that the tweaked `banner` instance has a much smaller footprint.




<!---------------------------------------------------------------------------->



# 2018/07/19 (5)

- [`lib_definizioni.i`][lib_definizioni] (v0.2.25)
- [`lib_verbi.i`][lib_verbi] (v0.2.23)

Just some code cleanup, comments translation and house keeping.


<!---------------------------------------------------------------------------->


# 2018/07/19 (4)

- [`lib_definizioni.i`][lib_definizioni] (v0.2.24)

## Banner Attributes

This commit translates into Italian the Banner attributes for the `Start` section:

|  English   |    Italian    |       Class        |
|------------|---------------|--------------------|
| `title`    | `titolo`      | `DEFINITION_BLOCK` |
| `subtitle` | `sottotitolo` | `DEFINITION_BLOCK` |
| `author`   | `autore`      | `DEFINITION_BLOCK` |
| `year`     | `anno`        | `DEFINITION_BLOCK` |
| `version`  | `versione`    | `DEFINITION_BLOCK` |




<!---------------------------------------------------------------------------->



# 2018/07/19 (3)

- [`lib_supplemento.i`][lib_supplemento] (v0.2.2)

## Add Remaining Preposizioni Articolate Synonyms

Previously, only synonyms for preposition based on `a` and `da` were covered.

This commit completes all prepositions by adding `SYNONYMS` deifinitions for `di`, `in` and `su` based prepositions:

```alan
--==============================================================================
-- "DI" + Articolo
--==============================================================================
SYNONYMS
  del, dello, della, 'dell''', dei, degli, delle = di.
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
```

There is no need to implements synonyms for the _preposizioni articolate_ based on `con` and `per` as these have a non-merged form too (and the merged form is rarely used nowadays).


> __NOTE 1__ — Currently no verbs requiring these prepositions have been translated, so these changes won't have an immediate impact on the library.

<!-- sep -->

> __NOTE 2__ — Currently, compiling a game that uses the library will cuase the compiler to issue a warning:
> 
> ```
> 321 W : Synonym target word 'di' not defined.
> ```
> 
> ... this will go away when a `VERB SYNTAX` involving the `di` preposition will be translated/implemented!

<!-- sep -->

> __NOTE 3__ — The articulated prepositions that are synonyms of `SU` should be checked thoroughly to see if they could cause conflicts with the `su` direction. 

<!-- sep -->

> __NOTE 4__ — The articulated prepositions that are synonyms of `IN` should be checked thoroughly to see if they could cause conflicts with the current use of `IN` by the English library, which defines:
> 
> ``` alan
> SYNONYMS  into, inside = 'in'.
> ```
> 
> (it shouldn't, since they have the same meaning both languages).



<!---------------------------------------------------------------------------->


# 2018/07/19 (2)

- [`lib_definizioni.i`][lib_definizioni] (v0.2.23)
- [`lib_supplemento.i`][lib_supplemento] (v0.2.1)

Just some code house-keeping and cleaning up.


<!---------------------------------------------------------------------------->


# 2018/07/19 (1)

- [`lib_classi.i`][lib_classi] (v0.2.6)
- [`lib_definizioni.i`][lib_definizioni] (v0.2.22)
- [`lib_verbi.i`][lib_verbi] (v0.2.22)


Translated library attributes:

| English  | Italian  |  Class  |
|----------|----------|---------|
| `'on'`   | `acceso` | `THING` |
| `weight` | `peso`   | `THING` |

Translated `CLASS`es:

| Class EN |    Class IT   |
|----------|---------------|
| `device` | `dispositivo` |
| `door`   | `porta`       |
| `person` | `persona`     |
| `sound`  | `suono`       |
| `window` | `finestra`    |


<!---------------------------------------------------------------------------->


# 2018/07/18 (4)

- [`lib_classi.i`][lib_classi] (v0.2.5)
- [`lib_definizioni.i`][lib_definizioni] (v0.2.21)
- [`lib_luoghi.i`][lib_luoghi] (v0.2.2)
- [`lib_messaggi.i`][lib_messaggi] (v0.2.2)
- [`lib_verbi.i`][lib_verbi] (v0.2.21)

Translated library attributes:

|   English    |     Italian     |   Class    |
|--------------|-----------------|------------|
| `broken`     | `rotto`         | `THING`    |
| `distant`    | `distante`      | `THING`    |
| `donned`     | `indossato`     | `clothing` |
| `examinable` | `esaminabile`   | `THING`    |
| `inanimate`  | `inanimato`     | `THING`    |
| `openable`   | `apribile`      | `THING`    |
| `reachable`  | `raggiungibile` | `THING`    |
| `readable`   | `leggibile`     | `THING`    |
| `vessel`     | `recipiente`    | `liquid`   |
| `wearable`   | `indossabile`   | `THING`    |


<!---------------------------------------------------------------------------->


# 2018/07/18 (3)

- [`lib_classi.i`][lib_classi] (v0.2.4)
- [`lib_definizioni.i`][lib_definizioni] (v0.2.20)
- [`lib_verbi.i`][lib_verbi] (v0.2.20)


## Verb Responses Attributes

With this commit I begin to put some order in verb response messages by translating attributes names and/or messages into Italian.

> __NOTE 1__ — Many of the current message attributes names are temporary, and in the future I'll try to work out a custom naming convention that better suits the needs of the Italian library. 
> 
> As for now, I'm just trying to ensure that all translated verbs will use Italian attributes names and text output, and that I can start to comment out the original English attributes once they have been globally replaced by their Italian equivalent.


### Translated verb responses attributes:

|        Attribute EN       |         Attribute IT         |
|---------------------------|------------------------------|
| `check_current_loc_lit`   | `check_locazione_illuminata` |
| `check_obj_reachable_sg`  | `ogg1_non_raggiungibile_sg`  |
| `check_obj_reachable_pl`  | `ogg1_non_raggiungibile_pl`  |
| `check_obj2_reachable_sg` | `ogg2_non_raggiungibile_sg`  |
| `check_obj2_reachable_pl` | `ogg2_non_raggiungibile_pl`  |


> __NOTE 2__ — The new Italian naming convention for message attributes will always use `ogg1` in place of `obj` (or in any reference to first parameter of verb, like the old `parametro`) and `ogg2` for `obj2`, because these are shorter and easier to remember.

<!-- sep -->

> __NOTE 3__ — I'm not quite happy with `check_locazione_illuminata` because I'd like attributes names to indicate the nature of the message rather than the context of the failed conditional check (whether in a `SYNTAX` or `CHECK` block). The latter approach is better because some messages are shared by both syntax constructs (see below, how reduntant message was replaced).
> 
> But for now this name will do, until I work out a better naming convention for messages. Also, it seems that this is the only message regarding location checks, so it's not a big deal actually. But I'd like its name to be more intuitive in the future.


### Renamed verb responses attributes:

|       Attribute EN      |    Attribute IT    |
|-------------------------|--------------------|
| `parametro_illegale_sg` | `ogg1_inadatto_sg` |
| `parametro_illegale_pl` | `ogg1_inadatto_pl` |
| `check_obj_idoneo_sg`   | `ogg1_inadatto_sg` |
| `check_obj_idoneo_pl`   | `ogg1_inadatto_pl` |


> __NOTE 4__ — `check_obj_idoneo_sg`/`pl` has been removed and replaced by `ogg1_inadatto_sg`/`pl` because they were producing the same message and were redundant. Also, `illegale` has been replaced with `inadatto`, which seems more accurate in the context.


<!---------------------------------------------------------------------------->


# 2018/07/18 (2)

- [`lib_definizioni.i`][lib_definizioni] (v0.2.19)
- [`lib_verbi.i`][lib_verbi] (v0.2.19)


## Verb: `drink`

Translated verb `bevi`, (_drink_):

    bevi (liq)

with no synonyms.


<!---------------------------------------------------------------------------->


# 2018/07/18 (1)

- [`lib_definizioni.i`][lib_definizioni] (v0.2.18)
- [`lib_verbi.i`][lib_verbi] (v0.2.18)

Minor tweaks and code cleanup.


<!---------------------------------------------------------------------------->


# 2018/07/17 (5)

- [`lib_definizioni.i`][lib_definizioni] (v0.2.17 --- _sic_!)
- [`lib_verbi.i`][lib_verbi] (v0.2.17)


Translated verb response attributes:

|      Attribute EN     |    Attribute IT   |
|-----------------------|-------------------|
| `restricted_response` | `azione_bloccata` |


<!---------------------------------------------------------------------------->


# 2018/07/17 (4)

- [`lib_classi.i`][lib_classi] (v0.2.3)
- [`lib_definizioni.i`][lib_definizioni] (v0.2.12)
- [`lib_verbi.i`][lib_verbi] (v0.2.16)


Translated `THING` attributes:

|   English   | Italian |
|-------------|---------|
| `edible`    | `commestibile`   |
| `drinkable` | `potabile`   |


## Verb: `eat`

Translated verb `mangia`, (_eat_):

    mangia (cibo)

with no synonyms.


<!---------------------------------------------------------------------------->


# 2018/07/17 (3)

- [`lib_verbi.i`][lib_verbi] (v0.2.15)


## Meta Verbs

The following verbs have been declared as `META VERB`s:

- `abbandona_partita`
- `carica_partita`
- `ricomincia_partita`
- `salva_partita`
- `inventario`


> __NOTE 1__ — Currently Alan 3.0beta5 has a bug that prevents `META VERB`s from not ticking a turn. The bug was fixed and `META VERB`s will work as expected on the upcoming Beta relase.

<!-- sep -->

> __NOTE 2__ — Although `inventory` is an in-game command, it has been declared as a `META VERB` because it's more aking to a "mental action", rather than a physical and time-consuming action (we can see taking inventory as internal process of the hero recalling his carried and worn belongings, happening in the blink of an eye).
> 
> Some adventures might present time-critical situations (eg, the player dies in three turns if he/she doesn't solve a problem); under such circumstances it would be unfair (and frustrating) if taking the inventory were to consume a precious turn.
> 
> Furthermore, taking the inventory is not even an `UNDO`able action (it doesn't change any game state, so undoing it would achieve nothing), which (IMO) strengthen the argument that it should be considered as a META ACTION.


<!---------------------------------------------------------------------------->


# 2018/07/17 (2)

- [`lib_classi.i`][lib_classi] (v0.2.2)
- [`lib_verbi.i`][lib_verbi] (v0.2.14)

Translated ACTOR attributes:

|   English    |  Italian   |
|--------------|------------|
| `sitting`    | `seduto`   |
| `lying_down` | `sdraiato` |


<!---------------------------------------------------------------------------->


# 2018/07/17 (1)

- [`lib_definizioni.i`][lib_definizioni] (v0.2.11)
- [`lib_verbi.i`][lib_verbi] (v0.2.13)

Translated `my_game` attributes for verb restrictions:

|     English     |    Italian     |
|-----------------|----------------|
| `climb_through` | `attraversare` |


## Verb: `climb_through`

Translated verb `attraversa`, "__attraversa (obj)__" (_climb through_, but also _cross_):

    attraversa (obj)

with no synonyms.


<!---------------------------------------------------------------------------->


# 2018/07/03 (3)

- [`lib_definizioni.i`][lib_definizioni] (v0.2.10)
- [`lib_verbi.i`][lib_verbi] (v0.2.12)


Translated `my_game` attributes for verb restrictions:

| English |  Italian   |
|---------|------------|
| `go_to` | `andare_a` |


## Verb: `go_to`

Translated verb `vai_a`, "__vai a__" (_go to_):

    vai (a|al|alla|allo|ai|alle|agli) (dest)
    (a|al|alla|allo|ai|alle|agli) (dest)

with no synonyms.

> __NOTE 1__ — Because `go` command is hard-coded into Alan's (English) as a NOISE WORD, this verb defines `vai` as a synonym of `go` 
> 
>     vai = go
> 
> In fact, the syntax doesn't refer to `go` at all:
> 
> ```alan
> SYNTAX vai_a = 'a' (dest)!
>   WHERE dest ISA THING
>     ELSE SAY illegal_parameter_go OF my_game.
> 
> SYNONYMS vai = go.
> ```
> 
> And the use of `go` in the command is optional, and the following commands are equal:
> 
>     vai alla bancarella
>     alla bancarella
> 
> ... because the parser will translate `vai` to `go` and then ignore it as NOISE. So the actual verb syntax is really just `(a|al|alla|allo|ai|alle|agli) (dest)`.

<!-- sep -->

> __NOTE 2__ — For this verb, `(dest)` must be a `THING`, not a direction! The Alan parser already understands natively the `go (direction)` SYNTAX, where `(direction)` (once stripped of the `go` noise) simply refers to an `EXIT` at the location. Therefore, this verb doesn't apply to exits/directions, but to actual game THINGS (OBJECTs and ACTORs).
> 
> This verb can refer to THINGS which are not present at the location, or present but distant or unreachable, and produce a meaningful response accordingly.


<!---------------------------------------------------------------------------->


# 2018/07/03 (2)

- [`lib_verbi.i`][lib_verbi] (v0.2.11)


## Verb: `buy`

Translated verb `compra`, (_buy_):

    compra (item)

with synonyms:

    acquista


<!---------------------------------------------------------------------------->


# 2018/07/03 (1)

- [`lib_verbi.i`][lib_verbi] (v0.2.10)

Now translated verbs are placed before untranslated verbs in the source code, and divided in two separate groups, each one presenting its verbs in alphabetical order:

- gameplay meta commands (like "save", "score", etc.)
- adventure commands (ie, directed to the hero and story world)


<!---------------------------------------------------------------------------->


# 2018/07/02

- [`lib_definizioni.i`][lib_definizioni] (v0.2.9)
- [`lib_verbi.i`][lib_verbi] (v0.2.9)


## Verb: `burn`/`burn_with`

Translated verbs `brucia` e `brucia_con` (_burn_/_burn with_):

    brucia (obj)
    brucia (obj) con (instr)

with no synonyms.


## `my_game` Verb Messages

This commit also separates the translate messages from the originals in English in the source code, making it easy to work on the Italian messages.


### Translated Messages

A few messages have been translated into Italian (both attribute name and string):

|           English            |           Italian            |
|------------------------------|------------------------------|
| `illegal_parameter_sg`       | `parametro_illegale_sg`      |
| `illegal_parameter_pl`       | `parametro_illegale_pl`      |
| `illegal_parameter2_with_sg` | `parametro2_illegale_CON_sg` |
| `illegal_parameter2_with_pl` | `parametro2_illegale_CON_pl` |


### New Messages for Missing Parameters

Since many verbs which require additional parameters are also defined in their parameterless version (eg, `burn` and `burn_with`) to allow catching it's use and inform the player about the need to specify another parameter, I've added a new section in `lib_definizioni.i` for holding the common shared strings of these messages.

Currently, the `specificare_CON_cosa` attribute of `my_game` was added to handle messages where the verb requires an object to carry out the action _with_ (Italian: "con"). 

```alan
  -- messaggi per verbi che richiedono ulteriori parametri:
  ---------------------------------------------------------

  HAS specificare_CON_cosa "Devi specificare con cosa vorresti".
```

... the string meaning is "_You must specify with what you'd like to_", which will be followed by the verb and the target object (eg "_burn the XXX with_"). Here is how it's being implemented for the `burn` verb:

```alan
ADD TO EVERY OBJECT
  VERB brucia
    CHECK my_game CAN bruciare
      ELSE SAY restricted_response OF my_game.
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY check_obj_idoneo_sg OF my_game. "bruciare."
          ELSE SAY check_obj_idoneo_pl OF my_game. "bruciare."
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_current_loc_lit OF my_game.
    DOES
      SAY specificare_CON_cosa OF my_game. "bruciare" SAY THE obj. "."
   -- "You must state what you want to burn" SAY THE obj. "with."
  END VERB.
END ADD TO.
```

... since, unlike `burn_with`, the verb `burn` will never accomplish anything besides informing of the need of a "with object" parameter.


<!---------------------------------------------------------------------------->


# 2018/06/29

- [`lib_definizioni.i`][lib_definizioni] (v0.2.8)
- [`lib_verbi.i`][lib_verbi] (v0.2.8)

Translated `my_game` attributes for verb restrictions:

|  English  |     Italian      |
|-----------|------------------|
| `brief`   | `modalità_breve` |
| `verbose` | `modalità_lunga` |

Translated verb responses:

|    Verb   |                                                     Italian                                                      |
|-----------|------------------------------------------------------------------------------------------------------------------|
| `verbose` | "Il gioco è ora in modalità _lunga_, le descrizioni dei luoghi saranno mostrate sempre (anche se già visitati)." |
| `brief`   | "Il gioco è ora in modalità _breve_, le descrizioni dei luoghi già visitati non saranno più mostrate."           |


<!---------------------------------------------------------------------------->


# 2018/06/24 (3)

- [`lib_definizioni.i`][lib_definizioni] (v0.2.7)
- [`lib_verbi.i`][lib_verbi] (v0.2.7)

Translated `my_game` attributes for verb restrictions:

|  English  |   Italian    |
|-----------|--------------|
| `clean`   | `pulire`     |
| `find`    | `trovare`    |
| `kiss`    | `baciare`    |
| `shout`   | `gridare`    |
| `'show'`  | `mostrare`   |
| `swim`    | `nuotare`    |
| `swim_in` | `nuotare_in` |
| `taste`   | `assaggiare` |
| `wear`    | `indossare`  |


<!---------------------------------------------------------------------------->


# 2018/06/24 (2)

- [`lib_definizioni.i`][lib_definizioni] (v0.2.6)
- [`lib_verbi.i`][lib_verbi] (v0.2.6)

Translated `my_game` attributes for verb restrictions:

|   English   |    Italian     |
|-------------|----------------|
| `buy`       | `comprare`     |
| `consult`   | `consultare`   |
| `cut`       | `tagliare`     |
| `cut_with`  | `tagliare_con` |
| `drop`      | `lasciare`     |
| `enter`     | `entrare`      |
| `examine`   | `esaminare`    |
| `follow`    | `seguire`      |
| `free`      | `liberare`     |
| `jump`      | `saltare`      |
| `jump_in`   | `saltare_in`   |
| `jump_on`   | `saltare_su`   |
| `pour`      | `versare`      |
| `pour_in`   | `versare_in`   |
| `pour_on`   | `versare_su`   |
| `pull`      | `tirare`       |
| `push`      | `spingere`     |
| `push_with` | `spingere_con` |
| `read`      | `leggere`      |
| `sell`      | `vendere`      |


<!---------------------------------------------------------------------------->


# 2018/06/24 (1)

- [`lib_classi.i`][lib_classi] (v0.2.1)
- [`lib_definizioni.i`][lib_definizioni] (v0.2.5)
- [`lib_luoghi.i`][lib_luoghi] (v0.2.1)
- [`lib_messaggi.i`][lib_messaggi] (v0.2.1)
- [`lib_verbi.i`][lib_verbi] (v0.2.5)


## Translate StdLib's `plural`

Now the library's `plural` attribute has been translated into Italian: `plurale`.


<!---------------------------------------------------------------------------->


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


<!---------------------------------------------------------------------------->


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


<!---------------------------------------------------------------------------->


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

Its default responses translation might need some polishing. The commented code example on how to implement the undressing action also needs to be polished.

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

- [`lib_classes.i`][lib_classes] (v0.0.3) — added comments about predefined articles in ACTORS and some comment draft code on how these might be implemented in Italian (the topic needs to be further investigated before apllying changes).
- [`lib_definitions.i`][lib_definitions] (v0.0.4) — __PREDEFINED ARTICLES__ of THINGS implemented in Italian.
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


<!-- External Links ---------------------------------------------------------->

[Alan StdLib upstream repository]: https://github.com/AnssiR66/AlanStdLib

<!-- StdLib Issues & PRs ----------------------------------------------------->

[Issue #8]: https://github.com/AnssiR66/AlanStdLib/issues/8

[PR #12 on StdLib]: https://github.com/AnssiR66/AlanStdLib/pull/12

<!-- eof -->

