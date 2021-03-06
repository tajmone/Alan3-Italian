# Collaudo della Libreria Alan Italian

Questa directory contiene le risorse per il collaudo automatizzato della libreria tramite avventure di prova e script di comandi per testarle.


-----

**Indice**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introduzione](#introduzione)
- [Contenuti](#contenuti)
    - [Test multipli su avventura singola](#test-multipli-su-avventura-singola)
    - [Test singoli su avventure multiple](#test-singoli-su-avventure-multiple)
        - [Cartella temporanea per lo sviluppo dei test](#cartella-temporanea-per-lo-sviluppo-dei-test)
    - [Batch script di automazione](#batch-script-di-automazione)
- [Requisiti di sistema](#requisiti-di-sistema)
- [Organizzazione dei test](#organizzazione-dei-test)
    - [Scopo dei test](#scopo-dei-test)
    - [Convenzioni della test suite](#convenzioni-della-test-suite)
        - [Estensioni script](#estensioni-script)
        - [Sistema annotazioni](#sistema-annotazioni)
- [Alan Compiler Help](#alan-compiler-help)

<!-- /MarkdownTOC -->

-----

# Introduzione

Questa directory contiene alcune sottocartelle con varie avventure sorgenti Alan che impiegano la Libreria Standard Italiana; lo scopo di queste "avventure" è di testare in automatico alcune caratteristiche mirate della liberia.

Alle varie avventure di test sono associati uno o più più script di comandi (`*.a3sol`) per gestire sessioni di gioco automatizzate la cui trascrizione verrà salvata in un file di log (`*.a3log`), simulando così in modo rapido una gran quantità di partite (prestabilite).

Questi test sono utili a verificare l'impatto globale delle modifiche al codice della libreria nel corso dello sviluppo, e consentono di catturare immediatamente eventuali effetti collaterali indesiderati.

# Contenuti

Gli script in questa directory sono studiati per essere eseguiti su sistema operativo Windows (testati su Windows 10) tramite CMD (interprete della riga di comando, o "shell").

I test sono suddivisi in diversi gruppi, raccolti in cartelle separate, e vi sono due tipologie di test:

|          cartella          |                tipologia test                |
|----------------------------|----------------------------------------------|
| [`/_temp-dev/`][_temp-dev] | Molte avventure, uno o più test su ciascuna. |
| [`/casa/`][casa]           | Una sola avventura, molti test.              |
| [`/vari/`][vari]           | Molte avventure, uno o più test su ciascuna. |
| [`/vestiario/`][vestiario] | Una sola avventura, molti test.              |

L'esecuzione dei test è contrallata dal seguente script:

- [`TESTA_TUTTO.bat`][TESTA_TUTTO]


## Test multipli su avventura singola

|          cartella          |        avventura         |
|----------------------------|--------------------------|
| [`/casa/`][casa]           | [`casa.alan`][casa.alan] |
| [`/vestiario/`][vestiario] | [`ega.alan`][ega.alan]   |

Nelle cartelle [`casa/`][casa] e [`/vestiario/`][vestiario] viene utilizzata una sola avventura sorgente su cui eseguire una moltitudine di test. I vantaggi di questo approccio sono la semplicità gestionale e la complessità dell'ambiente di gioco/test, dato che il ricorso ad una singola avventura consente di creare un mondo di gioco più vasto, complesso e articolato.

Ogni script di test và a testare specifiche caratteristiche nell'avventura (un gruppo di verbi, alcune funzionalità mirate, interazioni tra attori, ecc.), e l'avventura sorgente è studiata per offrire uno scenario che si presti ai vari test.

L'avventura in ciascuna di queste cartelle contiene parecchi luogi interni ed esterni, personaggi ed attori di varie specie, arradamenti, dispositivi, ecc. Si tratta di un ambiente di test su larga scala, più vicino a una simulazione di gioco reale. E, poiché vi è un singolo sorgente da gestire nel corso del tempo, viene investita più energia per abbellirne i contenuti.

## Test singoli su avventure multiple

- [`/vari/`][vari]

I test in questa cartella, invece, consistono di svariate piccole avventure a cui è solitatamente associato un solo script di test, ma in alcuni casi anche più d'uno. Si tratta di avventure create _ad hoc_ per testare funzionalità mirate in un contesto più isolato. 

In particolare, servono a testare scenari alternativi a quelli offerti dall'aventura della cartella [`casa/`][casa], laddove alcuni settaggi di base dell'avventura (non modificabili) impediscono di testare configurazioni alternative (p.es. un protagonista di sesso femminile).

Alcune di queste avventure individuali sono mirate a testare casi limiti, inclusi errori volutamente introdotti nel sorgente dell'avventura al fine di poter verificare la correttezza di quei messaggi di errore che non possono essere inclusi nell'avventura della "casa".

Per queste ed altre ragioni pratiche, si è ritenuto utile separare in due gruppi distinti i test della libreria.

Data la scarsa riusabilità delle avventure per i test "vari" (che solitamente servono un solo test), il tempo dedicato ad abbellirle è ridotto al minimo indispensabile.

### Cartella temporanea per lo sviluppo dei test

- [`/_temp-dev/`][_temp-dev]

La cartella `_temp-dev/` è destinata allo sviluppo locale di nuovi test, per velocizzarne l'esecuzione eseguendoli in una cartella a sé, senza dover quindi eseguire altri test. I test di questa cartella sono della tipologia "Molte avventure, uno o più test su ciascuna".

Poiché destinata all'uso in locale, le avventure sorgenti e relativi script ivi contenuti sono esclusi dal repository tramite regole `.gitignore`. Lo scopo è di semplificare lo sviluppo di nuovi test, in locale, e quando sono pronti spostarli in una delle altre cartelle di test.

Sempre per la medesima ragione, la cartella `_temp-dev/` non viene processata dallo script `TESTA_TUTTO.bat`, e deve essere processata con l'apposito script `TESTA_CARTELLA.bat` ivi contenuto:

- [`/_temp-dev/TESTA_CARTELLA.bat`](./_temp-dev/TESTA_CARTELLA.bat)


## Batch script di automazione

Al fine di eseguire tutti i test sarà sufficiente lanciare il seguente script: 

- [`TESTA_TUTTO.bat`][TESTA_TUTTO]
 
Lo script compila tutte le avventure ed esegue gli script di comandi associati ad esse, secondo i criteri di test di ciascuna sottocartella. Al termine dell'esecuzione viene presentato un rapporto finale in cui viene riportato il numero di avventure compilate e testate, gli script di comandi eseguiti ed il numero di errori incontrati.

È sempre consigliabile eseguire nuovamente tutti i test prima di eseguire un commit, al fine di assicurarsi di aver intercettato tutte le modifiche alle trascrizioni risultanti dalle modifiche al codice della libreria.

Al fine di semplificare le fasi di sviluppo, in ciascuna sottocartella di test c'è uno script `TESTA_CARTELLA.bat` per eseguire tutti i test della cartella. Questi script non forniscono un rapporto statistico, sono finalizzati solo a risparmiare tempo quando si lavora ai testi di una specifica sottocartella e non si vuole dover eseguire tutta la test suite ad ogni modifica.

# Requisiti di sistema

Al fine di poter utilizzare i test nelle sottocartelle, dovrete rendere accessibili al `%PATH%` di sistema gli eseguibili del compilatore di Alan e dell'interprete ARun, assicurandovi di prenderli dalla [Alan SDK] con la stessa versione di Alan usata in questo progetto (vedi intestazione dei moduli sorgenti della libreria). Per il sistema operativo Windows, i file da copiare sono:

- `alan.exe`
- `arun.exe`

In alternativa (se non volete mettere mano al `%PATH%` di sistema) potrete aggiungere una copia degli eseguibili direttamente all'interno di _entrambe_ le cartelle `casa/` e `vari/`.

-------------------------------------------------------------------------------

# Organizzazione dei test

Sebbene gli attuali test non siano ancora organizzati in maniera del tutto formale e strutturata, l'obiettivo finale è di creare una test suite ben strutturata e formalizzata.

I primi test furono realizzati creando una singola avventura per ciascuna funzionalità da testare. Il nuovo approccio consisterà nel creare un numero limitato di avventure sorgenti e associare a ciascuna di esse vari script di comandi, ciascuno mirato a testare aspetti e funzionalità specifiche della libreria.

Il nuovo approccio consente di creare avventure sorgenti più elaborate, studiate in modo da rendere disponibili varie classi di oggetti da poter testare in maniera flessibile. Per esempio, l'avventura sorgente nella cartella `casa/` implementa una stanza e un giardino per poter testare le classi `stanza` e `luogo_esterno`, e in cui sono presenti una moltitudine di oggetti rappresentanti le varie classi della libreria (cibi, bevande, liquidi, contenitori, e via dicendo) di modo da poter testare in maniera esaustiva sia i verbi che li riguardano che i verbi con cui non andrebbero usati (per verificare i messaggi di errore).

I test nella cartella `vari/` usano ancora il vecchio approccio, ma consentono l'esecuzione di uno più script di comandi per ciascuna avventura, in base al nome dell'avventura sorgente.

Sebbene l'approccio con un'avventura singola su cui usare tutti i testi sia quello preferibile, sarà sempre necessario conservare alcuni test con il vecchio approccio per poter testare condizioni particolari in setting dedicati. Quindi, è molto probabile che la suite di test conserverà entrambi gli approcci, focalizzandosi il più possibile sul nuovo metodo.

## Scopo dei test

I test hanno un duplice obiettivo:

1. Testare tutte le funzionalità, messaggi e verbi della libreria.
2. Rilevare le conseguenze delle modifiche alla libreria.

Il punto (1) richiede che per ciascun verbo vengano testati tutti i contesti ed errori che li riguardano. Siccome alcuni verbi sono sovrascritti nelle classi o istanze della libreria (p.es nei liquidi o nelle persone), è necessario testarli con ognuno dei possibili parametri che porterebbero ad esecuzioni o risposte diverse, inclusi i messaggi di errore.

Il punto (2) è particolarmente utile per lo sviluppo della libreria. Aggiornando tutti i test dopo ogni modifica al codice sorgente della liberia, Git ci segnalerà come file modificati quelle trascrizioni dei test in cui le modifiche al codice hanno determinato risultati diversi. Grazie al diffing dei file modificati, è possibile visionare con facilità l'impatto globale delle modifiche alla libreria.

Questo consente non solo di verificare che le modifiche apportate abbiano l'esito desiderato (p.es. traduzione e modifica dei messaggi di risposta), ma consente anche di rilevare eventuali effetti collaterali inattesi.

## Convenzioni della test suite

Alcune convenzioni adottate nella test suite ai fini di semplificarne l'automazione e conferirle un'aspetto omogeneo.

### Estensioni script

Le estensioni `*.a3sol` e `*.a3log` sono state adottate per semplificare le impostazioni dell'editor di codice affinché tratti queste estensioni con encoding [ISO-8859-1].

Inoltre, queste due estensioni sono supportate da __Sublime Alan__, un package che sto creando per Sublime Text 3 al fine di aggiungere il supporto per la sintassi di Alan. __Sublime Alan__ offre colorazione della sintassi per queste estensioni e altre funzionalità utili:

- https://github.com/tajmone/sublime-alan

### Sistema annotazioni

Per semplificare la ricerca automatizzata tramite editor, viene adottato il seguente sistema di annotazioni.

#### Errori e bachi

In caso di risposte inattese (siano essi bachi nella libreria, in Alan, o messaggi malformati), verrà inserito un commento nello script di comandi che inizierà con:

```
; **ERR!**
```

La descrizione dell'errore può consistere di una sola riga. Es:

```
; **ERR!** Descrizione errore breve.
```

Oppure, nel caso di descrizioni lunghe, che occupano puù righe, il testo verrà mandato a capo a colonna 80 e incorniciato tra due serie di tilda per migliorarne la leggibilità:

```
; **ERR!** ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
;          Una descrizione di un problema lunga, che occupa più righe. Il testo
;          viene mandato accapo alla colonna 80, e delimitato da due serie di
;          tilde.
;          ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
```


#### Note

Annotazioni e commenti alla trascrizione verranno inseriti tramite  un commento nello script di comandi che inizierà con:

```
; **NOTA**
```


Come con gli errori, annotazioni lunghe verranno spezzate su più righe e incornaciate tra due file di tilda.


-------------------------------------------------------------------------------


# Alan Compiler Help

Un promemoria delle opzioni disponibili per il compilatore di Alan (`alan.exe`):

```
Usage: ALAN <adventure> [-help] [options]

Arguments:
  <adventure>       -- file name, default extension '.alan'

Options:
  -help             -- this help
  -[-]verbose       -- verbose messages (default: OFF)
  -[-]warnings      -- [don't] show warning messages (default: ON)
  -[-]infos         -- [don't] show informational messages (default: OFF)
  -include <path>   -- additional directory to search after current when
                       looking for imported files (may be repeated)
  -import <path>    -- additional directory to search after current when
                       looking for imported files (may be repeated)
  -charset <set>    -- which character set source is in (iso|mac|dos) (default: iso)
  -[-]ide           -- list messages in a format appropriate for AlanIDE
                       (default: OFF)
  -[-]cc            -- show messages on the screen in old 'cc' format
                       (default: OFF)
  -[-]full          -- full source in the list file (or on screen) (default: OFF)
  -height <lines>   -- height of pages in list file (default: 74)
  -width <characters> 
                    -- width of pages in list file (default: 112)
  -[-]listing       -- create listing file (default: OFF)
  -[-]debug         -- force debug option in adventure (default: OFF)
  -[-]pack          -- force pack option in adventure (default: OFF)
  -[-]summary       -- print a summary (default: OFF)
  -[-]dump {ypxsvciker!a123} 
                    -- dump the internal form, where
                       y -- synonyms
                       p -- parameter mapping table
                       x -- syntaxes
                       s -- symbols
                       v -- verbs
                       c -- classes
                       i -- instances
                       k -- containers
                       e -- events
                       r -- rules
                       ! -- everything
                       a -- include pointer addresses
                       1 -- after parse (will abort after dump)
                       2 -- after analysis (will abort after dump)
                       3 -- after code generation
                       (default: {})
  -[-]xml           -- output an XML representation of the game (experimental) (default: OFF)
```


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[Alan SDK]: https://www.alanif.se/download-alan-v3/development-kits "Vai alla pagina di download delle Alan SDK"

<!-- File di Progetto -->

[TESTA_TUTTO]: ./TESTA_TUTTO.bat

[_temp-dev]: ./_temp-dev/ "Naviga alla cartella"
[casa]: ./casa/ "Naviga alla cartella"
[vari]: ./vari/ "Naviga alla cartella"
[vestiario]: ./vestiario/ "Naviga alla cartella"

[casa.alan]: ./casa/casa.alan "Vedi sorgente avventura"
[ega.alan]: ./vestiario/ega.alan "Vedi sorgente avventura"


<!-- Riferimenti Esterni -->

[ISO-8859-1]: https://it.wikipedia.org/wiki/ISO/IEC_8859-1 "Vedi la pagina Wikipedia su ISO-8859-1"

<!-- EOF -->

