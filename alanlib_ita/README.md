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
- [`_mygame_import.i`](./_mygame_import.i) (unchanged)


# Translation

Current status of translation work.

> __NOTE__ — This sections hasn't been updated for a long time; to check the actual status see the [CHANGELOG] file instead.

## Directions and Movement

- [`lib_luoghi.i`][lib_luoghi]

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

- [`lib_messaggi.i`][lib_messaggi]

This is the status of the messages relating to directions and movements:

|   messg   |              translation               |
|-----------|----------------------------------------|
| `NO_WAY:` | "Non puoi andare in quella direzione." |

> __NOTE 1__ — "Non puoi andare in quella direzione." was taken from i6 translation; i7 uses "Non puoi andare da quella parte." instead.


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


