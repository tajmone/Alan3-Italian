# Revisione del Vestiario

Appunti di lavoro per le modifiche al codice del vestiario.


-----

**Indice dei contenuti**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introduzione](#introduzione)
    - [Annotazioni nel codice](#annotazioni-nel-codice)
    - [Riferimenti](#riferimenti)
- [Piano d'azione](#piano-dazione)
    - [Test indipendenti per lo sviluppo](#test-indipendenti-per-lo-sviluppo)
    - [Elimina `abbigliamento` e set `indossati`](#elimina-abbigliamento-e-set-indossati)
        - [Idee da valutare](#idee-da-valutare)
    - [Elencazione indumenti indossati](#elencazione-indumenti-indossati)
    - [Messaggi runtime indumenti indossati](#messaggi-runtime-indumenti-indossati)
    - [Verbi indossa/rimuovi](#verbi-indossarimuovi)
    - [Verbi da ritoccare](#verbi-da-ritoccare)
        - [Verbi che potrebbero dislocare indossati](#verbi-che-potrebbero-dislocare-indossati)
    - [Aggiorna tutti i test](#aggiorna-tutti-i-test)
- [Ulteriori Migliorie](#ulteriori-migliorie)
    - [Prendi implicito in `indossa`](#prendi-implicito-in-indossa)
    - [Report customizzabile in `indossa`/`rimuovi`](#report-customizzabile-in-indossarimuovi)
    - [Ordine indossamento opzionale](#ordine-indossamento-opzionale)
    - [EGA](#ega)
        - [EGA Demo](#ega-demo)
        - [Modulo Debaca](#modulo-debaca)
- [Criteri maneggiamento indumenti indossati](#criteri-maneggiamento-indumenti-indossati)
    - [Prendere indossati](#prendere-indossati)
- [Panoramica del nuovo sistema di vestiario](#panoramica-del-nuovo-sistema-di-vestiario)
    - [Il nuovo approccio agli indumenti indossati](#il-nuovo-approccio-agli-indumenti-indossati)
        - [Estensibilità degli indossabili](#estensibilit%C3%A0-degli-indossabili)
    - [Utilizzo nelle avventure](#utilizzo-nelle-avventure)
    - [Vestiario stratificato](#vestiario-stratificato)
        - [Rinomina attributi zone del corpo](#rinomina-attributi-zone-del-corpo)
        - [Stratificazione non esponenziale](#stratificazione-non-esponenziale)
        - [Nuova zona corpo per il viso](#nuova-zona-corpo-per-il-viso)
        - [Nuovi attributi per indumenti speciali](#nuovi-attributi-per-indumenti-speciali)
        - [Messaggi di fallimento indossa/rimuovi](#messaggi-di-fallimento-indossarimuovi)
    - [Elenco inventario](#elenco-inventario)
        - [Inventario Eroe](#inventario-eroe)
        - [Inventario PNG](#inventario-png)
    - [Criteri trasferimento e mangeggiamento indumenti](#criteri-trasferimento-e-mangeggiamento-indumenti)
        - [Eroe](#eroe)
        - [PNG](#png)

<!-- /MarkdownTOC -->

-----


# Introduzione

In questo documento verranno annotati i vari step per la revisione del codice che gestisce il vestiario nella libreria. Trattandosi si modifiche strutturali su vasta scala, è necessaria un'accurata pianificazione e la creazione di testi mirati ad assicurarsi che le modifiche funzionino come ci si aspetterebbe.

Molte delle modifiche qui proposte sono basate sulla mia sperimentazione  nella branch di lavoro [`try-dispose-worn`][try-dispose-worn] della libreria inglese.

## Annotazioni nel codice

Durante lo sviluppo, appunterò con dei commenti contenenti `>>> dev-vestario >>>` tutte le parti del codice originale modificate, da modificare, soppresse con commenti, ecc., al fine di semplificarne l'individuazione tramite fuzioni di ricerca e la pulizia finale prima dell'integrazione nella `master` branch.

Nei vari commenti adotterò la seguente notazione ai fini della consistenza e per semplificare la ricerca:

```
-- >>> dev-vestario: added
-- >>> dev-vestario: deleted
-- >>> dev-vestario: DELME!
-- >>> dev-vestario: FIXME!
-- >>> dev-vestario: FIXME! >>> set 'indossati'
-- >>> dev-vestario: TODO!
-- >>> dev-vestario: tweaked
-- >>> dev-vestario: NO INDOSSATI! (prova a non usare set 'indossati')
```

Una copia del codice originale verrò preservata accanto a quello modificato, trasformandolo in commenti e racchiudendolo tra i seguenti delimitatori:

```
-- >>> codice originale >>>
-- <<< codice originale <<<
```


## Riferimenti

- [`VESTIARIO.md`](VESTIARIO.md) — descrizione dettagliata del sistema originale.
- [`VESTIARIO_PROBLEMI.md`](VESTIARIO_PROBLEMI.md) — dettagli sui vari problemi del sistema originale.

Per discussioni dettagliate riguardo i bachi e le problematiche, si vedano i seguenti Issue sul repository della Alan Standard Library:

- [AlanStdLib #52] — Clothing Table: Coveralls
- [AlanStdLib #57] — BUG: Giving Worn Clothes to Actors Crashes Alan
- [AlanStdLib #58] — Tweak Listing of Worn Clothing Items
- [AlanStdLib #60] — Moving Around Worn Items
- [AlanStdLib #61] — Nested Clothing
- [AlanStdLib #64] — We Need Clear Clothing Guidelines

Per riferimenti alle mie soluzioni sperimentate sulla AlanStdLib, si veda la mia branch di lavoro:

- https://github.com/tajmone/AlanStdLib/tree/try-dispose-worn

# Piano d'azione

Questi sono, a grandi linee, gli step principali da implementare:

- [x] Crea un gruppo di test indipendenti per seguire lo sviluppo senza intaccare i test generali, finché il vestiario non è sistemato.
- [x] Rimuovi l'entità `abbigliamento` e il set `indossati` e limitati a usare `indossato` come referente per le varie operazioni sul vestiario.
- [x] Assicurati che gli indumenti e gli oggetti annidati in indumenti non vengano trattati come indossati.
- [x] Elenca separatamente oggetti trasportati ed indossati dagli attori — nell'inventario, per l'Eroe, e in 'esamina attore' per i PNG.
- [x] Quando l'azione indossa/rimuovi fallisce, limitati a elencare gli indumenti che la prevengono.
- [x] Elimina i casi speciali nei verbi `indossa`/`togliti` per cappotti, gonne, ecc., limitando i controlli all'ordine di indossamento stratificato.
- [x] Aggiungi `strato_viso` per mappare il viso separatamente dalla testa.
- [x] Usa valori incrementali anziché esponenziali per gli strati del vestiario.
- [x] Stabilisci dei criteri circa le azioni che potrebbero dislocare indumenti indossati, ed implementali nei rispettivi verbi.


Qui di seguito sono riportati i dettagli specifici dei vari passaggi per lo sviluppo.

## Test indipendenti per lo sviluppo

- [`../test/vestiario/`][vestiario]:
    + [`DEV.bat`][DEV.bat] — esegue tutti i test con nome `DEV*.a3sol`.
    + [`DEV_blocca_gambe.a3sol`][DEV_blocca_gambe sol]/[`.a3log`][DEV_blocca_gambe log] — testa verbi `indossa`/`togliti` con gonne, cappotti, bikini, e altri indumenti speciali.
    + [`DEV_indossa.a3sol`][DEV_indossa sol]/[`.a3log`][DEV_indossa log] — testa verbi `indossa`/`togliti`.
    + [`DEV_init.a3sol`][DEV_init sol]/[`.a3log`][DEV_init log] — testa inizializzazione indumenti.
    + [`DEV_inventario.a3sol`][DEV_inventario sol]/[`.a3log`][DEV_inventario log] — testa elencazione oggetti trasportati e indumenti indossati.
    + [`DEV_impliciti.a3sol`][DEV_impliciti sol]/[`.a3log`][DEV_impliciti log] — testa indumenti indossati verbi con prendi implicito.
    + [`DEV_manipolazione.a3sol`][DEV_manipolazione sol]/[`.a3log`][DEV_manipolazione log] — testa vari verbi su indumenti indossati.

Durante la fase di sviluppo utilizzerò un gruppo di test indipendenti mirati ad assicurare che le modifiche al vestiario producano i risultati attesi. Questi test avranno un loro batch di esecuzione independente in modo da non andare a toccare l'attuale test suite finché la transizione al nuovo sistema non è ultimata.

Ovviamente, i test richiederanno di modificare i sorgenti dell'avventura di test EGA, al fine di poter sperimentare le modifiche alla libreria.


## Elimina `abbigliamento` e set `indossati`

Sono convinto che né `abbigliamento` né il set `indossati` siano fondamentali per la gestione del vestiario, e vogli quindi eliminarli dal codice della libreria.

~~Prima di poter eliminare del tutto l'entità `abbigliamento` e l'attributo del set `indossati` sarà necessario modificare ogni riferimento ad essi. All'inizio sarà sufficiente fare in modo che non vengano utilizzata per gestire gli indumenti indossati.~~

~~Al momento preserverò l'attributo del set `indossati`, e continuerò ad aggiornarlo, per sicurezza, ma è probabile che non servirà più alla fine.~~

- [x] __SPOSTA `indossato` SU `thing`__ di modo che l'attributo possa essere utilizzato nelle sintassi dei verbi che prima utilizzavano `abbigliamento`.
- [ ] __INIZIALIZZAZIONE INDUMENTI__:
    + [x] ~~Itera ogni indumento _direttamente_ in un attore che sia marcato `indossato` e includilo negli `indossati` di quell'attore.~~ (_soppresso_)
- [ ] __EVENT `controlla_indossati`__:
    + [x] _DISATTIVATO_ — ho disattivato del tutto lo scheduling dell'evento, dato che al momento non mi serve a nulla.
    + [x] Rimuovi vecchio codice che spostava indumenti in `abbigliamento` causando il crash dovuto ai conflitti con EXTRACT (cf. [AlanStdLib #57]).
    + Itera tutti gli attori e:
        * [x] ~~Includi negli `indossati` dell'attore ogni indumento marcato `indossato` che si trova _direttamente_ nell'attore.~~ (_soppresso_)
- [x] __ELIMINA `abbigliamento`__.
- [x] __ELIMINA SET `indossati`__.


### Idee da valutare

- [ ] __EVENT `controlla_indossati`__:
    * [ ] Itera ogni indumento che si trova _direttamente_ nella CURRENT LOCATION e marcalo come `NOT indossato`? (dovrei poi anche verificare negli `indossati` di quale attori si trovi).
    * [ ] Escludi da `indossati` e marca come `NOT indossato` ogni indumento _indirettamente_ in un'attore?

Il primo potrebbe aiutare a gestire indumenti che sono stati finiti a terra per via di qualche verbo, ma non intercetterebbe gli indumenti finiti in altri contenitori. Ci vorrebbe un appraccio in grado di rilevare qualsiasi indumento che non si trovi in un attore.

Il secondo potrebbe gestire indumenti indossati che sono finiti tra gli oggetti portati dall'attore senza che gli attributi `indossato`/`indossati` fossero aggiornati a dovere. In teoria questo non dovrebbe succedere se la libreria gestisce tutto come si deve, ma potrebbe accadere per via di verbi introdotti dagli autori che si sono dimenticati di gestire l'indossabilità del vestiario. Da valutare.

## Elencazione indumenti indossati

Implementa un sistema alternativo per mostrare in elenchi separati ciò che gli attori trasportano e ciò che indossano.

- [x] __CONTATORE__ — Aggiungi attributo `mia_AT:temp_cnt` per calcolare quando un elemento è il penultimo della lista e va usato "e" come separatore, al posto della virgola.
- [x] __INVENTARIO EROE__:
    + [x] Usa dei loop personalizzati anziché `LIST abbigliamento`.
    + [x] Non mostrare messaggio "Non stai indossando niente".
- [x] __ESAMINA PNG__:
    + [x] Implementa dei loop personalizzati anziché fare affidamento su `LIST actor` e il ricorso a controlli nei `MESSAGE` della messagistica runtime per mostrare "(indossato)".
    + [x] Non mostrare messaggio "Non sta indossando niente".
    + [x] Non mostrare messaggio "Non sta portando niente"

## Messaggi runtime indumenti indossati

Anche se la libreria ora userà dei loop personalizzati per `inventario` e `examina attore`, i messaggi runtime dovrebbero comunque mostrare "(indossato)", nel caso l'autore voglia usare `LIST actor` per elencare l'inventario di un attore.

- [x] Aggiusta messaggi runtime che fanno riferimento a `abbigliamento` e usa invece `indossato`.
- [x] Aggiungi al modulo `inc_debaca.i` nuovo comando `DBG_INV` per mostare l'inventario di un attore tramite `LIST actor` e poter così testare come funziona.
- [x] Aggiungi test per `DBG_INV` in `DEV_inventario.a3sol`.

## Verbi indossa/rimuovi

I verbi originali `indossa`/`togliti`, quando l'azione non va a buon fine riportano l'elenco completo degli indumenti indossati dal giocatore. Il nuovo sistema elencherà solo quegli indumenti che bloccano l'azione.

- [x] __SET TEMPORANEO__ — Aggiungi attributo di set `mia_AT:temp_indumenti { indumento }` per tracciare gli indumenti che impediscono `indossa`/`togliti`.
- [ ] __VERBO `indossa`__:
    + [x] Se l'indumento è già indossato da un PNG mostra "Al momento$+1 [è/sono] attualmente indossato da &lt;actor&gt;"
    + [x] Riscrivi codice che controlla la fattibilità dell'azione:
        * [x] non impiegare più `abbigliamento`.
        * [x] non impiegare più set `indossati`.
        * [x] non gestire indumenti speciali (gonne, cappotti).
        * [x] _ottimizza_: non eseguire loop dei calcoli per l'indossamento se l'indumento da indossare ha tutti i valori di copertura zero.
    + [x] Nel rapporto finale elenca gli indumenti che bloccano l'azione.
    + [x] Rimuovi dal sorgente le copie del codice originale commentato.
    + [ ] Migliora commenti nel codice.
- [ ] __VERBO `togliti`__:
    + [x] Riscrivi codice che controlla la fattibilità dell'azione:
        * [x] non impiegare più `abbigliamento`.
        * [x] non impiegare più set `indossati`.
        * [x] non gestire indumenti speciali (gonne, cappotti).
        * [x] _ottimizza_: non eseguire loop dei calcoli per l'indossamento se l'indumento da indossare ha tutti i valori di copertura zero.
    + [x] Nel rapporto finale elenca gli indumenti che bloccano l'azione.
    + [x] Rimuovi dal sorgente le copie del codice originale commentato.
    + [ ] Migliora commenti nel codice.

Con il nuovo sistema, questi attributi temporanei per uso interno non serviranno più e possono essere eliminati:

- [x] `hero:wear_flag`
- [x] `hero:tempcovered`


## Verbi da ritoccare

Parecchi verbi fanno riferimento all'entità `abbigliamento` e andranno modificati di conseguenza quando verrà rimossa. Gli ho annotati con:

    -- >>> dev-vestario: FIXME! VERB xxx >>>

In `lib_verbi.i`:

- [x] `attacca_con` — rimosso CHECK `bersaglio NOT IN abbigliamento` (basta il precedente, `bersaglio NOT IN hero`).
- [x] `attacca` — rimosso CHECK `bersaglio NOT IN abbigliamento` (basta il precedente, `bersaglio NOT IN hero`).
- [x] `calcia` rimosso CHECK `bersaglio NOT IN abbigliamento` (basta il precedente, `bersaglio NOT IN hero`).
- [x] `indossa` — rimuovi CECK se è in `abbigliamento` (il CHECK se è `indossato` è ora in `indossa` su `indumento`)
- [x] `inventario` — elenca portati/indossati tramite loop.
- [x] `lascia` — CHECK non eseguire se `indossato`. 
- [x] `prendi`:
    + [x] eliminati riferimenti ad `abbigliamento`.
    + [x] dopo aver preso un oggetto lo setta sempre come `NOT indossato` (non è importante sapere se è un `indumento` perché se non lo era non importa).

In `lib_classi_vestiario.i`:

- [x] `indossa` — usa nuovo sistema, e quando fallisce riporta solo indumenti bloccanti.
- [x] `togliti` — usa nuovo sistema, e quando fallisce riporta solo indumenti bloccanti.

Alcuni verbi saranno modificati non per via di `abbigliamento` ma per supportare il nuovo sistema del vestiario.

In `lib_classi.i`:

- [x] `esamina` (su `actor`) — elenca portati/indossati tramite loop.

### Verbi che potrebbero dislocare indossati

Vanno modificati anche tutti quei verbi che potrebbero dislocare un `indumento` indossato dal suo proprietario (e farlo finire altrove). 

L'obiettivo con questi verbi è duplice:

- `lib_classi_vestiario.i` — aggiungere a `indumento` i medesimi verbi con CHECK che ne impediscano l'esecuzione se `indossato`.
- `lib_verbi.i` — assicurarsi che quando l'azione va in porto l'oggetto dislocato venga settato come `NOT indossato`. Questo serve a coprire i casi in cui l'autore implementa indossabili non `indumento` (per cui i verbi andrebbero a buon fine).

#### Impedisci dislocamento indumenti indossati

In `lib_classi_vestiario.i`, su `indumento`, aggiungi un CHECK che blocca l'azione se è `indossato` (e riferisci che dovresti toglierlo, se indossato da Eroe, o chi lo sta indossando, nel caso di PNG):

- [x] `metti_in`
- [x] `metti_su`
- [x] `dai_a`
- [x] `lancia`
- [x] `lancia_a`
- [x] `lancia_contro`
- [x] `lancia_in`
- [x] `lega_a`

#### Setta comunque `NOT indossato` dopo esecuzione verbi

In `lib_verbi.i`, se l'azione va in porto in questi verbi setta comunque l'oggetto come `NOT indossato` (anche se i CHECK ne prevengono l'esecuzione con istanze di `indumento` indossate, dobbiamo tener conto di potenziali indossabili di altro tipo):

- [x] `lancia_contro`
- [x] `metti_in` (contenitore)
- [x] `metti_su` (superficie)
- [x] `dai_a`
- [x] `chiedi`
- [x] `lancia`

> __NOTA 1__ — I seguenti verbi sono implementati solo come modello "segnaposto" nella Libreria, e non porteranno a termine l'azione:
> 
> - `lancia_a`
> - `lancia_contro`
> 
> Quindi non è necessario settare come `NOT indossato` l'oggetto che _avrebbero_ lanciato.
> 
> __NOTA 2__ — Nella libreria originale, questi verbi eseguivano un prendi implicito, ma questo lo modificherò dato che l'azione non andrà a termine (che senso ha fare prendere l'oggetto allora?).


```alan
-- >>> dev-vestario: tweaked
        MAKE ogg NOT indossato. -- per indossabili non 'indumento'.
```

Quanto al verbo `chiedi`, bloccare di default l'azione per indumenti indossati sarebbe stata una scelta troppo vincolante. Ma nei sorgenti del modulo indumenti c'è un blocco di codice commentato pronto all'uso (decommentandolo o copiandolo nella propria avventura).


#### Prendi impliciti, soppressi

Nei seguenti verbi, che sono solo dei segnaposto e non completano l'azione, va tolto il prendi implicito (tanto per renderli utilizzabili l'autore dovrà sovrascriverli su una classe/istanza, e dovrà gestire lì il prendi implicito e l'attributo `NOT indossato`):

- [x] `lancia_a`
- [x] `lancia_in`
- [x] `lega_a`

```alan
-- >>> dev-vestario: tweaked >>> sopprimi prendi implicito
```


> __NOTA 1__ — In questi verbi l'azione va a termine (o a volte va termine, altre no), per cui il prendi implicito va rispettato e quindi l'oggetto dislocato va settato come `NOT indossato` (vedi sopra).
> 
> - `lancia_contro`
> - `lancia`

> __NOTA 2__ — I seguenti verbi sono implementati solo come modello "segnaposto" nella Libreria, e di per sé non spostano alcun oggetto:
> 
> - `metti_contro`
> - `metti_dietro`
> - `metti_vicino`
> - `metti_sotto`
> 
> Starà quindi all'autore che li sovrascrive accertarsi che dopo aver eseguito l'azione settino l'oggetto trasferito come `NOT indossato`.

#### Migliora messaggi indossato/portato

In alcuni verbi che vengono bloccati se uno dei paramentri è nell'eroe, va migliorato il messaggio in base a se quel parametro è `indossato` o meno, usando dei nuovi attributi di messaggi:

```alan
  HAS azione_insensata_ogg1_portato    "Che senso ha? Stai portando $+1.".
  HAS azione_insensata_ogg1_indossato  "Che senso ha? Stai indossando $+1.".

  HAS azione_insensata_ogg2_portato    "Che senso ha? Stai portando $+2.".
  HAS azione_insensata_ogg2_indossato  "Che senso ha? Stai indossando $+2.".
```


- [x] `lancia_contro` (`$2` — bersaglio)
- [x] `lancia_in` (`$2` — contenitore)

> __NOTA__ — In questo verbo il controllo c'è ma è un baco (andrebbe tolto):
> 
> - `lancia_a` (`$2` — png)


## Aggiorna tutti i test

- [x] __EGA__:
    + [x] Sposta `DBG (indumento)` da `ega.alan` a `inc_debaca.i`, rinominato in `DBG_IND`.
    + [x] Modifica in tutti gli script di comandi `DBG` in `DBG_IND`.
    + [x] Adatta i test originali alle nuove modifiche.
- [ ] __BATCH TEST SOTTOCARTELLE__ — Aggiungi in ogni sottocartella di test un batch script per eseguire tutti i test di quella cartella soltanto, per semplificare il lavoro durante lo sviluppo:
    + [x] `vestiario/TESTA_CARTELLA.bat` (sorgente singolo, molti test)
    + [x] `casa/TESTA_CARTELLA.bat` (sorgente singolo, molti test)
    + [x] `vari/TESTA_CARTELLA.bat` (sorgenti multipli, uno o più test)
- [x] Esegui tutta la test suite e:
    + [x] Modifica soluzioni che richiedono adattamento al nuovo sistema:
        * [x] `vestiario/`
        * [x] `casa/` (nessuna modifica richiesta a soluzioni)
            - [x] Adatta vestiario in `casa.alan`.
        * [x] `vari/`
    + [x] Integra log con messaggi modificati.
        * [x] `vestiario/`
        * [x] `casa/` 
        * [x] `vari/`


# Ulteriori Migliorie

Ora che il vestiario è stato liberato dai bachi dell'originale, e le funzionalità per poter gestire indumenti speciali (gonne, cappotti) sono state ripristinate, posso dedicarmi a introdurre nuove funzionalità per migliorare l'uso del vestiario.

- [ ] `lib_classi_vestiario.i`:
    + [ ] Documenta modulo.
    + [ ] `indumento_fittizio` serve ancora? o può essere eliminato?



## Prendi implicito in `indossa`

Il verbo `indossa` prende implicitamente l'indumento anche se l'azione non andrà in porto. Dovrei modificarlo? o in questo caso va fatta un'eccezione? 

Se tolgo il prendi implicito, al giocatore verrebbe detto che per poter indossare l'indumento deve prima togliere gli altri, e il rischio è che si trovi a togliere parecchi indumenti solo per poi scoprire che l'indumento che vuole indossare non può essere preso. Il prendi implicito, in questo caso, garantisce che l'azione fallisca sempre nel caso di un indumento non prendibile.

Questo va considerato bene, potrei aggiungere dei CHECK per far fallire l'azione, ma temo complicherebbe la gestibilità agli autori. Forse in questo caso l'eccezzione ha senso dato che se l'intenzione è di indossare l'indumento il prendi implicito accorcerà i passaggi, e il giocatore dovrà solo rimuovere gli indumenti bloccanti per terminare l'azione. 

Va considerato inoltre che con l'introduzione (a breve) dell'opzione per disabilitare l'indossamento ordinato il contesto di fallimento di `indossa` sarà ridotto in alcuni contesti.


## Report customizzabile in `indossa`/`rimuovi`

Introduci  nuovi attributi stringa (opzionali) per consentire dei report alternativi di `indossa`/`rimuovi` andati a buon fine:

- [ ]  `indossa`
- [ ]  `rimuovi`

## Ordine indossamento opzionale

Introduci un nuovo attributo booleano che possa attivare/disattivare l'indossamento in ordine stratificato del vestiario. Quando è disabilitato, la libreria si limiterà a controllare che due indumenti non vadano a occupare il medesimo strato/zona, ma non imporrà l'ordine di indossamento.

- [ ]  `indossa`
- [ ]  `rimuovi`


> __NOTA__ — L'opzione può essere modificata anche in corso di gioco? O dovrei provare a sfruttare INITIALIZE per aggiungere una sola versione del codice sui verbi? (da testare)

## EGA

Data l'importanza dell'avventura Emporio Alani sia per testare il vestiario sia in quanto dimostrazione del suo uso, annoterò qui le varie cose da fare per migliorarla.

- [ ] Sposta file doxter per EGA in `docs_src/`.
- [ ] Riorganizza sorgente:
    * [ ] Raggruppa indumenti
    * [ ] Raggruppa attori
- [x] Aggiungi vestiario:
    * [x] bikini
    * [x] gonna
    * [x] cappotto

### EGA Demo

Quando sarà stata ben ripulita, EGA può diventare una demo a tutti gli effetti, e potrei spostarla in `demo/` e al contempo continuare a usarla per i test tramite `IMPORT`.

- [ ] Sposta in `demo/` (senza modulo Debaca).
- [ ] In `test/vestiario/` ricrea `ega.alan` e usa `IMPORT` per includere l'avventura da `demo/`, e includi anche il modulo Debaca.

### Modulo Debaca

Annoterò qui anche gli aspetti riguardanti il vestiario del modulo Debaca.

- [x] Mostra valori `strato_viso`.
- [x] Mostra valori `blocca_gambe`.
- [x] Mostra valori `due_pezzi`.
- [ ] Con `DEBACA` mostra `indossato` anche se non è `indumento`.
- [ ] Mostra DBG infor in `STYLE PREFORMATTED`.



-------------------------------------------------------------------------------

# Criteri maneggiamento indumenti indossati

È importante definire delle chiare linee guida di come andrebbero gestiti i tentativi di manipolare indumenti indossati tramite altri verbi che potrebbero coinvolgerli direttamente o indirettamente.

Ad esempio, se il giocatore cerca di mettere in un contenitore un indumento indossato dall'Eroe, cosa dovrebbe accadere? Scenari possibili:

- L'azione viene bloccata, dicendo che prima dovrebbe togliersi l'indumento.
- Prima di effettura l'azione, l'indumento viene implicitamente rimosso.

Inoltre, come comportarsi nel caso di un indumento indossato che è bloccato da altri indumenti sopra di esso? In simili casi, sarebbe ammissibile che venga implicitamente rimosso?

E come gestire gli indumenti indossati dai PNG? Anch'essi dovrebbero essere trattati come per il protagonista? Gli indumenti dei PNG richiedono ulteriori considerazioni:

- Nel caso di PBG consenzienti, il verbo "chiedi oggetto a attore" dovrebbe funzionare anche con i vestiti, oppure andrebbero trattati diversamente?
- E, nel caso sia possibile farsi consegnare gli indumenti, questi andrebbero implicitamente rimossi dall'attore? E che dire di indumenti bloccati?

Come illustrato da questi esempi, servono linee guida chiare a proposito, non solo affinché la libreria gestisca correttamente gli indumenti e il loro stato, ma anche affinché gli autori di avventure sappiano come regolarsi al riguardo quando creano nuovi verbi che potrebbero coinvolgere indumenti.

L'importante qui è trovare un equilibrio tra semplicità di implementazione e di estensibilità:

- __implementazione__ — deve essere facile poter accordare tra loro tutti le parti della libreria che interagiscono con gli indumenti.
- __estensibilità__ — gli utenti finali devono poter essere liberi di creare nuovi verbi o rimpiazzare quelli esistenti (tramite DOES ONLY) senza rischiare si rompere le funzionalità di vestiario o dover implementare controlli complicati. 


## Prendere indossati

Il verbo `prendi` usato con indumenti indossati pone parecchi problemi che vanno ponderati.

L'Eroe vuole prendere un indumento da lui indossato — che fare?

- Gli si dice che lo possiede già, che lo sta indossando.
- Lo si trasferisce da indossato a trasportato.

L'Eroe vuole prendere un indumento indossato da un PNG. Che fare?

- Bloccare sempre l'azione.
- Bloccarla solo con attori di tipo `persona` (si presume si possa farlo con animali, ecc.)
- Bloccarla solo se l'attore `persona` non è consenziente.


-------------------------------------------------------------------------------

# Panoramica del nuovo sistema di vestiario

Qui spiegherò come funziona il nuovo sistema e come andrà utilizzato.

## Il nuovo approccio agli indumenti indossati

Ho scelto di abbdanondare sia il set `indossati` che l'entità `abbigliamento` utlizzati dal vecchio sistema. Introducevano troppe complicazioni gestionali e, a mio avviso, con scarsi benefici.

Il nuovo sistema sposta l'attributo `indossato` su `thing`, rendendolo così accessibili ai CHECK di ogni verbo. Ovviamente, questo attributo dovrebbe aver senso solo con oggetti della classe `indumento`, e quindi se la libreria fa il suo dovere non dovrebbe accadere che un oggetto non indumento risulti `indossato`.

Il criterio per distinguere tra indumenti indossati e non indossati è molto semplice:

- Qualsiasi `indumento IS indossato DIRECLY IN` un attore è un indumento indossato.
- Qualsiasi `indumento INDIRECLY IN` un attore _non può_ essere un indumento indossato, ma solo trasportato.
- Un `indumento DIRECLY IN` un attore può essere o un indumento indossato, o un indumento trasportato, a seconda del valore dell'attributo `indossato`.

Quindi, nel nuovo sistema è sufficiente accertarsi che qualsiasi verbo che _potrebbe_ spostare indumenti al di fuori di un attore si assicuri di settare l'oggetto come `NOT indossato` — anche se non è un `indumento` non importa, dato che per i non indumenti l'attributo non fa differenza e, comunque, dovrebbe sempre essere settato come `NOT indossato`.

Ve notato anche che l'attributo `indossato` introduce il criterio _generale_ di indossabilità (che stabilisce che solo oggetti _direttamente_ in attori possono trovarsi ad essere indossati) che potrebbe essere sfruttato anche per altri tipi di indossabili (vedi sotto). Allo stato attuale, la Libreria gestisce solo indossabili di tipo `indumento`, ma potrebbero esisterne di altri tipi.

La definizione della classe `indumento` consente l'implementazione di verbi mirati agli indumenti, come i verbi `indossa`/`rimuovi` che gestiscono l'abbigliamento a strati e l'indossamento ordinato dei capi di vestiario.

Quindi, sebbene `indossato` sia un attributo non esclusivo degli indumenti (ma, di fatto, usato esclusivamente per essi), la classe `indumento` consente al codice di trattare diversamente gli indumenti nei vari verbi, sovrascrivendoli.

### Estensibilità degli indossabili

Questo approccio, oltre ad essere più semplice (e non necessitare del set `indossati`), non preclude agli autori di implementare altre classi di indossabili — p.es. dei gadget/dispositivi che siano indossabili pur non essendo della classe `indumento`. Poiché l'attributo `indossato` è già presente su `thing`, e tutti i verbi della libreria si assicurano di disattivarlo quando un oggetto viene dislocato da un attore, eventuali nuove classi di indossabili potrebbero tranquillamente sfruttare questo attributo, dato che il criterio generale di indossabilità è il medesimo.

Poiché i verbi `indossa`/`rimuovi` sono implementati sulla classe `indumento`, non interferirebbero con la riderfinizione dei medesimi su nuove classi di indossabili. L'autore potrebbe quindi sfruttare l'attributo `indossato` su istanze o sottoclassi di `dispositivo`, o creando nuove classi _ad hoc_, implmentando verbi `indossa`/`rimuovi` alternativi, senza che questi vadano a confliggere con il vestiario stratificato. Ma non dovrebbe preoccuparsi di modificare i verbi base per garantire una corretta gestione dello stato dei gadget indossati, poiché la libreria si occupa già di gestire corretamente `indossato` quando un oggetto viene dislocato.

Se avessimo preservato il set `indossati`, la gestione di nuovi indossabili da parte degli autori sarebbe stata molto più complicata.

## Utilizzo nelle avventure

Ora, per creare degli indumenti indossati nelle proprie avventure, sarà sufficienti collocare l'indumento nell'attore destinatario e settarlo come `indossato`, al resto ci penserà la libreria nel corso dell'inizializzazione.

```alan
THE scarpe_eroe IsA indumento IN hero.
  IS indossato.
```


## Vestiario stratificato

Il nuovo sistema si limita a verificare che gli indumenti con valori di copertura non-zero vengano indossati e rimossi nell'ordine corretto, ma non gestisce più i casi speciali come i cappotti e le gonne. La codifica dei casi speciali nella libreria limitava la libertà d'uso degli strati imponendo un modello arbitrario e restrittivo. Ora starà agli autori implementare la gestione di casi speciali, se ne avessero la necessità.

### Rinomina attributi zone del corpo

Rinominati tutti gli attributi di `indumento` per la mappatura delle
zone del corpo, da `val_*` in `strato_*`:

|  Vecchio ID  |     Nuovo ID    |
|--------------|-----------------|
| `val_testa`  | `strato_testa`  |
| `val_viso`   | `strato_viso`   |
| `val_tronco` | `strato_tronco` |
| `val_gambe`  | `strato_gambe`  |
| `val_piedi`  | `strato_piedi`  |
| `val_mani`   | `strato_mani`   |

Questo sistema è più intuitivo e naturale da usare dato che i valori indicano lo strato di ciascuna zona del corpo che l'indumento andrà a coprire.

### Stratificazione non esponenziale

Il nuovo sistema non impone più una numerazione esponenziale per gli strati del vestiario (2, 4, 8, ..., 64) ma adotta ora una numerazione libera (1, 2, 3, ...) che l'autore potrà utilizzare come rietiene più opportuno. Il nuovo sistema è più intuitivo e facile da gestire, e comunque funzionerebbe anche con indumenti creati per il sistema precedente, dato che si limita a verificare se i valori sono uguali o superiori tra loro.


### Nuova zona corpo per il viso

È stato aggiunto un nuovo attributo di mappatura del corpo, `strato_viso`, grazie al quale sarà possibile distinguere tra cappelli (`strato_testa`) e indossabili facciali quali occhiali, barbe finte, maschere, ecc.


### Nuovi attributi per indumenti speciali

Il nuovo sistema consente di gestire indumenti speciali come gonne e cappotti ma, a differenza della libreria originale, non alloca degli strati predefiniti per tali indumenti, ma espone degli attributi extra su `indumento` che l'autore può utilizzare a sua discrezione:


```alan
EVERY indumento IsA OBJECT
  ...
  IS  blocca_gambe. NOT due_pezzi.
```

I valori di default fanno sì che durante l'esecuzione dei verbi `indossa` e `rimuovi`, qualsiasi indumento con un valore di strato superiore a quello maneggiato impediscono l'azione. Questo è il comportamento di base che ci si aspetterebbe per tutti gli indumenti normali.

Se l'Eroe sta indossando dei pantaloni con un valore `strato_gambe = 10` (tanto per fare un esempio) e cercherà di indossare o rimuovere delle mutande con `strato_gambe = 1`, l'azione verrà bloccata.

Nel caso di una gonna, sarebbe possibile indossare degli slip o una calzamaglia senza doversela togliere. In questo caso, è sufficiente dichiarare sulla gonna l'attributo `IS NOT blocca_gambe` e la libreria saprà di non doverla considerare un impedimento a indossare/rimuovere indumenti per le gambe su strati inferiori.

Ma nel caso di un costume da bagno intero, che avrebbe un valore di copertura `strato_tronco <> 0`, la libreria bloccherà l'azione poiché l'attributo `IS NOT blocca_gambe` non è applicabile ad azioni che coinvolgono un indumento che copre sia le gambe che il torso in un pezzo unico.

Se per esempio volessimo implementare un bikini, il quale è sì un indumento che copre sia le gambe che il torso, ma non è composto da un pezzo unico, allora sarà necessario definire sul bikini l'attributo `IS due_pezzi`. In questo caso, quando l'Eroe indossa una gonna (`IS NOT blocca_gambe`) e cerca di indossare o rimuovere un indumento che ha valori non zero sia per `strato_gambe` che `strato_tronco`, la libreria controllerà se l'indumento maneggiato è un pezzo unico o no (tramite `IS due_pezzi`) prima di bloccare l'azione.

Gli stessi principi possono essere applicati ad un abito (che equivale ad una camicia + gonna in un pezzo unico) o ad un cappotto; e in questi casi a prevenire l'azione su indumenti che coprono il torso saranno i normali controlli sugli attributi `strato_tronco` (e non quelli per `strato_gambe`).

Questo sistema reintroduce le funzionalità originali per il realismo del vestiario, ma in una maniera molto più flessibile, controllabile e, soprattutto, completamente opzionale.


### Messaggi di fallimento indossa/rimuovi

Nel vecchio sistema, quando l'azione dei verbi `indossa`/`togliti` non andava a buon fine il messaggio riportava l'elenco completo degli indumenti indossati dal giocatore. Il nuovo sistema elenca solo quegli indumenti che bloccano l'azione e andrebbero rimossi.


## Elenco inventario

Il nuovo sistema produrra sia per l'inventario dell'Eroe che per 'esamina attore' due elenchi separati per gli oggetti trasportati e quelli indossati. Questo viene ottenuto tramite dei loop nel codice dei verbi, senza ricorrere a `LIST abbigliamento`/`actor`.

Inoltre, i messaggi prodotti sono leggermente diversi, meno verbosi e meno invadenti.

### Inventario Eroe

Per l'inventario dell'Eroe, non verrà mostrato:

- "Non stai indossando niente." quando l'Eroe non indossa nulla.

Invece verrà sempre mostrato "Non stai portando niente" perché si tratta di una richiesta esplicita dell'inventario.

Invence non verrà menzionato quando l'eroe non sta indossando nulla, perché questo inteferirebbe in un'avventura in cui non è utilizzato il vestiario. Inoltre, il semplice fatto che non sia menzionato lo rende implicito. 

### Inventario PNG

Per i PNG, quando li esamina, non verrà mostrato:

- "Non sta/stanno portando niente." quando l'attore è a mani vuote (è implicito).
- "Non sta/stanno indossando niente." quando l'attore non indossa nulla.

Nell'ultimo caso, la scelta di non voler sottolineare l'assenza di vestiario è dovuta (oltre ad una verbosità ridotta) anche al fatto che questo interferirebbe con quelle avventure che non utilizzano affatto il vestiario, sottolineando costantemente la nudità dei personaggi mentre invece il loro abbigliamento potrebbe essere descritto assieme al personaggio ma non implementato attraverso l'uso di indumenti. 

Nelle avventure che invece utilizzano il vestiario, l'assenza di menzioni renderà implicito il fatto che tali attori non indossino nulla.

Il punto è che è difficile prevedere come gli autori potranno decidere di usare il vestiario. Per esempio, in un'avventura potrebbe essere dato per scontato che tutti i personaggi indossino dei vestiti e non stiano andando in giro nudi, ma questi potrebbero essere accennati nelle descrizioni o non accennati affato. Ciò non toglie che alcuni indossabili speciali potrebbero essere implementati nel gioco  — travestimenti, maschere, costumi, indumenti magici, ecc. — e magari l'autore vorrebbbe dare risalto solo a questi ultimi e dare per scontato invece l'abbigliamento generico.

## Criteri trasferimento e mangeggiamento indumenti

Il nuovo sistema stabilisce le seguenti regole e comportamenti di base riguardo i verbi che possono dislocare un indumento indossato da un attore.

### Eroe

Qualsiasi azione che implicherebbe trasferire un indumento indossato dall'Eroe viene bloccata, facendogli presente che prima dovrebbe rimuovere l'indumento. La logica qui è che il giocatore può sempre togliersi un indumento indossato.

### PNG

Anche per i PNG vale la regola che le azioni che andrebbero a dislocare i loro indumenti vengono bloccate, ad eccezione del verbo `chiedi` ("chiedi indumento a attore"). In questo caso, se il PNG è condiscendente consegnerà un indumento come farebbe con qualsiasi altro oggetto in suo possesso.

La ragione qui è che inserendo dei CHECK su `indumento` che lo impedivano avrebbe reso complicato agli autori consentirlo. Ma nei sorgenti è fornito del codice commentato pronto ad essere usato per impedire che il verbo 'chiedi' si applichi anche agli indumenti. La scelta ricade sull'autore finale.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[try-dispose-worn]: https://github.com/tajmone/AlanStdLib/tree/try-dispose-worn

<!-- Upstream Issues -->

[AlanStdLib #52]: https://github.com/AnssiR66/AlanStdLib/issues/52
[AlanStdLib #57]: https://github.com/AnssiR66/AlanStdLib/issues/57
[AlanStdLib #58]: https://github.com/AnssiR66/AlanStdLib/issues/58
[AlanStdLib #60]: https://github.com/AnssiR66/AlanStdLib/issues/60
[AlanStdLib #61]: https://github.com/AnssiR66/AlanStdLib/issues/61
[AlanStdLib #64]: https://github.com/AnssiR66/AlanStdLib/issues/64


<!-- Test Sviluppo -->

[DEV.bat]: ../test/vestiario/DEV.bat "Vedi sorgente"
[DEV_blocca_gambe log]: ../test/vestiario/DEV_blocca_gambe.a3log "Vedi sorgente"
[DEV_blocca_gambe sol]: ../test/vestiario/DEV_blocca_gambe.a3sol "Vedi sorgente"
[DEV_indossa log]: ../test/vestiario/DEV_indossa.a3log "Vedi sorgente"
[DEV_indossa sol]: ../test/vestiario/DEV_indossa.a3sol "Vedi sorgente"
[DEV_init log]: ../test/vestiario/DEV_init.a3log "Vedi sorgente"
[DEV_init sol]: ../test/vestiario/DEV_init.a3sol "Vedi sorgente"
[DEV_inventario log]: ../test/vestiario/DEV_inventario.a3log "Vedi sorgente"
[DEV_inventario sol]: ../test/vestiario/DEV_inventario.a3sol "Vedi sorgente"
[DEV_impliciti log]: ../test/vestiario/DEV_impliciti.a3log "Vedi sorgente"
[DEV_impliciti sol]: ../test/vestiario/DEV_impliciti.a3sol "Vedi sorgente"
[DEV_manipolazione log]: ../test/vestiario/DEV_manipolazione.a3log "Vedi sorgente"
[DEV_manipolazione sol]: ../test/vestiario/DEV_manipolazione.a3sol "Vedi sorgente"
[vestiario]: ../test/vestiario/ "Vedi cartella"


<!-- EOF -->
