--= Alan StdLib Italian: Modulo Principale
--| Tristano Ajmone <tajmone@gmail.com>
--~-----------------------------------------------------------------------------
--~ "libreria.i"
--| v0.21.0-Alpha, 2019-08-15: Alan 3.0beta6 build 2015
--| ============================================================================
--| Modulo principale dell'adattamento italiano della libreria
--| _ALAN Standard Library_ v2.1, (C) Anssi Räisänen, Artistic License 2.1.
--| Ad opera di Tristano Ajmone,  (C) 2018, Artistic License 2.1.
--| ============================================================================
-->

--| Questo è il modulo principale della Libreria Standard, e sarà sufficiente
--| importarlo nella propria avventura per usufruire della libreria:

--| [source,alan,role=example]
--| --------------------
--| IMPORT 'libreria.i'.
--| --------------------

--| Questo modulo importa tutti gli altri moduli della liberia:

IMPORT 'lib_italian.i'.           -- Modulo creato appositamente per l'italiano.

--| Questi primi due moduli offrono il supporto per la lingua italiana, e possono
--| essere usati anche indipedendentemente dal resto della Libreria Standard.

--| Questi invece sono i moduli propri della Libreria Standard:

IMPORT 'lib_classi.i'.            -- Adattamento di -> `lib_classes.i` (1).
IMPORT 'lib_classi_vestiario.i'.  -- Adattamento di -> `lib_classes.i` (2).
IMPORT 'lib_definizioni.i'.       -- Adattamento di -> `lib_definitions.i` (1).
IMPORT 'lib_luoghi.i'.            -- Adattamento di -> `lib_locations.i`.
IMPORT 'lib_messaggi_runtime.i'.  -- Adattamento di -> `lib_messages.i`.
IMPORT 'lib_messaggi_libreria.i'. -- Adattamento di -> `lib_definitions.i` (2).
IMPORT 'lib_verbi.i'.             -- Adattamento di -> `lib_verbs.i`.
--<

---< Fine del File >---
