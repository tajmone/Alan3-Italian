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
- [Annotazioni Doxter](#annotazioni-doxter)
    - [Regioni e pesi nella documentazione](#regioni-e-pesi-nella-documentazione)
    - [Modulo Classi](#modulo-classi)
    - [Modulo Definizioni](#modulo-definizioni)
    - [Modulo Luoghi](#modulo-luoghi)
    - [Modulo Messaggi Runtime](#modulo-messaggi-runtime)
    - [Modulo Messaggi Libreria](#modulo-messaggi-libreria)
    - [Modulo Verbi](#modulo-verbi)
    - [Modulo Supplementare](#modulo-supplementare)

<!-- /MarkdownTOC -->

-----

# Contenuti della cartella

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

## Riguardo Doxter

I moduli sorgenti della libreria contengono la propria documentazione nei commenti del codice, impiegando il sistema di notazione di Doxter.

Lo script [`DOCUMENTA.bat`][DOCUMENTA.bat] gestisce in maniera automatica l'estrazione della documentazione AsciiDoc dai sorgenti della libreria e la conversione al formato HTML di tutta la documentazione del progetto.

# Annotazioni Doxter

## Regioni e pesi nella documentazione

Nei file sorgenti, la documentazione è spezzettata in vari frammenti; ciascun frammento appartiene ad una regione taggata nel documento finale.
Ogni regione ha un tag identificativo univoco, e i vari frammenti sparsi appartenenti alla medesima regione verrano collati assieme nel documento finale.
Doxter offre un sistema di marcatura dei commenti che consente di assegnare a ciascuna regione un peso; nel documento finale le varie regioni verranno ordinate per peso.
I frammenti delle regioni hanno un sottopeso; durante la fase di collatura del documento i vari frammenti di ciascuna regione verrano ordinati per sottopeso prima di essere fusi assieme.

Questo sistema consente di produrre un documento finale in cui i vari frammenti testuali sono ordinati in maniera arbitraria, a prescindere dall'ordine in cui i medesimi appaiono nel codice sorgente.

Per maggiori dettagli sull'uso delle regioni e del loro sistema di pesi e sottopesi, si rimanda alla documentazione di [Doxter].

Le tabelle riportate qui di seguito annotano l'ordine dei pesi utilizzati in ciascun modulo della libreria, al fine di facilitarne la tracciatura durante il laovoro di editing.


## Modulo Classi

- [`lib_classi.i`][lib_classi]


| weight   | subw      | tag                         | descrizione                               |
| -------: | --------: | :-------------------------- | :---------------------------------------- |
| 100      | 1         | `intro`                     | == Introduzione                           |
| 1000     | 1         | `elenco_classi`             | === Elenco e Descrizione delle Classi     |
| 10000    | 1         | `vestiario`                 | == Vestiario                              |
| 10900    | 1         | `vestiario_istruzioni`      | === Istruzioni per l'Uso del Vestiario    |
| 10950    | 1         | `tabella_vestiario_intro`   | == La Tabella del Vestiario               |
| 10960    | 1         | `tabella_vestiario`         | [tabella vestiario]                       |
| 11000    | 1         | `dispositivi`               | == Dispositivi                            |
| 12000    | 1         | `porte`                     | == Porte                                  |
| 13000    | 1         | `finestre`                  | == Finestre                               |
| 14000    | 1         | `fonte_di_luce`             | == Fonti di Luce                          |
| 15000    | 1         | `liquido`                   | == Liquidi                                |
| 16000    | 1         | `contenitore_elencato`      | == Contenitore Elencato                   |
| 17000    | 1         | `suono`                     | == Suoni                                  |
| 18000    | 1         | `supporto`                  | == Supporti                               |
| 19000    | 1         | `arma`                      | == Armi                                   |
| 20000    | 1         | `classi_attori`             | == Attori                                 |
| 21000    | 1         | `sottoclassi_attori`        | == Sottoclassi di ACTOR                   |
| 30000    | 1         | `oggetti_fittizi`           | == Oggetti Fittizi                        |
| 50000    |           | `todo`                      | TODO                                      |
| 51000    | 1-33      | `todo_checklist`            | === Check List Generale                   |
| 51000    | 665-666   | `todo_checklist`            | === Check List Doxter                     |

<!-- 
| 00000  |       | xxxxxxxxxxxxxxxxxx | xxxxxxxxxx |
-->

## Modulo Definizioni

- [`lib_definizioni.i`][lib_definizioni]


| weight   | subw      | tag                         | descrizione                               |
| -------: | --------: | :-------------------------- | :---------------------------------------- |
| 4000     |           | `restrizioni_verbali`       | == Le Restrizioni Verbali                 |
| 4100     |           | `restrizioni_tradotte`      | === Elenco delle Restrizioni Verbali      |
| 9000     | 1         | `intestazione`              | == L'Intestazione dell'Avventura (Banner) |
|          | 20        | `intestazione`              | === Attributi dell'Intestazione           |
| 50000    |           | `todo`                      | TODO                                      |
| 50100    |           | `restrizioni_non_tradotte`  | === Restrizioni Verbali da Tradurre       |


<!-- 
| 00000  |       | xxxxxxxxxxxxxxxxxx | xxxxxxxxxx |
-->


## Modulo Luoghi

- [`lib_luoghi.i`][lib_luoghi]


| weight   | subw      | tag                         | descrizione                               |
| -------: | --------: | :-------------------------- | :---------------------------------------- |
| 100      | 1         | `intro`                     | == Introduzione                           |
| 50000    |           | `todo`                      | TODO                                      |
| 51000    | 1-33      | `todo_checklist`            | === Check List Generale                   |
| 51000    | 665-666   | `todo_checklist`            | === Check List Doxter                     |

<!-- 
| 00000  |       | xxxxxxxxxxxxxxxxxx | xxxxxxxxxx |
-->

## Modulo Messaggi Runtime

- [`lib_messaggi_runtime.i`][lib_messaggi_runtime]


| weight   | subw      | tag                         | descrizione                               |
| -------: | --------: | :-------------------------- | :---------------------------------------- |
| 100      | 1         | `messaggi_runtime`          | ==  Messaggi Runtime di Alan              |
| 50000    |           | `todo`                      | TODO                                      |
| 51000    | 1-33      | `todo_checklist`            | === Check List Generale                   |
| 51000    | 665-666   | `todo_checklist`            | === Check List Doxter                     |

<!-- 
| 00000  |       | xxxxxxxxxxxxxxxxxx | xxxxxxxxxx |
-->


## Modulo Messaggi Libreria

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria]


| weight   | subw      | tag                         | descrizione                                          |
| -------: | --------: | :-------------------------- | :----------------------------------------            |
| 100      | 1         | `messaggi_libreria`         | ==  Messaggi della Libreria                          |
| 500      | 1         | `libmsg_convenzioni`        | === Convenzioni negli identificativi degli attributi |
| 1000     |           | `libmsg_tipi`               | == Tipologie di Messaggi                             |
| 2000     |           | `msg_hero`                  | === Messaggi riguardanti il protagonista             |
| 3000     |           | `msg_ripetuti`              | === Risposte Ripetute                                |
| 50000    |           | `todo`                      | TODO                                                 |
| 51000    | 1-33      | `todo_checklist`            | === Check List Generale                              |
| 51000    | 665-666   | `todo_checklist`            | === Check List Doxter                                |

<!-- 
| 00000  |       | xxxxxxxxxxxxxxxxxx | xxxxxxxxxx |
-->

## Modulo Verbi

- [`lib_verbi.i`][lib_verbi]

| weight   | subw      | tag                         | descrizione                                |
| -------: | --------: | :-------------------------- | :----------------------------------------  |
| 1000     |           | `elenco_verbi`                | == Elenco Completo dei Verbi               |
| 1010     |           | `tabella_verbi_partita`       | === Tabella Comandi di Partita             |
| 1020     |           | `tabella_verbi_gioco`         | === Tabella Comandi di Gioco               |
| 1030     |           | `tabella_verbi_domande`       | === Tabella Comandi Domande                |
| 10000    |           | `comandi_partita`             | == Meta Verbi di Partita                   |
| 10100    |           | `gruppo_file`                 | === Salvataggio e Caricamento              |
| 10200    |           | `gruppo_trascrizione`         | === Trascrizione della Partita             |
| 10300    |           | `gruppo_punteggio`            | === Punteggio e Notifiche                  |
| 10400    |           | `gruppo_verbosity`            | === Descrizioni Brevi e Lunghe             |
| 10500    |           | `gruppo_info`                 | === Istruzioni, Info e Aiuto               |
| 19999    |           | `gruppo_misc_meta`            | === Meta Verbi Vari                        |
| 20000    |           | `comandi_gioco`               | == Verbi di Gioco                          |
| 20100    |           | `gruppo_accendi`              | == Accensione e Spegnimento                |
| 20200    |           | `gruppo_apri`                 | == Apertura e Chiusura                     |
| 20300    |           | `gruppo_sensi`                | == Azioni Sensoriali                       |
| 20400    |           | `gruppo_conversare`           | == Conversare                              |
| 20500    |           | `gruppo_mangiabevi`           | == Mangiare e Bere                         |
| 20600    |           | `gruppo_svuota`               | == Svuotare e Versare                      |
| 20700    |           | `gruppo_guarda`               | == Guardare ed Esaminare                   |
| 20800    |           | `gruppo_commercio`            | == Commerciare                             |
| 20900    |           | `gruppo_rompi_aggiusta`       | == Rompere, Strappare, Tagliare e Riparare |
| 21000    |           | `gruppo_dare`                 | == Dare e Prendere                         |
| 21100    |           | `gruppo_vestirsi`             | == Vestirsi e Svestirsi                    |
| 21200    |           | `gruppo_mettere`              | == Mettere                                 |
| 21300    |           | `gruppo_saltare`              | == Saltare                                 |
| 21400    |           | `gruppo_sedersi`              | == Posizionarsi su Superfici               |
| 21500    |           | `gruppo_lanciare`             | == Lanciare                                |
| 21600    |           | `gruppo_nuotare`              | == Nuotare e Tuffarsi                      |
| 21700    |           | `gruppo_spingere`             | == Spingere, Tirare e Sollevare            |
| 21800    |           | `gruppo_attaccare`            | == Attaccare e Simili                      |
| 21900    |           | `gruppo_leggere`              | == Leggere e Scrivere                      |
| 22000    |           | `gruppo_bruciare`             | == Bruciare                                |
| 22100    |           | `gruppo_usare`                | == Usare                                   |
| 22200    |           | `gruppo_pensare`              | == Pensare                                 |
| 22300    |           | `gruppo_entrare`              | == Entrare e Uscire                        |
| 22400    |           | `gruppo_sparare`              | == Sparare                                 |
| 29999    |           | `gruppo_sfusi`                | == Verbi Sfusi                             |
| 30000    |           | `comandi_comandi_domande`     | == Verbi di Domande                        |
| 30100    |           | `gruppo_chi`                  | == Domanda Chi                             |
| 30200    |           | `gruppo_cosa`                 | == Domanda Cosa                            |
| 30300    |           | `gruppo_dove`                 | == Domanda Dove                            |
| 30400    |           | `gruppo_risposte`             | == Risposte                                |
| 50000    |           | `todo`                        | == TODO                                    |
| 50100    |           | `verbi_non_tradotti`          | === Verbi da Tradurre                      |
| 51000    |           | `todo_checklist`              | === Check List                             |

<!--
| 00000  |         | xxxxxxxxxxxxxxxxxx | xxxxxxxxxx
| 000  |         | gruppo_XXXXX            | == XXXXX
| 010  |         | verbo_YYYYY                 | ==== YYYYY
-->

## Modulo Supplementare

- [`lib_supplemento.i`][lib_supplemento]


| weight   | subw      | tag                         | descrizione                               |
| -------: | --------: | :-------------------------- | :---------------------------------------- |
| 100      | 1         | `intro`                     | == Introduzione                           |
| 1000     | 1         | `player_words`              | == Predefined Player Words                |
| 50000    |           | `todo`                      | TODO                                      |
| 51000    | 1-33      | `todo_checklist`            | === Check List Generale                   |
| 51000    | 665-666   | `todo_checklist`            | === Check List Doxter                     |


<!-- 
| 00000  |       | xxxxxxxxxxxxxxxxxx | xxxxxxxxxx |
-->

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[Doxter]: https://github.com/tajmone/doxter "Visita il repository di Doxter su GitHub"
[AsciiDoc]: http://asciidoc.org/ "Visita il sito di AsciiDoc"
[AsciiDoctor]: https://asciidoctor.org/ "Visita il sito di Asciidoctor"

<!-- FILE DI PROGETTO -->

[DOCUMENTA.bat]: ./DOCUMENTA.bat "Vedi sorgente"
[docs]: ../docs/ "Vai alla cartella"
[attributes-it]: ./attributes-it.adoc "Vedi sorgente"


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

[Doxter]: https://git.io/doxter "Visit Doxter website"



<!-- EOF -->