# Translation of Classes and Attributes

This document lists how the Alan Library tokens (classes, attributes and verbs) were (or will be) translated into Italian. It's intended as both a quick reference and a TODO list.

Some currently untranslated terms might show up as entries in the _candidates_ column, meaning that these are candidates for translation (either not currently implemented, or still not 100% sure about them).

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Classes and Attributes](#classes-and-attributes)
    - [Objects](#objects)
        - [Opening and Locking](#opening-and-locking)
    - [Locations](#locations)
        - [Room Props](#room-props)
        - [Site Props](#site-props)
        - [Locations Attributes](#locations-attributes)
- [Instances](#instances)
- [Definition Block](#definition-block)
- [Global Attributes](#global-attributes)
- [Restricted Actions](#restricted-actions)

<!-- /MarkdownTOC -->

-----

# Classes and Attributes

The various object and actor classes, and any attributes which are exclusive to a given class (ie, are either declared only ont that class, or intended to be used only in conjuction with instances of that class).
The goal here is to show the classes names along with any related attributes, so that the translation of all terms that revolve around a class can be seen at a glance.
Attributes which are declared on (or inteded to be used with) multiple classes are listed further down (Global Attributes).

## Objects

|       Class        |   Attribute    | IT Translation |       (_candidates_)       |        type        |
|--------------------|----------------|----------------|----------------------------|--------------------|
| `worn`             |                |                |                            |                    |
| `clothing`         |                |                | `vestiario`                |                    |
|                    | `wearable`     |                | `indossabile`              |                    |
|                    | `sex`          |                |                            |                    |
|                    | `headcover`    |                | `copricapo`                |                    |
|                    | `handscover`   |                |                            |                    |
|                    | `feetcover`    |                | `calzatura`                |                    |
|                    | `topcover`     |                |                            |                    |
|                    | `botcover`     |                |                            |                    |
|                    | `donned`       |                | `indossato`                |                    |
| `device`           |                |                | `dispositivo`              |                    |
| `door`             |                |                | `porta`                    |                    |
|                    | `otherside`    |                |                            | `door` instance    |
|                    | `matching_key` |                |                            | obj instance       |
|                    | `lockable`     |                | `bloccabile`               | bool               |
|                    | `locked`       |                | `bloccato`, `bloccata`     | bool               |
| `lightsource`      |                |                |                            |                    |
|                    | `lit`          |                | `illuminato`, `illuminata` |                    |
|                    | `natural`      |                |                            |                    |
| `liquid`           |                |                | `liquido`                  |                    |
|                    | `vessel`       |                | `recipiente`               | container instance |
| `LISTED_CONTAINER` |                |                |                            |                    |
| `sound`            |                |                | `suono`                    |                    |
| `supporter`        |                |                | `supporto`                 |                    |
| `weapon`           |                |                |                            |                    |
|                    | `fireable`     |                |                            |                    |
| `window`           |                |                | `finestra`                 |                    |
| `person`           |                |                | `persona`                  |                    |
|                    | `talk`         |                |                            |                    |
| `female`           |                |                |                            |                    |
| `male`             |                |                |                            |                    |

### Opening and Locking

Attributes relating to opening/closing and locking/unlocking are shared by multiple classes of objects.

| Attribute  | IT Translation |   (_candidates_)  |     used for     | type |
|------------|----------------|-------------------|------------------|------|
| `openable` |                | `apribile`        | `window`, `door` | bool |
| `open`     |                | `aperto`,`aperta` | `window`, `door` | bool |

## Locations

The Library divides locations in 2 major categories: outdoor and indoor.
These are outer containers of actual `site` and `room` instances.
Sites and rooms come with a series of predefined props (ceiling, sky, etc.). 

| Container Class |     Class     | Attribute | IT Translation | (_candidates_) |
|-----------------|---------------|-----------|----------------|----------------|
| `outdoor`       |               |           |                |                |
|                 | `site`        |           |                |                |
|                 | `site_object` |           |                |                |
| `indoor`        |               |           |                |                |
|                 | `room`        |           |                | `stanza`       |
|                 | `room_object` |           |                |                |
| `dark_location` |               |           |                |                |
| `nowhere`       |               |           |                |                |

### Room Props

For the sake of realism, rooms have a series of predefined props, which are instances of the `room_object` class (an `OBJECT AT indoor`).

|   Class   |   Attribute    | IT Class | IT Attribute | (_candidates_) |
|-----------|----------------|----------|--------------|----------------|
| `floor`   | `floor_desc`   |          |              | `pavimento`    |
| `wall`    | `walls_desc`   |          |              | `muro`         |
| `ceiling` | `ceiling_desc` |          |              | `soffitto`     |


### Site Props

Like rooms, sites have some predefined props too.

|  Class   |   Attribute   | IT Class | IT Attribute |        (_candidates_)       |
|----------|---------------|----------|--------------|-----------------------------|
| `ground` | `ground_desc` |          |              | `terra`, `terreno`, `suolo` |
| `sky`    | `sky_desc`    |          |              | `cielo`                     |


### Locations Attributes

These attributes are present in every `LOCATION`.

|  Attribute  | IT Translation |    (_candidates_)    | used for | type |
|-------------|----------------|----------------------|----------|------|
| `visited`   |                | `visitato`, `visite` |          | int  |
| `described` |                | `descritto`          |          | int  |
| `lit`       |                | `illuminato`         |          | bool |


# Instances

Instances created by StdLib, either for author consumption (eg, `banner` and
`my_game`) or for internal library usage (eg, `null_door`) as dummy values or internal references.

|    Instance   | IT Translation | (_candidates_) |
|---------------|----------------|----------------|
| `null_door`   |                |                |
| `null_vessel` |                |                |
| `banner`      |                |                |
| `null_object` |                |                |
| `null_key`    |                |                |
| `my_game`     |                |                |

# Definition Block

The special `definition_block` class is used by StdLib to group various definitions and expose them to the game via the `my_game` instance.

(defined in [`lib_definitions.i`][lib_definitions])

| Attribute  | IT Translation | (_candidates_) |
|------------|----------------|----------------|
| `title`    |                | `titolo`       |
| `subtitle` |                | `sottotitolo`  |
| `author`   |                | `autore`       |
| `year`     |                | `anno`         |
| `version`  |                | `versione`     |

# Global Attributes

General attributes which are either added to every `thing` (object or actor) or to every `entity` (the distinction is irrelevant in this context).

(defined in [`lib_definitions.i`][lib_definitions])

|  Attribute   | IT Translation |     (_candidates_)     | type |
|--------------|----------------|------------------------|------|
| `allowed`    |                |                        |      |
| `broken`     |                |                        |      |
| `distant`    |                | `distante`             |      |
| `drinkable`  |                | `bevibile`, `potabile` |      |
| `edible`     |                | `commestibile`         |      |
| `ex`         |                |                        |      |
| `examinable` |                |                        | bool |
| `inanimate`  |                |                        |      |
| `movable`    |                |                        | bool |
| `nested`     |                |                        |      |
| `'on'`       |                | `acceso`               |      |
| `plural`     |                | `plurale`              | bool |
| `reachable`  |                | `raggiungibile`        |      |
| `readable`   |                |                        |      |
| `scenery`    |                | `scenario`             | bool |
| `takeable`   |                |                        | bool |
| `talk`       |                |                        | bool |
| `text`       |                |                        |      |
| `weight`     |                | `peso`                 | int  |
| `writeable`  |                |                        | bool |

# Restricted Actions


A list of `my_game` attributes to allow/restrict (`CAN`/`CAN NOT`) use of certain verbs and actions in the adventure (eg, `CAN take`). 

(defined in [`lib_definitions.i`][lib_definitions])



|    Attribute    | IT Translation | (_candidates_) |
|-----------------|----------------|----------------|
| `about`         |                |                |
| `'again'`       |                |                |
| `answer`        |                |                |
| `ask`           |                |                |
| `ask_for`       |                |                |
| `attack`        |                |                |
| `attack_with`   |                |                |
| `bite`          |                |                |
| `break`         |                |                |
| `break_with`    |                |                |
| `'brief'`       |                |                |
| `burn`          |                |                |
| `burn_with`     |                |                |
| `buy`           |                |                |
| `catch`         |                |                |
| `clean`         |                |                |
| `climb`         |                |                |
| `climb_on`      |                |                |
| `climb_through` |                |                |
| `close`         |                |                |
| `close_with`    |                |                |
| `consult`       |                |                |
| `credits`       |                |                |
| `cut`           |                |                |
| `cut_with`      |                |                |
| `dance`         |                |                |
| `dig`           |                |                |
| `dive`          |                |                |
| `dive_in`       |                |                |
| `drink`         |                |                |
| `drive`         |                |                |
| `drop`          |                |                |
| `eat`           |                |                |
| `'empty'`       |                |                |
| `empty_in`      |                |                |
| `empty_on`      |                |                |
| `enter`         |                |                |
| `examine`       |                |                |
| `'exit'`        |                |                |
| `extinguish`    |                |                |
| `fill`          |                |                |
| `fill_with`     |                |                |
| `find`          |                |                |
| `fire`          |                |                |
| `fire_at`       |                |                |
| `fix`           |                |                |
| `follow`        |                |                |
| `free`          |                |                |
| `get_up`        |                |                |
| `get_off`       |                |                |
| `give`          |                |                |
| `go_to`         |                |                |
| `hint`          |                |                |
| `i`             |                |                |
| `jump`          |                |                |
| `jump_in`       |                |                |
| `jump_on`       |                |                |
| `kick`          |                |                |
| `kill`          |                |                |
| `kill_with`     |                |                |
| `kiss`          |                |                |
| `knock`         |                |                |
| `lie_down`      |                |                |
| `lie_in`        |                |                |
| `lie_on`        |                |                |
| `lift`          |                |                |
| `light`         |                |                |
| `listen0`       |                |                |
| `listen`        |                |                |
| `lock`          |                |                |
| `lock_with`     |                |                |
| `'look'`        |                |                |
| `look_at`       |                |                |
| `look_behind`   |                |                |
| `look_in`       |                |                |
| `look_out_of`   |                |                |
| `look_through`  |                |                |
| `look_under`    |                |                |
| `look_up`       |                |                |
| `'no'`          |                |                |
| `'notify'`      |                |                |
| `notify_on`     |                |                |
| `notify_off`    |                |                |
| `open`          |                |                |
| `open_with`     |                |                |
| `'play'`        |                |                |
| `play_with`     |                |                |
| `pour`          |                |                |
| `pour_in`       |                |                |
| `pour_on`       |                |                |
| `pray`          |                |                |
| `pry`           |                |                |
| `pry_with`      |                |                |
| `pull`          |                |                |
| `push`          |                |                |
| `push_with`     |                |                |
| `put`           |                |                |
| `put_against`   |                |                |
| `put_behind`    |                |                |
| `put_down`      |                |                |
| `put_in`        |                |                |
| `put_near`      |                |                |
| `put_on`        |                |                |
| `put_under`     |                |                |
| `'quit'`        |                |                |
| `read`          |                |                |
| `remove`        |                |                |
| `'restart'`     |                |                |
| `'restore'`     |                |                |
| `rub`           |                |                |
| `'save'`        |                |                |
| `'say'`         |                |                |
| `say_to`        |                |                |
| `'score'`       |                |                |
| `scratch`       |                |                |
| `'script'`      |                |                |
| `script_on`     |                |                |
| `script_off`    |                |                |
| `search`        |                |                |
| `sell`          |                |                |
| `shake`         |                |                |
| `shoot`         |                |                |
| `shoot_with`    |                |                |
| `shout`         |                |                |
| `'show'`        |                |                |
| `sing`          |                |                |
| `sip`           |                |                |
| `sit`           |                |                |
| `sit_on`        |                |                |
| `sleep`         |                |                |
| `smell0`        |                |                |
| `smell`         |                |                |
| `squeeze`       |                |                |
| `stand`         |                |                |
| `stand_on`      |                |                |
| `swim`          |                |                |
| `swim_in`       |                |                |
| `switch`        |                |                |
| `switch_on`     |                |                |
| `switch_off`    |                |                |
| `take`          |                |                |
| `take_from`     |                |                |
| `talk`          |                |                |
| `talk_to`       |                |                |
| `taste`         |                |                |
| `tear`          |                |                |
| `tell`          |                |                |
| `think`         |                |                |
| `think_about`   |                |                |
| `throw`         |                |                |
| `throw_at`      |                |                |
| `throw_in`      |                |                |
| `throw_to`      |                |                |
| `tie`           |                |                |
| `tie_to`        |                |                |
| `touch`         |                |                |
| `touch_with`    |                |                |
| `turn`          |                |                |
| `turn_on`       |                |                |
| `turn_off`      |                |                |
| `undress`       |                |                |
| `unlock`        |                |                |
| `unlock_with`   |                |                |
| `'use'`         |                |                |
| `use_with`      |                |                |
| `'verbose'`     |                |                |
| `'wait'`        |                |                |
| `wear`          |                |                |
| `what_am_i`     |                |                |
| `what_is`       |                |                |
| `where_am_i`    |                |                |
| `where_is`      |                |                |
| `who_am_i`      |                |                |
| `who_is`        |                |                |
| `write`         |                |                |
| `yes`           |                |                |



<!-- REF LINKS -->

[lib_locations]: ./lib_locations.i
[lib_messages]:  ./lib_messages.i
[lib_definitions]:  ./lib_definitions.i
