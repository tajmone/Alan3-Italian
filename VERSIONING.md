# Versioning di Alan Italian

Linee guida per i riferimenti alla versione di Alan Italian e la Alan SDK nei file sorgenti di codice e documentazione.


-----

**Indice dei contenuti**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introduzione](#introduzione)
    - [Versione di Alan Italian](#versione-di-alan-italian)
    - [Versione della Alan SDK](#versione-della-alan-sdk)
- [Aggiornamento automatizzato](#aggiornamento-automatizzato)
    - [Attributi AsciiDoc nella documentazione](#attributi-asciidoc-nella-documentazione)
    - [Attributi Alan nella Libreria](#attributi-alan-nella-libreria)
    - [Commenti header nei moduli della Libreria](#commenti-header-nei-moduli-della-libreria)
    - [Commenti header in sorgenti Alan](#commenti-header-in-sorgenti-alan)
    - [Attributi AsciiDoc/Doxter in sorgenti Alan](#attributi-asciidocdoxter-in-sorgenti-alan)

<!-- /MarkdownTOC -->

-----

# Introduzione

I file sorgenti della Libreria, delle avventure (test, ricettario, demo, ecc.) e della documentazione contengono riferimenti alla versione di Alan Italian cui fanno riferimento, nonché alla versione della Alan SDK richiesta.

Al fine di semplificare l'aggiornamento di tali riferimenti (tramite script d'automazione) sono state adottate alcune convenzioni standard.

## Versione di Alan Italian

Alan Italian adotta lo schema __Semantic Versioning 2.0.0__:

- https://semver.org/

Supponendo che la versione attuale sia la versione 0.17.0 (Alpha), la _versione estesa_ sarà riportata nel seguente formato:

- `v0.17.0-Alpha`

mentre la _versione breve_ sarà riportata come:

- `Alan Italian 17 Alpha`

Quest'ultima viene impiegata nei sorgenti della Test Suite, del Ricettario e nelle Demo che usano la Libreria, poiché in questi casi non serve fare riferimento alla `PATCH`.

Invece, i moduli della libreria devono necessariamente riportare tutti i segmenti (`MAJOR`, `MINOR`, `PATCH` e `PRE-RELEASE`) dato che servono a distinguere e tracciare i vari aggiornamenti del sorgente specifico.


## Versione della Alan SDK

La versione di Alan è sempre riportata nel seguente formato:

- `Alan 3.0beta6 build 1878`

Questo formato univoco semplifica le sostituzioni automatizzate.

La presenza della parte finale ` build <ver>` è legata all'uso di developer snapshots (versioni Alpha), e va tenuto conto che nei periodi in cui si utilizzerà una Beta release tale segmento non sarà presente nella stringa di versione.

# Aggiornamento automatizzato

L'aggiornamento delle informazioni di versione avviene tramite script.

- [`ver.sh`][ver]
- [`verbump.sh`][verbump]

Lo script [`ver.sh`][ver] definisce le versioni attuali di Alan Italian e Alan SDK:

```bash
#!/bin/bash
AlanSDK="3.0beta6 build 1880"
AlanITA="0.18.0"
AlanITA_RevDate="2019-03-19"
```

Mentre lo script [`verbump.sh`][verbump] si occupa di sostituire tutte le occerrenze delle informazioni di versione nei sorgenti del progetto.

Una volta aggiornati i riferimenti sarà necessario eseguire tutti gli script automatizatti del progetto (test suite, documentazione, ecc.); a tal scopo è stato aggiunto uno script batch nella root del progetto:

- [`AGGIORNA_TUTTO.bat`][AGGIORNA_TUTTO]

Qui di seguito sono riassunti i vari passaggi eseguiti da [`verbump.sh`][verbump]:

1. Attributi AsciiDoc nella documentazione
2. Attributi Alan nella Libreria
3. Commenti header nei moduli della Libreria
4. Commenti header in sorgenti Alan
5. Attributi AsciiDoc/Doxter in sorgenti Alan


## Attributi AsciiDoc nella documentazione

Il file `README.adoc` contiene le informazioni di versione nello Header AsciiDoc, sotto forma di attributi alle righe 5 e 6:

```asciidoc
= Alan Italian
Tristano Ajmone <tajmone@gmail.com>
2019-03-01
// tag::AlanRevInfo[]
:AlanItaV: 17
:AlanSDK: 3.0beta6 build 1878
:revnumber: 0.{AlanItaV}-Alpha
// end::AlanRevInfo[]
```

Questi attributi vengono utilizzati anche dagli altri documenti tramite inclusione, quindi modificandone la definizione in questo documento aggiornerà la versione riportata in tutti i documenti HTML finali.

Il riferimento ad __Alan Italian__ è in forma abbreviata.

## Attributi Alan nella Libreria

Nel modulo `alanlib_ita/lib_definizioni.i` vengono definite la versione della Alan SDK utilizzata durante lo sviluppo e quella della Libreria:

```alan
  HAS         AlanV  "3.0beta6 build 1878".
  HAS      AlanItaV  "17 Alpha".
```

Questi attributi vengono mostrati nel banner dell'avventura, e gli autori possono modificarne i valori nelle proprie avventure qualora utilizzassero una versione differente del compilatore di Alan, o nel caso abbiano modificato i sorgenti della Libreria.

In questo progetto si dà per scontanto che tutte le avventure del progetto utilizzino la medesima Alan SDK, per cui non è necessario sovrascrivere questo attributo nelle singole avventure.


## Commenti header nei moduli della Libreria

I moduli della libreria contengono le informazioni di versione nella quinta riga commentata dello header:

```
--= Alan StdLib Italian: Modulo Principale
--| Tristano Ajmone <tajmone@gmail.com>
--~-----------------------------------------------------------------------------
--~ "libreria.i"
--| v0.17.0-Alpha, 2019-02-27: Alan 3.0beta6 build 1878
--| ============================================================================
```

Ciascun modulo riporterà la propria versione attuale, nel formato esteso, seguito da `, ` e la data dell'ultima modifica nel format `YYYY-MM-DD`, seguito da `: ` e la versione della Alan SDK utilizzata.


## Commenti header in sorgenti Alan

Tutti i sorgenti delle avventure nel progetto, così come moduli aggiuntivi che non siano i moduli della Libreria, in genere contengono le informazioni di versione nella prima riga commentata:

```alan
-- Alan Italian 17 Alpha | Alan 3.0beta6 build 1878
```

A differenza dei moduli della libreria, viene usata la versione breve di Alan Italian poiché le informazioni di `PATCH` non sono rilevanti nel contesto.

La notazione è la seguente:

```alan
-- <Alan Italian versione breve> | <Alan SDK>
```

Questo si applica ai sorgenti della test suite, le demo e il ricettario. Alcune avventure demo non riportano questa riga di header — p.es. avventure che usano solo il modulo della grammatica italiana.


## Attributi AsciiDoc/Doxter in sorgenti Alan

Alcune avventure vengono auto-documentate tramite Doxter — per esempio le avventure demo, qulle del Ricettario e anche alcune nella test suite.

I sorgenti delle avventure doxterizzate riportano le informazioni di versione in righe commentate per Doxter, di modo che diventino attributi Asciidoctor utilizzabili nell'autodocumentazione:

```alan
-->rev_info
--| :revdate:     2019-03-07
--| :revnumber:   1.0.0-alpha.1
--| :revremark:   Alan 3.0beta6 build 1878
--<<
```

L'esatta collocazione di tali righe è variabile da sorgente a sorgente.

Si noti che `:revnumber:` in questo contesto non è un riferimento alla versione di Alan Italian ma a quella dell'avventura.


> __NOTA__ — Il sistema attualmente in uso nei sorgenti auto-documentati è provvisorio e va rivisto.




<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[ver]: ./ver.sh
[AGGIORNA_TUTTO]: ./AGGIORNA_TUTTO.bat
[verbump]: ./verbump.sh

<!-- EOF -->
