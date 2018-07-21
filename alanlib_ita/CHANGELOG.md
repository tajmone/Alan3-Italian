# CHANGELOG

Changelog of Italian translation of Alan Standard Library v2.1.

Status: Alpha stage.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

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

-------------------------------------------------------------------------------

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


<!-- External Link -->

[Issue #8]: https://github.com/AnssiR66/AlanStdLib/issues/8

[Alan StdLib upstream repository]: https://github.com/AnssiR66/AlanStdLib

<!-- eof -->

