# Documentazione di Alan Italian

Questa è la cartella di lavoro per la creazione automatizzata della documentazione della libreria Alan Italian.


-----

**Indice dei contenuti**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Contenuti della cartella](#contenuti-della-cartella)
- [Introduzione](#introduzione)
    - [Organizzazione dei contenuti](#organizzazione-dei-contenuti)
    - [Requisiti di sistema](#requisiti-di-sistema)
    - [Riguardo Doxter](#riguardo-doxter)

<!-- /MarkdownTOC -->

-----

# Contenuti della cartella

- [`./adoc/`][adoc] — risorse per la toolchain HTML di Asciidoctor.
- [`./haml/`][haml] — template Haml HTML personalizzati per Asciidoctor.
- [`./sass/`][sass] — sorgenti Sass/SCSS di [`../docs/css/styles.css`][styles.css].
- [`attributes-it.adoc`][attributes-it] — traduzione italiana attributi AsciiDoc (a cura di Marco Ciampa).
- [`DOCUMENTA.bat`][DOCUMENTA.bat] — script per generare la documentazione.
- [`index.asciidoc`][index adoc] — homepage della documentazione.


# Introduzione

La libreria Alan Italian è documentata nel formato [AsciiDoc].

Questa cartella di lavoro contiene lo script per generare la documentazione, i vari sorgenti AsciiDoc (autogenerati e non) e altre risorse impiegate nel processo di creazione della documentazione HTML.

La documentazione HTML finale viene creata nella cartella [`../docs/`][docs] del progetto.

## Organizzazione dei contenuti

La documentazione è suddivisa in due gruppi:

- Documentazione dei moduli della libreria.
- Guida all'uso della libreria.

Il primo gruppo consiste in un documento di accompagnamento per ciascun modulo della libreria, generato tramite Doxter dai commenti nel codice dei moduli stessi.
Questi documenti sono guide di riferimento ai singoli moduli, destinate sia agli autori di avventure che agli sviluppatori della libreria.

Il secondo gruppo è invece finalizzato a offrire una guida esaustiva all'uso della libreria, offrendo esempi pratici e spiegazioni dettagliate. I documenti di questo gruppo riutilizzano porzioni di testo e codice della documentazione dei moduli della libreria, importandoli tramite la direttiva `include` di Asciidoctor.

L'intero progetto della documentazione è basato sull'impiego di [regioni taggate] e il loro riutilizzo tramite inclusione. 
Poiché parti significative dei contenuti e del codice utilizzati nella documentazione vengono estratti direttamente dai sorgenti della libreria (tramite Doxter), questo approccio garantisce che la documentazione sarà sempre ed automaticamente aggiornata all'ultima versione del codice.


[regioni taggate]: https://asciidoctor.org/docs/user-manual/#include-partial "Leggi la documentazione di Asciidoctor riguardo le regioni taggate"


La seguente tabella illustra la catena di lavoro dei file della documentazione.

|                            input Doxter                           |                        input Asciidoctor                         |                            output HTML                             |
|-------------------------------------------------------------------|------------------------------------------------------------------|--------------------------------------------------------------------|
|                                                                   | [`./index.asciidoc`][index adoc]                                 | [`../docs/index.html`][index html]                                 |
| [`../alanlib_ita/libreria.i`][libreria]                           | [`./libreria.asciidoc`][libreria adoc]                           | [`../docs/libreria.html`][libreria html]                           |
| [`../alanlib_ita/lib_classi.i`][lib_classi]                       | [`./lib_classi.asciidoc`][lib_classi adoc]                       | [`../docs/lib_classi.html`][lib_classi html]                       |
| [`../alanlib_ita/lib_definizioni.i`][lib_definizioni]             | [`./lib_definizioni.asciidoc`][lib_definizioni adoc]             | [`../docs/lib_definizioni.html`][lib_definizioni html]             |
| [`../alanlib_ita/lib_luoghi.i`][lib_luoghi]                       | [`./lib_luoghi.asciidoc`][lib_luoghi adoc]                       | [`../docs/lib_luoghi.html`][lib_luoghi html]                       |
| [`../alanlib_ita/lib_messaggi_runtime.i`][lib_messaggi_runtime]   | [`./lib_messaggi_libreria.asciidoc`][lib_messaggi_libreria adoc] | [`../docs/lib_messaggi_libreria.html`][lib_messaggi_libreria html] |
| [`../alanlib_ita/lib_messaggi_libreria.i`][lib_messaggi_libreria] | [`./lib_messaggi_runtime.asciidoc`][lib_messaggi_runtime adoc]   | [`../docs/lib_messaggi_runtime.html`][lib_messaggi_runtime html]   |
| [`../alanlib_ita/lib_verbi.i`][lib_verbi]                         | [`./lib_verbi.asciidoc`][lib_verbi adoc]                         | [`../docs/lib_verbi.html`][lib_verbi html]                         |
| [`../alanlib_ita/lib_supplemento.i`][lib_supplemento]             | [`./lib_supplemento.asciidoc`][lib_supplemento adoc]             | [`../docs/lib_supplemento.html`][lib_supplemento html]             |

I file AsciiDoc autogenerati tramite Doxter sono ignorati da Git, mentre i documenti gestiti manualmente sono parte integrante del progetto.

## Requisiti di sistema

La creazione della documentazione è gestita da un singolo batch script per Windows:

- [`DOCUMENTA.bat`][DOCUMENTA.bat]

Per la creazione della documentazione finale in formato HTML, il progetto utilizza i seguenti strumenti:

- [Doxter]
- [AsciiDoctor]  (Ruby)
- [Highlight] `>= v3.49`

## Riguardo Doxter

I moduli sorgenti della libreria contengono la propria documentazione nei commenti del codice, impiegando il sistema di notazione di Doxter.

Lo script [`DOCUMENTA.bat`][DOCUMENTA.bat] gestisce in maniera automatica l'estrazione della documentazione AsciiDoc dai sorgenti della libreria e la conversione al formato HTML di tutta la documentazione del progetto.

Per maggior informazioni riguardo la suddivisione della documentazione in regioni taggate, vedi:

- [`DOXTER.md`][DOXTER.md] — Annotazioni Doxter.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>


[Doxter]: https://github.com/tajmone/doxter "Visita il repository di Doxter su GitHub"
[AsciiDoc]: http://asciidoc.org/ "Visita il sito di AsciiDoc"
[AsciiDoctor]: https://asciidoctor.org/ "Visita il sito di Asciidoctor"
[Highlight]: http://www.andre-simon.de/ "Visita il sito di Highlight"


<!-- FILE DI PROGETTO -->

[DOCUMENTA.bat]: ./DOCUMENTA.bat "Vedi sorgente"
[docs]: ../docs/ "Vai alla cartella"
[attributes-it]: ./attributes-it.adoc "Vedi sorgente"

[DOXTER.md]: ./DOXTER.md "Leggi il documento 'Annotazioni Doxter'"

[adoc]: ./adoc/ "Vai alla cartella"
[haml]:  ./haml/  "Vai alla cartella"
[sass]: ./sass/ "Vai alla cartella"

[styles.css]: ../docs/css/styles.css "Vedi sorgente del foglio di stile"

<!-- MODULI LIBRERIA -->

[libreria]:              ../alanlib_ita/libreria.i
[lib_classi]:            ../alanlib_ita/lib_classi.i
[lib_definizioni]:       ../alanlib_ita/lib_definizioni.i
[lib_luoghi]:            ../alanlib_ita/lib_luoghi.i
[lib_messaggi_runtime]:  ../alanlib_ita/lib_messaggi_runtime.i
[lib_messaggi_libreria]: ../alanlib_ita/lib_messaggi_libreria.i
[lib_verbi]:             ../alanlib_ita/lib_verbi.i
[lib_supplemento]:       ../alanlib_ita/lib_supplemento.i


<!-- FILE DOCUMENTAZIONE  -->

[index adoc]: ./index.asciidoc
[index html]: ../docs/index.html
[index html live]: http://htmlpreview.github.io/?https://github.com/tajmone/Alan3-Italian/blob/master/docs/index.html "Live HTML Preview via GitHub & BitBucket HTML Preview"

[libreria adoc]: ./libreria.asciidoc
[libreria html]: ../docs/libreria.html
[libreria html live]: http://htmlpreview.github.io/?https://github.com/tajmone/Alan3-Italian/blob/master/docs/libreria.html "Live HTML Preview via GitHub & BitBucket HTML Preview"

[lib_classi adoc]: ./lib_classi.asciidoc
[lib_classi html]: ../docs/lib_classi.html
[lib_classi html live]: http://htmlpreview.github.io/?https://github.com/tajmone/Alan3-Italian/blob/master/docs/lib_classi.html "Live HTML Preview via GitHub & BitBucket HTML Preview"

[lib_definizioni adoc]: ./lib_definizioni.asciidoc
[lib_definizioni html]: ../docs/lib_definizioni.html
[lib_definizioni html live]: http://htmlpreview.github.io/?https://github.com/tajmone/Alan3-Italian/blob/master/docs/lib_definizioni.html "Live HTML Preview via GitHub & BitBucket HTML Preview"

[lib_luoghi adoc]: ./lib_luoghi.asciidoc
[lib_luoghi html]: ../docs/lib_luoghi.html
[lib_luoghi html live]: http://htmlpreview.github.io/?https://github.com/tajmone/Alan3-Italian/blob/master/docs/lib_luoghi.html "Live HTML Preview via GitHub & BitBucket HTML Preview"

[lib_messaggi_runtime adoc]: ./lib_messaggi_runtime.asciidoc
[lib_messaggi_runtime html]: ../docs/lib_messaggi_runtime.html
[lib_messaggi_runtime html live]: http://htmlpreview.github.io/?https://github.com/tajmone/Alan3-Italian/blob/master/docs/lib_messaggi_runtime.html "Live HTML Preview via GitHub & BitBucket HTML Preview"

[lib_messaggi_libreria adoc]: ./lib_messaggi_libreria.asciidoc
[lib_messaggi_libreria html]: ../docs/lib_messaggi_libreria.html
[lib_messaggi_libreria html live]: http://htmlpreview.github.io/?https://github.com/tajmone/Alan3-Italian/blob/master/docs/lib_messaggi_libreria.html "Live HTML Preview via GitHub & BitBucket HTML Preview"

[lib_verbi adoc]: ./lib_verbi.asciidoc
[lib_verbi html]: ../docs/lib_verbi.html
[lib_verbi html live]: http://htmlpreview.github.io/?https://github.com/tajmone/Alan3-Italian/blob/master/docs/lib_verbi.html "Live HTML Preview via GitHub & BitBucket HTML Preview"

[lib_supplemento adoc]: ./lib_supplemento.asciidoc
[lib_supplemento html]: ../docs/lib_supplemento.html
[lib_supplemento html live]: http://htmlpreview.github.io/?https://github.com/tajmone/Alan3-Italian/blob/master/docs/lib_supplemento.html "Live HTML Preview via GitHub & BitBucket HTML Preview"

<!-- EOF -->
