# Tests Folder

Here is where all the testing takes places; for practical reasons all contents will be in Italian language.


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

Per semplificare la manutenzione dei test, impiegherò una singola avventura dimostrativa di Alan ([`il_mondo_di_alan.alan`][mondo alan]) su cui eseguire tutti i test tramite script di comandi. Gli script producono file di log independenti tra loro, consentendo a ciascuno script di testare specifiche funzionalità in modo mirato.

La demo è concepita appositamente per facilitare i vari tipi di test necessari.

Siccome il progetto è impostato affinché Git ignori i file delle avventure compilate, l'onere della compilazione dell'avventura dimostrativa ricade sull'utente finale (il quale dovrà inoltre assicurarsi di ricompilarla ogni volta che il sorgente viene aggiornato).


# Contenuti

- [`il_mondo_di_alan.alan`][mondo alan] — sorgente dell'avventura dimostrativa
- [`COMPILA.bat`][COMPILA] — batch per compilare l'avventura dimostrativa
- [`ESEGUI.bat`][ESEGUI] — batch per eseguire uno script di comandi
- [`AGGIORNA_TUTTO.bat`][AGGIORNA] — compila l'avventura ed esegue tutti gli script

Script di comandi:

- [`player_words.script`](./player_words.script) — testa l'implementazione italiana delle Player Words

Trascrizioni delle sessione di gioco degli script di comandi:

- [`player_words.log`](./player_words.log)


# Prerequisiti

Al fine di poter utilizzare i test in questa cartella, dovrete copiare al suo interno gli eseguibili del compilatore di Alan e dell'interprete ARun, assicurandovi di prenderli dalla stessa versione di Alan usata in questo progetto (`Alan 3.0beta5`). Per il sistema operativo Windows, i file da copiare saranno:

- `alan.exe`
- `arun.exe`


# Compilare l'avventura dimostrativa

Per semplificare il compito, ho incluso uno script batch per compilare l'avventura dimostrativa [`il_mondo_di_alan.alan`][mondo alan]. Sarà sufficiente cliccare sul file [`COMPILA.bat`][COMPILA] per compilare automaticamente l'avventura.


# Eseguire gli script di comandi

I test verranno eseguiti utilizzando script di comandi (estensione `*.script`) che vanno lanciati tramite il file di batch [`ESEGUI.bat`][ESEGUI], il quale salverà la trascrizione di gioco in un file di log avente lo stesso nome file dello script lanciato ma con l'estensione `.log`.

Per lanciare uno script è sufficiente trascinarlo sopra il file `ESEGUI.bat` all'interno di Esplora Risorse; oppure, lo si può lanciare da CMD invocando `ESEGUI.bat` e passandogli il nome del file di comandi come parametro. Esempio:

```bat
ESEGUI player_words.script
```

... che creerà il file di trascrizione `player_words.log`, oltre a mostrare la sessione di gioco nella finestra del CMD.

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

[COMPILA]: ./COMPILA.bat
[ESEGUI]:  ./ESEGUI.bat
[AGGIORNA]: ./AGGIORNA_TUTTO.bat

