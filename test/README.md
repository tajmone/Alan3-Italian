# Collaudo della Libreria Alan Italian

Questa directory contiene le risorse per il collaudo automatizzato della libreria tramite avventure di prova e script di comandi per testarle.


-----

**Indice**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introduzione](#introduzione)
- [Contenuti](#contenuti)
    - [Test multipli](#test-multipli)
    - [Test singoli](#test-singoli)
    - [Batch script di automazione](#batch-script-di-automazione)
- [Requisiti di Sistema](#requisiti-di-sistema)
- [Organizzazione dei Test](#organizzazione-dei-test)
    - [Scopo dei Test](#scopo-dei-test)
    - [Convenzioni Estensioni Script](#convenzioni-estensioni-script)
- [Alan Compiler Help](#alan-compiler-help)

<!-- /MarkdownTOC -->

-----

# Introduzione

Questa directory contiene due sottocartelle con varie avventure sorgenti Alan che impiegano la Libreria Standard Italiana; lo scopo di queste "avventure" è di testare in automatico alcune caratteristiche mirate della liberia.

Alle varie avventure di test sono associati uno o più più script di comandi (`*.a3sol`) per gestire sessioni di gioco automatizzate la cui trascrizione verrà salvata in un file di log (`*.a3log`), simulando così in modo rapido una gran quantità di partite (prestabilite).

Questi test sono utili a verificare l'impatto globale delle modifiche al codice della libreria nel corso dello sviluppo, e consentono di catturare immediatamente eventuali effetti collaterali indesiderati.

# Contenuti

Gli script in questa directory sono studiati per essere eseguiti su sistema operativo Windows (testati su Windows 10) tramite CMD (interprete della riga di comando, o "shell").

I test sono suddivi in due gruppi, raccolti in cartelle separate:

- [`/casa/`][casa] — Una sola avventura, molti test.
- [`/vari/`][vari] — Molte avventure, uno o più test su ciascuna.

## Test multipli

- [`/casa/`][casa]

Nella cartella [`casa/`][casa] viene utilizzata una sola avventura sorgente su cui eseguire una moltitudine di test. I vantaggi di questo approccio sono la semplicità gestionale e la complessità dell'ambiente di gioco/test, dato che il ricorso ad una singola avventura consente di creare un mondo di gioco più vasto, complesso e articolato.

Ogni script di test và a testare specifiche caratteristiche nell'avventura (un gruppo di verbi, alcune funzionalità mirate, interazioni tra attori, ecc.), e l'avventura sorgente è studiata per offrire uno scenario che si presti ai vari test.

L'avventura in questa cartella contiene parecchi luogi interni ed esterni, personaggi ed attori di varie specie, arradamenti, dispositivi, ecc. Si tratta di un ambiente di test su larga scala, più vicino a una simulazione di gioco reale. E, poiché vi è un singolo sorgente da gestire nel corso del tempo, viene investita più energia per abbellirne i contenuti.

## Test singoli

- [`/vari/`][vari]

I test in questa cartella, invece, consistono di svariate piccole avventure a cui è solitatamente associato un solo script di test, ma in alcuni casi anche più d'uno. Si tratta di avventure create _ad hoc_ per testare funzionalità mirate in un contesto più isolato. 

In particolare, servono a testare scenari alternativi a quelli offerti dall'aventura della cartella [`casa/`][casa], laddove alcuni settaggi di base dell'avventura (non modificabili) impediscono di testare configurazioni alternative (p.es. un protagonista di sesso femminile).

Alcune di queste avventure individuali sono mirate a testare casi limiti, inclusi errori volutamente introdotti nel sorgente dell'avventura al fine di poter verificare la correttezza di quei messaggi di errore che non possono essere inclusi nell'avventura della "casa".

Per queste ed altre ragioni pratiche, si è ritenuto utile separare in due gruppi distinti i test della libreria.

Data la scarsa riusabilità delle avventure per i test "vari" (che solitamente servono un solo test), il tempo dedicato ad abbellirle è ridotto al minimo indispensabile.

## Batch script di automazione

Al fine di riprodurre tutti i test nelle sottocartella di questa directory, sarà sufficiente lanciare il seguente script: 

- [`TESTA_TUTTO.bat`][TESTA_TUTTO] — compila tutte le avventure ed esegue gli script di comandi associati ad esse.

È sempre consigliabile di eseguire tutti i test assieme, specie prima di eseguire un commit, al fine di assicurarsi di aver intercettato tutte le modifiche alle trascrizioni risultanti dalle modifiche al codice della libreria.

> __NOTA 1__ — `TESTA_TUTTO.bat` eseguirà due batch distinti, uno per ciascuna delle sottocartelle dei test. Ciascun batch di test conterrà un rapporto finale in cui sono riassunti i test eseguiti ed i vari errori.
> 
> Non dimenticatevi che il rapporto che vedrete al fondo riguarda solo la seconda trancia di test (`vari/`) e che dovrete scorrere in su per vedere il rapporto della prima trancia di test!

<!--  -->

> __NOTA 2__ — In futuro conto di creare un solo script (in questa cartella) per gestire l'esecuzione di tutti i test e produrre un solo rapporto finale unificato.


Sebbene l'esecuzione di tutti i testi non richieda tempi lunghi, tavolta è più pratico aggiornare i test di una singola sottocartella, specie durante le fasi di lavoro pre-commit. È possibile eseguire tutti i test di una sottocartella isolatamente tramite lo script batch in ciascuna di essa:

- [`/casa/MULTITEST.bat`][MULTITEST]
- [`/vari/TESTVARI.bat`][TESTVARI]

Nel codice sorgente dei vari batch script troverete dei commenti che ne illustrano nel dettaglio le modalità d'utilizzo e funzionamento.

# Requisiti di Sistema

Al fine di poter utilizzare i test nelle sottocartelle, dovrete rendere accessibili al `%PATH%` di sistema gli eseguibili del compilatore di Alan e dell'interprete ARun, assicurandovi di prenderli dalla stessa versione di Alan usata in questo progetto (`Alan 3.0beta6`). Per il sistema operativo Windows, i file da copiare sono:

- `alan.exe`
- `arun.exe`

In alternativa (se non volete mettere mano al `%PATH%` di sistema) potrete aggiungere una copia degli eseguibili direttamente all'interno di _entrambe_ le cartelle `casa/` e `vari/`.

-------------------------------------------------------------------------------

# Organizzazione dei Test

Sebbene gli attuali test non siano ancora organizzati in maniera del tutto formale e strutturata, l'obiettivo finale è di creare una test suite ben strutturata e formalizzata.

I primi test furono realizzati creando una singola avventura per ciascuna funzionalità da testare. Il nuovo approccio consisterà nel creare un numero limitato di avventure sorgenti e associare a ciascuna di esse vari script di comandi, ciascuno mirato a testare aspetti e funzionalità specifiche della libreria.

Il nuovo approccio consente di creare avventure sorgenti più elaborate, studiate in modo da rendere disponibili varie classi di oggetti da poter testare in maniera flessibile. Per esempio, l'avventura sorgente nella cartella `casa/` implementa una stanza e un giardino per poter testare le classi `stanza` e `luogo_esterno`, e in cui sono presenti una moltitudine di oggetti rappresentanti le varie classi della libreria (cibi, bevande, liquidi, contenitori, e via dicendo) di modo da poter testare in maniera esaustiva sia i verbi che li riguardano che i verbi con cui non andrebbero usati (per verificare i messaggi di errore).

I test nella cartella `vari/` usano ancora il vecchio approccio, ma consentono l'esecuzione di uno più script di comandi per ciascuna avventura, in base al nome dell'avventura sorgente.

Sebbene l'approccio con un'avventura singola su cui usare tutti i testi sia quello preferibile, sarà sempre necessario conservare alcuni test con il vecchio approccio per poter testare condizioni particolari in setting dedicati. Quindi, è molto probabile che la suite di test conserverà entrambi gli approcci, focalizzandosi il più possibile sul nuovo metodo.

## Scopo dei Test

I test hanno un duplice obiettivo:

1. Testare tutte le funzionalità, messaggi e verbi della libreria.
2. Rilevare le conseguenze delle modifiche alla libreria.

Il punto (1) richiede che per ciascun verbo vengano testati tutti i contesti ed errori che li riguardano. Siccome alcuni verbi sono sovrascritti nelle classi o istanze della libreria (p.es nei liquidi o nelle persone), è necessario testarli con ognuno dei possibili parametri che porterebbero ad esecuzioni o risposte diverse, inclusi i messaggi di errore.

Il punto (2) è particolarmente utile per lo sviluppo della libreria. Aggiornando tutti i test dopo ogni modifica al codice sorgente della liberia, Git ci segnalerà come file modificati quelle trascrizioni dei test in cui le modifiche al codice hanno determinato risultati diversi. Grazie al diffing dei file modificati, è possibile visionare con facilità l'impatto globale delle modifiche alla libreria.

Questo consente non solo di verificare che le modifiche apportate abbiano l'esito desiderato (p.es. traduzione e modifica dei messaggi di risposta), ma consente anche di rilevare eventuali effetti collaterali inattesi.

## Convenzioni Estensioni Script

Le estensioni `*.a3sol` e `*.a3log` sono state adottate per semplificare le impostazioni dell'editor di codice affinché tratti queste estensioni con encoding [ISO-8859-1].

Inoltre, queste due estensioni sono supportate da __Sublime Alan__, un package che sto creando per Sublime Text 3 al fine di aggiungere il supporto per la sintassi di Alan. __Sublime Alan__ offre colorazione della sintassi per queste estensioni e altre funzionalità utili:

- https://github.com/tajmone/sublime-alan


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

<!-- File di Progetto -->

[mondo alan]: ./il_mondo_di_alan.alan

[casa]: ./casa/ "Naviga alla cartella"
[MULTITEST]: ./casa/MULTITEST.bat "Vedi sorgente"
[TESTA_TUTTO]: ./TESTA_TUTTO.bat
[TESTVARI]: ./vari/TESTVARI.bat "Vedi sorgente"
[vari]: ./vari/ "Naviga alla cartella"


<!-- Riferimenti Esterni -->

[ISO-8859-1]: https://it.wikipedia.org/wiki/ISO/IEC_8859-1 "Vedi la pagina Wikipedia su ISO-8859-1"

<!-- EOF -->

