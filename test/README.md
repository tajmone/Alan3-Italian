# Tests Folder

Here is where all the testing takes places; for practical reasons all contents will be in Italian language.


-----

**Indice**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introduzione](#introduzione)
- [Contenuti](#contenuti)
    - [Batch script di automazione](#batch-script-di-automazione)
    - [Avventure e script di comandi](#avventure-e-script-di-comandi)
- [Prerequisiti](#prerequisiti)
- [Alan Compiler Help](#alan-compiler-help)

<!-- /MarkdownTOC -->

-----


# Introduzione

Questa cartella contiene vari file sorgenti di avventure Alan che impiegano la Libreria Standard Italiana; lo scopo di queste "avventure" è di testare alcune caratteristiche mirate della liberia. A ciascuna avventura è associato un file batch che eseguirà su di essa uno o più script di comandi (`*.a3sol`) , si tratta di sessioni di gioco automatizzate la cui trascrizione verrà salvata in un file di log (`*.a3log`).

Le estensioni `*.a3sol` e `*.a3log` sono state adottate per semplificare le impostazioni dell'editor di codice affinché tratti queste estensioni con encoding [ISO-8859-1].


# Contenuti

Gli script in questa cartella sono studiati per essere eseguiti su Windows OS. Sono stati testati su Windows 10.

## Batch script di automazione

Al fine di riprodurre tutti i test in questa cartella, sarà sufficiente lanciare il seguente script: 

- [`AGGIORNA_TUTTO.bat`][AGGIORNA] — compila tutte le avventure ed esegue gli script di comandi associati ad esse.

Se invece vuoi eseguire dei test individuali, puoi usare i seguenti script: 

- [`COMPILA.bat`][COMPILA] — batch script per compilare un'avventura sorgente Alan.
- [`ESEGUI.bat`][ESEGUI] — batch script per eseguire un'avventura tramite uno script di comandi.



Nel codice sorgente dei batch script troverete dei commenti che ne illustrano le modalità d'utilizzo.

## Avventure e script di comandi

- [`attori.alan`][act src]/[`.bat`][act bat] — avventura per testare il corretto funzionamento della liberia con gli attori.
    + [`attori-inizializzazione.a3sol`][act-init scr]/[`.a3log`][act-init log] — sessione/trascrizione per testare l'inizializzazione degli attributi grammaticali italiani per gli attori con nome e proprio e senza.

[act src]: ./attori.alan "Visualizza il sorgente di questa avventura-test"
[act bat]: ./attori.bat  "Visualizza il batch per questa avventura-test"
[act-init scr]: ./attori-inizializzazione.a3sol "Visualizza lo script di comandi"
[act-init log]: ./attori-inizializzazione.a3log "Visualizza la trascrizione della sessione di test"

# Prerequisiti

Al fine di poter utilizzare i test in questa cartella, dovrete copiare al suo interno gli eseguibili del compilatore di Alan e dell'interprete ARun, assicurandovi di prenderli dalla stessa versione di Alan usata in questo progetto (`Alan 3.0beta5`). Per il sistema operativo Windows, i file da copiare saranno:

- `alan.exe`
- `arun.exe`



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

[ISO-8859-1]: https://it.wikipedia.org/wiki/ISO/IEC_8859-1 "Vedi la pagina Wikipedia su ISO-8859-1"

<!-- EOF -->