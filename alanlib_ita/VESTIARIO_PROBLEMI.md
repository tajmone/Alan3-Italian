# Problematiche del Vestiario

Questo documento illustrerà i bachi e le varie problematiche nelle funzionalità del vestiario nella Libreria Standard.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Riferimenti](#riferimenti)
- [Panoramica dei problemi](#panoramica-dei-problemi)
    - [Trasferimento di indumenti indossati](#trasferimento-di-indumenti-indossati)
        - [Mancanza di linee guide](#mancanza-di-linee-guide)
    - [L'entità abbigliamento](#lentit%C3%A0-abbigliamento)
    - [Valori di copertura](#valori-di-copertura)
        - [Indumenti speciali](#indumenti-speciali)
        - [Testa e viso](#testa-e-viso)
        - [Numerazione esponenziale degli strati](#numerazione-esponenziale-degli-strati)
    - [Difficoltà a gestire indossabili ornamentali](#difficolt%C3%A0-a-gestire-indossabili-ornamentali)

<!-- /MarkdownTOC -->

-----

# Riferimenti

Per discussioni dettagliate riguardo i bachi e le problematiche, si vedano i seguenti Issue sul repository della Alan Standard Library:

- [#52] — Clothing Table: Coveralls
- [#57] — BUG: Giving Worn Clothes to Actors Crashes Alan
- [#58] — Tweak Listing of Worn Clothing Items
- [#60] — Moving Around Worn Items
- [#61] — Nested Clothing
- [#64] — We Need Clear Clothing Guidelines

# Panoramica dei problemi

Le funzionalità del vestiario così come sono implementate nella libreria originale presentano una serie di problematiche sia tecniche (nella loro implementazione) che dal punto di vista generale di come sono state concepite.

## Trasferimento di indumenti indossati

Uno dei problemi principali consiste nel fatto che, sebbene vi siano regole rigide riguardo l'ordine stratificato in cui gli indumenti possono essere indossati e rimossi, la libreria non esegue alcun controllo nei verbi che spostano oggetti dagli attori (vedi [#60]):

- Si può chiedere ad un attore consenziente di consegnarci un indumento, e questi verrà trasferito all'Eroe ma risulterà ancora indossato dal suo proprietario originale.
- L'Eroe può trasferire indumenti indossati ad altri contenitori (inclusi PNG) e questi risulteranno ancora indossati dall'Eroe.

### Mancanza di linee guide

Inoltre, la libreria non definisce alcun criterio su come dovrebbe essere regolamento il trasferimento di indumenti indossati (vedi [#64]):

- Il criterio di stratificazione degli indumenti dovrebbe essere applicato anche al trasferimento di indumenti indossati?
- Come bisognerebbe gestire il tentativo di spostare un indumento indossato, andrebbe prima rimosso (implicitamente) o l'azione andrebbe bloccata?
- E gli indumenti bloccati, dovrebbe essere trasferibili o bisognerebbe prima imporre al giocatore di rimuovere tutti gli indumenti che lo bloccano?

La mancanza di simili direttive rende problematico l'uso del vestiario da parte di autori che vogliono creare nuovi verbi che potrebbero coinvolgere anche indumenti. Anche qualora i bachi soprammenzionati fossero risolti, la mancanza di linee guide impedirebbe agli autori di AT di implementare nuovi verbi che non vadano a confliggere con la logica e le funzionalità del vestiario.

## L'entità abbigliamento

L'uso di `abbigliamento` ha rivelato dei gravi bachi che portano al crash dell'avventura (vedi [#57]) per via di conflitti tra `Extract` e l'evento che sposta gli indumenti nell`abbigliamento`. Quando il baco verrà risolto, probabilmente la compilazione della libreria causerà un errore, poiché nel design di Alan non è previsto che degli `Event` facciano scattare delle clausole `Extract`.

L'entità `abbigliamento` sembra essere stata creata più che altro per semplificare l'elencazione separata di ciò che l'Eroe trasporta e ciò che indossa. Questo espediente non risolve comunque il problema di come eseguire una simile elencazione suddivisa quando si esaminano i PNG.

Le prove da me eseguite sulla branch di lavoro [`try-dispose-worn`][try-dispose-worn] della libreria inglese hanno dimostrato che si può benissimo fare a meno dell'entità `abbigliamento` (e probabilmente anche dell'attributo `indossati`) e riuscire comunque a presentare in elenchi separati gli oggetti trasportati e quelli indossati, sia dell'Eroe che dei PNG.

In quella branch ho implementato un sistema molto più semplice per la gestione degli indumenti indossati, ricorrendo soltato all'attributo `indossato` in tutte le operazioni conivolgenti il vestiario. È quindi ragionevole pensare che sia possibile rimpiazzare il sistema attuale del vestiario con uno molto più semplice da gestire, sia internamente dalla liberia, sia per gli autori finali di avventure.


## Valori di copertura

Il modo in cui la libreria implementa e gestisci i valori di copertura mappati alle varie zone del corpo è problematico sotto molti aspetti.

### Indumenti speciali

Il trattamento speciale riservato a cappotti, gonne e teddy rende il sistema del vestiario rigido e, di fatto, impone un uso fisso degli strati di indossamento, ovvero quello descritto nella Tabella del Vestiario.

Queste eccezioni sono di per sé problematiche perché il trattamento speciale riservato alle gonne finisce per applicarsi anche alle tute di lavoro (a pezzo unico), con conseguente risultato che sarà possibile indossare indumenti per le gambe mentre si indossa una tuta monopezzo. I valori della Tabella per gestire indumenti che il _teddy_ (pagliaccetto) sono insensati: i collant, ad esempio, risultano indossabili sopra il _teddy_.

Questa rigida regolamentazione delle eccezioni finisce per sottrarre libertà agli autori di avventure che vorrebbero usare gli strati di indossamento secondo altri criteri. In molte avventure gli autori potrebbero voler implementare vestiti di natura semplice, che riguardano solo l'abbigliamento visibile esterno, senza l'uso di strati adibiti alla biancheria intima.

### Testa e viso

Il fatto che la libreria tratti la testa come un valore unico limita seriamente l'uso di indossabili del volto come occhiali, finte barbe, maschere, ecc. Il viso e la parte superiore della testa dovrebbero avere valori distinti per non interferire tra loro. Ad esempio, un passamontagna coprirerebbe sia il viso che la testa, un cappello solo la testa, degli occhiali solo il viso; questo consentirebbe un controllo capillare della mappatura e della stratificazione d'indossamento dei medesimi.

### Numerazione esponenziale degli strati

Il fatto che gli strati abbiano valori esponenziali (2, 4, 8 ... 64) complica l'uso da parte degli utenti finali, laddove una numerazione lineare (1, 2, 3, ...) sarebbe molto più intuitiva e facile da gestire.

La numerazione esponenziale sembra essre un'espediente per semplificare i calcoli degli indumenti bloccanti, ma questo è sicuramente un ostacolo raggirabile in diversi modi:

- Si potrebbe commutare i valori nei loro esponenziali durante l'inizializzazione.
- Oppure, si potrebbe usare un approccio iterativo per verificare la presenza di indumenti indossati con valore superiore all'indumento che si vuole indossare/togliere (anziche ricorrere a `SUM`).

## Difficoltà a gestire indossabili ornamentali

La libreria non offre funzionalità per una facile gestione di indossabili di tipo ornamentali come collane, sciarpe, orologi, cravatte, ecc. L'uso di valori zero in questo caso non è sufficiente, poiché alcuni ornamentali non dovrebbero ammettere d'indossare altri oggetti simili (es. due cravatte, due sciarpe) mentre altri dovrebbero consentirne uno per ciascun lato del corpo (es. ginocchiere, polsiere), e altri potrebbero avere un limite arbitrario controllabile dall'autore (es. massimo 5 collane).

Questo tipo di indossabili dovrebbe essere svincolato dalla mappatura delle zone del corpo, ed essere sufficientemente elastico da poter essere impiegato con oggetti di tutti i tipi (zaini, cinturoni, speroni, e quant'altro).

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[#52]: https://github.com/AnssiR66/AlanStdLib/issues/52
[#57]: https://github.com/AnssiR66/AlanStdLib/issues/57
[#58]: https://github.com/AnssiR66/AlanStdLib/issues/58
[#60]: https://github.com/AnssiR66/AlanStdLib/issues/60
[#61]: https://github.com/AnssiR66/AlanStdLib/issues/61
[#64]: https://github.com/AnssiR66/AlanStdLib/issues/64

[try-dispose-worn]: https://github.com/tajmone/AlanStdLib/tree/try-dispose-worn

<!-- EOF -->