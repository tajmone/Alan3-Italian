# Alan Standard Library v2.1 Italian Translation

This folder contains a copy of the Alan Standard Library v2.1 files which are being editing to translate the library to Italian.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [File Contents](#file-contents)
    - [Standard Library Files](#standard-library-files)
    - [Extra Standard Library Files](#extra-standard-library-files)
    - [Library Documentation Files](#library-documentation-files)
- [Translation](#translation)
    - [Directions and Movement](#directions-and-movement)
    - [Classes, Instances and Attributes](#classes-instances-and-attributes)
        - [Objects](#objects)
        - [Locations](#locations)
    - [Special Classes and Instances](#special-classes-and-instances)
    - [Null Objects](#null-objects)
    - [Definition Block](#definition-block)
    - [Global Attributes](#global-attributes)
    - [Restricted Actions](#restricted-actions)

<!-- /MarkdownTOC -->

-----


# File Contents

## Standard Library Files

The library files being translated:

- [`lib_classi.i`][lib_classi] (adpatation of `lib_classes.i`)
- [`lib_definizioni.i`][lib_definizioni] (adpatation of `lib_definitions.i`)
- [`lib_luoghi.i`][lib_luoghi] (adpatation of `lib_locations.i`)
- [`lib_messaggi.i`][lib_messaggi] (adpatation of `lib_messages.i`)
- [`lib_verbi.i`][lib_verbi] (adpatation of `lib_verbs.i`)
- [`libreria.i`][libreria] (adpatation of `library.i`)
- [`lib_supplemento.i`][lib_supplemento] (not in original StdLib)


## Extra Standard Library Files

Boilerplates and templates from the StdLibrary have been renamed with a leading underscore, to distinguish them from the set of strictly needed files:

- [`_newgame_ita.alan`](./_newgame_ita.alan) — adaptation of `newgame.alan`
- [`_mygame_import.i`](./_mygame_import.i) (small changes)

## Library Documentation Files

The Italian library is currently switching to a new system which generates the AsciiDoc documentation directly from comments in the Alan source files using [Doxter]:

- [`lib_verbi.asciidoc`][lib_verbi adoc]

The AsciiDoc files are then converted to HTML:

- [`lib_verbi.html`][lib_verbi html]  ([Live HTML Preview][lib_verbi html live])

See also:

- [`BUILD_DOCS.bat`][BUILD_DOCS]
- [`ANNOTAZIONI_DOXTER.adoc`][ANNOTAZIONI_DOXTER]  (Italian)


# Translation

Current status of translation work.

> __NOTE__ — This section is updated from time to time and might not reflect the actual translation progress of the library; to check the actual status see the [CHANGELOG] file instead.

## Directions and Movement

- [`lib_luoghi.i`][lib_luoghi]

Translated all stdLib directions:

| IT Direction |     IT Aliases    | IT Short |  English  | EN Short |
|--------------|-------------------|----------|-----------|----------|
| nord         |                   | n        | north     | n        |
| sud          |                   | s        | south     | s        |
| est          |                   | e        | east      | e        |
| ovest        |                   | o        | west      | w        |
| nordest      |                   | ne       | northeast | ne       |
| sudest       |                   | se       | southeast | se       |
| nordovest    |                   | nov      | northwest | nw       |
| sudovest     |                   | so       | southwest | sw       |
| su           | sopra, alto       |          | up        | u        |
| giù          | giu, sotto, basso | b        | down      | d        |
| dentro       |                   |          | 'in'      |          |
| fuori        |                   |          | out       |          |

> __NOTE 1__ — Couldn't create synonym "no" for "nordovest" because of conflict with `NO` keyword. Trying to use `'no'` produced error:
> 
> ```
> 333 E : The word 'no' is defined to be both a synonym and another word
>         class.
> 1 error(s).
> ```

<!-- separator -->

> __NOTE 2__ — Inform 6 Italian also implements "a" synonym for "alto", but I've left it out right now in case it might conflict with "a" as in "dai a/_give to_".

## Classes, Instances and Attributes

The various object and actor classes, and any attributes which are exclusive to a given class (ie, are either declared only ont that class, or intended to be used only in conjuction with instances of that class).
The goal here is to show the classes names along with any related attributes, so that the translation of all terms that revolve around a class can be seen at a glance.
Attributes which are declared on (or inteded to be used with) multiple classes are listed further down (Global Attributes).


### Objects

|      EN Class      |   EN Attribute  |      Translation       |           type           |
|--------------------|-----------------|------------------------|--------------------------|
| `worn`             |                 | `abbbigliamento`       | `ENTITY`                 |
| `clothing`         |                 | `indumento`            | `OBJECT`                 |
|                    | `wearable`      | `indossabile`          | boolean                  |
|                    | `sex`           | `genere`               | numeric                  |
|                    | `headcover`     | `val_testa`            | numeric                  |
|                    | `handscover`    | `val_mani`             | numeric                  |
|                    | `feetcover`     | `val_piedi`            | numeric                  |
|                    | `topcover`      | `val_tronco`           | numeric                  |
|                    | `botcover`      | `val_gambe`            | numeric                  |
|                    | `donned`        | `indossato`            | boolean                  |
| `device`           |                 | `dispositivo`          | `OBJECT`                 |
| `door`             |                 | `porta`                | `OBJECT`                 |
|                    | `otherside`     | `altro_lato`           | ref to `door` instance   |
|                    | `matching_key`  | `chiave_abbinata`      | ref to `OBJECT` instance |
|                    | `lockable`      | `bloccabile`           | boolean                  |
|                    | `locked`        | `bloccato`             | boolean                  |
| `lightsource`      |                 | `fonte_di_luce`        | `OBJECT`                 |
|                    | `lit`           | `illuminato`           | boolean                  |
|                    | ~~`natural`~~   | ~~`naturale`~~         | boolean (_removed_)      |
| `liquid`           |                 | `liquido`              | `OBJECT` + `CONTAINER`   |
|                    | `vessel`        | `recipiente`           | ref to an instance       |
| `LISTED_CONTAINER` |                 | `contenitore_elencato` | `CONTAINER`              |
| `sound`            |                 | `suono`                | `OBJECT`                 |
| `supporter`        |                 | `supporto`             | `OBJECT`                 |
| `weapon`           |                 | `arma`                 | `OBJECT`                 |
|                    | `fireable`      | CAN `sparare`          | boolean                  |
| `window`           |                 | `finestra`             | `OBJECT`                 |
| `person`           |                 | `persona`              | `ACTOR`                  |
|                    | `compliant`     | `condiscendente`       | boolean                  |
|                    | `following`     | `seguendo`             | boolean                  |
|                    | IS `named`      | HAS `nome_proprio`     | boolean                  |
| _untranslated_     | `present_actor` | `XXXX`                 | boolean                  |
|                    | CAN `talk`      | CAN `parlare`          | boolean                  |
|                    | IS `wearing`    | HAS `indossati`        | set of `indumento`       |
| `female`           |                 | `maschio`              | `PERSON`                 |
| `male`             |                 | `femmina`              | `PERSON`                 |


#### Opening and Locking

Attributes relating to opening/closing and locking/unlocking are shared by multiple classes of objects.

| EN Attribute | Translation |         used for         |   type  |
|--------------|-------------|--------------------------|---------|
| `openable`   | `apribile`  | `window`, `door`, custom | boolean |
| `open`       | `aperto`    | `window`, `door`, custom | boolean |

### Locations

The Library divides locations in 2 major categories: outdoor and indoor.
These are outer containers of actual `site` and `room` instances.
Sites and rooms come with a series of predefined props (ceiling, sky, etc.). 

| EN Container Class |     Class     |       Translation       |    type    |
|--------------------|---------------|-------------------------|------------|
| `outdoor`          |               | `esterno`               | `LOCATION` |
|                    | `site`        | `luogo_esterno`         | `LOCATION` |
|                    | `site_object` | `oggetto_luogo_esterno` | `OBJECT`   |
| `indoor`           |               | `interno`               | `LOCATION` |
|                    | `room`        | `stanza`                | `LOCATION` |
|                    | `room_object` | `oggetto_stanza`        | `OBJECT`   |
| `dark_location`    |               | `luogo_buio`            | `LOCATION` |
| `nowhere`          |               | `limbo`                 | `LOCATION` |

#### Room and Room Props

For the sake of realism, rooms have a series of predefined props, which are instances of the `room_object` class (an `OBJECT AT indoor`).

|  EN Class |  EN Attribute  |          Translation          |      type     |
|-----------|----------------|-------------------------------|---------------|
| `floor`   |                | `pavimento`                   | `room_object` |
|           | `floor_desc`   | `desc_pavimento`              | string        |
| `wall`    |                | `pareti` (+ `parete`, `muro`) | `room_object` |
|           | `walls_desc`   | `desc_pareti`                 | string        |
| `ceiling` |                | `soffitto`                    | `room_object` |
|           | `ceiling_desc` | `desc_soffitto`               | string        |


#### Site and Site Props

Like rooms, sites have some predefined props too.

| EN Class |  EN Attribute | Translation  |      type     |
|----------|---------------|--------------|---------------|
| `ground` |               | `suolo`      | `site_object` |
|          | `ground_desc` | `desc_suolo` | string        |
| `sky`    |               | `cielo`      | `site_object` |
|          | `sky_desc`    | `desc_cielo` | string        |


#### Locations Attributes

These attributes are present in every `LOCATION`.

| EN Attribute | Translation  |   type  |
|--------------|--------------|---------|
| `visited`    | `visitato`   | numeric |
| `described`  | `descritto`  | numeric |
| `lit`        | `illuminato` | boolean |


## Special Classes and Instances

Special classes or instances created by StdLib, either for author consumption (eg, `banner` and
`my_game`) or for internal library usage.

|    EN Instance     |     Translation      |        type        |
|--------------------|----------------------|--------------------|
| `banner`           | `intestazione`       | `LOCATION` †       |
| `my_game`          | `mia_AT`             | `definition_block` |
| `definition_block` | `blocco_definizioni` | `LOCATION`         |

> __NOTE †__ — In the original StdLib code, `banner` is declared as a `definition_block`, but I've created it as a `LOCATION` instead — for it saves memory and achieves the same goals. (For more info, see [Issue #8])


[Issue #8]: https://github.com/AnssiR66/AlanStdLib/issues/8

## Null Objects

Special instances created by StdLib as dummy values for initializing attributes.


|   EN Instance   |      Translation      |    type    |
|-----------------|-----------------------|------------|
| `null_door`     | `porta_fittizia`      | `OBJECT`   |
| `null_key`      | `chiave_fittizia`     | `OBJECT`   |
| `null_object`   | `oggetto_fittizio`    | `OBJECT`   |
| `null_vessel`   | `recipiente_fittizio` | `OBJECT`   |
| `null_clothing` | `indumento_fittizio`  | `CLOTHING` |


## Definition Block


The special `definition_block` class is used by StdLib to group various definitions and expose them to the game via the `my_game` instance.

(defined in [`lib_definitions.i`][lib_definitions])

| EN Attribute |  Translation  |   type  |
|--------------|---------------|---------|
| `title`      | `titolo`      | string  |
| `subtitle`   | `sottotitolo` | string  |
| `author`     | `autore`      | string  |
| `year`       | `anno`        | numeric |
| `version`    | `versione`    | string  |


## Global Attributes

General attributes which are either added to every `thing` (object or actor) or to every `entity` (the distinction is irrelevant in this context).

(defined in [`lib_definitions.i`][lib_definitions])

| EN Attribute |   Translation    |       type       |
|--------------|------------------|------------------|
| `allowed`    | HAS `consentiti` | set of instances |
| `broken`     | `rotto`          | boolean          |
| `distant`    | `distante`       | boolean          |
| `drinkable`  | `potabile`       | boolean          |
| `edible`     | `commestibile`   | boolean          |
| `ex`         | `xDesc`          | string           |
| `examinable` | `esaminabile`    | boolean          |
| `inanimate`  | `inanimato`      | boolean          |
| `movable`    | `spostabile`     | boolean          |
| `nested`     | HAS `annidati`   | set of instances |
| `'on'`       | `acceso`         | boolean          |
| `plural`     | `plurale`        | boolean          |
| `reachable`  | `raggiungibile`  | boolean          |
| `readable`   | `leggibile`      | boolean          |
| `scenery`    | `scenario`       | boolean          |
| `takeable`   | `prendibile`     | boolean          |
| `talk`       | `parlare`        | boolean          |
| `text`       | `testo`          | string           |
| `weight`     | `peso`           | numeric          |
| `writeable`  | `scrivibile`     | boolean          |


## Restricted Actions


A list of `my_game` attributes to allow/restrict (`CAN`/`CAN NOT`) use of certain verbs and actions in the adventure (eg, `CAN take`). 

(defined in [`lib_definitions.i`][lib_definitions])

> __NOT UPDATED!!!__ — the list below might not reflect the true status of the actual translated attributes!

|   EN Attribute   |       IT Translation      |
|------------------|---------------------------|
| `about`          |                           |
| `'again'`        | `rifare`                  |
| `answer`         | `rispondere`              |
| `ask`            | `domandare`               |
| `ask_for`        | `chiedere`                |
| `attack`         | `attaccare`               |
| `attack_with`    | `attaccare_con`           |
| `bite`           |                           |
| `break`          | `rompere`                 |
| `break_with`     | `rompere_con`             |
| `brief`          | `modalità_breve`          |
| `burn`           | `bruciare`                |
| `burn_with`      | `bruciare_con`            |
| `buy`            | `comprare`                |
| `catch`          |                           |
| `clean`          | `pulire`                  |
| `climb`          |                           |
| `climb_on`       |                           |
| `climb_through`  | `attraversare`            |
| `close`          | `chiudere`                |
| `close_with`     | `chiudere_con`            |
| `consult`        | `consultare`              |
| `credits`        |                           |
| `cut`            | `tagliare`                |
| `cut_with`       | `tagliare_con`            |
| `dance`          | `danzare`                 |
| `dig`            | `scavare`                 |
| `dive`           | `tuffarsi`                |
| `dive_in`        | `tuffarsi_in`             |
| `drink`          | `bere`                    |
| `drive`          | `guidare`                 |
| `drop`           | `lasciare`                |
| `eat`            | `mangiare`                |
| `'empty'`        | `svuotare`                |
| `empty_in`       | `svuotare_in`             |
| `empty_on`       | `svuotare_su`             |
| `enter`          | `entrare`                 |
| `examine`        | `esaminare`               |
| `'exit'`         |                           |
| ~~`extinguish`~~ | _removed_                 |
| `fill`           | `riempire`                |
| `fill_with`      | `riempire_con`            |
| `find`           | `trovare`                 |
| `fire`           |                           |
| `fire_at`        |                           |
| `fix`            | `riparare`                |
| `follow`         | `seguire`                 |
| `free`           | `liberare`                |
| `get_off`        |                           |
| `get_up`         |                           |
| `give`           | `dare`                    |
| `go_to`          | `andare_a`                |
| `hint`           |                           |
| `i`              | `inventariare`            |
| `jump`           | `saltare`                 |
| `jump_in`        | `saltare_in`              |
| `jump_on`        | `saltare_su`              |
| `kick`           |                           |
| `kill`           | `uccidere`                |
| `kill_with`      | `uccidere_con`            |
| `kiss`           | `baciare`                 |
| `knock`          | `bussare`                 |
| `lie_down`       |                           |
| `lie_in`         |                           |
| `lie_on`         |                           |
| `lift`           |                           |
| ~~`light`~~      | _removed_                 |
| `listen0`        | `ascoltare0`              |
| `listen`         | `ascoltare`               |
| `lock`           | `bloccare`                |
| `lock_with`      | `bloccare_con`            |
| `'look'`         |                           |
| `look_at`        |                           |
| `look_behind`    |                           |
| `look_in`        |                           |
| `look_out_of`    |                           |
| `look_through`   |                           |
| `look_under`     |                           |
| `look_up`        |                           |
| `'no'`           | `dire_no`                 |
| `'notify'`       |                           |
| `notify_off`     |                           |
| `notify_on`      |                           |
| `open`           | `aprire`                  |
| `open_with`      | `aprire_con`              |
| `'play'`         | `suonare`                 |
| `play_with`      | `giocare_con`             |
| `pour`           | `versare`                 |
| `pour_in`        | `versare_in`              |
| `pour_on`        | `versare_su`              |
| `pray`           | `pregare`                 |
| `pry`            |                           |
| `pry_with`       |                           |
| `pull`           | `tirare`                  |
| `push`           | `spingere`                |
| `push_with`      | `spingere_con`            |
| `put`            |                           |
| `put_against`    |                           |
| `put_behind`     |                           |
| `put_down`       |                           |
| `put_in`         |                           |
| `put_near`       |                           |
| `put_on`         |                           |
| `put_under`      |                           |
| `'quit'`         | `abbandonare_partita`     |
| `read`           | `leggere`                 |
| `remove`         |                           |
| `'restart'`      | `ricominciare_partita`    |
| `'restore'`      | `caricare_partita`        |
| `rub`            |                           |
| `'save'`         | `salvare_partita`         |
| `'say'`          | `dire`                    |
| `say_to`         | `dire_a`                  |
| `'score'`        |                           |
| `scratch`        |                           |
| `'script'`       |                           |
| `script_off`     |                           |
| `script_on`      |                           |
| `search`         |                           |
| `sell`           | `vendere`                 |
| `shake`          |                           |
| `shoot`          |                           |
| `shoot_with`     |                           |
| `shout`          | `gridare`                 |
| `'show'`         | `mostrare`                |
| `sing`           | `cantare`                 |
| `sip`            |                           |
| `sit`            | `sedersi`                 |
| `sit_on`         | `sedersi_su`              |
| `sleep`          | `dormire`                 |
| `smell`          |                           |
| `smell0`         |                           |
| `squeeze`        |                           |
| `stand`          |                           |
| `stand_on`       |                           |
| `swim`           | `nuotare`                 |
| `swim_in`        | `nuotare_in`              |
| ~~`switch`~~     | _removed_                 |
| ~~`switch_off`~~ | _removed_                 |
| ~~`switch_on`~~  | _removed_                 |
| `take`           | `prendere`                |
| `take_from`      | `prendere_da`             |
| `talk`           | `parlare`                 |
| `talk_to`        | `parlare_con`             |
| `taste`          | `assaggiare`              |
| `tear`           |                           |
| `tell`           | `raccontare`              |
| `think`          | `pensare`                 |
| `think_about`    | `pensare_a`               |
| `throw`          |                           |
| `throw_at`       |                           |
| `throw_in`       |                           |
| `throw_to`       |                           |
| `tie`            | `legare`                  |
| `tie_to`         | `legare_a`                |
| `touch`          | `toccare`                 |
| `touch_with`     | `toccare_con`             |
| `turn`           |                           |
| `turn_off`       | `spegnere`                |
| `turn_on`        | `accendere`               |
| `undress`        | `spogliarsi`              |
| `unlock`         | `sbloccare`               |
| `unlock_with`    | `sbloccare_con`           |
| `'use'`          | `usare`                   |
| `use_with`       | `usare_con`               |
| `'verbose'`      | `modalità_lunga`          |
| `'wait'`         | `aspettare`               |
| `wear`           | `indossare`               |
| `what_am_i`      | `domandare_cosa_sono_io`  |
| `what_is`        | `domandare_cosa_è`        |
| `where_am_i`     | `domandare_dove_mi_trovo` |
| `where_is`       | `domandare_dove_è`        |
| `who_am_i`       | `domandare_chi_sono_io`   |
| `who_is`         | `domandare_chi_è`         |
| `write`          | `scrivere`                |
| `yes`            | `dire_sì`                 |

 

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[CHANGELOG]: ./CHANGELOG.md

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

<!-- Library Documentation  -->

[ANNOTAZIONI_DOXTER]: ./ANNOTAZIONI_DOXTER.adoc
[BUILD_DOCS]: ./BUILD_DOCS.bat

[lib_verbi adoc]: ./lib_verbi.asciidoc
[lib_verbi html]: ./lib_verbi.html
[lib_verbi html live]: http://htmlpreview.github.io/?https://github.com/tajmone/Alan3-Italian/blob/master/alanlib_ita/lib_verbi.html "Live HTML Preview via GitHub & BitBucket HTML Preview"

[Doxter]: https://git.io/doxter "Visit Doxter website"


<!-- EOF -->
