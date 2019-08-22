# Libreria Standard Italiana di Alan

Questa cartella contiene l'adattamento italiano della [Alan Standard Library] v2.1 di [Anssi Räisänen], a cura di [Tristano Ajmone]

> **AVVERTENZA** — Questo documento viene aggiornato sporadicamente e potrebbe non rispecchiare lo stato attuale della Libreria.


-----

**Indice**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Contenuti della cartella](#contenuti-della-cartella)
    - [Modulo Italian](#modulo-italian)
    - [Moduli della libreria](#moduli-della-libreria)
    - [File ausiliari](#file-ausiliari)
    - [Documentazione della Liberia](#documentazione-della-liberia)

<!-- /MarkdownTOC -->

-----


# Contenuti della cartella

## Modulo Italian

- [`lib_italian.i`][lib_italian]

Il modulo `lib_italian.i` può essere utilizzato indipendentemente dalla __Libreria Standard Italiana__. Esso offre il supporto per la lingua italiana in Alan, consentendo di creare avventure testuali in italiano _ad hoc_, ossia creando da zero tutti i verbi e le classi specializzate, secondo necessità.

Il vantaggio di questo approccio, rispetto ad utilizzare la Libreria Standard, è la totale libertà autoriale per creare un mondo su misura per la propria avventura.
L'ovvio svantaggio è il dover "reinventare la ruota", dato che si dovranno implementare tutti le classi di base e i verbi d'uso comune presenti nella Libreria (quasi 200 verbi).


## Moduli della libreria

I moduli sorgenti della __Libreria Standard Italiana__ di Alan:

- [`libreria.i`][libreria] — adattamento di `library.i`, il modulo principale che importa tutti gli altri:
    + [`lib_classi.i`][lib_classi] — adattamento di `lib_classes.i`.
    + [`lib_classi_vestiario.i`][lib_classi_vestiario] — adattamento di `lib_classes.i`.
    + [`lib_definizioni.i`][lib_definizioni] — adattamento di `lib_definitions.i`.
    + [`lib_italian.i`][lib_italian] — aggiunge il supporto per la lingua italiana, non presente nella StdLib originale.
    + [`lib_luoghi.i`][lib_luoghi] — adattamento di `lib_locations.i`.
    + [`lib_messaggi_libreria.i`][lib_messaggi_libreria] — adattamento di verb responses attributes from `lib_definitions.i`.
    + [`lib_messaggi_runtime.i`][lib_messaggi_runtime] — adattamento di `lib_messages.i`.
    + [`lib_verbi.i`][lib_verbi] — adattamento di `lib_verbs.i`.


## File ausiliari

I vari _boilerplate_ e template della StdLib sono stati rinominati prefiggendo un trattino basso, per poterli distinguere dai file indispensabili della Libreria:

- [`_newgame_ita.alan`](./_newgame_ita.alan) — adattamento di `newgame.alan`

> __NOTA__ — Il file `_mygame_import.i` (adattamento dell'originale `'mygame_import.i`) è stato rimosso poiché era troppo impegnativo mantenerlo aggiornato al passo con la Libreria. Quando l'opera di adattamento della Libreria sarà terminato, sarò possibile ricrearlo da zero.

## Documentazione della Liberia

La Libreria utilizza un sistema di documentazione automatizzato in grado di estrarre la documentazione dai commenti nei moduli sorgenti stessi, in formato AsciiDoc, tramite [Doxter]. I file AsciiDoc sono poi convertiti in HTML:

- [`libreria.html`][libreria html]  ([Live HTML Preview][libreria html live])
- [`lib_classi.html`][lib_classi html]  ([Live HTML Preview][lib_classi html live])
- [`lib_classi_vestiario.html`][lib_classi_vestiario html]  ([Live HTML Preview][lib_classi_vestiario html live])
- [`lib_definizioni.html`][lib_definizioni html]  ([Live HTML Preview][lib_definizioni html live])
- [`lib_italian.html`][lib_italian html]  ([Live HTML Preview][lib_italian html live])
- [`lib_luoghi.html`][lib_luoghi html]  ([Live HTML Preview][lib_luoghi html live])
- [`lib_messaggi_libreria.html`][lib_messaggi_libreria html]  ([Live HTML Preview][lib_messaggi_libreria html live])
- [`lib_messaggi_runtime.html`][lib_messaggi_runtime html]  ([Live HTML Preview][lib_messaggi_runtime html live])
- [`lib_verbi.html`][lib_verbi html]  ([Live HTML Preview][lib_verbi html live])

Per maggiori informazioni su come viene create la documentazione, vedi:

- [`../docs_src/`](../docs_src/)

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[Alan Standard Library]: https://github.com/AnssiR66/AlanStdLib "Vedi il repository ufficiale della Alan Standard Library su GitHub"
[CHANGELOG]: ./CHANGELOG.md

<!-- file di progetto -->

[CHANGELOG_OLD]: ./CHANGELOG_OLD.md

<!-- OLD LIBRARY FILENAMES -->

[library]:         ./libreria.i
[lib_classes]:     ./lib_classi.i
[lib_definitions]: ./lib_definizioni.i
[lib_locations]:   ./lib_luoghi.i
[lib_messages]:    ./lib_messaggi.i
[lib_verbs]:       ./lib_verbi.i

<!-- NEW LIBRARY FILENAMES -->

[libreria]:              ./libreria.i
[lib_classi]:            ./lib_classi.i
[lib_classi_vestiario]:  ./lib_classi_vestiario.i
[lib_definizioni]:       ./lib_definizioni.i
[lib_italian]:           ./lib_italian.i
[lib_luoghi]:            ./lib_luoghi.i
[lib_messaggi_libreria]: ./lib_messaggi_libreria.i
[lib_messaggi_runtime]:  ./lib_messaggi_runtime.i
[lib_verbi]:             ./lib_verbi.i

<!-- Documentazione Libreria  -->


[libreria html]: ../docs/libreria.html
[libreria html live]: https://tajmone.github.io/Alan3-Italian/libreria.html "Anteprima HTML sul sito Alan Italian"

[lib_classi html]: ../docs/lib_classi.html
[lib_classi html live]: https://tajmone.github.io/Alan3-Italian/lib_classi.html "Anteprima HTML sul sito Alan Italian"

[lib_classi_vestiario html]: ../docs/lib_classi_vestiario.html
[lib_classi_vestiario html live]: https://tajmone.github.io/Alan3-Italian/lib_classi_vestiario.html "Anteprima HTML sul sito Alan Italian"

[lib_definizioni html]: ../docs/lib_definizioni.html
[lib_definizioni html live]: https://tajmone.github.io/Alan3-Italian/lib_definizioni.html "Anteprima HTML sul sito Alan Italian"

[lib_italian html]: ../docs/lib_italian.html
[lib_italian html live]: https://tajmone.github.io/Alan3-Italian/lib_italian.html "Anteprima HTML sul sito Alan Italian"

[lib_luoghi html]: ../docs/lib_luoghi.html
[lib_luoghi html live]: https://tajmone.github.io/Alan3-Italian/lib_luoghi.html "Anteprima HTML sul sito Alan Italian"

[lib_messaggi_runtime html]: ../docs/lib_messaggi_runtime.html
[lib_messaggi_runtime html live]: https://tajmone.github.io/Alan3-Italian/lib_messaggi_runtime.html "Anteprima HTML sul sito Alan Italian"

[lib_messaggi_libreria html]: ../docs/lib_messaggi_libreria.html
[lib_messaggi_libreria html live]: https://tajmone.github.io/Alan3-Italian/lib_messaggi_libreria.html "Anteprima HTML sul sito Alan Italian"

[lib_verbi html]: ../docs/lib_verbi.html
[lib_verbi html live]: https://tajmone.github.io/Alan3-Italian/lib_verbi.html "Anteprima HTML sul sito Alan Italian"


[Doxter]: https://git.io/doxter "Visit Doxter website"

<!-- persone -->

[Anssi Räisänen]: https://github.com/AnssiR66 "Vedi il profile GitHub di Anssi Räisänen"
[Tristano Ajmone]: https://github.com/tajmone "Vedi il profile GitHub di Tristano Ajmone"

<!-- EOF -->
