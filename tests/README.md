# Tests Folder

Here is where all the testing takes places: example adventures are created to test translated commands, messages and other parts of the Std Library.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Boilerplates](#boilerplates)
- [Test Tools](#test-tools)
- [Test Files](#test-files)
- [Alan Compiler Help](#alan-compiler-help)

<!-- /MarkdownTOC -->

-----


# Boilerplates

Boilerplates and templates have filenames starting with underscore:

- [`_newgame_ita.alan`](./_newgame_ita.alan) — adaptation of `newgame.alan` to test `/alanlib_ita/`
- [`_mygame_import.i`](./_mygame_import.i) (unchanged)

# Test Tools

- [`COMPILE.bat`](./COMPILE.bat)

Batch script to compile and run source file: drag source over it or invoke it from CDM with source as param (also accepts options via CMD).

Requires `alan` compiler and `arun` to either be in this folder or on system PATH.

# Test Files

- [`direzioni.alan`](./direzioni.alan) — test directions and movement


# Alan Compiler Help

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
