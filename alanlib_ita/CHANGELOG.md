# CHANGELOG

    Status: Alpha stage | Log Range: Alpha v0.8.0–.

Changelog of Italian translation of Alan Standard Library v2.1.

This is the current changelog from Alpha v0.8.0 upward — the CHANGELOG was split into two files due to its huge size.

For previuos changes, see:

- [`CHANGELOG_OLD.md`](./CHANGELOG_OLD.md)  (v0.0.1–0.8.0)


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [2018/11/13 \(2\)](#20181113-2)
    - [Pulizia documentazione verbi](#pulizia-documentazione-verbi)
    - [Documenta il baco della "è"](#documenta-il-baco-della-%C3%A8)
- [2018/11/13 \(1\)](#20181113-1)
    - [Bump to v0.8.0: All Verbs Translated](#bump-to-v080-all-verbs-translated)

<!-- /MarkdownTOC -->

-----

# 2018/11/13 (2)

- [`lib_verbi.i`][lib_verbi] (v0.8.1)

## Pulizia documentazione verbi

Questo commit mette un po' d'ordine nella documentazione dei verbi:

- Organizza meglio il gruppo dei "Verbi di Domande".

## Documenta il baco della "è"

- Documenta il baco della `è` grave nelle sintassi.

Inoltre, i verbi di domande che coinvolgono la "è" sono stati modificati: prima tutte le `è` erano stato sostituite da `é`; ora i verbi sono definiti usando la `è` grave come sintassi primaria, e la `é` acuta è utilizzata per creare sintassi alternative che raggirino il baco. Questo fa sì che quando il baco verrà risolto sarà possibile rimuovere le sintassi alternative e preservare quelle primarie.

- Crea test per i verbi di domande e il baco `è`.

È stato aggiunto file di test apposito per testare il baco della `è` e il funzionamento delle sintassi alternative che ripiegano sulla `é`:

- [`../test/casa_verbi-domande.a3sol`](../test/casa_verbi-domande.a3sol)
- [`../test/casa_verbi-domande.a3log`](../test/casa_verbi-domande.a3log)

Grazie alle trascrizioni dei test, sarà possibile rilevare automaticamente eventuali modifiche del comportamento di Alan quando, in futuro, verrà risolto il baco.

<!---------------------------------------------------------------------------->

# 2018/11/13 (1)

- [`libreria.i`][libreria] (v0.8.0)
- [`lib_classi.i`][lib_classi] (v0.8.0)
- [`lib_definizioni.i`][lib_definizioni] (v0.8.0)
- [`lib_luoghi.i`][lib_luoghi] (v0.8.0)
- [`lib_messaggi.i`][lib_messaggi] (v0.8.0)
- [`lib_verbi.i`][lib_verbi] (v0.8.0)
- [`lib_supplemento.i`][lib_supplemento] (v0.8.0)

## Bump to v0.8.0: All Verbs Translated

With this commit all library verbs and their restriction attributes have been now translated. 

Bump up all library files version to 0.8.0.



<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

<!-- NEW LIBRARY FILENAMES -->

[libreria]:         ./libreria.i
[lib_classi]:       ./lib_classi.i
[lib_definizioni]:  ./lib_definizioni.i
[lib_luoghi]:       ./lib_luoghi.i
[lib_messaggi]:     ./lib_messaggi.i
[lib_verbi]:        ./lib_verbi.i
[lib_supplemento]:  ./lib_supplemento.i

[tests]: ../tests/

<!-- Library Documentation  -->

[Doxter]: https://git.io/doxter "Visit Doxter website"

[ANNOTAZIONI_DOXTER]: ./ANNOTAZIONI_DOXTER.adoc
[BUILD_DOCS]: ./BUILD_DOCS.bat

[lib_verbi adoc]: ./lib_verbi.asciidoc
[lib_verbi html]: ./lib_verbi.html
[lib_verbi html live]: http://htmlpreview.github.io/?https://github.com/tajmone/Alan3-Italian/blob/master/alanlib_ita/lib_verbi.html "Live HTML Preview via GitHub & BitBucket HTML Preview"

<!-- External Links ---------------------------------------------------------->

[Alan StdLib upstream repository]: https://github.com/AnssiR66/AlanStdLib

[AlanStdLib]: https://github.com/AnssiR66/AlanStdLib

[Alan SDK 3.0beta6]: https://www.alanif.se/download-alan-v3/development-kits/development-kits-3-0beta6

<!-- StdLib Issues & PRs ----------------------------------------------------->


<!-- EOF -->