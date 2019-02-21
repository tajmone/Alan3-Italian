# CHANGELOG

    Status: Alpha stage | Log Range: Alpha v0.8.0–.

Changelog of Italian translation of Alan Standard Library v2.1.

This is the current changelog from Alpha v0.8.0 upward — the CHANGELOG was split into two files due to its huge size.

For previuos changes, see:

- [`CHANGELOG_OLD.md`](./CHANGELOG_OLD.md)  (v0.0.1–0.8.0)


-----

**Indice**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Alan 3.0beta6 build 1870](#alan-30beta6-build-1870)
    - [2019/02/21](#20190221)
        - [Passa alla v0.16.0](#passa-alla-v0160)
        - [Passa ad Alan 3.0beta6 build 1870](#passa-ad-alan-30beta6-build-1870)
        - [Aggiornamento vestiario](#aggiornamento-vestiario)
- [Alan 3.0beta6 build 1866](#alan-30beta6-build-1866)
    - [2019/02/19](#20190219)
        - [Passa alla v0.15.0](#passa-alla-v0150)
        - [Rinnovato il codice del vestiario](#rinnovato-il-codice-del-vestiario)
        - [Novità riguardanti il vestiario](#novit%C3%A0-riguardanti-il-vestiario)
        - [Nuovi messaggi dei verbi](#nuovi-messaggi-dei-verbi)
    - [2019/02/05](#20190205)
        - [Passa alla v0.14.0](#passa-alla-v0140)
        - [Separa modulo grammatica italiana](#separa-modulo-grammatica-italiana)
        - [Modulo classi](#modulo-classi)
        - [Modulo messaggi runtime](#modulo-messaggi-runtime)
    - [2019/02/02 \(2\)](#20190202-2)
        - [Passa alla v0.13.0](#passa-alla-v0130)
        - [Separa modulo classi vestiario](#separa-modulo-classi-vestiario)
        - [Vestiario](#vestiario)
    - [2019/02/02 \(1\)](#20190202-1)
        - [Passa ad Alan 3.0beta6 build 1866](#passa-ad-alan-30beta6-build-1866)
- [Alan 3.0beta6 build 1862](#alan-30beta6-build-1862)
    - [2019/02/01](#20190201)
        - [Vestiario](#vestiario-1)
        - [Messaggi runtime](#messaggi-runtime)
    - [2019/01/24](#20190124)
        - [Passa alla v0.12.0](#passa-alla-v0120)
        - [Passa ad Alan 3.0beta6 build 1862](#passa-ad-alan-30beta6-build-1862)
- [Alan 3.0beta6 build 1855](#alan-30beta6-build-1855)
    - [2019/01/17](#20190117)
        - [Passa alla v0.11.0](#passa-alla-v0110)
        - [Passa ad Alan 3.0beta6 build 1852](#passa-ad-alan-30beta6-build-1852)
        - [Uso di E POI in comandi di gioco](#uso-di-e-poi-in-comandi-di-gioco)
- [Alan 3.0beta6 build 1852](#alan-30beta6-build-1852)
    - [2019/01/16](#20190116)
        - [Sintassi alternative con 'a' in `guarda_*`](#sintassi-alternative-con-a-in-guarda_)
        - [Sintassi alternative per preposizione 'dai'](#sintassi-alternative-per-preposizione-dai)
        - [Porte e Finestre](#porte-e-finestre)
    - [2019/01/15](#20190115)
        - [Aggiusta verbi modulo classi](#aggiusta-verbi-modulo-classi)
    - [2019/01/14](#20190114)
        - [Passa alla v0.10.0](#passa-alla-v0100)
        - [Passa ad Alan 3.0beta6 build 1852](#passa-ad-alan-30beta6-build-1852-1)
        - [Aggiusta i verbi di domande con "è"](#aggiusta-i-verbi-di-domande-con-%C3%A8)
        - [Modulo supplemento](#modulo-supplemento)
        - [Nuovo attributo banner di versione Alan](#nuovo-attributo-banner-di-versione-alan)
        - [Rimuovi stropping superfluo](#rimuovi-stropping-superfluo)
- [Alan 3.0beta6](#alan-30beta6)
    - [2019/01/06](#20190106)
        - [Vestiario](#vestiario-2)
    - [2018/12/08 \(3\)](#20181208-3)
        - [Verbi](#verbi)
        - [Verbi Classi](#verbi-classi)
        - [Documentazione classi](#documentazione-classi)
    - [2018/12/08 \(2\)](#20181208-2)
        - [Verbi](#verbi-1)
        - [Messaggi libreria](#messaggi-libreria)
    - [2018/12/08 \(1\)](#20181208-1)
        - [Verbi apri, chiudi, blocca e sblocca](#verbi-apri-chiudi-blocca-e-sblocca)
        - [Messaggi libreria](#messaggi-libreria-1)
        - [Modulo classi](#modulo-classi-1)
    - [2018/12/07](#20181207)
        - [Messaggi libreria](#messaggi-libreria-2)
        - [Verbi](#verbi-2)
        - [Pulizia sorgenti](#pulizia-sorgenti)
    - [2018/12/04 \(3\)](#20181204-3)
        - [Messaggi libreria](#messaggi-libreria-3)
        - [Risposte dei verbi](#risposte-dei-verbi)
    - [2018/12/04 \(2\)](#20181204-2)
        - [Messaggi libreria](#messaggi-libreria-4)
    - [2018/12/04 \(1\)](#20181204-1)
        - [Messaggi libreria](#messaggi-libreria-5)
        - [Modulo classi](#modulo-classi-2)
    - [2018/12/01](#20181201)
        - [Documentazione messaggi libreria](#documentazione-messaggi-libreria)
    - [2018/11/30 \(2\)](#20181130-2)
        - [Documentazione](#documentazione)
        - [Messaggi dei verbi](#messaggi-dei-verbi)
    - [2018/11/30 \(1\)](#20181130-1)
        - [Messaggi dei verbi](#messaggi-dei-verbi-1)
        - [Rinomina parametri del verbo `scrivi`](#rinomina-parametri-del-verbo-scrivi)
    - [2018/11/25 \(2\)](#20181125-2)
        - [Aggiornamento Doxter](#aggiornamento-doxter)
    - [2018/11/25 \(1\)](#20181125-1)
        - [Messaggi dei verbi](#messaggi-dei-verbi-2)
    - [2018/11/24](#20181124)
        - [Messaggi dei verbi](#messaggi-dei-verbi-3)
        - [Nuovi messaggi dei verbi](#nuovi-messaggi-dei-verbi-1)
    - [2018/11/23 \(2\)](#20181123-2)
        - [Rinomina messaggi dei verbi](#rinomina-messaggi-dei-verbi)
        - [Sostituisci messaggi inglesi dei verbi](#sostituisci-messaggi-inglesi-dei-verbi)
        - [Traduci messaggi dei verbi](#traduci-messaggi-dei-verbi)
    - [2018/11/23 \(1\)](#20181123-1)
        - [Correggi Baco LIQUIDI](#correggi-baco-liquidi)
    - [2018/11/22 \(5\)](#20181122-5)
        - [Messaggi dei verbi](#messaggi-dei-verbi-4)
    - [2018/11/22 \(4\)](#20181122-4)
        - [Correggi Baco in LIQUIDO](#correggi-baco-in-liquido)
    - [2018/11/22 \(3\)](#20181122-3)
        - [Documentazione](#documentazione-1)
        - [Verbi](#verbi-3)
        - [Messaggi dei verbi](#messaggi-dei-verbi-5)
    - [2018/11/22 \(2\)](#20181122-2)
        - [Suddivisione modulo messaggi](#suddivisione-modulo-messaggi)
        - [Passa alla v0.9.0](#passa-alla-v090)
    - [2018/11/22 \(1\)](#20181122-1)
        - [Messaggi dei verbi](#messaggi-dei-verbi-6)
    - [2018/11/20](#20181120)
        - [Documentazione messaggi](#documentazione-messaggi)
        - [Rinomina messaggi dei verbi](#rinomina-messaggi-dei-verbi-1)
    - [2018/11/16](#20181116)
        - [Documentazione verbi](#documentazione-verbi)
    - [2018/11/15](#20181115)
        - [Documentazione verbi](#documentazione-verbi-1)
    - [2018/11/13 \(2\)](#20181113-2)
        - [Pulizia documentazione verbi](#pulizia-documentazione-verbi)
        - [Documenta il baco della "è"](#documenta-il-baco-della-%C3%A8)
    - [2018/11/13 \(1\)](#20181113-1)
        - [Passa alla v0.8.0: Tutti i verbi tradotti](#passa-alla-v080-tutti-i-verbi-tradotti)

<!-- /MarkdownTOC -->

-----

# Alan 3.0beta6 build 1870

## 2019/02/21

- [`libreria.i`][libreria] &#x27f6; v0.16.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.16.0
- [`lib_classi_vestiario.i`][lib_classi_vestiario] &#x27f6; v0.16.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.16.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.16.0
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.16.0
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.16.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.16.0
- [`lib_grammatica.i`][lib_grammatica] &#x27f6; v0.16.0
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.16.0

### Passa alla v0.16.0

Tutti i moduli della libreria passano alla versione 0.16.0. Siccome sono stati rinominati gli attributi `indumento` per la mappatura del corpo, tutti i sorgenti di avventure che usano il vestiario vanno adattati di conseguenze.

### Passa ad Alan 3.0beta6 build 1870

Da qui in avanti il progetto adotta la [developer snaphshot]  [Alan 3.0beta6 build 1870][3.0beta6-1870] per testare la libreria usufruendo dei più recenti bug fix.

### Aggiornamento vestiario

#### Rinomina attributi zone del corpo

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


#### Nuovo attributo `strato_viso`

Questo commit introduce `strato_viso`, un nuovo attributo della classe `indumento` per la mappatura delle zone del corpo. Grazie ad esso sarà possibile distinguere tra indumenti indossabili sopra la testa (come i cappelli, che fanno riferimento a `strato_testa`) e indossabili facciali (occhiali, barbe finte, maschere, ecc).

#### Nuovi attributi per indumenti speciali

Aggiungi attributi `IS blocca_gambe` e `IS NOT due_pezzi` sulla classe
`indumento`, per consentire di creare indumenti come gonne e cappotti,
che non impediscono di indossare/rimuovere indumenti per le gambe negli
strati inferiori, e anche indumenti che coprono torso e gambe in due
pezzi separati (ma gestiti come un unico indumento) come un bikini, di
modo che possano essere indossati mentre si indossa una gonna.


-------------------------------------------------------------------------------

# Alan 3.0beta6 build 1866

## 2019/02/19

- [`libreria.i`][libreria] &#x27f6; v0.15.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.15.0
- [`lib_classi_vestiario.i`][lib_classi_vestiario] &#x27f6; v0.15.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.15.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.15.0
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.15.0
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.15.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.15.0
- [`lib_grammatica.i`][lib_grammatica] &#x27f6; v0.15.0
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.15.0

### Passa alla v0.15.0

Tutti i moduli della libreria passano alla versione 0.15.0.


### Rinnovato il codice del vestiario

Questo aggiornamento rivede tutto il codice per gestire il vestiario, implementando un nuovo sistema che è sia più semplice da gestire nella libreria che più facile usare per gli utenti finali, e risolve i molteplici bachi presenti nella libreria originale.

Sono previste ulteriori modifiche alle funzionalità di abbigliamento, che verranno implementate nei prossimi commit. Alcune di esse prevedono nuove funzionalità al momento non contemplate.

Per i dettagli completi delle molteplici modifiche strutturali al codice, si vedano i seguenti appunti di lavoro:

- [`VESTIARIO.md`][VESTIARIO]
- [`VESTIARIO_DEV.md`][VESTIARIO_DEV]
- [`VESTIARIO_PROBLEMI.md`][VESTIARIO_PROBLEMI]

Le modifiche richieste per adattare il nuovo sistema di vestario hanno coinvolto moltissime parti della libreria, e non è possibile riassumere tutte le modifiche.

> __ANNOTAZIONI__ — Per ora, il codice originale è stato preservato accanto alle modifiche, per facilitarne la consultazione in caso di problemi, e le parti del codice modificate, rimosse o aggiunte sono state marcate con commenti che iniziano per `-- >>> dev-vestario:`, per facilitarne l'individuazione tramite funzioni di ricerca (questi commenti verranno rimossi appena tutti i lavori riguardanti il vestiario saranno ultimati). 


### Novità riguardanti il vestiario

Dal lato utente, il nuovo sistema funziona grosso modo come il precedente, e saranno richiesti solo alcuni piccoli accorgimenti per adattare le avventure preesistenti. Però il nuovo sistema è più intuitivo, specie per quanto riguarda la mappatura del vestiario al corpo e gli strati di indossamento. Inoltre, con il nuovo sistema è molto più semplice creare nuovi verbi _ad hoc_ che possano coinvolgere indumenti.

Dal lato della Libreria, il codice per il vestiario è diventato molto più snello, e più facile da gestire nel corso dello sviluppo.

Qui nel changelog mi limiterò a riassumere i cambiamenti più imporanti del vestiario nella libreria; per maggiori dettagli si veda il documento [`VESTIARIO_DEV.md`][VESTIARIO_DEV].

#### Abbandono di `abbigliamento` e `indossati`

Il nuovo sistema non ricorre più all'entità `abbigliamento` né al set degli `indossati` di ogni attore, ma utilizza solo l'attributo booleano `indossato` (ora spostato su `thing`). Questi introducevano troppe complicazioni gestionali e pochi benefici reali.

#### Utilizzo nelle avventure

Ora, per creare degli indumenti indossati nelle proprie avventure, sarà sufficienti collocare l'indumento nell'attore destinatario e settarlo come `indossato`, al resto ci penserà la libreria nel corso dell'inizializzazione.

```alan
THE scarpe_eroe IsA indumento IN hero.
  IS indossato.
```


#### Nuovo approccio all'indossabilità

Il nuovo sistema sposta l'attributo `indossato` su `thing`, rendendolo così accessibili ai CHECK di ogni verbo. Ovviamente, questo attributo dovrebbe aver senso solo con oggetti della classe `indumento`, e quindi se la libreria fa il suo dovere non dovrebbe accadere che un oggetto non indumento risulti `indossato`.

Il criterio per distinguere tra indumenti indossati e non indossati è molto semplice:

- Qualsiasi `indumento IS indossato DIRECLY IN` un attore è un indumento indossato.
- Qualsiasi `indumento INDIRECLY IN` un attore _non può_ essere un indumento indossato, ma solo trasportato.
- Un `indumento DIRECLY IN` un attore può essere o un indumento indossato, o un indumento trasportato, a seconda del valore dell'attributo `indossato`.

Quindi, nel nuovo sistema è sufficiente accertarsi che qualsiasi verbo che _potrebbe_ spostare indumenti al di fuori di un attore si assicuri di settare l'oggetto come `NOT indossato` — anche se non è un `indumento` non importa, dato che per i non-indumenti l'attributo non fa differenza e, comunque, dovrebbe sempre essere settato come `NOT indossato`. Questo accorgimento è finalizzato a supportare l'estensibilità degli indossabili ad altri tipi che non siano indumenti.


#### Estensibilità degli indossabili

L'attributo `indossato` introduce il criterio _generale_ di indossabilità (secondo cui solo oggetti _direttamente_ in attori possono essere nello stato di indossati) che potrebbe essere sfruttato anche per altri tipi di indossabili. Allo stato attuale, la Libreria gestisce solo indossabili di tipo `indumento`, ma gli autori potrebbero implementare altre classi di indossabili — p.es. dei gadget/dispositivi che siano indossabili pur non essendo della classe `indumento`.

Poiché l'attributo `indossato` è già presente su `thing`, e visto che tutti i verbi della libreria si assicurano di settare a `NOT indossando` un oggetto che viene dislocato da un attore, eventuali nuove classi di indossabili potrebbero tranquillamente sfruttare questo attributo, dato che il criterio generale di indossabilità è il medesimo.

Sulla classe `indumento` la Libreria definisce verbi mirati agli indumenti, come i verbi `indossa`/`rimuovi` che gestiscono l'abbigliamento a strati e l'indossamento ordinato dei capi di vestiario. Un autore che volesse introdurre indossabili di altro tipo potrebbe farlo creando una nuova classe, di modo da poter implementare su di essa varianti specifiche dei verbi `indossa`/`rimuovi`, che non vadano a sovrapporsi ai verbi del vestiario.


#### Stratificazione senza vincoli

Il nuovo sistema si limita a verificare che gli indumenti con valori di copertura non-zero vengano indossati e rimossi nell'ordine corretto, ma non gestisce più i casi speciali come i cappotti e le gonne.

La codifica dei casi speciali nella libreria limitava la libertà d'uso degli strati imponendo un modello arbitrario e restrittivo. Ora starà agli autori implementare la gestione di casi speciali, se ne avessero la necessità.

#### Stratificazione non esponenziale

Il nuovo sistema non impone più una numerazione esponenziale per gli strati del vestiario (2, 4, 8, 16, 32, 64) ma adotta ora una numerazione libera (1, 2, 3, ...) che l'autore potrà utilizzare come rietiene più opportuno.

Il nuovo sistema è più intuitivo e facile da gestire, ed è compatibile con indumenti creati per il sistema precedente, dato che si limita a verificare se i valori sono uguali o superiori tra loro.

#### Migliorie messaggistica

Anche la messaggistica riguardo al vestiario è stata notevolmente migliorata.

Nei verbi che impediscono l'azione se uno dei parametri è trasportato dall'Eroe, ora verrà prodotto un messaggio diverso a seconda se l'oggetto sia solo portato o indossato. 

##### Messaggi di fallimento indossa/rimuovi

Nel vecchio sistema, quando l'azione dei verbi `indossa`/`togliti` non andava a buon fine il messaggio riportava l'elenco completo degli indumenti indossati dal giocatore. Il nuovo sistema elenca solo quegli indumenti che bloccano l'azione e andrebbero rimossi.


##### Elenchi inventario

Il nuovo sistema produrra sia per l'inventario dell'Eroe che per 'esamina attore' due elenchi separati per gli oggetti trasportati e quelli indossati. Questo è ottenuto tramite dei loop personalizzati nel codice dei verbi, e senza ricorrere a `LIST actor` (il vecchio sistema usava `LIST abbigliamento`).

Inoltre, i messaggi prodotti sono leggermente diversi, meno verbosi e meno invadenti.

- __Non menzionare nudità__ — Ora non verrà menzionato se un attore non sta indossando nulla. Oltre ad essere inutilmente verboso, menzionarlo interferirebbe con quelle avventure che non utilizzano affatto il vestiario, sottolineando costantemente la nudità dei personaggi mentre invece il loro abbigliamento potrebbe essere descritto assieme al personaggio ma non implementato attraverso l'uso di indumenti.
- __Non menzionare a mani vuote__ — Ora non verrà menzionato se un PNG non sta portando nulla, tanto è implicito. Oltre ad essere inutilmente verboso, menzionarlo interferirebbe con quelle avventure in cui non è previsto affatto che i PNG trasportino oggetti.


#### Criteri maneggiamento indumenti indossati

Il nuovo sistema stabilisce delle regole formali riguardo i verbi che potrebbero dislocare un indumento indossato da un attore. La regola generale è che non è consentito farlo.

Se si tratta di un indumento indossato dall'Eroe, il presupposto è che potrà toglierselo prima di eseguire l'azione; nel caso di PNG invece il presupposto è che l'indumento andrebbe ottenuto chiedendolo al PNG, in modo da rispettare le regole di consenzienza.

Il vecchio sistema consentiva di prendere implicitamente indumenti indossati dai PNG, con vari verbi — p.es. era possibile lanciare ad Alice le scapre indossate da Bob. A mio avviso, consentire di prelevare gli indumenti indossati alla stregua degli oggetti trasportati è eccessivo, e la Libreria deve prevenirlo di default, lasciando agli autori il margine di libertà per implementare i casi specifici (o generali) in cui questo sia fattibile.

Sono stati aggiunti dei CHECK sulla classe `indumento` per bloccare i verbi che dislocherebbero un indumento indossato dal suo propietario (Eroe o attore che sia), tranne nei casi in cui l'azione è sensata (p.es. indossare un indumento non indossato, o chiedere a un indumento indossato a un PNG consenziente). Questo include anche quei verbi che prendono implicitamente un oggetto per prepare/eseguire l'azione richiesta. 

### Nuovi messaggi dei verbi

Creati nuovi attributi per i messaggi di risposta dei verbi:

|             Attributo             |                      Testo                       |
|-----------------------------------|--------------------------------------------------|
| `png2_non_gradirebbe_sg`/`pl`     | `"Non credo che $+2 [gradirebbe/gradirebbero]."` |
| `azione_insensata_ogg1_portato`   | `"Che senso ha? Stai portando $+1."`             |
| `azione_insensata_ogg1_indossato` | `"Che senso ha? Stai indossando $+1."`           |
| `azione_insensata_ogg2_portato`   | `"Che senso ha? Stai portando $+2."`             |
| `azione_insensata_ogg2_indossato` | `"Che senso ha? Stai indossando $+2."`           |



<!---------------------------------------------------------------------------->

## 2019/02/05

- [`libreria.i`][libreria] &#x27f6; v0.14.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.14.0
- [`lib_classi_vestiario.i`][lib_classi_vestiario] &#x27f6; v0.14.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.14.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.14.0
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.14.0
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.14.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.14.0
- [`lib_grammatica.i`][lib_grammatica] &#x27f6; v0.14.0
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.14.0

### Passa alla v0.14.0

Tutti i moduli della libreria passano alla versione 0.14.0.

### Separa modulo grammatica italiana

Questo commit raccoglie tutto il codice per la definizione e l'inizializzazione degli attributi grammaticali dell'italiano in un nuovo modulo della libreria a sé stante:

- [`lib_grammatica.i`][lib_grammatica]

Questo rende possibile utilizzare il modulo indipendentemente dalla Libreria Standard, per creare avventure in italiano senza l'infrastruttura della libreria.

> __NOTA__ — Per ora il codice di `lib_supplemento.i`, che si occupa di definire le _player words_ per la conversione (durante il parsing) degli articoli, le preposizioni, ecc., non è stato incluso nel nuovo modulo `lib_grammatica.i`. Poiché l'idea originale dietro il modulo supplementare era di creare un modulo temporaneo in attesa del supporto nativo per l'italiano in Alan, mi sono riservato di prendermi del tempo prima di decidere se includerlo in `lib_grammatica.i` o meno.

#### Attributi grammatica su entity

Adesso la libreria definisce gli attributi per la grammatica direttamente sulla classe `entity`, rendendoli disponibili su ogni classe e istanza (incluse le classi letterali). Questa novità migliora lo sviluppo della libreria e introduce nuove possibilità.

Le migliorie per lo sviluppono riguardano il fatto che ora gli attributi sono disponibili in qualsiasi contesto di Alan, poiché la loro presenza è ora garantita su qualsiasi classe e istanza. È quindi possibile utilizzare controlli sugli attributi in qualsiasi clausola sintattica, e finanche nelle definizioni dei messagi runtime.

Le nuove possibilità per gli autori di avventure riguardono il fatto che è ora possibile creare messaggi _ad hoc_ in cui far riferimento a luoghi usando genere e numero appropriati, così come preposizioni, vocali per l'accordo, ecc. Questo risulta estramente utile nella creazione di messaggi che coinvolgono luoghi (p.es. un messaggio quando si entra o esce da certi tipi di stanze), e adesso l'autore potrà utilizzare (per esempio) `SAY prep_DA OF CURRENT LOCATION` per mostrare la preposizione giusta per la stanza (es. "esci dalla cucina"). Siccome anche le istanze di `location` vengono ora inizializzate con gli attributi di grammatica, sarà sufficiente specificare il corretto attributo `articolo` per quei luoghi cui si dovrà far riferimento nei messaggi.

#### Entità con nome proprio

Anche l'attributo `nome_proprio` è stato spostato su `entity` (mentre prima era presente solo su `actor`) per consentire di creare entità e luoghi con nome proprio. Sebbene in genere sono solo gli attori ad avere un nome proprio, in alcuni contesti può essere necessario creare oggetti inanimati con un nome proprio. Ecco alcuni esempi teorici e pratici:

- Un PNG (Marco) muore nel gioco, e dobbiamo sostituire la sua istanza di `actor` con una di classe `object` per rappresentarne il cadavere. Il giocatore potrebbe non sapere che Marco è morto, e quindi continuerà a riferirsi ad esso con il nome proprio. Per questo motivo, è utile che la libreria consenta di definire oggetti con `nome_proprio`, sì poter mostrare una corretta messaggistica dei verbi:

    > &gt; _chiedi le chiavi a marco_
    > 
    > Marco non è in grado di capirti.

    In questo esempio, "non è in grado di capirti" è la risposta del verbo 'chiedi a' quando è utilizzato con entità non attore. La possibilità di definire oggetti con nome proprio garantisce una corretta messaggistica con qualsiasi verbo (in questo esempio, previene il messaggio "Il Marco non è in grado di capirti.").

- In alcuni casi anche i luoghi possono avere un nome proprio, e nelle avventure che producono messaggi riguardanti luoghi sarà necessaria una corretta gestione degli articoli. P.es., "Luigi parte per Roma" (e non "per LA Roma", che lascierebbe intendere la squadra di calcio). Un esempio estremo potrebbe essere la balena di Pinocchio: il giocatore si trova ad entrare in un luogo che è (dal punto di vista della storia) un personaggio, magari con un nome proprio (es. "Dentro Moby Dick").

- A volte gli autori implementeranno istanze di `entity` per creare entità astratte ed onnipresenti, p.es. fantasmi, emozioni, ecc. Queste entità potrebbero avere nomi propri (il fantasma "Casper", ecc.).

Le AT sono opere narrative, per cui non vi è limite pratico a ciò che gli autori possono inventare. La disponibilità globale degli attributi di grammatica rimuove qualsiasi precedente limite in tal senso.


### Modulo classi

#### Nuove classi maschi e femmine

Sono state aggiunte due nuove sottoclassi di `persona`:

- `maschi`  — per collettivi di maschi (o maschi e femmine misti).
- `femmine` — per collettivi di femmine.

Queste nuove classi sono utili perché oltre a definire attributi di genere e numero, e articoli di base, definiscono e anche dei pronomi (essi/loro, esse/loro). Ora le sottoclassi di `persona` definite dalla libreria (ed i valori predefiniti) sono:

|   classe  |  art.  |  pronomi   |
|-----------|--------|------------|
| `maschio` | `"il"` | lui        |
| `femmina` | `"la"` | lei        |
| `maschi`  | `"i"`  | essi, loro |
| `femmine` | `"le"` | esse, loro |


> __NOTA__ — Il pronome 'loro' potrebbe essere rimosso in seguito, nel caso dovessero confliggere con future definizioni delle _them words_. Al momento non ho ancora avuto modo di esplorare l'uso delle _them words_, e devo capire meglio se potrebbero esservi anche dei conflitti con potenziali usi di 'loro' in riferimento al possesso.
> 
> In linea di massima, la Libreria non si occupa di definire i pronomi (relegando questo compito all'autore), l'unica eccezzione sono le sottoclassi di `persona`. Può anche darsi che in futuro le definizioni dei pronomi verranno completamente rimosse dalla libreria.

### Modulo messaggi runtime

Ora che gli attributi grammaticali per il genere, numero e vocale per gli aggettivi sono disponibili sulla classe `entity`, è stato possibile ottimizzare vari messaggi di runtime per sfruttare `vocale` anziché dover controllare se l'istanza è plurale/singolare e maschile/femminile. Esempio:

```alan
  CONTAINMENT_LOOP:
    "Non è possibile mettere $+1 dentro sé stess$$" SAY parameter1:vocale. "."
```



<!---------------------------------------------------------------------------->


## 2019/02/02 (2)

- [`libreria.i`][libreria] &#x27f6; v0.13.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.13.0
- [`lib_classi_vestiario.i`][lib_classi_vestiario] &#x27f6; v0.13.0 (_nuovo_)
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.13.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.13.0
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.13.0
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.13.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.13.0
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.13.0

### Passa alla v0.13.0

Tutti i moduli della libreria passano alla versione 0.13.0.

### Separa modulo classi vestiario

Sposta tutto il codice riguardante il vestiario da `lib_classi.i` al nuovo modulo [`lib_classi_vestiario.i`][lib_classi_vestiario]. 

> __NOTA__ — In realtà rimangono ancora in `lib_classi.i` alcuni frammenti di codice riguardanti il vestiario (p.es. nell'inizializzazione degli attori).

Questa scelta ha una duplice motivatazione:

1. Il codice per il vestiario è di grosse dimensioni e isolarlo in un proprio sottomodulo semplifica il lavoro di manutenzione della libreria, soprattutto in vista del fatto che la documentazione interna del modulo sarà di dimensioni consistenti.

2. L'altra ragione per questa mossa è il desiderio di poter rendere (in futuro) le funzionalità del vestiario opzionali, consentendo all'utente finale di escludere il suddetto modulo dall'importazione qualora non volesse utilizzarlo.

    Il vestiario introduce una notevole complessità nella libreria (i vari controlli automatici per gli indumenti indossati dal giocatore e dai PNG), e può complicare la vita agli autori quando creano verbi personalizzati che potrebbero coinvolgere indumenti indossati, ecc. Siccome non tutte le avventure necessiteranno del vestiario, questa funzionalità dovrebbe poter essere interamente opzionale nella libreria. Purtroppo, la modularizzazione condizionale dei moduli è un po' complicata in Alan, e questo obiettivo potrebbe rivelarsi complicato da conseguire, ma il primo passo consiste comunque nell'isolare in un modulo a sé stante il codice per il vestiario.

### Vestiario

Rinominato l'evento `worn_clothing_check` in `controlla_indossati`.

#### Documentazione vestiario

Aggiornato il documento:

- [`VESTIARIO.md`][VESTIARIO]

Minimi ritocchi alla documentazione Doxter del nuovo modulo vestiario.

<!---------------------------------------------------------------------------->

## 2019/02/02 (1)

### Passa ad Alan 3.0beta6 build 1866

Da qui in avanti il progetto adotta la [developer snaphshot]  [Alan 3.0beta6 build 1866][3.0beta6-1866] per testare la libreria usufruendo dei più recenti bug fix.

Tutti i riferimenti alla precedente build nei moduli della libreria e nei sorgenti dei test vengono aggiornati, ma non viene variata la versione dei moduli né la loro data poiché il salto di version non ha determinato differenze nei risultati dei test.


-------------------------------------------------------------------------------

# Alan 3.0beta6 build 1862

## 2019/02/01

- [`lib_classi.i`][lib_classi] &#x27f6; v0.12.1
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.12.1

### Vestiario

Questo commit apporta delle migliorie al modo in cui la libreria gestisce il vestiario e ne corregge alcuni problemi.

#### Elenchi indumenti indossati

##### Ridondanze verbo Indossa

Ora quando il verbo `indossa` non può portare a termine l'azione (per via di un indumento che la ostacola), nel messaggio di risposta non appaiono più i ridondanti "(indossato)" che c'erano prima:

> __&gt;__ _indossa i boxer_
> 
> Prendi i boxer. Stai già indossando un paio di blue jeans ~~(indossato)~~ e una bombetta ~~(indossato)~~...

Questa modifica al codice ha reso superfluo l'oggetto `tempworn`, che non era usato altrove ed è quindi stato rimosso:

```alan
THE tempworn IsA OBJECT
  CONTAINER TAKING indumento.
  HEADER "Stai già indossando"
END THE tempworn.
```


##### Concordanza elenchi

Ora, quando si esamina un PNG e viene stampato l'elenco di indumenti da lui indossati, nelle varie occorrenze di "(indossat*)" vi è concordanza con l'indumento cui si fa riferimento:

> __&gt;__ _esamina l'assistente_
> 
> È la tua assistente personale per lo shopping. L'assistente sta portando un
> paio di stivaletti (indossati) e un abito (indossato).

mentre prima veniva stampato sempre e solo "(indossato)".


#### Baco `indossa`

Risolto un baco nel verbo `indossa` per cui indumento che veniva _preso_ ed indossato non veniva settato come `indossato`.

### Messaggi runtime

Si è fatta un po' di pulizia nel modulo `lib_messaggi_libreria.i` e ottimizzato il codice in vari punti.

<!---------------------------------------------------------------------------->


## 2019/01/24

- [`libreria.i`][libreria] &#x27f6; v0.12.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.12.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.12.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.12.0
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.12.0
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.12.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.12.0
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.12.0

### Passa alla v0.12.0

Tutti i moduli della libreria passano alla versione 0.12.0.

### Passa ad Alan 3.0beta6 build 1862

Da qui in avanti il progetto adotta la [developer snaphshot]  [Alan 3.0beta6 build 1862][3.0beta6-1862] per testare la libreria usufruendo dei più recenti bug fix — tra cui un importane bug fix concernente l'uso di pronomi multipli.

-------------------------------------------------------------------------------

# Alan 3.0beta6 build 1855

## 2019/01/17

- [`libreria.i`][libreria] &#x27f6; v0.11.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.11.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.11.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.11.0
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.11.0
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.11.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.11.0
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.11.0

### Passa alla v0.11.0

Tutti i moduli della libreria passano alla versione 0.11.0.

### Passa ad Alan 3.0beta6 build 1852

Da qui in avanti il progetto adotta la [developer snaphshot]  [Alan 3.0beta6 build 1855][3.0beta6-1855] per testare la libreria usufruendo di nuove funzionalità.

### Uso di E POI in comandi di gioco

La nuova build ha aggiunto ([054581b]) la possibilità di utilizzare più AND WORD consecutive nell'input del giocatore, così ora è possibile digitare:

    prendi la pistola E POI spara 

laddove nelle build precedenti il parser (vedendo "E POI" come "AND AND") lo considerava un errore. Ora invece il parser tollera l'uso di AND WORD ridondanti.

-------------------------------------------------------------------------------

# Alan 3.0beta6 build 1852


## 2019/01/16

- [`lib_classi.i`][lib_classi] &#x27f6; v0.10.2
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.10.1

Dai una ripulita al codice del modulo classi.
Traduci risposte di `guarda_attraverso`.

### Sintassi alternative con 'a' in `guarda_*`

Aggiunte sintassi alternative ai seguenti verbi del gruppo `guarda_*`, per consentire l'uso (facoltativo) della 'a' nelle preposizioni improprie:

|       Verbo       |     Sintassi base     |     Sintassi alternativa     |
|-------------------|-----------------------|------------------------------|
| `guarda_dietro`   | guarda dietro (bulk)  | guarda dietro a (bulk)       |
| `guarda_sotto`    | guarda sotto (bulk)   | guarda sotto a (bulk)        |


### Sintassi alternative per preposizione 'dai'

Aggiunte sintassi alternative ai seguenti verbi, per supportare correttamente la preposizione 'dai':

|       Verbo       |     Sintassi base      |   Sintassi alternativa  |
|-------------------|------------------------|-------------------------|
| `esci_da`         | esci da (ogg)          | esci dai (ogg)          |
| `guarda_fuori_da` | guarda fuori da (ogg)  | guarda fuori dai (ogg)  |
| `scendi_da`       | scendi da (superficie) | scendi dai (superficie) |

> __NOTA 1__ — Nel verbo `prendi_da` erano già state definite le sintassi con `dai`.

<!-- sep -->

> __NOTA 2__ — La necessità di definire una sintassi a sé per supportare "`<verbo> dai`" è dovuta al fatto che non è stato possibile definire la preposizione `dai` come sinonimo di `da` in [`lib_supplemento.i`](https://github.com/tajmone/Alan3-Italian/blob/6b1dd90/alanlib_ita/lib_supplemento.i#L277 "Vedi sorgente del modulo") a causa dei conflitti con l'imperativo `dai` del verbo avere:
> 
> ```alan
> --~=============================================================================
> --| === "`DA`" + Articolo
> --~=============================================================================
> SYNONYMS
>   dal, dallo, dalla, 'dall''', dall, dagli, dalle  = da.
> 
> --| [WARNING]
> --| ======================================================
> --| La preposizione `dai` è stata omessa dalla lista di sinonimi poiché creava
> --| conflitto con la forma imperativa del verbo "`dare`", causando l'errore di
> --| compilazione:
> --| ......................................................
> --| 333 E : The word 'dai' is defined to be both a synonym and another word class.
> --| ......................................................
> --| Sto ancora cercando una soluzione ottimale al problema.
> --| ======================================================
> --<
> ```
> 
> Sto cercando una soluzione definitiva al problema, ma attualmente l'unico ripiego consiste nel definire sintassi aggiuntive ogni volta che è coinvolta la preposizione 'da' in un verbo.
> 
> Purtroppo, questo ripiego grava sugli utenti finali della libreria, i quali si vedono costretti a implementare tali sintassi alternative anche nei loro verbi (con il rischio che se ne scordino). L'ideale sarebbe trovare una soluzione interna alla libreria che non abbia ripercussioni sulla creazione di nuovi verbi.

### Porte e Finestre

Traduci in italiano le risposte per i verbi delle classi `porta` e `finestra`:

|        Verbo        |       Classi       |
|---------------------|--------------------|
| `bussa`             | `porta`            |
| `guarda_attraverso` | `finestra`         |
| `guarda_dietro`     | `porta`/`finestra` |
| `guarda_fuori_da`   | `finestra`         |
| `guarda_sotto`      | `porta`            |



La classi `porta` e `finestra` non definiscono alcun `NAME` dato che le loro istanze nell'avventura potrebbero avere diversi nomi, numeri e genere — es. una `porta` può essere _porta_, _portone_, _cancelli_, _botola_; una `finestra` _finestra_, _oblò_, _lucernaio_, _grata_, ecc.). La libreria si assicura di utilizzare nella messaggistica che le riguarda il nome definito dall'autore, e che  aggettivi e preposizioni concordino con esso.


<!---------------------------------------------------------------------------->

## 2019/01/15

- [`lib_classi.i`][lib_classi] &#x27f6; v0.10.1


### Aggiusta verbi modulo classi

Gli identificativi di alcuni verbi in `lib_classi.i` non erano stati tradotti:

|    Verbo EN    |       Verbo IT      |         Classi         |
|----------------|---------------------|------------------------|
| `knock`        | `bussa`             | `porta`                |
| `look_behind`  | `guarda_dietro`     | `porta`/`finestra`     |
| `look_under`   | `guarda_sotto`      | `porta`                |
| `look_out_of`  | `guarda_fuori_da`   | `finestra`             |
| `look_through` | `guarda_attraverso` | `finestra`             |
| `search`       | `ispeziona`         | `contenitore_elencato` |

Ora non risultano più esserci identificativi non tradotti.

<!---------------------------------------------------------------------------->


## 2019/01/14

- [`libreria.i`][libreria] &#x27f6; v0.10.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.10.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.10.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.10.0
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.10.0
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.10.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.10.0
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.10.0

### Passa alla v0.10.0

Tutti i moduli della libreria passano alla versione 0.10.0.

### Passa ad Alan 3.0beta6 build 1852

Da qui in avanti il progetto adotta la [Alan 3.0beta6 build 1852][3.0beta6-1852] (una [developer snaphshot]) per testare la libreria, anziché continuare ad usare la beta release ufficiale e attendere la beta7.

Questo è un punto di svolta importante poiché la build 1852 rende disponibili in anteprima due importanti novità per la libreria italiana:

- __BugFix "é"__ — Il baco che impediva il parsing delle 'e' con accento grave nei comandi del giocatore è ora risolto (commit [ad2c7de]).
- __Supporto Apostrofi__ — Questa versione introduce in anteprima la nuova funzionalità (richiesta appositamente per l'italiano) per il supporto di articoli e preposizioni articolate con apostrofi (commit [1bfc8f7]).

Essendo entrambe funzionalità chiave per lo sviluppo della libreria italiana, vale la pena passare ad una pre-release di Alan in attesa della prossima Beta ufficiale (Alan 3.0beta7) per poterne usufruire subito e iniziare a riassestare la libreria di modo che sia tutto pronto per la prossima release di Alan.

### Aggiusta i verbi di domande con "è"

Adesso i verbi di domande che contengono una E con accento grave (`è`) funzionano, quindi sono state eliminate le sintassi alternative che ripiegavano sulla E acuta (`é`).

### Modulo supplemento

Modifica codice e commenti di modo che riflettano l'introduzione della nuova funzionalità per il supporto degli apostrofi.

- Traduci, aggiorna e Doxterizza i commenti di documentazione per:
    + _Player Words_ .
    + Preposizioni articolate.

### Nuovo attributo banner di versione Alan

Ora la libreria definisce su `blocco_definizioni` l'attributo stringa `AlanV` (ossia, `mia_AT:AlanV`) per gestire la versione di Alan mostrata nel banner. Il valore predefinito è quello della ultima release di Alan al tempo dell'ultimo aggiornamento della Libreria:

```alan
EVERY blocco_definizioni IsA LOCATION

-->intestazione(.20)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| === Attributi dell'intestazione
--~-----------------------------------------------------------------------------
--~=============================================================================
--| L'istanza `mia_AT` (del `blocco_definizioni`) espone all'autore degli
--| attributi per fornire i dettagli del banner che potrà (facoltativamente)
--| essere mostrato all'inizio della partita tramite il template dell'istanza
--| `intestazione`:

  HAS        titolo  "Nuova Avventura".
  HAS   sottotitolo  "".
  HAS        autore  "Il Mio Nome".
  HAS          anno   2018.
  HAS      versione  "1".

--| La libreria definisce anche l'attributo `AlanV`, che mostrerà nel banner la
--| versione di Alan utilizzata:

  HAS         AlanV  "v3.0beta6".

--| Il valore predefinito è quello dell'ultima release di Alan all'epoca della
--| libreria. L'autore è libero di sovrascriverlo nel caso stesse usando una
--| versione di Alan più recente, diversa, o una developer snapshot, senza dover
--| modificare i sorgenti della libreria.
--<
```

Questo semplifica le cose quando l'autore si trova a lavorare con una versione di Alan più recente (o diversa, per esempio una dev snapshot) poiché può sovrascrivere la versione di Alan direttamente nell'intestazione della sua avventura. Esempio:

```alan
THE mia_AT IsA blocco_definizioni
  HAS       titolo  "La notte dei babbalusci viventi".
  HAS  sottotitolo  "Una AT horror in cui spietate lumache aliene conquistano la terra.".
  HAS       autore  "Tristano Ajmone".
  HAS         anno   2019.
  HAS     versione  "1".
  HAS        AlanV  "v3.0beta6 build 1852".
END THE.
```

### Rimuovi stropping superfluo

In svariate sintassi alcuni identificati erano tra virgolette anche se non richieste (es. `'dai'`, `'a'`, ecc.); virgolette rimosse. 

-------------------------------------------------------------------------------

# Alan 3.0beta6

## 2019/01/06

- [`lib_classi.i`][lib_classi] &#x27f6; v0.9.9

### Vestiario

Inizia a tradurre e doxterizzare la documentazione riguardante l'abbigliamento.

<!---------------------------------------------------------------------------->

## 2018/12/08 (3)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.9.8
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.13


### Verbi

Ripulisci un po' il codice.


### Verbi Classi

Ripulisci il codice e traduci varie stringhe di risposte.

#### Correggi verbi `look_in` non tradotti

Nel modulo classi non erano stati tradotti gli identificativi del verbo `look_in` su alcune classi:

- `liquido`
- `contenitore_elencato`
- `supporto`

### Documentazione classi

Procedi con la documentazione doxterizzata del modulo classi:

- Inizializzazione dei contenitori elencati


<!---------------------------------------------------------------------------->

## 2018/12/08 (2)

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.15
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.12

### Verbi

#### Migliora risposte blocca

Aggiunto controllo `azione_insensata` se il secondo parametro è l'eroe nei verbi:

- `blocca_con`
- `sblocca_con`

### Messaggi libreria

#### Traduci messaggi dei verbi

Tradotti i seguenti attributi per i messaggi di risposta dei verbi:

|        Attributo EN       |        Attributo IT        |                   Testo                    |
|---------------------------|----------------------------|--------------------------------------------|
| `check_door_matching_key` | `chiave2_non_blocca_ogg1`  | `"Non è possibile bloccare $+1 con $+2."`  |
| `check_door_matching_key` | `chiave2_non_sblocca_ogg1` | `"Non è possibile sbloccare $+1 con $+2."` |

Eliminato attributo originale.

<!---------------------------------------------------------------------------->

## 2018/12/08 (1)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.9.7
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.14
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.11

### Verbi apri, chiudi, blocca e sblocca

Migliorate le risposte dei verbi per l'apertura, chiusura, blocco e sblocco di oggetti apribili/bloccabili:

- `apri`
- `blocca_con`
- `blocca`
- `chiudi`
- `sblocca_con`
- `sblocca`

Se l'azione richiede un chiudi implicito, la risposta sarà:

- "`Prima chiudi $+1 e poi [art] blocchi.`"

altrimenti sarà:

- "`Fatto, ora $+1 [è/sono] [apert/chius/bloccat/sbloccat]*.`"

### Messaggi libreria

#### Nuovi messaggi dei verbi

Creati nuovi attributi per i messaggi di risposta dei verbi (nessuna controparte nella libreria originale inglese):

|          Attributo          |                      Testo                       |
|-----------------------------|--------------------------------------------------|
| `descrizione_standard_ogg1` | `"Esamini $+1, ma non noti niente di speciale."` |

L'attributo `descrizione_standard_ogg1` viene ora utilizzato dal verbo `esamina` e la sua variante su `liquido`.

### Modulo classi

#### Liquidi

##### Onora `xDesc`

Se l'attributo `xDesc` di un liquido è una stringa non vuota, il verbo `esamina` la mostrerà invece della descrizione standard.

#### Porte e finestre

Traduci le risposte per il verbo `esamina`.


<!---------------------------------------------------------------------------->

## 2018/12/07

- [`lib_classi.i`][lib_classi] &#x27f6; v0.9.6
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.9.2
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.13
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.10


### Messaggi libreria

#### Elimina messaggi dei verbi

Elimina attributi inglesi per i messaggi di risposta dei verbi:

|           Attributo            |                       Testo                        |
|--------------------------------|----------------------------------------------------|
| `check_liquid_vessel_not_cont` | `"You can't carry $+1 around in your bare hands."` |

Al posto degli attributi originali sono stati impiegati attributi italiani preesistenti, oppure la risposta è stata gestita direttamente nel codice del verbo.

### Verbi

#### Condiscendenza PNG in `chiedi` dei liquidi

Corretto il verbo `chiedi` sulla classe `liquido` di modo che la condiscendenza del PNG sia ripristinata correttamente al termine dell'azione.

### Pulizia sorgenti

Ripulisci il codice di `lib_classi.i` e annota stringhe e commenti da tradurre.

Sostituisci occorrenze di `attributo OF istanza` con la forma breve `instanza:attributo` nei moduli `lib_classi.i`, `lib_luoghi.i` e `lib_verbi.i`.

<!---------------------------------------------------------------------------->

## 2018/12/04 (3)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.9.5
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.12

### Messaggi libreria

#### Nuovi messaggi dei verbi

Creati nuovi attributi per i messaggi di risposta dei verbi (nessuna controparte nella libreria originale inglese):

|     Attributo      |     Testo     |
|--------------------|---------------|
| `ogg1_già_sg`/`pl` | `"$+1 è già"` |

#### Elimina messaggi dei verbi

Elimina attributi inglesi per i messaggi di risposta dei verbi:

|               Attributo                |                        Testo                        |   classe d'uso  |
|----------------------------------------|-----------------------------------------------------|-----------------|
| `check_device_on_sg`/`pl`              | `"$+1 [is/are] already off."`                       | `dispostivo`    |
| `check_device_not_on_sg`/`pl`          | `"$+1 [is/are] already on."`                        | `dispostivo`    |
| `check_lightsource_not_lit_sg`/`pl`    | `"$+1 is already lit."`                             | `fonte_di_luce` |
| `check_lightsource_lit_sg`/`pl`        | `"But $+1 is not lit."`                             | `fonte_di_luce` |
| `check_lightsource_switchable_sg`/`pl` | `"That's not something you can switch on and off."` |                 |

### Risposte dei verbi

Tradotte varie risposte all'interno dei verbi:

- `lancia`

#### Risposte per dispositivi e fonti di luce

Tradotte le ultime risposte dei verbi per dispositivi e fonti di luce.



<!---------------------------------------------------------------------------->

## 2018/12/04 (2)

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.11


### Messaggi libreria

Continua a riorganizzare i messaggi della libreria raggruppandoli per affinità.


<!---------------------------------------------------------------------------->

## 2018/12/04 (1)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.9.4
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.10
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.8

### Messaggi libreria

Continua a riorganizzare i messaggi della libreria raggruppandoli per affinità.

#### Traduci messaggi dei verbi

Tradotti i seguenti attributi per i messaggi di risposta dei verbi:

|           Attributo EN          |           Attributo IT          |              Testo               |
|---------------------------------|---------------------------------|----------------------------------|
| `check_obj_not_in_cont_sg`/`pl` | `ogg1_sg_già_dentro_cont2`/`pl` | `"$+1 [è/sono] già dentro $+2."` |

#### Azioni eterodirette

Nei verbi che richiedono un parametro `object`, aggiungi un ulteriore controllo per verificare se il parametro è l'eroe e, in caso affermativo, mostra il messaggio `azione_insensata` anziché il messaggio originale della libreria (`illegal_parameter_obj`). Esempio:

```alan
SYNTAX metti_in = metti (ogg) 'in' (cont)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg = hero
        THEN SAY mia_AT:azione_insensata.
        ELSE SAY mia_AT:illegal_parameter_obj.
      END IF.
```

Questo produce una risposta più adatta per comandi del tipo "metti me nella scatola".

Verbi modificati:

- `dai_a`
- `lancia_a`
- `lancia_contro` (solo parametro 1, dato che il controllo c'è già nel corpo del verbo)
- `lancia_in`
- `lancia`
- `metti_contro`
- `metti_dietro`
- `metti_in`
- `metti_sotto`
- `metti_su`
- `metti_vicino`
- `metti`
- `usa_con` (parametro 1)

Alcuni verbi in cui questo controllo è stato tralasciato — o perché tale comando non sarebbe del tutto insensato da parte del giocatore, o perché la risposta standard va più che bene, oppure perché servirebbe una risposta dedicata al contesto:

- `lega_a`
- `usa_con` (parametro 2)
- `usa`

#### Traduci messaggi delle classi

Tradotti i messaggi per gli attori che seguono l'eroe.

### Modulo classi

- Traduci pronomi di `maschio` ("lui") e `femmina` ("lei").

<!---------------------------------------------------------------------------->

## 2018/12/01

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.9

### Documentazione messaggi libreria

Sposta la regione Doxter che documenta l'uso di `$v` dal modulo `lib_messaggi_libreria.i` al file `doc_src/appunti-lavoro.asciidoc`.

Inizia a doxterizzare la documentazione dei messaggi, rendendo consultabili le categorie nelle quali sono attualmente organizzati.

<!---------------------------------------------------------------------------->

## 2018/11/30 (2)

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.8
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.8

### Documentazione

Nei verbi `entra` ed `esci` documenta l'uso di luoghi annidati per simulare l'eroe che entra ed esce da contenitori.

### Messaggi dei verbi

Riordina i messaggi da tradurre inserendoli nei gruppi di appartenenza degli attributi già tradotti.

#### Elimina messaggi dei verbi

Elimina attributi inglesi per i messaggi di risposta dei verbi:

|               Attributo               |                     Testo                     |
|---------------------------------------|-----------------------------------------------|
| `check_obj_suitable_look_out_sg`/`pl` | `"That's not something you can look out of."` |
| `illegal_parameter_look_out_sg`/`pl`  | `"That's not something you can look out of."` |

Al posto degli attributi originali sono stati impiegati attributi italiani preesistenti, oppure la risposta è stata gestita direttamente nel codice del verbo.

#### Rinomina messaggi dei verbi

Rinominati i seguenti attributi per i messaggi di risposta dei verbi:

|   Vecchio ID  |       Nuovo ID       |
|---------------|----------------------|
| `indossi_già` | `ogg1_già_indossato` |

#### Correggi messaggi dei verbi

Modificati i seguenti attributi per i messaggi di risposta dei verbi per adattarli a coprire anche la forma plurale:

|        Vecchio ID        |            Nuovi ID           |
|--------------------------|-------------------------------|
| `png1_non_apprezzerebbe` | `png1_non_gradirebbe_sg`/`pl` |


#### Traduci messaggi dei verbi

Tradotti i seguenti attributi per i messaggi di risposta dei verbi:

|          Attributo EN          |             Attributo IT             |                 Testo                  |
|--------------------------------|--------------------------------------|----------------------------------------|
| `check_obj_not_in_act_sg`/`pl` | `ogg1_già_posseduto_da_png2_sg`/`pl` | `"$+2 [possiede/possiedono] già $+1."` |

Gli attributi originali inglesi sono stati eliminati.



<!---------------------------------------------------------------------------->

## 2018/11/30 (1)

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.7
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.7


### Messaggi dei verbi

#### Traduci messaggi dei verbi

Tradotti i seguenti attributi per i messaggi di risposta dei verbi:

|       Attributo EN      |        Attributo IT        |                 Testo                  |
|-------------------------|----------------------------|----------------------------------------|
| `ogg_stringa_richiesto` | `illegal_parameter_string` | `"Usa le virgolette ("""") per [...]"` |

Gli attributi originali inglesi sono stati eliminati.

#### Elimina messaggi dei verbi

Elimina attributi inglesi per i messaggi di risposta dei verbi:

|       Attributo       |               Testo               |
|-----------------------|-----------------------------------|
| `check_obj_writeable` | `"Nothing can be written there."` |

Al posto degli attributi originali sono stati impiegati attributi italiani preesistenti, oppure la risposta è stata gestita direttamente nel codice del verbo.

### Rinomina parametri del verbo `scrivi`

Rinomina parametro `txt` in `testo` nei verbi `scrivi` e `scrivi_errore3`.


<!---------------------------------------------------------------------------->

## 2018/11/25 (2)

- [`libreria.i`][libreria] &#x27f6; v0.9.1
- [`lib_classi.i`][lib_classi] &#x27f6; v0.9.3
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.9.1
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.9.1
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.9.2
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.6
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.6
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.9.1

### Aggiornamento Doxter

L'aggiornamento a Doxter v0.2.4-alpha ha richiesto delle piccole modifiche in elementi comuni a tutti i moduli della libreria (lo spazio dopo un marcatore Doxter è ora obbligatorio).

<!---------------------------------------------------------------------------->

## 2018/11/25 (1)

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.5
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.5


### Messaggi dei verbi

#### Traduci messaggi dei verbi

Tradotti i seguenti attributi per i messaggi di risposta dei verbi:

|           Attributo EN           |       Attributo IT      |                       Testo                        |
|----------------------------------|-------------------------|----------------------------------------------------|
| `check_obj_not_scenery_sg`/`pl`  | `ogg1_scenario_sg`/`pl` | `"$+1 non [è/sono] importante ai fini del gioco."` |
| `check_obj2_not_scenery_sg`/`pl` | `ogg2_scenario_pl`/`pl` | `"$+2 non [è/sono] importante ai fini del gioco."` |

Gli attributi originali inglesi sono stati eliminati.

#### Nuovi messaggi dei verbi

Creati nuovi attributi per i messaggi di risposta dei verbi (nessuna controparte nella libreria originale inglese):

|           Attributo           |                  Testo                   |
|-------------------------------|------------------------------------------|
| `impossibile_maneggiare_liq1` | `"Non puoi maneggiare $+1 a mani nude."` |


#### Sostituisci messaggi inglesi dei verbi

Sostituisci tutte le occorrenze degli attributi inglesi per i messaggi di risposta dei verbi con attributi italiani:


|       Attributo EN      |    Attributo IT    |
|-------------------------|--------------------|
| `illegal_parameter_act` | `azione_insensata` |

Gli attributi originali inglesi sono stati eliminati.



<!---------------------------------------------------------------------------->

## 2018/11/24

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.4
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.4

### Messaggi dei verbi

Tradotte varie risposte nel corpo dei verbi.

#### Correggi baco in `chiedi`

Corretto baco nel verbo `chiedi`, dove un CHECK impiegava i messaggi per il parametro sbagliato: `mia_AT:ogg1_distante_sg`/`pl` anziché  `mia_AT:ogg2_distante_sg`/`pl`.

#### Sostituisci messaggi inglesi dei verbi

Sostituisci tutte le occorrenze degli attributi inglesi per i messaggi di risposta dei verbi con attributi italiani:

|            Attributo EN           |         Attributo IT        |
|-----------------------------------|-----------------------------|
| `check_obj_not_hero1`             | `azione_insensata`          |
| `check_obj_suitable_with_sg`/`pl` | `ogg1_inadatto_CON_sg`/`pl` |
| `illegal_parameter_with_sg`/`pl`  | `ogg1_inadatto_CON_sg`/`pl` |
| `illegal_parameter_with_sg`/`pl`  | `ogg2_inadatto_CON_sg`/`pl` |

Gli attributi originali inglesi sono stati eliminati.


#### Traduci messaggi dei verbi

Tradotti i seguenti attributi per i messaggi di risposta dei verbi:

|      Attributo EN     |            Attributo IT            |                         Testo                         |
|-----------------------|------------------------------------|-------------------------------------------------------|
| `check_act_near_hero` | `impossibile_seguire_png1_sg`/`pl` | `"Non hai idea di dove si [trovi/trovino] $+1 [...]"` |
| `check_obj_not_hero6` | `azione_irrelevante`               | `"Hai cose più importanti a cui pensare."`            |


##### Messaggio in quattro attributi

Nel verbo `chiedi`, il seguente attributo inglese:

|        Attributo EN       |          Testo           |
|---------------------------|--------------------------|
| `check_obj_reachable_ask` | `"$+1 can't reach $+2."` |

ha richiesto quattro attributi distinti in italiano, poiché entrambi i parametri cui fa riferimento potrebbero essere singolari o plurali:

|             Attributo IT            |                              Testo                              |
|-------------------------------------|-----------------------------------------------------------------|
| `ogg2_sg_non_raggiungibile_png1_sg` | `"$+1 non può prendere $+2, è fuori dalla sua portata."`        |
| `ogg2_sg_non_raggiungibile_png1_pl` | `"$+1 non possono prendere $+2, è fuori dalla sua portata."`    |
| `ogg2_pl_non_raggiungibile_png1_sg` | `"$+1 non può prendere $+2, sono fuori dalla sua portata."`     |
| `ogg2_pl_non_raggiungibile_png1_pl` | `"$+1 non possono prendere $+2, sono fuori dalla sua portata."` |

Nel codice del verbo si sono dovuti inserire altrettanti controlli:

```alan
THEN
  IF ogg IS NOT plurale
    THEN
      IF png IS NOT plurale
        THEN SAY mia_AT:ogg1_sg_non_raggiungibile_png2_sg.
        ELSE SAY mia_AT:ogg1_sg_non_raggiungibile_png2_pl.
      END IF.
    ELSE
      IF png IS NOT plurale
        THEN SAY mia_AT:ogg1_pl_non_raggiungibile_png2_sg.
        ELSE SAY mia_AT:ogg1_pl_non_raggiungibile_png2_pl.
      END IF.
  END IF.
```

L'attributo originale inglese è stato elimato (non era utilizzato in altri verbi).


### Nuovi messaggi dei verbi

Creati nuovi attributi per i messaggi di risposta dei verbi (nessuna controparte nella libreria originale inglese):

|         Attributo         |                     Testo                      |
|---------------------------|------------------------------------------------|
| `per_consultare_qlco_USA` | `"Per consultare qualcosa usa CONSULTA [...]"` |



<!---------------------------------------------------------------------------->

## 2018/11/23 (2)

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.3
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.3

Annota il codice sorgente.

<!-- Aggiorna documentazione della messaggistica di libreria. -->

### Rinomina messaggi dei verbi

Rinominati gli attributi per i messaggi di risposta dei verbi secondo nuovi criteri:

- Usa `png1` e `png2` per messaggi che fanno riferimenti a parametri che sono esclusivamente attori.


|          Vecchio ID          |         Nuovo ID         |
|------------------------------|--------------------------|
| `ogg1_png_non_apprezzerebbe` | `png1_non_apprezzerebbe` |


### Sostituisci messaggi inglesi dei verbi

Sostituisci tutte le occorrenze degli attributi inglesi per i messaggi di risposta dei verbi con attributi italiani:

|      Attributo EN      |        Attributo IT       |
|------------------------|---------------------------|
| `check_obj_inanimate2` |  `png1_non_apprezzerebbe` |

Gli attributi originali inglesi sono stati eliminati.

### Traduci messaggi dei verbi

Tradotti i seguenti attributi per i messaggi di risposta dei verbi:

|           Attributo EN           |          Attributo IT          |
|----------------------------------|--------------------------------|
| `illegal_parameter_talk_sg`/`pl` | `ogg1_non_può_capirti_sg`/`pl` |
| `illegal_parameter_talk_sg`/`pl` | `ogg2_non_può_capirti_sg`/`pl` |
| `check_act_can_talk_sg`/`pl`     | `ogg1_non_può_capirti_sg`/`pl` |
| `check_act_can_talk_sg`/`pl`     | `ogg2_non_può_capirti_sg`/`pl` |

Dove in italiano le risposte sono:

|          Attributo IT          |                   Testo                   |
|--------------------------------|-------------------------------------------|
| `ogg1_non_può_capirti_sg`/`pl` | `"$+1 non [è/sono] in grado di capirti."` |
| `ogg2_non_può_capirti_sg`/`pl` | `"$+2 non [è/sono] in grado di capirti."` |

<!---------------------------------------------------------------------------->

## 2018/11/23 (1)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.9.2

### Correggi Baco LIQUIDI

Risolto il baco per cui dopo aver tentato di riempire un contenitore con un liquido (verbo `riempi_con`, azione bloccata di default) il `recipiente` del liquido veniva sempre e comunque cambiato nel contenitore menzionato nel verbo, a prescindere dall'esito dell'azione.

- Modifica l'evento `check_vessel` di modo che, a ogni turno, il `recipiente` di ogni `liquido` venga settato al `contenitore_elenecato` in cui esso è direttamente contenuto.
- Elimina il verbo `riempi_con` implementato sulla classe `liquido`.

Per maggiori dettagli, vedi [AlanStdLib/#39] e la [soluzione proposta in #47] da @AnssiR66.

[AlanStdLib/#39]: https://github.com/AnssiR66/AlanStdLib/issues/39
[soluzione proposta in #47]: https://github.com/AnssiR66/AlanStdLib/pull/47#issuecomment-441152924


<!---------------------------------------------------------------------------->

## 2018/11/22 (5)

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.2
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.2

### Messaggi dei verbi

#### Elimina messaggi dei verbi

Elimina attributi inglesi per i messaggi di risposta dei verbi:

|             Attributo              |                    Testo                    |
|------------------------------------|---------------------------------------------|
| `check_obj_not_on_surface_sg`/`pl` | `"$+1 [is/are] already on $+2."`            |
| `check_obj_suitable_on_sg`/`pl`    | `"That's not something you can $v on."`     |
| `illegal_parameter2_there`         | `"It's not possible to $v anything there."` |

Nel verbo in cui venivano utilizzati `check_obj_not_on_surface_sg`/`pl` (solo in `metti_su`) è stato più semplice implementare le risposte direttamente nel verbo.

Invece `illegal_parameter2_there`, a seconda del verbo, è stato rimpiazzato da attributi diversi (con preposizioni articolate o improprie).

Gli altri attributi erano rimasti nel modulo messaggi ma non erano più utilizzati nei verbi.

#### Nuovi messaggi dei verbi

Creati nuovi attributi per i messaggi di risposta dei verbi (usati per rimpiazzare svariati attributi della libreria originale inglese le cui traduzioni in si sovrappongono a quelle italiane):

|           Attributo            |                      Testo                       |
|--------------------------------|--------------------------------------------------|
| `ogg2_inadatto_SU_sg`/`pl`     | `"$+2 non [è/sono] qualcosa su cui poter"`       |
| `ogg2_inadatto_CONTRO_sg`/`pl` | `"$+2 non [è/sono] qualcosa contro cui poter"`   |
| `ogg2_inadatto_DIETRO_sg`/`pl` | `"$+2 non [è/sono] qualcosa dietro cui poter"`   |
| `ogg2_inadatto_SOTTO_sg`/`pl`  | `"$+2 non [è/sono] qualcosa sottocui poter"`     |
| `ogg2_inadatto_VICINO_sg`/`pl` | `"$+2 non [è/sono] qualcosa vicino a cui poter"` |

<!---------------------------------------------------------------------------->

## 2018/11/22 (4)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.9.1

### Correggi Baco in LIQUIDO

Il verbo `metti_su` implementato sulla classe `liquido` non spostava il contenitore del liquido sulla superficie indicata dal parametro, si limitava a dire di averlo fatto.

<!---------------------------------------------------------------------------->

## 2018/11/22 (3)

- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.9.1
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.1
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.1

### Documentazione

Riorganizza e metti un po' in ordine la documentazione Doxter.

### Verbi

Sostituisi attributi di risposte inglesi con attributi italiani già tradotti ma non ancora sostituiti.

Annota gli attributi messagi non ancora tradotti.

### Messaggi dei verbi

Tradotti i seguenti attributi per i messaggi di risposta dei verbi:

|        Attributo EN       |     Attributo IT     |         Testo         |
|---------------------------|----------------------|-----------------------|
| `check_obj_not_in_hero2`  | `ogg1_già_posseduto` | `"Possiedi già $+1."` |
| `check_obj2_not_in_hero3` | `ogg2_già_posseduto` | `"Possiedi già $+2."` |

Gli attributi originali inglesi sono stati eliminati.


<!---------------------------------------------------------------------------->

## 2018/11/22 (2)

- [`libreria.i`][libreria] &#x27f6; v0.9.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.9.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.9.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.9.0
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.9.0 (_rinominato_)
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.0 (_nuovo_)
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.0
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.9.0

### Suddivisione modulo messaggi

Per ragioni pratiche, il modulo `lib_messaggi.i` è stato diviso in due moduli distinti:

- [`lib_messaggi_runtime.i`][lib_messaggi_runtime]
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria]

### Passa alla v0.9.0

Tutti i moduli della libreria passano alla versione 0.9.0.


-------------------------------------------------------------------------------

## 2018/11/22 (1)

- [`lib_messaggi.i`][lib_messaggi_libreria] &#x27f6; v0.8.3
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.8.5

### Messaggi dei verbi

#### Rinomina attributi

Rinominati i seguenti attributi per i messaggi di risposta dei verbi:

|        Vecchio ID        |     Nuovo ID    |               Testo               |
|--------------------------|-----------------|-----------------------------------|
| `non_servirebbe_a_nulla` | `azione_futile` | `"Farlo non servirebbe a nulla."` |

#### Azioni insensate

Tutte le occorrenze dei seguenti attributi sono stati rimpiazzate con `azione_insensata` ("Questo non ha alcun senso."):

|        Attributo EN       |            Testo             |
|---------------------------|------------------------------|
| `check_cont_not_in_obj`   | `"That doesn't make sense."` |

Gli attributi originali inglesi sono stati eliminati.

##### Usare un oggetto su se stesso

Anche le occorrenze dei seguenti attributi sono stati rimpiazzate con `azione_insensata`:

|        Attributo EN       |                         Testo                          |
|---------------------------|--------------------------------------------------------|
| `check_obj_not_obj2_at`   | `"It doesn't make sense to $v something at itself."`   |
| `check_obj_not_obj2_from` | `"It doesn't make sense to $v something from itself."` |
| `check_obj_not_obj2_in`   | `"It doesn't make sense to $v something into itself."` |
| `check_obj_not_obj2_on`   | `"It doesn't make sense to $v something onto itself."` |
| `check_obj_not_obj2_put`  | `"That doesn't make sense."`                           |
| `check_obj_not_obj2_to`   | `"It doesn't make sense to $v something to itself."`   |
| `check_obj_not_obj2_with` | `"It doesn't make sense to $v something with itself."` |

Gli attributi originali inglesi sono stati eliminati.

La libreria originale inglese utilizzava questi messaggi nei verbi con parametri multipli, quando il giocatore tenta di usare un oggetto su se stesso.

In italiano non è possibile utilizzare dei modelli di risposta altrettanto flessibili, soprattutto per l'impossibilità a utilizzare `$v` nelle risposte (a noi serve l'infinito del verbo). Per evitare macchinose complicazioni, tutti questi messaggi sono stati rimpiazzati con l'attributo `azione_insensata`, già presente nella libreria.

Il contesto dell'errore è sufficientemente chiaro da non richiedere ulteriori spiegazioni, perciò il messaggio "Questo non ha alcun senso." dovrebbe bastare. Quindi, per ora utilizzerò questa soluzione, se poi mi viene in mente una soluzione migliore la implementerò.

> __NOTA__ — In teoria, potrebbero presentarsi casi in cui l'errore è dovuto all'uso di sinonimi implementati come escamotage per creare l'illusione di due oggetti diversi nel gioco, ma in simili casi un messaggio di risposta che utilizzi `$+1` e `$+2` creerebbe solo più confusione dato che Alan mostrerebbe per entrambi il nome principale dell'oggetto e non il sinonimo digitato dal giocatore. 

#### Azioni Futili

Tutte le occorrenze dei seguenti attributi sono stati rimpiazzate con `azione_futile` ("Farlo non servirebbe a nulla."):

|        Attributo EN       |            Testo             |
|---------------------------|------------------------------|
| `check_obj2_not_hero2`    | `"That would be futile."`    |
| `check_obj2_not_in_hero2` | `"That would be futile."`    |

Gli attributi originali inglesi sono stati eliminati.


<!---------------------------------------------------------------------------->

## 2018/11/20

- [`lib_classi.i`][lib_classi] &#x27f6; v0.8.1
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.8.1
- [`lib_messaggi.i`][lib_messaggi_libreria] &#x27f6; v0.8.2
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.8.4
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.8.1
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.8.1


Correggi maiuscole nei titoli.

### Documentazione messaggi

Aggiungi note riguardo l'uso del simbolo speciale `$v` nei messaggi di risposta dei verbi, e i relativi problemi riguardo la formazione del verbo infinito.

Inizia a documentare le abbreviazioni e convenzioni adottate negli identificativi degli attributi stringa dei messaggi.

### Rinomina messaggi dei verbi

Rinominati in `ogg?_inadatto_*` tutti gli attributi per i messaggi dei verbi che avevano il nome `ogg?_illegale_*`.

|          Vecchio ID         |           Nuovo ID          |
|-----------------------------|-----------------------------|
| `ogg1_illegale_DA_sg`/`pl`  | `ogg1_inadatto_DA_sg`/`pl`  |
| `ogg1_illegale_A_sg`/`pl`   | `ogg1_inadatto_A_sg`/`pl`   |
| `ogg2_illegale_A_sg`/`pl`   | `ogg2_inadatto_A_sg`/`pl`   |
| `ogg1_illegale_IN_sg`/`pl`  | `ogg1_inadatto_IN_sg`/`pl`  |
| `ogg2_illegale_IN_sg`/`pl`  | `ogg2_inadatto_IN_sg`/`pl`  |
| `ogg1_illegale_SU_sg`/`pl`  | `ogg1_inadatto_SU_sg`/`pl`  |
| `ogg1_illegale_CON_sg`/`pl` | `ogg1_inadatto_CON_sg`/`pl` |
| `ogg2_illegale_CON_sg`/`pl` | `ogg2_inadatto_CON_sg`/`pl` |



<!---------------------------------------------------------------------------->

## 2018/11/16

- [`lib_messaggi.i`][lib_messaggi_libreria] &#x27f6; v0.8.1
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.8.2

### Documentazione verbi

Aggiungi commenti Doxter per documentare "Descrizioni Brevi e Lunghe" e menziona l'attuale baco della libreria che ne impedisce il corretto funzionamento.

Inizia a documentare il modulo dei messaggi.

<!---------------------------------------------------------------------------->


## 2018/11/15

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.8.2

### Documentazione verbi

Aggiungi commenti Doxter per documentare i verbi preposti al controllo della trascrizione della partita.

-------------------------------------------------------------------------------

## 2018/11/13 (2)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.8.1

### Pulizia documentazione verbi

Questo commit mette un po' d'ordine nella documentazione dei verbi:

- Organizza meglio il gruppo dei "Verbi di Domande".

### Documenta il baco della "è"

- Documenta il baco della `è` grave nelle sintassi.

Inoltre, i verbi di domande che coinvolgono la "è" sono stati modificati: prima tutte le `è` erano stato sostituite da `é`; ora i verbi sono definiti usando la `è` grave come sintassi primaria, e la `é` acuta è utilizzata per creare sintassi alternative che raggirino il baco. Questo fa sì che quando il baco verrà risolto sarà possibile rimuovere le sintassi alternative e preservare quelle primarie.

- Crea test per i verbi di domande e il baco `è`.

È stato aggiunto file di test apposito per testare il baco della `è` e il funzionamento delle sintassi alternative che ripiegano sulla `é`:

- [`../test/casa_verbi-domande.a3sol`](../test/casa_verbi-domande.a3sol)
- [`../test/casa_verbi-domande.a3log`](../test/casa_verbi-domande.a3log)

Grazie alle trascrizioni dei test, sarà possibile rilevare automaticamente eventuali modifiche del comportamento di Alan quando, in futuro, verrà risolto il baco.

<!---------------------------------------------------------------------------->

## 2018/11/13 (1)

- [`libreria.i`][libreria] &#x27f6; v0.8.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.8.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.8.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.8.0
- [`lib_messaggi.i`][lib_messaggi_libreria] &#x27f6; v0.8.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.8.0
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.8.0

### Passa alla v0.8.0: Tutti i verbi tradotti

Con questo commit tutti i verbi della libreria ed i corrispettivi attributi di restrizione sono stati tradotti in italiano.

Tutti i moduli della libreria passano alla versione 0.8.0.



<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

<!-- File del Progetto -->

[VESTIARIO]: ./VESTIARIO.md "Vedi documento"
[VESTIARIO_DEV]: ./VESTIARIO_DEV.md "Vedi documento"
[VESTIARIO_PROBLEMI]: ./VESTIARIO_PROBLEMI.md "Vedi documento"


<!-- Moduli della Libreria --------------------------------------------------->

[lib_classi]:            ./lib_classi.i
[lib_classi_vestiario]:  ./lib_classi_vestiario.i
[lib_definizioni]:       ./lib_definizioni.i
[lib_grammatica]:        ./lib_grammatica.i
[lib_grammatica]:        ./lib_grammatica.i
[lib_luoghi]:            ./lib_luoghi.i
[lib_messaggi_libreria]: ./lib_messaggi_libreria.i
[lib_messaggi_runtime]:  ./lib_messaggi_runtime.i
[lib_supplemento]:       ./lib_supplemento.i
[lib_verbi]:             ./lib_verbi.i
[libreria]:              ./libreria.i

[test]: ../test/

<!-- Documentazione Libreria  ------------------------------------------------>

[Doxter]: https://git.io/doxter "Visit Doxter website"

[BUILD_DOCS]: ./BUILD_DOCS.bat
[ANNOTAZIONI_DOXTER]: ./ANNOTAZIONI_DOXTER.adoc

[lib_verbi adoc]: ./lib_verbi.asciidoc
[lib_verbi html]: ./lib_verbi.html
[lib_verbi html live]: http://htmlpreview.github.io/?https://github.com/tajmone/Alan3-Italian/blob/master/alanlib_ita/lib_verbi.html "Live HTML Preview via GitHub & BitBucket HTML Preview"

<!-- Link Esterni ------------------------------------------------------------>

[Alan StdLib upstream repository]: https://github.com/AnssiR66/AlanStdLib

[AlanStdLib]: https://github.com/AnssiR66/AlanStdLib

[Alan SDK 3.0beta6]: https://www.alanif.se/download-alan-v3/development-kits/development-kits-3-0beta6

<!-- Developer Snapshot di Alan ---------------------------------------------->

[developer snaphshot]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots "Vai alla pagina delle Developer Snapshots sul sito di Alan"
[3.0beta6-1852]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots/build1852 "Vai alla pagina di download della snapshot Alan 3.0beta6 build 1852"
[3.0beta6-1855]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots/build1855 "Vai alla pagina di download della snapshot Alan 3.0beta6 build 1855"
[3.0beta6-1862]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots/build1862 "Vai alla pagina di download della snapshot Alan 3.0beta6 build 1862"
[3.0beta6-1866]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots/build1866 "Vai alla pagina di download della snapshot Alan 3.0beta6 build 1866"
[3.0beta6-1870]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots/build1870 "Vai alla pagina di download della snapshot Alan 3.0beta6 build 1870"

<!-- Alan Commits ------------------------------------------------------------>

[repository di Alan]: https://bitbucket.org/alanif/alan "Visita il repository di Alan su Bitbucket"

[1bfc8f7]: https://bitbucket.org/alanif/alan/commits/1bfc8f7 "Vedi i dettagli del commit nel repository di Alan su Bitbucket"

[ad2c7de]: https://bitbucket.org/alanif/alan/commits/ad2c7de "Vedi i dettagli del commit nel repository di Alan su Bitbucket"

[054581b]: https://bitbucket.org/alanif/alan/commits/054581b "Vedi i dettagli del commit nel repository di Alan su Bitbucket"


<!-- StdLib Issues & PRs ----------------------------------------------------->


<!-- EOF -->
