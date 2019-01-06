# Test "Casa" della Libreria Italiana

    /test/casa/

Questa cartella contiene una sola avventura ("La Casa") sulla quale vengono eseguiti una moltitudine di test.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Contenuti](#contenuti)
    - [Script di esecuzione](#script-di-esecuzione)
    - [Sorgenti avventura](#sorgenti-avventura)
    - [Mappa](#mappa)
- [Organizzazione dei test](#organizzazione-dei-test)

<!-- /MarkdownTOC -->

-----

# Contenuti

## Script di esecuzione

Per eseguire tutti i test in questa directory, eseguire:

- [`MULTITEST.bat`][MULTITEST]

## Sorgenti avventura

- [`casa.alan`][casa] — sorgente principale.
- [`inc_debaca.i`][inc_debaca] — modulo verbi e funzioni di "debug".

## Mappa

- [`casa.trizbort`][casa.trizbort] — mappa sorgente dell'avventura, creata con [Trizbort].
- [`casa.png`][casa.png] — mappa esportata in formato immagine.

![mappa avventura](casa.png "La mappa dell'avventura (creata con Trizbort)")

# Organizzazione dei test

Sebbene il sistema formale per l'organizzazione dei test sia ancora in fase di elaborazione, sono stati adottati dei suffissi nei nomi degli script di comandi (e di log trascrizione) al fine di facilitare l'individuazione dei vari test:

|  suffisso  |                                 descrizione                                  |
|------------|------------------------------------------------------------------------------|
| `azioni_*` | Test riguardandi un gruppo di azioni specifiche.                             |
| `classi_*` | Test mirati a collaudare specifiche classi della libreria.                   |
| `testa_*`  | Test riguardanti moduli di debug o elementi strutturali dell'avventura base. |
| `verbi_*`  | Test estesi coinvolgenti un gruppo di verbi affini.                          |

Nello specifico, il gruppo `azioni_*` è inteso a collaudare l'efficienza con cui la libreria implementa un certo gruppo di azioni — per esempio, interagire con porte chiuse o bloccate. Lo scopo è quello di verificare "la giocabilità" pratica della libreria, attraverso esempi che spazino in maniera più ampia possibile l'uso dei vari comandi.

Invece, il gruppo `classi_*` mira a esplorare e a mettere alla prova le proprietà degli oggetti creati con le classi della libreria — per esempio, dispositivi, porte, finestre, attori, ecc. Lo scopo è quello di verificare l'integrità delle classi stesse, che le azioni (verbi) che le riguardano funzionino come previsto, e che non vi siano bachi nell'implementazione.

Il gruppo `testa_*` serve a verificare che alcuni aspetti strutturali dell'avventura funzionino bene — ad esempio, moduli e meccanismi di debug, elementi strutturali complessi, e altri aspetti astratti e meno visibili nell'ambito dei testi.

Infine, il gruppo `verbi_*` è mirato a testare gruppi di verbi affini per verificare come essi interagiscano tra loro, che i vari verbi si comportino come ci si aspetterebbe, che i messaggi di risposta siano tradotti correttamente e suonino bene, e che non vi siano bachi di sorta.

Presto verra introdotto il gruppo `verbo-vaniglia_*` (o simile) il cui scopo sarà testare ogni possibile esito di un singolo verbo per volta — ossia, eseguendolo in ogni condizione di `WHERE` e `CHECK` possibile, e coprendo ogni altro branching possibile del `DOES`. Lo scopo sarà verificare che tutti i messaggi da esso prodotti siano corretti (inclusi l'accordo di genere e numero con i parametri), e che gli esiti siano corretti in base al contesto.



<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

<!-- File di Progetto -->

[MULTITEST]: ./MULTITEST.bat "Vedi sorgente"

[casa]: ./casa.alan "Vedi sorgente"
[casa.png]: ./casa.png "Apri immagine"
[casa.trizbort]: ./casa.trizbort "Apri mappa con Trizbort"
[inc_debaca]: ./inc_debaca.i "Vedi sorgente"

<!-- Collegamenti Esterni -->

[Trizbort]: https://trizbort.genstein.net/ "Visita il sito di Trizbort"

<!-- EOF -->
