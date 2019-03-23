#!/bin/bash

script="verbump.sh"
version="1.0.0"
revdate="2019/03/23"

echo -e "\e[94m\n******************************************************************************"
echo -e "*                                                                            *"
echo -e "*                         \e[93mAGGIORNA INFO DI VERSIONE\e[94m                          *"
echo -e "*                                                                            *"
echo -e "******************************************************************************"
echo -e "\e[90m\"$script\" v$version ($revdate) by Tristano Ajmone"
  echo -e "------------------------------------------------------------------------------\e[97m"
. ./ver.sh

echo -e "Tutti i riferimenti nel codice e nella documentazione verranno aggiornati ai"
echo -e "seguenti valori:\n"
echo -e "- Alan SDK: \e[93m$AlanSDK\e[97m"
echo -e "- Alan Ita: \e[93m$AlanITA ($AlanITA_RevDate)\n\e[97m"

# ==============================================================================
# 1. SETUP
# ==============================================================================
shopt -s globstar

# scomponi versione Alan Italian:

AlanITA_MAJOR=`echo $AlanITA | grep -o -P '^\d+'`
AlanITA_MINOR=`echo $AlanITA | grep -o -P '^\d+\.\K\d+'`
AlanITA_PATCH=`echo $AlanITA | grep -o -P '^(\d+\.){2}\K\d+'`

# -----------------------------------
# definisci stringhe per sostituzioni
# -----------------------------------

# Alan Ita (lunga): v0.17.0-Alpha
subAlanItaL="v$AlanITA-Alpha"

# Alan Ita (breve): Alan Italian 17 Alpha
subAlanItaS="Alan Italian $AlanITA_MINOR Alpha"

# Ala Ita Data (YYYY-MM-DD)
subData=$AlanITA_RevDate


# Alan Ver: 3.0beta6 build 1878
subAlanVer="$AlanSDK"

# Alan SDK: Alan 3.0beta6 build 1878
subAlanSDK="Alan $AlanSDK"


# -------------------------------------
# definisci alcune espressioni regolari
# -------------------------------------

# Le righe di commento con le info di versione hanno una di queste due forme:

: <<'ESEMPIO' [ Alan ]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--| v0.17.0-Alpha, 2019-02-27: Alan 3.0beta6 build 1878
-- Alan Italian 17 Alpha | Alan 3.0beta6 build 1878
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ESEMPIO


# Alan Ita (lunga): v0.17.0-Alpha
rexAlanItaL="v[0-9]+\.[0-9]+\.[0-9]+-Alpha"

# Alan Ita (breve): Alan Italian 17 Alpha
rexAlanItaS="Alan Italian [0-9]+ Alpha"

# Ala Ita Data (YYYY-MM-DD)
rexData="[0-9]{4}-[0-9]{2}-[0-9]{2}"

# Alan Ver: 3.0beta6 build 1878
rexAlanVer="3\.0beta[0-9]+( build [0-9]{4})?"

# Alan SDK: Alan 3.0beta6 build 1878
rexAlanSDK="Alan $rexAlanVer"



# -------------------------
# definisci alcune funzioni
# -------------------------

function Heading1 {
  echo -e "\e[93m******************************************************************************"
  printf  "\e[94m%*s\n" $(((${#1}+78)/2)) "$1"
  echo -e "\e[93m******************************************************************************\e[97m"
}

function Heading2 {
  echo -e "\e[94m=============================================================================="
  echo -e "\e[95m$1"
  echo -e "\e[94m==============================================================================\e[97m" 
}

function ProcessaFile {
  # $1 : files pattern
  # $2 : find RegEx (PCRE)
  # $2 : substitution string
  # $4 : lines range (optional)

  files=$1
  files2fix="$files2fix $files"

  echo -e "\n\e[94mSED File Option: \e[93m$1"
  echo -e   "\e[94mSED Lines Range: \e[93m$4"
  echo -e   "\e[94mSED RegExp Find: \e[93m$2"
  echo -e   "\e[94mSED RegExp Repl: \e[93m$3"

  for f in $files ; do
  
    # Anteprima su STDOUT
    Separatore
    echo -e "$f:\e[92m"
    sed -s -n -E \
      -e "$4 s/$2/$3/p" \
      $f

    # Modifica i file:
    sed -i -E \
      -e "$4 s/$2/$3/" \
      $f
  done
  outEnd
}

function Separatore {
  # riga grigio scuro
  echo -e "\e[90m------------------------------------------------------------------------------"
}
function outBeg {
  # riga grigio scuro + imposta colore verde
  echo -e "\e[90m------------------------------------------------------------------------------\e[92m"
}
function outEnd {
  # riga grigio scuro + imposta colore bianco
  echo -e "\e[90m------------------------------------------------------------------------------\e[97m"
}
# ==============================================================================
# 2. AGGIORNA INFO DI VERSIONE
# ==============================================================================

Heading1 "AGGIORNA INFO DI VERSIONE"

# ------------------------------------------------------------------------------
# README.adoc
# ------------------------------------------------------------------------------
# Modifica attributi AsciiDoc di versione in "README.adoc":

: <<'ESEMPIO' [ AsciiDoc ]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
= Alan Italian
Tristano Ajmone <tajmone@gmail.com>
2019-03-01
// tag::AlanRevInfo[]
:AlanItaV: 17
:AlanSDK: 3.0beta6 build 1878
:revnumber: 0.{AlanItaV}-Alpha
// end::AlanRevInfo[]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ESEMPIO

# NOTA: Questi attributi sono posizionati su numeri di riga fissi (5, 6).
#       Si noti anche che sono racchiusi in una regione taggata di modo da poter
#       essere inclusi selettivamente dagli altri documenti del progetto durante
#       la conversione HTML, fungendo così da definizione centralizzata delle
#       informazioni di versione Alan per l'intera documentazione del progetto.
       
Heading2 "Attributi AsciiDoc in \e[93m./README.adoc"
echo -e "Vanno aggiornati due attributi: '\e[93mAlanItaV\e[97m' e '\
\e[93mAlanSDK\e[97m'."

ProcessaFile \
  "./README.adoc" \
  "^(:AlanItaV: )[0-9]+" \
  "\1$AlanITA_MINOR" \
  "5"

ProcessaFile \
  "./README.adoc" \
  "^(:AlanSDK: )$rexAlanVer" \
  "\1$subAlanVer" \
  "6"

# ------------------------------------------------------------------------------
# alanlib_ita/lib_definizioni.i
# ------------------------------------------------------------------------------
# Modifica attributi Alan di versione nei sorgenti della Libreria:

: <<'ESEMPIO' [ Alan ]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
  HAS         AlanV  "3.0beta6 build 1878".
  HAS      AlanItaV  "17 Alpha".
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ESEMPIO

Heading2 "Attributi Alan nella Libreria"
echo -e "Vanno aggiornati due attributi: '\e[93mAlanV\e[97m' e '\
\e[93mAlanItaV\e[97m'."

ProcessaFile \
  "alanlib_ita/lib_definizioni.i" \
  "^( *HAS +AlanV +\")$rexAlanVer" \
  "\1$subAlanVer"

ProcessaFile \
  "alanlib_ita/lib_definizioni.i" \
  "^( *HAS +AlanItaV +\")[0-9]+( Alpha)" \
  "\1$AlanITA_MINOR\2"


# ------------------------------------------------------------------------------
# moduli della libreria
# ------------------------------------------------------------------------------
# L'intestazione dei moduli della libreria adotta questa convenzione:

: <<'ESEMPIO' [ Alan ]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
--= Alan StdLib Italian: Verbi
--| Tristano Ajmone <tajmone@gmail.com>
--~-----------------------------------------------------------------------------
--~ "lib_verbi.i"
--| v0.17.0-Alpha, 2019-02-27: Alan 3.0beta6 build 1878
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ESEMPIO

# la riga che ci interessa è sempre la quinta riga.

Heading2 "Moduli libreria"
echo -e "Va aggiornata la riga di commento con le info di versione. "

ProcessaFile \
  "./alanlib_ita/*.i" \
  "^--\| $rexAlanItaL, $rexData: $rexAlanSDK" \
  "--| $subAlanItaL, $subData: $subAlanSDK" \
  "5"

# ------------------------------------------------------------------------------
# avventure
# ------------------------------------------------------------------------------
# I sorgenti delle avventure e dei moduli aggiuntivi in genere contengono le
# informazioni di versione nella prima riga commentata:

: <<'ESEMPIO' [ Alan ]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-- Alan Italian 17 Alpha | Alan 3.0beta6 build 1878
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ESEMPIO

# la riga che ci interessa è sempre e solo la prima riga.

Heading2 "Sorgenti avventure"
echo -e "Va aggiornata la prima riga commentato dello header con le info di versione. "

ProcessaFile \
  "./test/**/*.alan ./test/**/*.i\
   ./demo/**/*.alan\
   ./ricettario/**/*.alan" \
  "^-- $rexAlanItaS \| $rexAlanSDK" \
  "-- $subAlanItaS | $subAlanSDK" \
  "1"

# ------------------------------------------------------------------------------
# Avventure Doxterizzate
# ------------------------------------------------------------------------------
# Alcune avventure demo o della test suite hanno attributi AsciiDoc di versione.

: <<'ESEMPIO' [ Alan + Doxter ]
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
-->rev_info
--| :revdate:     2019-02-20
--| :revnumber:   Alpha
--| :AlanSDK:     Alan 3.0beta6 build 1878
--<<
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
ESEMPIO

# NOTA: La posizione di questi attributi non è fissa dato che sorgenti diversi
#       avranno header diversi. Ma l'attributo sarà sempre entro le prime 20
#       righe, quindi un range '1,20' è sicuro da usare.
       
Heading2 "Attributi AsciiDoc/Doxter in sorgenti avventure"
echo -e "Va aggiornato l'attributo \e[93mAlanSDK\e[97m' nei commenti Doxter. "

ProcessaFile \
  "./demo/**/*.alan ./test/vestiario/ega.alan" \
  "^(--\| :AlanSDK: +Alan )$rexAlanVer" \
  "\1$subAlanVer" \
  "1,20"

# ==============================================================================
# 3. POST-PROCESSING
# ==============================================================================

# ------------------------------------------------------------------------------
# Correggi EOL (solo windows)
# ------------------------------------------------------------------------------

# In Bash for Windows sed modifica tutte le EOL in LF.

if [[ $(uname -s) == MINGW* ]];then
  Heading1 "CORREGGI EOL"
  echo -e "Correggi sequenze EOL da LF a CRLF:"
  echo -e "\e[90m------------------------------------------------------------------------------\e[32m"
  unix2dos $files2fix
  echo -e "\e[90m------------------------------------------------------------------------------\e[32m"
fi

exit
