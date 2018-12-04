# Annotazioni Doxter

Appunti di lavoro sull'organizzazione della documentazione di Alan Italian in regioni taggate di [Doxter].


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

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

# Regioni e pesi nella documentazione

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
| 100      | 1         | `libmsg_intro`              | ==  Messaggi della Libreria                          |
| _auto_   | _auto_    | `libmsg_intro`              | [cont: spiega `blocco_definizioni`]                  |
| 200      | 1         | `libmsg_organizzazione`     | === Organizzazione dei messaggi                      |
| 500      | 1         | `libmsg_convenzioni`        | === Convenzioni negli identificativi degli attributi |
| 1000     | _auto_    | `msg_hero`                  | == L'eroe                      |
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

<!-- MODULI LIBRERIA -->

[libreria]:              ../alanlib_ita/libreria.i
[lib_classi]:            ../alanlib_ita/lib_classi.i
[lib_definizioni]:       ../alanlib_ita/lib_definizioni.i
[lib_luoghi]:            ../alanlib_ita/lib_luoghi.i
[lib_messaggi_runtime]:  ../alanlib_ita/lib_messaggi_runtime.i
[lib_messaggi_libreria]: ../alanlib_ita/lib_messaggi_libreria.i
[lib_verbi]:             ../alanlib_ita/lib_verbi.i
[lib_supplemento]:       ../alanlib_ita/lib_supplemento.i


<!-- EOF -->