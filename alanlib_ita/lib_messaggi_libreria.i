--= Alan StdLib Italian: Messaggi Libreria
--| Tristano Ajmone <tajmone@gmail.com>
--~-----------------------------------------------------------------------------
--~ "lib_messaggi_libreria.i"
--| v0.9.6-Alpha, 2018-11-25: Alan 3.0beta6
--|=============================================================================
--| Adattamento italiano degli attributi per la messaggistica dei verbi, estratti
--| dal modulo `lib_definitions.i` della
--| _ALAN Standard Library_ v2.1, (C) Anssi Räisänen, Artistic License 2.1.
--| Ad opera di Tristano Ajmone,  (C) 2018, Artistic License 2.1.
--|=============================================================================


-->messaggi_libreria(100.1)
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Messaggi della Libreria
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--| 
--| Questo modulo è il cuore della libreria per quanto concerne il testo
--| prodotto da essa. Modificando le stringhe degli attributi qui definiti, è
--| possibile alterare la forma ed i contenuti della maggior parte delle risposte
--| predefinite dei verbi della libreria.
--| 
--| [WARNING]
--| ========================================
--| Documentazione in fase di preparazione...
--| ========================================
--<


-->libmsg_convenzioni(500.1)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Convenzioni negli identificativi degli attributi
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Nella scelta degli identificativi degli attributi stringa per i messaggi
--| della libreria sono state adottate le sequenti convenzioni.
--| 
--| [NOTE]
--| ========================================================================
--| Sebbene irrilevante ai fini della compilazione del codice, l'uso di lettere
--| maiuscole e minuscole negli identificativi degli attributi di messaggi è
--| rilevante ai fini delle presenti convenzioni poiché il maiuscolo viene
--| impiegato in contesti specifici.
--| ========================================================================
--|

--| Si è cercato di creare identificativi in grado di veicolare il senso del
--| messaggio che rappresentano in maniera succinta e intuitiva. Per ragioni di
--| spazio, sono state adottate una serie di abbreviazioni di uso comune:
--| 
--| [horizontal]
--| `ogg`  :: -> '`oggetto`' del verbo, inteso come _parametro_.
--| `png`  :: -> '`personaggio non giocante,`' inteso come un'istanza _attore_.
--| `prep` :: -> '`preposizione,`' in genere intesa come _preposizione articolata_.
--| `qlco` :: -> '`qualcosa`'.

--| Alcune abbreviazioni sono indicatrici di alcune caratteristiche tecniche del
--| messaggio che rappresentano:

--| * `ogg1` e `ogg2` indicano che la stringa del messaggio fa riferimento ad un
--|   parametro specifico del verbo tramite il simbolo `$` (`$+1`/`$1` o `$+2`/`$2`,
--|   rispettivamente). Es. `ogg2_non_posseduto`.

--| * `png1` e `png2` indicano che il `$` nel messaggio fa rigerimento ad un
--|    parametro che è un attore. Questo tipo di messaggio è adatto ad essere
--|    utilizzato solo con attori. Es. `png1_non_apprezzerebbe`.

--| * `_sg` e `_pl` rappresentano varianti di un medesimo messaggio, il primo
--|   da utilizzarsi con un referente singolare, il secondo con uno plurale.
--|   Es. `ogg1_inadatto_sg` e `ogg1_inadatto_pl`.

--| * `_USA` è impiegato nei messaggi volti a indirizzare il giocatore all'uso
--|   corretto di un comando. Solitamente associato a verbi creati appositamente
--|   per intercettare comandi incompleti. Es. `per_scrivere_USA`.
--<


ADD TO EVERY blocco_definizioni

--==============================================================================
--------------------------------------------------------------------------------
-- § x.2 - Messaggi riguardanti il protagonista
--------------------------------------------------------------------------------
--==============================================================================

  -- messages for the hero:
  -- ======================

  -- The hero is not defined as an instance in the library; the game author
  -- has all the freedom to define the hero as they see fit. However,
  -- there are some messages for the hero defined in the library. These can be
  -- easily overridden. Two of these messages are right here, the rest are
  -- for example in verb checks.

  HAS header_abbigliamento       "stai indossando".
  HAS header_abbigliamento_else  "non stai indossando niente.".


--==============================================================================
--------------------------------------------------------------------------------
-- § x.3 - Messaggi sui luoghi bui
--------------------------------------------------------------------------------
--==============================================================================

  -- description messages for dark locations:
  -- ========================================

  HAS dark_loc_desc  "È buio e non riesci a vedere nulla".
    --#i7: "È buio e non riesci a vedere nulla".
    --#i6: "È completamente buio, e non riesci a vedere niente.".
    -- "It is pitch black. You can't see anything at all.".
    -- This message is shown when the player tries to LOOK or do actions requiring light
    -- in a dark location.

  HAS light_goes_off  "It is now pitch black.".
    -- This message is shown when a light goes off and the location becomes dark.


-->libmsg_verbi(20000)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Messaggi dei verbi
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--<


-->20100(libmsg_verbi_vsym)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== Note sull'uso di `$v`
--~-----------------------------------------------------------------------------
--~=============================================================================
--| 
--| Nelle stringhe di risposta dei verbi, la libreria originale inglese faceva
--| abbondante uso del simbolo speciale `$v`, che Alan sostituisce con il verbo
--| digitato dal giocatore. Per esempio, ipotizzando che il giocatore abbia
--| digitato "`talk to wall,`" queste stringhe di codice produrrebero:
--| 
--| [horizontal]
--| `"You can't $v to $+1."`     :: -> You can't talk to the wall.
--| `"$ving to $+1 is useless."` :: -> Talking to the wall is useless.
--| 
--| Poiché in inglese il verbo imperativo digitato dal giocatore corrisponde
--| alla forma base del verbo, il simbolo `$v` è utilizzabile in svariati tempi
--| verbali, e per ottenere il participio presente basta aggiungervi "`ing`"
--| (`$ving`).
--| 
--| Nella libreria inglese, questo ha reso possibile la creazione di attributi
--| stringa per risposte riutilizzabili con svariati verbi e in maniera
--| flessibile. Inoltre, nel caso di verbi con sinonimi o sintassi alternative,
--| ha consentito di poter includere nella risposta l'esatto verbo digitato dal
--| giocatore, consentendo una maggior flessibilità nel riutilizzo dei verbi.
--| 
--| [NOTE]
--| ========================================================================
--| Nell'output, `$v` viene sempre sostituito dal verbo digitato dal giocatore,
--| a prescindere se esso corrisponda alla definizione del verbo di base, ad una
--| sintassi alternativa o un sinonimo.
--| ========================================================================
--| 
--| In italiano, purtroppo, l'impiego di `$v` nelle risposte non è altrettanto
--| flessibile. Nel caso di verbi il cui imperativo termina in '`a`', è possibile
--| utilizzare `$v` come nella libreria inglese. Per esempio, ipotizzando che il
--| giocatore abbia digitato "`mangia il maestro`":
--| 
--| [horizontal]
--| `"Non puoi $vre $+1."`        :: -> Non puoi mangiare il maestro.
--| `"$+1 non vuol essere $vto."` :: -> Il maestro non vuol essere mangiato.
--| `"$+1 non è $vbile."`         :: -> Il maestro non è mangiabile.
--| 
--| Ma in italiano sono frequenti i verbi in cui questo non funzionerebbe.
--| Per esempio, dai seguenti verbi non è possibile derivare l'infinito dalla
--| forma imperativa del comando usando la formula `$+v`+`re` (`"$vre"`):
--| 
--| [horizontal]
--| bevi    :: -> bevire.
--| siediti :: -> sieditire.
--| dai     :: -> daire.
--| 
--| Questo problema ha determinato un uso limitato di `$v` nella della libreria
--| italiana, e ad una rielaborazione dell'intero corpo degli attributi stringa
--| dei messaggi, nonché della loro modalità d'uso all'interno dei verbi,
--| disconstandosi parecchio dalla libreria originale.
--| 
--| Laddove la libreria originale definiva attributi stringa con risposte
--| complete, e condivise da più verbi, grazie all'uso di `$v`, nella libreria
--| italiana si è dovuto creare messaggi parziali in cui è omesso il verbo,
--| facendo ricadere sul corpo del verbo l'onore di completare la frase.
--| 
--| Ad esempio, la libreria inglese definisce i seguenti attributi per le
--| risposte in caso di parametri non idonei al verbo:
--| 
--| [source,alan]
--|   HAS illegal_parameter_sg "That's not something you can $v.".
--|   HAS illegal_parameter_pl "Those are not something you can $v.".
--| 
--| Ciascun attributo è una risposta completa e non richiede ulteriore testo.
--| Nella libreria italiana questi attributi sono stati tradotti così:
--| 
--| [source,alan]
--|   HAS ogg1_inadatto_sg  "$+1 non è qualcosa che puoi".
--|   HAS ogg1_inadatto_pl  "$+1 non sono qualcosa che puoi".
--| 
--| L'impedimento ad usare `$v` ha costretto a troncare le frasi negli attributi,
--| e a doverle completare nel codice dei verbi stessi. Ad esempio:
--| 
--| [source,alan]
--| -----------------------------------------
--| SYNTAX ispeziona = ispeziona (ogg)
--|   WHERE ogg IsA THING
--|     ELSE
--|       IF ogg IS NOT plurale
--|         THEN SAY mia_AT:ogg1_inadatto_sg.
--|         ELSE SAY mia_AT:ogg1_inadatto_pl.
--|       END IF. "ispezionare."
--| 
--| SYNONYMS perquisisci = ispeziona.
--| -----------------------------------------
--| 
--| Questo approccio consente di riutilizzare il messaggio con tutti i verbi,
--| inclusi quelli che non terminano per '`a`'.
--| 
--| Nel caso di messaggi più complessi, nei quali il verbo ricade
--| necessariamente al centro della frase, è impossibile creare un messaggio
--| completo tramite un solo attributo stringa. Per esempio, messaggi della
--| libreria originale come questo:
--| 
--| [source,alan]
--|   HAS check_obj_not_in_worn2 "It doesn't make sense to $v something you're wearing.".
--| 
--| non possono essere tradotti in italiano se non utilizzando due attributi
--| distinti (scelta poco pratica). In simili casi la frase della risposta
--| va rimpiazzata con una più adatta all'uso, oppure si rinuncia ad usare un
--| attributo stringa e si implementa la risposta usando semplici stringhe nel
--|  corpo verbo.
--| 
--| Ritornando all'esempio precedente, si noterà che l'infinito del verbo è
--| rappresentato da una stringa letterale, perciò il verbo mostrato nella
--| risposta sarà sempre "`ispezionare`", anche quando il giocatore userà il
--| sinonimo '`perquisisci`'. Questo è per via del fatto che '`perquisisci`'
--| sarebbe inadatto all'uso di `$vre` (= '`perquisiscire`').
--| 
--| Quando tutte le sintassi ed i sinonimi di un verbo terminano in '`a`' si può
--| anche ricorrere al'uso `$v` nel codice del verbo. Questo rende le risposte più
--| fluide, specie nel caso di verbi che coprono sintassi simili ma con
--| significati diversi (e.s. '`graffia`' e '`gratta`' come traduzione del verbo
--| inglese '`scratch`'). Il rischio però è che un autore possa aggiungere
--| ulteriori sinonimi o sintassi per il verbo, e che alcuni di essi possano
--| condurre a risposte sgrammaticate.
--| 
--| In alcuni casi l'implementazione di sinonimi è finalizzata a catturare
--| potenziali comandi del giocatore mal formulati; in questi casi l'utilizzo di
--| un verbo diverso da quello digitato serve anche a sottolineare al giocatore
--| quale sia il corretto verbo di base associato all'azione.
--<

  HAS azione_bloccata  "Non puoi farlo.". -- "You can't do that."
    --| Questo è il messaggio mostrato quando il giocatore tenta di usare un
    --| verbo che è stato disabilitato tramite "CAN NOT [verb]" (vedi sotto).


  -- ================================
  -- SCAMPOLI DI TESTO RIUTILIZZABILI
  -- ================================
  -- Alcune risposte richiedono l'uso di più messaggi per formare una frase
  -- completa, in genere a causa del verbo che si colloca a metà della frase.
  -- Questi attributi definiscono scampoli di testo riutilizzabili in simili
  -- messaggi composti (o anche in messaggi brevi).

  -- @NOTA: ALCUNI POSSIBILI SCAMPOLI DI TESTO DA USARE IN FUTURO:
  -- HAS impossibile  "Non è possibile".


  -- ==========================
  -- RISPOSTE STANDARD RIPETUTE
  -- ==========================
  -- Queste risposte vengono invocate in più verbi (o varianti di un medesimo
  -- verbo, o sia nelle clausole WHERE della sintassi che nel corpo del verbo),
  -- perciò è meglio implementarle come un singolo attributo riutilizzabile.

  -- VERBI: assaggia, mordi.
  HAS nessun_sapore
    "non senti nessun sapore particolare.". ---> ispirato a i6


  -- --------------------------------
  -- Istruzioni per l'uso dei comandi
  -- --------------------------------

  -- VERBI: chiedi_errore.
  HAS per_chiedere_qlco_USA
    "Per chiedere qualcosa a qualcuno usa CHIEDI A PERSONA OGGETTO.".

  -- VERBI: parla_con.
  HAS per_parlare_con_USA
    "Per parlare a qualcuno, usa DOMANDA A PERSONA DI ARGOMENTO, oppure
     RACCONTA A PERSONA DI ARGOMENTO.".

  -- VERBI: scrivi_errore1, scrivi_errore2, scrivi_errore3.
  HAS per_scrivere_USA
    "Per scrivere su qualcosa, usa SCRIVI ""TESTO"" SU (IN) OGGETTO.".

  -- VERBI: .
  HAS per_consultare_qlco_USA
    "Per consultare qualcosa usa CONSULTA FONTE RIGUARDO PERSONA/COSA.".



  -- -------------------
  -- NOTIFICHE PUNTEGGIO
  -- -------------------
  -- VERBI: notifica, notifica_off, notifica_on.
  
  HAS notifica_attivata
    "Notifica del punteggio attivata.
     $n(Per disattivarla usa il comando NOTIFICA)".

  HAS notifica_disattivata
    "Notifica del punteggio disattivata.
     $n(Per riattivarla usa il comando NOTIFICA)".
  

  -- @TODO: Altri verbi che contengono risposte ripetute:
  --        - siediti, siediti_su
  --        - usa, usa_con
  --        - chi_è, cosa_è, dove_è
  --        - chi_sono_io, cosa_sono_io
  --        - rispondi_No, rispondi_Sì
  --        - consult_error


  -- ===========================================================================
  -- AZIONI IMPLICITE
  -- ===========================================================================


  -- ----------------
  -- PRENDI IMPLICITO
  -- ----------------
--                                                                              TRANSLATE!
  -- | In ditransitive verbs, only the first parameter (the direct object) is
  -- | taken implicitly. For example, >push door with pole  won't work if the hero
  -- | is not carrying the pole.

  -- VERBI: dai_a, lega_a, mangia, prendi, | bite, 'empty', empty_in, empty_on, put_on, throw, throw_at, throw_to, throw_in

  -- ORIGINAL EN:  implicit_taking_message
  HAS riferisci_prendi_implicito "(prima prendi $+1)$n".


  -- ===========================================================================
  -- PROBLEMI RELATIVI AI PARAMETRI
  -- ===========================================================================


  -- =======================
  -- DESTINAZIONE NON VALIDA
  -- =======================
  -- VERBI: vai_a.

  -- ORIGINAL EN:  illegal_parameter_go
   HAS destinazione_invalida "Non puoi andare lì.".

   -- HAS destinazione_invalida "You can't go there.".               -- go_to

  -- =============================
  -- PARAMETRI INADATTI (SEMPLICI)
  -- =============================
  -- Messaggi per quando uno dei parametri è inadatto al verbo.
  -- Questi messaggi vengono utilizzati sia nei blocchi condizionali ELSE della
  -- definizione SYNTAX del verbo che nel blocco di CHECK del verbo stesso.
  -- A differenza della libreria originale inglese, qui non distinguiamo tra
  -- messaggi per SYNTAX e CHECK, ma ci concentriamo sul parametro che impedisce
  -- lo svolgimento dell'azione (qui riferiti come obj1 e obj2).

  --@NOTA: | S3RioUs JokER consiglia di semplificare con la frase:
  --       |    "Non è qualcosa che si possa <verbo inf>."
  --       | ...sia per il singolare che per il plurale, omettendo di menzionare
  --       | l'oggetto.  Tuttavia, menzionare l'oggetto può servire al  giocatore
  --       | ai fini della disambugazione nel caso di verbi che consentono l'uso
  --       | di oggetti multipli o di "TUTTO".

  -- ORIGINAL EN:  illegal_parameter_sg/pl  +  check_obj_suitable_sg/pl
  HAS ogg1_inadatto_sg  "$+1 non è qualcosa che puoi".
  HAS ogg1_inadatto_pl  "$+1 non sono qualcosa che puoi".

  
  -- @TODO: *** UNTRANSLATED MESSAGES: ***

  -- other illegal parameter messages:
  ------------------------------------

  HAS illegal_parameter_consult_sg "That's not something you can find information about.".  -- consult_about
  HAS illegal_parameter_consult_pl "Those are not something you can find
                information about.".

  HAS illegal_parameter_examine_sg "That's not something you can examine.".     -- examine
  HAS illegal_parameter_examine_pl "Those are not something you can examine.".


  HAS illegal_parameter_look_out_sg "That's not something you can look out of.".    -- look_out_of
  HAS illegal_parameter_look_out_pl "Those are not something you can look out of.".
  HAS illegal_parameter_look_through "You can't look through $+1.".       -- look_through

  HAS illegal_parameter_obj "You can only $v objects.".             -- give, put, put_in, put_on, put_against,
                                     -- + put_behind, put_near, put_under,
                                     -- + throw_at, throw_in, throw_to, tie_to,
                                     -- + use, use_with

  HAS illegal_parameter_string "Please state inside double quotes ("""") what you want to $v.". -- answer, say, say_to, write

  HAS illegal_parameter_there "It's not possible to look there.".         -- look_behind, look_in, look_under

  HAS illegal_parameter_what_sg "That's not something I know about.".       -- what_is, where_is
  HAS illegal_parameter_what_pl "Those are not something I know about.".      -- what_is, where_is
  HAS illegal_parameter_who_sg "That's not somebody I know about.".       -- who_is
  HAS illegal_parameter_who_pl "Those are not somebody I know about.".        -- who_is

  -- =============================================
  -- PARAMETRI INADATTI CON PREPOSIZIONI ARICOLATE
  -- =============================================
  -- Varianti dei messaggi precedenti, quando si tratta di parametri che richiedono
  -- preposizioni articolate (di|a|da|in|con|su).

  -- ----------------
  -- PREPOSIZIONE "A"
  -- ----------------
  -- VERBI: spara_a_errore.
  -- ORIGINAL EN: illegal_parameter_at
  HAS ogg1_inadatto_A_sg  "$+1 non è qualcosa a cui poter".
  HAS ogg1_inadatto_A_pl  "$+1 non sono qualcosa a cui poter".

  -- VERBI: spara_a.
  -- ORIGINAL EN: illegal_parameter_at
  HAS ogg2_inadatto_A_sg  "$+2 non è qualcosa a cui poter".
  HAS ogg2_inadatto_A_pl  "$+2 non sono qualcosa a cui poter".

  HAS illegal_parameter_at "You can't $v anything at $+2.".         -- fire_at, throw_at

  -- @TODO: *** UNTRANSLATED MESSAGES: ***
  HAS check_obj_suitable_at "You can't $v anything at $+2.".          -- fire_at, throw_at, throw_to

  -- -----------------
  -- PREPOSIZIONE "DA"
  -- -----------------
  -- ORIGINAL EN: (nessuno)
  HAS ogg1_inadatto_DA_sg  "$+1 non è qualcosa da cui poter".                   ---> guarda_fuori_da
  HAS ogg1_inadatto_DA_pl  "$+1 non sono qualcosa da cui poter".

  -- -----------------
  -- PREPOSIZIONE "IN"
  -- -----------------
  -- VERBI: salta_in.
  -- ORIGINAL EN: (nessuno)
  HAS ogg1_inadatto_IN_sg  "$+1 non è qualcosa in cui poter".
  HAS ogg1_inadatto_IN_pl  "$+1 non sono qualcosa in cui poter".

  -- VERBI: .
  -- ORIGINAL EN: (nessuno)
  HAS ogg2_inadatto_IN_sg  "$+2 non è qualcosa in cui poter".
  HAS ogg2_inadatto_IN_pl  "$+2 non sono qualcosa in cui poter".

  -- ------------------
  -- PREPOSIZIONE "CON"
  -- ------------------
  -- VERBI: gioca_con, parla_con.
  -- ORIGINAL EN: check_obj_suitable_with_sg/pl + illegal_parameter_with_sg/+pl
  HAS ogg1_inadatto_CON_sg  "$+1 non è qualcosa con cui poter".
  HAS ogg1_inadatto_CON_pl  "$+1 non sono qualcosa con cui poter".

  -- VERBI: brucia_con.
  -- ORIGINAL EN: illegal_parameter2_with_sg/pl  +  check_obj2_suitable_with_sg/pl
  HAS ogg2_inadatto_CON_sg  "$+2 non è qualcosa con cui poter".
  HAS ogg2_inadatto_CON_pl  "$+2 non sono qualcosa con cui poter".

  -- -----------------
  -- PREPOSIZIONE "SU"
  -- -----------------
  -- ORIGINAL EN: illegal_parameter_on_sg/pl
  HAS ogg1_inadatto_SU_sg  "$+1 non è qualcosa su cui poter".
  HAS ogg1_inadatto_SU_pl  "$+1 non sono qualcosa su cui poter".


  HAS ogg2_inadatto_SU_sg  "$+2 non è qualcosa su cui poter".
  HAS ogg2_inadatto_SU_pl  "$+2 non sono qualcosa su cui poter".


  -- =============================================
  -- PARAMETRI INADATTI CON PREPOSIZIONI IMPROPRIE
  -- =============================================
  -- Varianti dei messaggi precedenti, quando si tratta di parametri che richiedono
  -- preposizioni improprie.

  -- ---------------------
  -- PREPOSIZIONE "CONTRO"
  -- ---------------------
  -- VERBI: metti_contro.
  -- ORIGINAL EN: (nessuno)
  HAS ogg2_inadatto_CONTRO_sg  "$+2 non è qualcosa contro cui poter".
  HAS ogg2_inadatto_CONTRO_pl  "$+2 non sono qualcosa contro cui poter".

  -- ---------------------
  -- PREPOSIZIONE "DIETRO"
  -- ---------------------
  -- VERBI: metti_dietro.
  -- ORIGINAL EN: (nessuno)
  HAS ogg2_inadatto_DIETRO_sg  "$+2 non è qualcosa dietro cui poter".
  HAS ogg2_inadatto_DIETRO_pl  "$+2 non sono qualcosa dietro cui poter".

  -- --------------------
  -- PREPOSIZIONE "SOTTO"
  -- --------------------
  -- VERBI: metti_dietro.
  -- ORIGINAL EN: (nessuno)
  HAS ogg2_inadatto_SOTTO_sg  "$+2 non è qualcosa sotto cui poter".
  HAS ogg2_inadatto_SOTTO_pl  "$+2 non sono qualcosa sotto cui poter".

  
  -- -----------------------
  -- PREPOSIZIONE "VICINO A"
  -- -----------------------
  -- VERBI: metti_vicino.
  -- ORIGINAL EN: (nessuno)
  HAS ogg2_inadatto_VICINO_A_sg  "$+2 non è qualcosa vicino a cui poter".
  HAS ogg2_inadatto_VICINO_A_pl  "$+2 non sono qualcosa vicino a cui poter".

  
  -- ==============================
  -- PARAMETRI INADATTI CONTENITORI
  -- ==============================
  -- Messaggi per verbi riguardanti problemi con i parmetri che coinvolgono
  -- contenitori.

  -- VERBI: [liquidi: svuota, svuota_in, svuota_su].
  -- ORIGINAL EN: (nessuno)
  HAS svuotare_solo_contenitori  "Solo i contenitori possono essere svuotati.".

  
  -- ==================
  -- PARAMETRI MANCANTI
  -- ==================
  -- Messaggi per verbi che richiedono ulteriori parametri. Di solito li si
  -- trova nella variante base dei verbi che richiedono un ulteriore parametro
  -- per portare a termine l'azione, dove la variante base del verbo serve solo
  -- a intercettare il comando incompleto per informare il giocatore sulla
  -- sintassi corretta del verbo.

  HAS specificare_DOVE      "Devi specificare dove vorresti".
  HAS specificare_A_cosa    "Devi specificare a cosa vorresti".
  HAS specificare_DA_cosa   "Devi specificare da cosa vorresti".
  HAS specificare_IN_cosa   "Devi specificare in cosa vorresti".
  HAS specificare_CON_cosa  "Devi specificare con cosa vorresti".


  -- =======================
  -- PARAMETRI FUORI PORTATA
  -- =======================
  -- Messaggi che riferiscono l'impossibilità di portare a termine l'azione a
  -- causa di uno (o più) parametri fuori dalla portata dell'eroe.
  -- (attributi: "NOT raggiungibile" e "distante").

  -- ORIGINAL EN:  check_obj_reachable_sg/pl  +  check_obj2_reachable_sg/pl
  HAS ogg1_non_raggiungibile_sg  "$+1 è fuori dalla tua portata.".
  HAS ogg1_non_raggiungibile_pl  "$+1 sono fuori dalla tua portata.".
  HAS ogg2_non_raggiungibile_sg  "$+2 è fuori dalla tua portata.".
  HAS ogg2_non_raggiungibile_pl  "$+2 sono fuori dalla tua portata.".

  -- VERBI: chiedi.
  -- ORIGINAL EN: check_obj_reachable_ask.
  HAS ogg2_sg_non_raggiungibile_png1_sg
    "$+1 non può prendere $+2, è fuori dalla sua portata.".
  HAS ogg2_sg_non_raggiungibile_png1_pl
    "$+1 non possono prendere $+2, è fuori dalla sua portata.".
  HAS ogg2_pl_non_raggiungibile_png1_sg
    "$+1 non può prendere $+2, sono fuori dalla sua portata.".
  HAS ogg2_pl_non_raggiungibile_png1_pl
    "$+1 non possono prendere $+2, sono fuori dalla sua portata.".

  -- ORIGINAL EN:  check_obj_not_distant_sg/pl  +  check_obj2_not_distant_sg/pl
  HAS ogg1_distante_sg "$+1 è troppo distante.".
  HAS ogg1_distante_pl "$+1 sono troppo distanti.".
  HAS ogg2_distante_sg "$+2 è troppo distante.".
  HAS ogg2_distante_pl "$+2 sono troppo distanti.".

  -- ===========================================================================
  -- OGGETTI MANCANTI & NON OTTENIBILI
  -- ===========================================================================
  
  -- VERBI: (svariati, specie nei verbi con prendi implicito).
  -- ORIGINAL EN: check_obj_takeable
  HAS ogg1_non_posseduto  "Non possiedi $+1.".

  -- VERBI: riempi_con.
  -- ORIGINAL EN: check_obj2_takeable1
  HAS ogg2_non_posseduto  "Non possiedi $+2.".

  -- VERBI: chiedi.
  -- ORIGINAL EN: check_obj2_takeable2
  HAS ogg2_non_ottenibile  "Non puoi avere $+2.".


  -- ===========================================================================
  -- PROBLEMI RELATIVI AGLI ATTRIBUTI
  -- ===========================================================================

  -- ========================================
  -- PARAMETRI INADATTI A INTERAZIONI VERBALI
  -- ========================================
  -- Messaggi per verbi che implicano scambi verbali, quando il destinatario non
  -- è ha l'attributo 'CAN parlare'.
  
  -- VERBI: chiedi, domanda, racconta.
  -- ORIGINAL EN: illegal_parameter_talk_sg
  HAS ogg1_non_può_capirti_sg  "$+1 non è in grado di capirti.".
  HAS ogg1_non_può_capirti_pl  "$+1 non sono in grado di capirti.".


  -- VERBI: dì_a.
  -- ORIGINAL EN: illegal_parameter_talk_sg
  HAS ogg2_non_può_capirti_sg  "$+2 non è in grado di capirti.".
  HAS ogg2_non_può_capirti_pl  "$+2 non sono in grado di capirti.".


  -- ===================
  -- ATTRIBUTI DEL LUOGO
  -- ===================

  --@TODO: migliora nome attributo e messaggio
  -- VERBI: (svariati verbi)
  -- ORIGINAL EN:  check_current_loc_lit
  HAS imp_luogo_buio  "È troppo buio.".


  -- =========================
  -- DISPOSITIVI/FONTI DI LUCE
  -- =========================
  
  -- ----------------------
  -- Dispositivo/Luce Rotto
  -- ----------------------
  -- VERBI: accendi
  -- ORIGINAL EN:  check_obj_not_broken
  HAS non_succede_nulla "Fatto, ma non succede nulla.".


  -- ------------------------------
  -- Oggetto/Dipositivo Non È Rotto
  -- ------------------------------
  -- VERBI: aggiusta
  -- ORIGINAL EN:  check_obj_broken_sg/pl
  HAS ogg1_non_rotto_sg "$+1 non necessita di riparazioni.".
  HAS ogg1_non_rotto_pl "$+1 non necessitano di riparazioni.".
  
  
  -- =======================
  -- OGGETTI NON ESAMINABILI
  -- =======================
  HAS impossibile_guardare "Non è possibile guardare".


  -- ================
  -- OGGETTI SCENARIO
  -- ================
 
  --@ SCENERY CHECKS -> CAN'T MESSAGES...
  --#i7: "[The noun] non si [puoi] trasportare."
  --#i6: "Non @`e importante ai fini del gioco."

  -- VERBI: esamina, prendi, prendi_da.
  -- ORIGINAL EN: ogg1_scenario_sg/pl.
  HAS ogg1_scenario_sg "$+1 non è importante ai fini del gioco.".
  HAS ogg1_scenario_pl "$+1 non sono importanti ai fini del gioco.".

  -- VERBI: chiedi, prendi_da.
  -- ORIGINAL EN: check_obj2_not_scenery_sg/pl.
  HAS ogg2_scenario_sg "$+2 non è importante ai fini del gioco.".
  HAS ogg2_scenario_pl "$+2 non sono importanti ai fini del gioco.".
  
  -- ======================
  -- OGGETTI TROPPO PESANTI
  -- ======================

  -- VERBI: 'prendi', 'prendi_da' e 'solleva'.
  -- ORIGINAL EN: check_obj_weight_sg/pl.
  HAS ogg1_troppo_pesante_sg  "$+1 è troppo pesante".
  HAS ogg1_troppo_pesante_pl  "$+1 sono troppo pesanti".


  -- ==============================
  -- OGGETTI APERTI/CHIUSI/BLOCCATI
  -- ==============================

  -- ---------------------------------------
  -- Tentare di aprire un oggetto già aperto
  -- ---------------------------------------
  -- VERBI: apri, apri_con
  -- ORIGINAL EN:  check_obj_not_open_sg/pl
  HAS ogg_già_aperto_ms "$+1 è già aperto".
  HAS ogg_già_aperto_mp "$+1 sono già aperti.".
  HAS ogg_già_aperto_fs "$+1 è già aperta".
  HAS ogg_già_aperto_fp "$+1 sono già aperte.".

  -- -----------------------------------------
  -- Tentare di chiudere un oggetto già chiuso
  -- -----------------------------------------
  -- VERBI: chiudi, chiudi_con
  -- ORIGINAL EN:  check_obj_open1_sg/pl
  HAS ogg_già_chiuso_ms "$+1 è già chiuso".
  HAS ogg_già_chiuso_mp "$+1 sono già chiusi.".
  HAS ogg_già_chiuso_fs "$+1 è già chiusa".
  HAS ogg_già_chiuso_fp "$+1 sono già chiuse.".

  -- -------------------------------------------
  -- Tentare di bloccare un oggetto già bloccato
  -- -------------------------------------------
  -- VERBI: blocca, blocca_con
  -- ORIGINAL EN:  check_obj_not_locked_sg/pl
  HAS ogg_già_bloccato_ms "$+1 è già bloccato".
  HAS ogg_già_bloccato_mp "$+1 sono già bloccati.".
  HAS ogg_già_bloccato_fs "$+1 è già bloccata".
  HAS ogg_già_bloccato_fp "$+1 sono già bloccate.".

  -- ---------------------------------------------
  -- Tentare di sbloccare un oggetto già sbloccato
  -- ---------------------------------------------
  -- VERBI: sblocca, sblocca_con
  -- ORIGINAL EN:  check_obj_locked_sg/pl
  HAS ogg_già_sbloccato_ms "$+1 è già sbloccato".
  HAS ogg_già_sbloccato_mp "$+1 sono già sbloccati.".
  HAS ogg_già_sbloccato_fs "$+1 è già sbloccata".
  HAS ogg_già_sbloccato_fp "$+1 sono già sbloccate.".


  -- ---------------------------------------------
  -- Un oggetto chiuso impedisce l'azione richista
  -- ---------------------------------------------
  -- VERBI: empty (in/on), pour (in/on), look_in
  -- ORIGINAL EN:  check_obj_open2_sg/pl
  HAS imp_ogg1_chiuso_ms "Non puoi farlo perché $+1 è chiuso".
  HAS imp_ogg1_chiuso_mp "Non puoi farlo perché $+1 sono chiusi.".
  HAS imp_ogg1_chiuso_fs "Non puoi farlo perché $+1 è chiusa".
  HAS imp_ogg1_chiuso_fp "Non puoi farlo perché $+1 sono chiuse.".

  -- VERBI: svuota_in, versa_in, metti_in, lancia_in
  -- ORIGINAL EN:  check_obj2_open_sg/pl
  HAS imp_ogg2_chiuso_ms "Non puoi farlo perché $+2 è chiuso".
  HAS imp_ogg2_chiuso_mp "Non puoi farlo perché $+2 sono chiusi.".
  HAS imp_ogg2_chiuso_fs "Non puoi farlo perché $+2 è chiusa".
  HAS imp_ogg2_chiuso_fp "Non puoi farlo perché $+2 sono chiuse.".

  -- ====================================
  -- PARAMETRI E INVENTARIO DEL GIOCATORE
  -- ====================================
  
  -- -----------------------------------------------------------
  -- Il giocatore non possiede un oggetto richiesto per l'azione
  -- -----------------------------------------------------------
  -- VERBI: svuota_in, versa_in, metti_in, lancia_in
  -- ORIGINAL EN:  check_obj_in_hero  +  check_obj2_in_hero
  HAS non_possiedi_ogg1 "Non possiedi $+1.".              -- drop, fire, fire_at, put, show
  HAS non_possiedi_ogg2 "Non possiedi $+2.".             -- (numerous)

-- NOTA: | Potrei usare un solo attributo e mettere '$+1.' e '$+2.' nel codice
--       | del verbo!

  
  -- ===========================================
  -- AZIONI IMPEDITE DALLA POSTURA DEL GIOCATORE
  -- ===========================================
  -- Messaggi di risposta per azioni impossibilitate dal fatto che il giocatore
  -- è seduto o sdraiato.
  
  -- ---------------------
  -- IL GIOCATORE È SEDUTO
  -- ---------------------
  -- VERBI: balla, salta, salta_in, salta_su | swim.
  -- ORIGINAL EN:  check_hero_not_sitting1
  HAS impossibile_da_seduto "Non puoi farlo da seduto.".

 
  -- @TODO: *** UNTRANSLATED MESSAGES: ***
  HAS check_hero_not_sitting2 "It is difficult to $v anything while sitting down.". -- (with many transitive verbs)
  HAS check_hero_not_sitting3 "It is difficult to $v anywhere while sitting down.". -- (with many verbs of motion)
  HAS check_hero_not_sitting4 "You're sitting down already.".         -- sit, sit_on

  -- -----------------------
  -- IL GIOCATORE È SDRAIATO
  -- -----------------------
  -- VERBI: balla, salta, salta_in, salta_su | swim.
  -- ORIGINAL EN:  check_hero_not_lying_down1
  HAS impossibile_da_sdraiato "Non puoi farlo da sdraiato.".

  -- @TODO: *** UNTRANSLATED MESSAGES: ***
  HAS check_hero_not_lying_down2 "It is difficult to $v anything while lying down.".  -- (with many transitive verbs)
  HAS check_hero_not_lying_down3 "It is difficult to $v anywhere while lying down.".  -- (with many verbs of motion)
  HAS check_hero_not_lying_down4 "You're lying down already.".          -- lie_down, lie_in


  -- ====================
  -- AZIONI ETERO-DIRETTE
  -- ====================

  -- VERBI: spara_a, spara_a_errore.
  -- ORIGINAL EN: check_obj_not_hero2.
  HAS no_autolesionismo  "L'autolesionismo non è contemplato.".

  -- VERBI: uccidi, uccidi_con.
  -- ORIGINAL EN: check_obj_not_hero2.
  HAS no_suicidio  "Il suicidio non è un'opzione.".

  -- @TODO: *** UNTRANSLATED MESSAGES: ***

  -- d) checks guarding against actions directed at the hero him-/herself
  -----------------------------------------------------------------------

  HAS check_obj_not_hero5  "You don't need to be freed.".                       -- free
  HAS check_obj_not_hero7  "Turning your head, you notice nothing unusual behind yourself.".   -- look_behind
  HAS check_obj_not_hero8  "You notice nothing unusual under yourself.".        -- look_under
  HAS check_obj2_not_hero3 "You can't $v things to yourself.".                  -- give, tie_to

  -- =====================
  -- AZIONI DIRETTE AI PNG
  -- =====================

  -- VERBI: gratta, ispeziona, sfrega, spingi, spingi_con, tira, tocca, tocca_con
  -- ORIGINAL EN:  check_obj_inanimate1 + check_obj_inanimate2
  --               "$+1 wouldn't probably appreciate that."
  --               "You are not sure whether $+1 would appreciate that."
  HAS png1_non_apprezzerebbe  "Non credo che $+1 gradirebbe.".

  -- ================
  -- AZIONI PREVENUTE
  -- ================
  -- Risposte per azioni che non possono essere eseguite ...

  -- VERBI: [lib_classi.i: metti_contro, metti_dietro, metti_vicino, metti_sotto
  --                       guarda_dietro, guarda_attraverso, guarda_sotto].
  -- ORIGINAL EN: (nessuno, introdotto ex novo nella libreria italiana)
  HAS non_fattibile "Non è una cosa fattibile.".

  -- VERBI: attacca, attacca_con, calcia, rompi, spara, spara_a_errore.
  HAS la_violenza_non_è_la_risposta
    "La violenza non è la giusta risposta a questo.". ---> taken from i6

  -- VERBI: segui.
  -- ORIGINAL EN: check_act_near_hero.
  HAS impossibile_seguire_png1_sg  "Non hai idea di dove si trovi $+1 ora.
                                    Specifica la direzione in cui vorresti andare.".
  HAS impossibile_seguire_png1_pl  "Non hai idea di dove si trovi $+1 ora.
                                    Specifica la direzione in cui vorresti andare.".

  -- @TODO: *** UNTRANSLATED MESSAGES: ***
  
  HAS check_obj_in_act_sg "$+2 doesn't have $+1.".              -- take_from
  HAS check_obj_in_act_pl "$+2 don't have $+1.".
  HAS check_obj_not_in_act_sg "$+2 already has $+1.".             -- give
  HAS check_obj_not_in_act_pl "$+2 already have $+1.".


  -- ================
  -- AZIONI INSENSATE
  -- ================

  -- VERBI: (moltissimi)
  -- ORIGINAL EN: check_obj_not_hero1 + check_obj2_not_hero1
  HAS azione_insensata  "Questo non ha alcun senso.".

  -- ===========
  -- AZIONI VANE
  -- ===========
  -- Risposte per azioni che non conseguono nulla e vengono rifiutate con la
  -- scusante che l'eroe non desidera farlo...

  -- VERBI: balla.
  -- ORIGINAL EN: (nessuno, introdotto ex novo nella libreria italiana)
  HAS non_senti_bisogno_di "Al momento non senti il bisogno di".
  

  -- VERBI: bacia, gratta, metti_contro, metti_dietro, metti_sotto,
  --        metti_vicino, solleva, spingi_con, tira, tocca, pulisci, sfrega.
  -- ORIGINAL EN: (nessuno, introdotto ex novo nella libreria italiana)
  HAS azione_futile "Farlo non servirebbe a nulla.".
  -- @NOTA: i6 usa: "Non otterrai niente con questo."

  -- VERBI: bacia, gioca_con, sfrega.
  -- ORIGINAL EN: check_obj_not_hero6.
  HAS azione_irrelevante  "Hai cose più importanti a cui pensare.".

  
  -- ================
  -- AZIONI SUPERFLUE
  -- ================
  -- Risposte per azioni che sono superflue poiché tentano di conseguire un
  -- risultato che è già disponibile...

  -- -----------------------------------
  -- Il giocatore si trova già sul posto
  -- -----------------------------------
  -- VERBI: find, vai_a.
  -- ORIGINAL EN:  check_obj_not_hero4
  HAS sei_già_qui  "Ti trovi già qui!".

  -- --------------------------------
  -- L'oggetto si trova già sul posto
  -- --------------------------------
  -- VERBI: trova, follow, vai_a, dove_è.
  -- ORIGINAL EN:  check_obj_not_at_hero_sg/pl
  HAS ogg1_già_qui_sg  "$+1 è proprio qui.".
  HAS ogg1_già_qui_pl  "$+1 sono proprio qui.".

  -- --------------------------------
  -- Il Contenitore è già vuoto 
  -- --------------------------------
  -- VERBI: svuota + versa.
  -- ORIGINAL EN: (nessuno, introdotto ex novo nella libreria italiana)
  HAS ogg1_vuoto_sg  "ci provi, ma $+1 era vuot$$".
  HAS ogg1_vuoto_pl  "ci provi, ma $+1 erano vuot$$".


  -- ---------------------
  -- Oggetto già posseduto
  -- ---------------------
  -- VERBI: prendi, prendi_da
  -- ORIGINAL EN:  check_obj_not_in_hero2
  HAS ogg1_già_posseduto  "Possiedi già $+1.".

  -- VERBI: chiedi
  -- ORIGINAL EN:  check_obj2_not_in_hero3
  HAS ogg2_già_posseduto  "Possiedi già $+2.".
  

  -- -------------------
  -- Bersaglio posseduto
  -- -------------------
    
  -- @TODO: *** UNTRANSLATED MESSAGES: ***
  
  -- @NOTA: Questo messaggio è usato nei verbi per lanciare le cose 
  --       (lancia_a, lancia_contro, lancia_in) e viene usato quando la destinazione
  --       del lancio è tra i possedimenti del giocatore (quindi non ha senso eseguire
  --       un lancio dato).
  HAS check_obj2_not_in_hero1 "You are carrying $+2.". -- throw_at, throw_in, throw_to

  -- =================================
  -- MESSAGGI RIGUARDANTI IL VESTIARIO
  -- =================================
  -- VERBI: indossa.
  -- ORIGINAL EN:  check_obj_not_in_worn1
  HAS indossi_già  "Stai già indossando $+1.".

  -- VERBI: lascia.
  -- ORIGINAL EN:  check_obj_not_in_worn3
  HAS indumento_andrebbe_rimosso  "Prima dovresti toglierti $+1.".

  -- VERBI: togliti.
  -- ORIGINAL EN:  check_obj_in_worn
  HAS non_indossi  "Non stai indossando $+1.".


  -- DELETE WHEN DONE:

  -- @TODO: *** UNTRANSLATED MESSAGES: ***
  
  -- checking whether an object is worn or not:
  ---------------------------------------------
  HAS check_obj_not_in_worn2  "It doesn't make sense to $v something you're wearing.". -- attack, attack_with, kick, shoot, shoot_with


  -- ============================
  -- MESSAGGI RIGUARDANTI LE ARMI
  -- ============================
  -- VERBI: spara_errore, spara_a_errore.
  -- ORIGINAL EN:  check_count_weapon_in_hero
  HAS non_hai_armi_da_fuoco  "Non stai portando nessun'arma da fuoco con te.".

  -- VERBI: uccidi_con, attacca_con.
  -- ORIGINAL EN: (nessuno, introdotto ex novo nella libreria italiana)
  HAS ogg2_non_arma_adatta_per_sg  "$+2 non è un'arma adatta per".
  HAS ogg2_non_arma_adatta_per_pl  "$+2 non sono un'arma adatta per".

  -- VERBI: spara, spara_a.
  -- ORIGINAL EN: (nessuno, introdotto ex novo nella libreria italiana)
  HAS ogg1_non_arma_da_fuoco_sg  "$+1 non è un'arma da fuoco.".
  HAS ogg1_non_arma_da_fuoco_pl  "$+1 non sono un'arma da fuoco.".


  -- ==============================
  -- MESSAGGI RIGUARDANTI I LIQUIDI
  -- ==============================
  
  -- VERBI: bevi, prendi (..altri..).
  -- ORIGINAL EN: (nessuno)
  HAS impossibile_maneggiare_liq1  "Non puoi maneggiare $+1 a mani nude.".


  -- ============================================================================

  -- MESSAGGI DEI VERBI (ORIGINALI INGLESE)

  -- ============================================================================
  -- @NOTA: Quando tutti i messaggi saranno stati tradotti/implmentati in italiano
  --        gli originali inglesi qui di seguito verranno cancellati. Fino ad
  --        allora bisogna tenerli poiché sono richiesti dai verbi non ancora
  --        tradotti. Però mano mano che mi concentro su un blocco di messaggi
  --        simili li sposto nella sezione italiana, così posso seguire meglio
  --        il lavoro di traduzione.
  ------------------------------------------------------------------------------


  -- all illegal parameter messages, typically found in the ELSE parts of SYNTAX structures and
  -- the first two below being by far the most common.
  -- ==========================================================================================


  -- the general message for when a parameter is not suitable with the verb:
  --------------------------------------------------------------------------
  --# siccome in italiano serve l'infinito qui, questi messaggi non serviranno
  --  ma andranno suddivisi in diverse varianti, a seconda del verbo cui si
  --  riferisco; salvo eccezzioni che possano essere generalizzate.
  HAS illegal_parameter_sg "That's not something you can $v.".        -- (numerous)
  HAS illegal_parameter_pl "Those are not something you can $v.".


  -- variations of the above message when a preposition is required after the verb:
  ---------------------------------------------------------------------------------

  HAS illegal_parameter_about_sg "That's not something you can $v about.".    -- ask_about, tell_about, think_about
  HAS illegal_parameter_about_pl "Those are not something you can $v about.".
  HAS illegal_parameter_for_sg "That's not something you can $v for.".      -- ask_for
  HAS illegal_parameter_for_pl "Those are not something you can $v for.".
-- @TAKE_FROM (MESSAGE)
  HAS illegal_parameter2_from_sg "That's not something you can take things from.".  -- take_from
-- @TAKE_FROM (MESSAGE)
  HAS illegal_parameter2_from_pl "Those are not something you can take things from.".
  HAS illegal_parameter_in_sg "That's not something you can $v in.".      -- dive_in, jump_in, lie_in, swim_in
  HAS illegal_parameter_in_pl "Those are not something you can $v in.".
  HAS illegal_parameter_off_sg "That's not something you can $v off.".      -- get_off, switch_off, turn_off
  HAS illegal_parameter_off_pl "Those are not something you can $v off.".
  HAS illegal_parameter_to_sg "That's not something you can $v to.".      -- listen_to, talk_to
  HAS illegal_parameter_to_pl "Those are not something you can $v to.".
  HAS illegal_parameter2_to_sg "That's not something you can $v things to.".    -- give, show, tell, tie_to, throw_to
  HAS illegal_parameter2_to_pl "Those are not something you can $v things to.".

  

  -- verb check messages, found before DOES sections of verbs and used mainly in 'lib_verbi.i':
  -- ==========================================================================================


  -- a) attribute checks
  ----------------------


  -- the general check message for when an instance cannot be used with the verb :
  --------------------------------------------------------------------------------
  --# siccome in italiano serve l'infinito qui, questo messaggio è troncato e
  --  spetterà al codice che si occupa dei controlli sul verbo di farlo seguire
  --  dall'infinito del verbo in questione.

  HAS check_obj_suitable_sg "That's not something you can $v.".       -- (numerous)
  HAS check_obj_suitable_pl "Those are not something you can $v.".




  -- variations of the above message, needed for example when a preposition is required after the verb:
  -----------------------------------------------------------------------------------------------------

  HAS check_obj2_suitable_for_sg "That's not something you can $v for.".    -- ask_for
  HAS check_obj2_suitable_for_pl "Those are not something you can $v for.".
  HAS check_obj_suitable_off_sg "That's not something you can $v off.".     -- turn_off, switch_off
  HAS check_obj_suitable_off_pl "Those are not something you can $v off.".
  
  HAS check_obj_suitable_examine_sg "That's not something you can examine.".      -- examine
  HAS check_obj_suitable_examine_pl "Those are not something you can examine.".   -- examine

  HAS check_obj_suitable_look_out_sg "That's not something you can look out of.".   -- look_out_of
  HAS check_obj_suitable_look_out_pl "Those are not something you can look out of.".
  HAS check_obj_suitable_look_through "You can't look through $+1.".        -- look_through


  -- other attribute checks:
  --------------------------

  HAS check_obj_allowed_in_sg "$+1 doesn't belong in $+2.".             -- empty_in, pour_in, put_in, throw_in
  HAS check_obj_allowed_in_pl "$+1 don't belong in $+2.".


  HAS check_obj_movable "It's not possible to $v $+1.". -- lift, pull, push, push_with, shake, take, take_from


  HAS check_obj_suitable_there "It's not possible to $v there.".          -- look_behind, look_in, look_under
  HAS check_obj2_suitable_there "It's not possible to $v anything there.".      -- throw_in, tie_to



  HAS check_obj_writeable "Nothing can be written there.".            -- write


  -- b) location and containment checks for actors and objects
  ------------------------------------------------------------


  -- location and containment checks for the hero:
  ------------------------------------------------


  HAS check_obj_not_in_hero1 "It doesn't make sense to $v something you're holding.".   -- attack, attack_with, kick, lift, shoot, shoot_with


  -- checking whether an object is in a container or not:
  -------------------------------------------------------

  HAS check_obj_in_cont_sg "$+1 is not in $+2.".                -- take_from
  HAS check_obj_in_cont_pl "$+1 are not in $+2.".
  HAS check_obj_not_in_cont_sg "$+1 is in $+2 already.".            -- put_in, throw_in
  HAS check_obj_not_in_cont_pl "$+1 are in $+2 already.".
  HAS check_obj_not_in_cont2 "$+1 is already full of $+2.".           -- fill_with


  -- checking whether an object is on a surface or not:
  -----------------------------------------------------

  HAS check_obj_on_surface_sg "$+1 is not on $+2.".             -- take_from
  HAS check_obj_on_surface_pl "$+1 are not on $+2.".


  -- f) additional checks for classes:
  ------------------------------------

  HAS check_clothing_sex "On second thoughts you decide $+1 won't really suit you.".      -- clothing: wear
  HAS check_cont_not_supporter "You can't put $+1 inside $+2.".             -- supporter: put_in
  HAS check_device_on_sg "$+1 is already off.".                     -- device: turn_off, switch_off
  HAS check_device_on_pl "$+1 are already off.".
  HAS check_device_not_on_sg "$+1 is already on.".                  -- device: turn_on, switch_on
  HAS check_device_not_on_pl "$+1 are already on.".
  HAS check_door_matching_key "You can't use $+2 to $v $+1.".             -- door: lock_with, unlock_with
  HAS check_lightsource_lit_sg "But $+1 is not lit.".                 -- lightsource: extinguish, turn_off
  HAS check_lightsource_lit_pl "But $+1 are not lit.".
  HAS check_lightsource_not_lit_sg "$+1 is already lit.".               -- lightsource: light, turn_on
  HAS check_lightsource_not_lit_pl "$+1 are already lit.".
  HAS check_lightsource_switchable_sg "That's not something you can switch on and off." .   -- lightsource: switch
  HAS check_lightsource_switchable_pl "Those are not something you can switch on and off.".
  HAS check_liquid_vessel_not_cont "You can't carry $+1 around in your bare hands.".      -- liquid: take_from



END ADD TO blocco_definizioni.

-->todo(50000.1)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| == TODO
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Questa sezione contiene l'elenco delle cose da fare per ultimare l'adattamento
--| italiano del modulo delle classi.
--<

-->todo_checklist(51000.1)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| === Check-list generale
--~-----------------------------------------------------------------------------
--~=============================================================================
--| 
--| Lista della spesa per le varie cosucce da fare:
--<

-->todo_checklist(.665)
--| 
--| === Check-list per Doxter
--| 
--| Finisci di trasformare commenti in documentazione Doxter:
--<


-->custom_attributes(100)
--| ////
--| ============================================================================
--| Custom AsciiDoc Attributes for Doxter
--| ============================================================================
--| ////

--| // Traduzione italiana degli attributi predefiniti di Asciidoctor:
--| include::attributes-it.adoc[tag=attributes-it]

--| // Definisci sostituzione di {X} con il carattere Unicode 'heavy check mark'
--| // (U+2714), usato nelle tabelle dei verbi:
--| :X: &#x2714;
--<

---< Fine del File >---
