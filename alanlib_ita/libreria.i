--= Alan StdLib Italian: Modulo Principale
--| Tristano Ajmone <tajmone@gmail.com>
--~-----------------------------------------------------------------------------
--~ "libreria.i"
--| v0.22.0-Alpha, 2019-08-22: Alan 3.0beta6 build 2022
--| ============================================================================
--| Modulo principale dell'adattamento italiano della libreria
--| _ALAN Standard Library_ v2.1, (C) Anssi Räisänen, Artistic License 2.1.
--| Ad opera di Tristano Ajmone,  (C) 2018, Artistic License 2.1.
--| ============================================================================
-->

--| Questo è il modulo principale della Libreria Standard, il suo compito è
--| importare tutti gli altri moduli della liberia.
--|
--| Per usufruire della libreria nelle nostre avventure testuali, basterà
--| importare `libreria.i` aggiungendo la seguente istruzione in cima al codice
--| sorgente principale dell'avventura:

--| [source,alan,role=example]
--| --------------------
--| IMPORT 'libreria.i'.
--| --------------------

--| Il modulo `libreria.i` importerà i restanti moduli della liberia nel
--| seguente ordine:

IMPORT 'lib_italian.i'.           -- Modulo creato appositamente per l'italiano.

--| Questo primo modulo offre il supporto base per la lingua italiana, e può
--| anche essere usato indipedendentemente dal resto della Libreria Standard.

--| I restanti moduli, invece, sono i componenti veri e propri della Libreria
--| Standard:

IMPORT 'lib_classi.i'.            -- Adattamento di -> `lib_classes.i` (1).
IMPORT 'lib_classi_vestiario.i'.  -- Adattamento di -> `lib_classes.i` (2).
IMPORT 'lib_definizioni.i'.       -- Adattamento di -> `lib_definitions.i` (1).
IMPORT 'lib_luoghi.i'.            -- Adattamento di -> `lib_locations.i`.
IMPORT 'lib_messaggi_runtime.i'.  -- Adattamento di -> `lib_messages.i`.
IMPORT 'lib_messaggi_libreria.i'. -- Adattamento di -> `lib_definitions.i` (2).
IMPORT 'lib_verbi.i'.             -- Adattamento di -> `lib_verbs.i`.

--| Questi moduli dipendono gli uni dagli altri per il loro funzionamento, oltre
--| che dal modulo `lib_italian.i`, e non sono in grado di funzionare se uno di
--| essi viene escluso.

--<

---< Fine del File >---
