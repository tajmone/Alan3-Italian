# Alan Standard Library v2.1 Italian Translation

This folder contains a copy of the Alan Standard Library v2.1 files which are being editing to translate the library to Italian.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [File Contents](#file-contents)
    - [Standard Library Files](#standard-library-files)
    - [Extra Standard Library Files](#extra-standard-library-files)
- [Translation](#translation)
    - [Directions and Movement](#directions-and-movement)
        - [Movement Messages](#movement-messages)

<!-- /MarkdownTOC -->

-----


# File Contents

## Standard Library Files

The library files being translated:

- [`lib_classes.i`](./lib_classes.i)
- [`lib_definitions.i`](./lib_definitions.i)
- [`lib_locations.i`](./lib_locations.i)
- [`lib_messages.i`](./lib_messages.i)
- [`lib_verbs.i`](./lib_verbs.i)
- [`library.i`](./library.i)

## Extra Standard Library Files

Boilerplates and templates from the StdLibrary have been renamed with a leading underscore, to distinguish them from the set of strictly needed files:

- [`_newgame_ita.alan`](./_newgame_ita.alan) — adaptation of `newgame.alan`
- [`_mygame_import.i`](./_mygame_import.i) (unchanged)


# Translation

Current status of translation work.

## Directions and Movement

- [`lib_locations.i`](./lib_locations.i)

Translated all stdLib directions:

| direction |      aliases      | short |  English  | short |
|-----------|-------------------|-------|-----------|-------|
| nord      |                   | n     | north     | n     |
| sud       |                   | s     | south     | s     |
| est       |                   | e     | east      | e     |
| ovest     |                   | o     | west      | w     |
| nordest   |                   | ne    | northeast | ne    |
| sudest    |                   | se    | southeast | se    |
| nordovest |                   | nov   | northwest | nw    |
| sudovest  |                   | so    | southwest | sw    |
| su        | sopra, alto       |       | up        | u     |
| giù       | giu, sotto, basso | b     | down      | d     |
| dentro    |                   |       | 'in'      |       |
| fuori     |                   |       | out       |       |

> __NOTE 1__ — Couldn't create synonym "no" for "nordovest" because of conflict with `NO` keyword. Trying to use `'no'` produced error:
> 
> ```
> 333 E : The word 'no' is defined to be both a synonym and another word
>         class.
> 1 error(s).
> ```

<!-- separator -->

> __NOTE 2__ — Inform 6 Italian also implements "a" synonym for "alto", but I've left it out right now in case it might conflict with "a" as in "dai a/_give to_".

### Movement Messages

- [`lib_messages.i`](./lib_messages.i)

This is the status of the messages relating to directions and movements:

|   messg   |              translation               |
|-----------|----------------------------------------|
| `NO_WAY:` | "Non puoi andare in quella direzione." |

> __NOTE 1__ — "Non puoi andare in quella direzione." was taken from i6 translation; i7 uses "Non puoi andare da quella parte." instead.