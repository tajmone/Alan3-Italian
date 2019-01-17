# Demo Folder

This folder will (eventually) contain a demo adventure using the Italian Stadard Library. Right now, it's just a messy adventure that was being used for testing purposes.

For practical reasons all contents of this document will be in Italian language.

> __NOTA__ — Al momento, i contenuti di questa cartella sono in fase di riorganizzazione. I file sono vecchi ed obsoleti e vanno rivisiti da cima a fondo!


-----

**Indice**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introduzione](#introduzione)
- [Contenuti](#contenuti)
- [Prerequisiti](#prerequisiti)
- [Compilare l'avventura dimostrativa](#compilare-lavventura-dimostrativa)
- [Eseguire gli script di comandi](#eseguire-gli-script-di-comandi)
- [Lo script aggiorna tutto](#lo-script-aggiorna-tutto)
- [Alan Compiler Help](#alan-compiler-help)

<!-- /MarkdownTOC -->

-----


# Introduzione

- [`il_mondo_di_alan.alan`][mondo alan]

Quando sarà ultimata, _Il Mondo di Alan_ sarà un'avventura dimostrativa di Alan in italiano. Più che un gioco vero e proprio, sarà un _open world_ in cui poter provare la libreria standard italiana interagendo con un mondo narrativo studiato appositamente per offrire un assaggio delle potenzialità della libreria. 

Durante le fasi iniziali del lavoro di traduzione, ho usato quella che doveva essere la demo per testare la libreria — era più pratico lavorare con un singolo sorgente che non tanti piccoli file da dover costantemente aggiornare man mando che venivano tradotti i termini della libreria.

Di conseguenza, allo stato attuale _Il Mondo di Alan_ è soltanto un guazzabuglio caotico di stanze che sono state riempite a casaccio con oggetti e attori al solo fine di poter testare i vari verbi man mano che venivano tradotti.

Ora che il grosso della libreria è stato già tradotto, ho creato una cartella dedicata ai test ([`../test/`][test]), e d'ora in avanti _Il Mondo di Alan_ sarà sviluppato come demo e non più come terreno per provare i comandi.

Sono presenti in questa cartella vari script di comandi di gioco, usati per automatizzare differenti sessioni di gioco e salvarne su file la trascrizione. Gli script originali avevano lo scopo di testare le funzionalità della libreria, ma in futuro verranno sostituiti da sessioni di gioco esplorative, atte a produrre una trascrizione dimostrativa.

Siccome il progetto è impostato affinché Git ignori i file delle avventure compilate, l'onere della compilazione dell'avventura dimostrativa ricade sull'utente finale (il quale dovrà inoltre assicurarsi di ricompilarla ogni volta che il sorgente viene aggiornato).

# Contenuti

- [`il_mondo_di_alan.alan`][mondo alan] — sorgente dell'avventura dimostrativa
- [`COMPILA.bat`][COMPILA] — batch per compilare l'avventura dimostrativa
- [`ESEGUI.bat`][ESEGUI] — batch per eseguire uno script di comandi (`*.a3sol`)
- [`AGGIORNA_TUTTO.bat`][AGGIORNA] — compila l'avventura ed esegue tutti gli script

Script di comandi (vecchi test):

- [`comandi-risposte.a3sol`](./comandi-risposte.a3sol) — testa le risposte standard di vari verbi.
- [`player_words.a3sol`](./player_words.a3sol) — testa l'implementazione italiana delle Player Words.
- [`preposizioni.a3sol`](./preposizioni.a3sol) — testa l'implementazione delle preposizioni articolate.


Trascrizioni delle sessione di gioco degli script di comandi:

- [`comandi-risposte.a3log`](./comandi-risposte.a3log)
- [`player_words.a3log`](./player_words.a3log)
- [`preposizioni.a3log`](./preposizioni.a3log)

# Prerequisiti

Al fine di poter utilizzare i test in questa cartella, dovrete copiare al suo interno gli eseguibili del compilatore di Alan e dell'interprete ARun, assicurandovi di prenderli dalla stessa versione di Alan usata in questo progetto (`Alan 3.0beta5`). Per il sistema operativo Windows, i file da copiare saranno:

- `alan.exe`
- `arun.exe`


# Compilare l'avventura dimostrativa

Per semplificare il compito, ho incluso uno script batch per compilare l'avventura dimostrativa [`il_mondo_di_alan.alan`][mondo alan]. Sarà sufficiente cliccare sul file [`COMPILA.bat`][COMPILA] per compilare automaticamente l'avventura.


# Eseguire gli script di comandi

I test verranno eseguiti utilizzando script di comandi (estensione `*.a3sol`) che vanno lanciati tramite il file di batch [`ESEGUI.bat`][ESEGUI], il quale salverà la trascrizione di gioco in un file di log avente lo stesso nome file dello script lanciato ma con l'estensione `.a3log`.

Per lanciare uno script è sufficiente trascinarlo sopra il file `ESEGUI.bat` all'interno di Esplora Risorse; oppure, lo si può lanciare da CMD invocando `ESEGUI.bat` e passandogli il nome del file di comandi come parametro. Esempio:

```bat
ESEGUI player_words.a3sol
```

... che creerà il file di trascrizione `player_words.a3log`, oltre a mostrare la sessione di gioco nella finestra del CMD.

# Lo script aggiorna tutto

- [`AGGIORNA_TUTTO.bat`][AGGIORNA]

Il file di batch `AGGIORNA_TUTTO.bat` è il sistema più comodo per (ri)complilare l'avventura dimostrativa ed eseguire tutti gli script di comando con un solo click.

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

[mondo alan]: ./il_mondo_di_alan.alan
[test]: ../test "Vai alla cartella 'test'"

[COMPILA]: ./COMPILA.bat
[ESEGUI]:  ./ESEGUI.bat
[AGGIORNA]: ./AGGIORNA_TUTTO.bat

