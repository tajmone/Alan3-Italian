--= Alan StdLib Italian: Messaggi Libreria
--| Tristano Ajmone <tajmone@gmail.com>
--~-----------------------------------------------------------------------------
--~ "lib_messaggi_libreria.i"
--| v0.22.3-Alpha, 2019-08-25: Alan 3.0beta6 build 2022
--|=============================================================================
--| Adattamento italiano degli attributi per la messaggistica dei verbi, estratti
--| dal modulo `lib_definitions.i` della
--| _ALAN Standard Library_ v2.1, (C) Anssi R�is�nen, Artistic License 2.1.
--| Ad opera di Tristano Ajmone,  (C) 2018, Artistic License 2.1.
--|=============================================================================
--|
--| [WARNING]
--| ========================================
--| Documentazione in fase di preparazione...
--| ========================================


-->libmsg_intro(100.1)
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
--| Questo modulo � il cuore della libreria per quanto concerne il testo
--| prodotto da essa.
--<<

-->libmsg_organizzazione(200.1)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Organizzazione dei messaggi
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--|
--| Per quanto possibile, si � cercato di raggruppare per tipologia i messaggi
--| affini, di modo da semplificare la consultazione.

--| [WARNING]
--| ============================================================================
--| L'organizzazione dei messaggi per categorie affini � tutt'altro che ottimale.
--| Man mano che saranno tradotti i restanti messaggi, diverr� pi� chiaro come
--| ragrupparli.
--| ============================================================================
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
--| maiuscole e minuscole negli identificativi degli attributi di messaggi �
--| rilevante ai fini delle presenti convenzioni poich� il maiuscolo viene
--| impiegato in contesti specifici.
--| ========================================================================
--|

--| Si � cercato di creare identificativi in grado di veicolare il senso del
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
--|    parametro che � un attore. Questo tipo di messaggio � adatto ad essere
--|    utilizzato solo con attori.
--|    Es. `png1_non_gradirebbe_sg` e `png1_non_gradirebbe_pl`.

--| * `_sg` e `_pl` rappresentano varianti di un medesimo messaggio, il primo
--|   da utilizzarsi con un referente singolare, il secondo con uno plurale.
--|   Es. `ogg1_inadatto_sg` e `ogg1_inadatto_pl`.

--| * `_USA` � impiegato nei messaggi volti a indirizzare il giocatore all'uso
--|   corretto di un comando. Solitamente associato a verbi creati appositamente
--|   per intercettare comandi incompleti. Es. `per_scrivere_USA`.
--<


-->libmsg_intro
--| I messaggi sono definiti tramite attributi stringa sulla classe
--| `blocco_definizioni` (della quale � presente in ogni avventura l'istanza
--| `mia_AT`):

ADD TO EVERY blocco_definizioni

--| Modificando le stringhe degli attributi qui definiti, � possibile alterare
--| la forma ed i contenuti della maggior parte delle risposte predefinite dei
--| verbi della libreria.
--<


-->msg_hero(1000.1)
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == L'eroe
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--|
--| La libreria non definisce l'istanza dell'eroe, lasciando quindi all'autore
--| la libert� di definirlo come meglio crede. Quantunque, la libreria definisce
--| alcuni messaggi riguardanti l'eroe.

--| Due di essi sono i messaggi impiegati nello `HEADER` dell'entit� `abbigliamento`
--| (definita in `lib_classi.i`):

  HAS header_abbigliamento       "stai indossando".
  HAS header_abbigliamento_else  "non stai indossando niente.".

--| [WARNING]
--| ============================================================================
--| Gli altri messaggi riguardanti l'erore sono attualmente sparpagliati in
--| questo modulo, in attesa di essere riordinati.
--| ============================================================================


--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Postura Eroe
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--|
--| Azioni impedite dalla postura del giocatore.
--|
--| L'eroe � seduto:

  -- VERBI: balla, nuota, salta, salta_in, salta_su.
  -- ORIGINAL EN:  check_hero_not_sitting1/2/3
  HAS impossibile_da_seduto "Non puoi farlo da seduto.".


--| L'eroe � sdraiato:

  -- VERBI: balla, salta, salta_in, salta_su | swim.
  -- ORIGINAL EN:  check_hero_not_lying_down1/2/3
  HAS impossibile_da_sdraiato "Non puoi farlo da sdraiato.".

--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Azioni su se stessi
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================

  -- VERBI: spara_a, spara_a_errore.
  -- ORIGINAL EN: check_obj_not_hero2.
  HAS no_autolesionismo  "L'autolesionismo non � contemplato.".

  -- VERBI: uccidi, uccidi_con.
  -- ORIGINAL EN: check_obj_not_hero2.
  HAS no_suicidio  "Il suicidio non � un'opzione.".

--<


-->=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Luoghi Bui
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--|
--| Questo messaggio viene mostrato quando il giocatore tenta di usare in un
--| luogo buio il comando GUARDA, o altre azioni che richiedono illuminazione:

  -- USATO IN: DESCRIPTION classe `luogo_buio`. 
  -- ORIGINAL EN: dark_loc_desc.
  HAS desc_luogo_buio  "� buio e non riesci a vedere nulla".

--| Questo messaggio viene mostrato quando l'illuminazione viene a mancare ed il
--| luogo diventa buio:

  -- EVENTI: luci_spente. 
  -- ORIGINAL EN: light_goes_off.
  HAS luci_spente  "� buio pesto!".

--<

-->=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Azioni bloccate
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--|
--| Questo � il messaggio mostrato quando il giocatore tenta di usare un verbo
--| che � stato disabilitato tramite `CAN NOT <verbp>`  manualmente o tramite
--| l'attributo `mia_AT:restricted_level`.

  HAS azione_bloccata  "Non puoi farlo.".

--<

    -- @TODO: Riorganizza o elimina:
    -- ================================
    -- SCAMPOLI DI TESTO RIUTILIZZABILI
    -- ================================
    -- Alcune risposte richiedono l'uso di pi� messaggi per formare una frase
    -- completa, in genere a causa del verbo che si colloca a met� della frase.
    -- Questi attributi definiscono scampoli di testo riutilizzabili in simili
    -- messaggi composti (o anche in messaggi brevi).

    -- @NOTA: ALCUNI POSSIBILI SCAMPOLI DI TESTO DA USARE IN FUTURO:
    -- HAS impossibile  "Non � possibile".

-->=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Messaggi Ricorrenti
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--|
--| Queste risposte vengono invocate in pi� verbi (o varianti di un medesimo
--| verbo, o sia nelle clausole `WHERE` della sintassi che nel corpo del verbo),
--| perci� sono implementate come un singolo attributo riutilizzabile.
--<


-->============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Risposte Standard
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--|
--| Risposte alla vaniglia prodotte da vari verbi.

  -- VERBI: assaggia, mordi.
  HAS nessun_sapore "non senti nessun sapore particolare.".

  HAS descrizione_standard_ogg1 "Esamini $+1, ma non noti niente di speciale.".
--<

-- @TODO: Altri verbi che contengono risposte ripetute:
--        - siediti, siediti_su
--        - usa, usa_con
--        - chi_�, cosa_�, dove_�
--        - chi_sono_io, cosa_sono_io
--        - rispondi_No, rispondi_S�
--        - consult_error



-->============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Istruzioni per l'uso dei comandi
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================

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
--<

-->=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Notifiche punteggio
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================

  -- VERBI: notifica, notifica_off, notifica_on.

  HAS notifica_attivata
    "Notifica del punteggio attivata.
     $n(Per disattivarla usa il comando NOTIFICA)".

  HAS notifica_disattivata
    "Notifica del punteggio disattivata.
     $n(Per riattivarla usa il comando NOTIFICA)".
--<

-->=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Azioni implicite
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--|
--| Alcuni verbi della libreria eseguono azioni implicite al fine di rendere
--| possibile il comando del giocatore (p.es. prendere un oggetto non poseduto
--| per eseguire comandi come "metti <ogg> in <contenitore>").

--| === Prendere
--|
--| Nei verbi che ammettono pi� parametri, solo il complemento oggetto verr�
--| preso implicitamente. Per esempio, "`spingi la porta con il palo`" non verr�
--| eseguito se l'eroe non possiede il palo.

  -- VERBI: dai_a, lega_a, mangia, prendi, | bite, 'empty', empty_in, empty_on, put_on, throw, throw_at, throw_to, throw_in

  -- ORIGINAL EN:  implicit_taking_message
  HAS riferisci_prendi_implicito "(prima prendi $+1)$n".

--<


-->=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Parametri inadatti
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--|
--| Messaggi per quando uno dei parametri � inadatto al verbo. Questi messaggi
--| vengono utilizzati sia nei blocchi condizionali `ELSE` della `SYNTAX` dei
--| verbi che nei `CHECK` del verbo stesso.
--|
--| A differenza della libreria originale inglese, qui non distinguiamo tra
--| messaggi per `SYNTAX` e `CHECK`, ci focalizziamo invece sul parametro che
--| impedisce l'azione (qui riferito come `ogg1`, `ogg2`, ecc.).
--<

-->============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Parametri inadatti semplici
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================

  -- ORIGINAL EN:  illegal_parameter_sg/pl  +  check_obj_suitable_sg/pl
  HAS ogg1_inadatto_sg  "$+1 non � qualcosa che puoi".
  HAS ogg1_inadatto_pl  "$+1 non sono qualcosa che puoi".

  -- ORIGINAL EN: (nessuno)
  HAS ogg2_inadatto_sg  "$+2 non � qualcosa che puoi".
  HAS ogg2_inadatto_pl  "$+2 non sono qualcosa che puoi".
--<

  --@NOTA: | S3RioUs JokER consiglia di semplificare con la frase:
  --       |    "Non � qualcosa che si possa <verbo inf>."
  --       | ...sia per il singolare che per il plurale, omettendo di menzionare
  --       | l'oggetto.  Tuttavia, menzionare l'oggetto pu� servire al  giocatore
  --       | ai fini della disambugazione nel caso di verbi che consentono l'uso
  --       | di oggetti multipli o di "TUTTO".
--<

-->============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Inadatti con preposizioni
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--<

-->=============================================================================
--~-----------------------------------------------------------------------------
--| ==== Preposizioni articolate
--~-----------------------------------------------------------------------------
--~=============================================================================
--|
--| Varianti dei messaggi precedenti, quando si tratta di parametri che
--| richiedono preposizioni articolate (di|a|da|in|con|su).


--~=============================================================================
--| ===== Preposizione "`DI`"
--~=============================================================================

  -- VERBI: spara_a.
  -- ORIGINAL EN: illegal_parameter_about_sg/pl
  HAS ogg2_inadatto_DI_sg  "$+2 non � qualcosa di cui poter".
  HAS ogg2_inadatto_DI_pl  "$+2 non sono qualcosa di cui poter".

--~=============================================================================
--| ===== Preposizione "`A`"
--~=============================================================================

  -- VERBI: spara_a_errore.
  -- ORIGINAL EN: illegal_parameter_at
  HAS ogg1_inadatto_A_sg  "$+1 non � qualcosa a cui poter".
  HAS ogg1_inadatto_A_pl  "$+1 non sono qualcosa a cui poter".

  -- VERBI: spara_a.
  -- ORIGINAL EN: illegal_parameter_at
  HAS ogg2_inadatto_A_sg  "$+2 non � qualcosa a cui poter".
  HAS ogg2_inadatto_A_pl  "$+2 non sono qualcosa a cui poter".

--~=============================================================================
--| ===== Preposizione "`DA`"
--~=============================================================================

  -- VERBI: guarda_fuori_da.
  -- ORIGINAL EN: (nessuno)
  HAS ogg1_inadatto_DA_sg  "$+1 non � qualcosa da cui poter".
  HAS ogg1_inadatto_DA_pl  "$+1 non sono qualcosa da cui poter".

  -- VERBI: prendi_da.
  -- ORIGINAL EN: (nessuno)
  HAS ogg2_inadatto_DA_sg  "$+2 non � qualcosa da cui poter".
  HAS ogg2_inadatto_DA_pl  "$+2 non sono qualcosa da cui poter".

--~=============================================================================
--| ===== Preposizione "`IN`"
--~=============================================================================

  -- VERBI: salta_in.
  -- ORIGINAL EN: (nessuno)
  HAS ogg1_inadatto_IN_sg  "$+1 non � qualcosa in cui poter".
  HAS ogg1_inadatto_IN_pl  "$+1 non sono qualcosa in cui poter".

  -- VERBI: .
  -- ORIGINAL EN: (nessuno)
  HAS ogg2_inadatto_IN_sg  "$+2 non � qualcosa in cui poter".
  HAS ogg2_inadatto_IN_pl  "$+2 non sono qualcosa in cui poter".


--~=============================================================================
--| ===== Preposizione "`CON`"
--~=============================================================================

  -- VERBI: gioca_con, parla_con.
  -- ORIGINAL EN: check_obj_suitable_with_sg/pl + illegal_parameter_with_sg/+pl
  HAS ogg1_inadatto_CON_sg  "$+1 non � qualcosa con cui poter".
  HAS ogg1_inadatto_CON_pl  "$+1 non sono qualcosa con cui poter".

  -- VERBI: brucia_con.
  -- ORIGINAL EN: illegal_parameter2_with_sg/pl  +  check_obj2_suitable_with_sg/pl
  HAS ogg2_inadatto_CON_sg  "$+2 non � qualcosa con cui poter".
  HAS ogg2_inadatto_CON_pl  "$+2 non sono qualcosa con cui poter".

--~=============================================================================
--| ===== Preposizione "`SU`"
--~=============================================================================

  -- ORIGINAL EN: illegal_parameter_on_sg/pl
  HAS ogg1_inadatto_SU_sg  "$+1 non � qualcosa su cui poter".
  HAS ogg1_inadatto_SU_pl  "$+1 non sono qualcosa su cui poter".


  HAS ogg2_inadatto_SU_sg  "$+2 non � qualcosa su cui poter".
  HAS ogg2_inadatto_SU_pl  "$+2 non sono qualcosa su cui poter".
--<


-->=============================================================================
--~-----------------------------------------------------------------------------
--| ==== Preposizioni improprie
--~-----------------------------------------------------------------------------
--~=============================================================================
--|
--| Varianti dei messaggi precedenti, quando si tratta di parametri che richiedono
--| preposizioni improprie.


--~=============================================================================
--| ===== Preposizione "`ATTRAVERSO`"
--~=============================================================================

--| Nessun attributo presente per questa preposizione.
--| Nelle sintassi e nei verbi si � preferito usare: +
--| `SAY mia_AT:impossibile_guardare. "attraverso $+1."`

--~ ** SE DOVESSI IMPLEMENTARLO: **
--~ ORIGINAL EN: illegal_parameter_look_through, check_obj_suitable_look_through
--~ HAS ogg1_inadatto_ATTRAVERSO_sg  "$+1 non � qualcosa attraverso cui poter".
--~ HAS ogg1_inadatto_ATTRAVERSO_pl  "$+1 non sono qualcosa attraverso cui poter".

--~=============================================================================
--| ===== Preposizione "`CONTRO`"
--~=============================================================================

  -- VERBI: metti_contro.
  -- ORIGINAL EN: (nessuno)
  HAS ogg2_inadatto_CONTRO_sg  "$+2 non � qualcosa contro cui poter".
  HAS ogg2_inadatto_CONTRO_pl  "$+2 non sono qualcosa contro cui poter".

--~=============================================================================
--| ===== Preposizione "`DIETRO`"
--~=============================================================================

  -- VERBI: metti_dietro.
  -- ORIGINAL EN: (nessuno)
  HAS ogg2_inadatto_DIETRO_sg  "$+2 non � qualcosa dietro cui poter".
  HAS ogg2_inadatto_DIETRO_pl  "$+2 non sono qualcosa dietro cui poter".

--~=============================================================================
--| ===== Preposizione "`FUORI DA`"
--~=============================================================================

--~=============================================================================
--| ===== Preposizione "`SOTTO`"
--~=============================================================================

  -- VERBI: metti_dietro.
  -- ORIGINAL EN: (nessuno)
  HAS ogg2_inadatto_SOTTO_sg  "$+2 non � qualcosa sotto cui poter".
  HAS ogg2_inadatto_SOTTO_pl  "$+2 non sono qualcosa sotto cui poter".

--~=============================================================================
--| ===== Preposizione "`VICINO A`"
--~=============================================================================

  -- VERBI: metti_vicino.
  -- ORIGINAL EN: (nessuno)
  HAS ogg2_inadatto_VICINO_A_sg  "$+2 non � qualcosa vicino a cui poter".
  HAS ogg2_inadatto_VICINO_A_pl  "$+2 non sono qualcosa vicino a cui poter".

--<


-->============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Indatatti azioni specifiche
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--|

  -- VERBI: blocca_con.
  -- ORIGINAL EN: check_door_matching_key
  HAS chiave2_non_blocca_ogg1  "Non � possibile bloccare $+1 con $+2.".


  -- VERBI: sblocca_con.
  -- ORIGINAL EN: check_door_matching_key
  HAS chiave2_non_sblocca_ogg1  "Non � possibile sbloccare $+1 con $+2.".

--<

-->=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Parametri mancanti
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--|
--| Messaggi per verbi che richiedono ulteriori parametri. Di solito li si
--| trova nella variante base dei verbi che richiedono un ulteriore parametro
--| per portare a termine l'azione, dove la variante base del verbo serve solo
--| a intercettare il comando incompleto per informare il giocatore sulla
--| sintassi corretta del verbo.

  HAS specificare_DOVE      "Devi specificare dove vorresti".
  HAS specificare_A_cosa    "Devi specificare a cosa vorresti".
  HAS specificare_DA_cosa   "Devi specificare da cosa vorresti".
  HAS specificare_IN_cosa   "Devi specificare in cosa vorresti".
  HAS specificare_CON_cosa  "Devi specificare con cosa vorresti".
--<

-->=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Problemi con i parametri
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--<

-->============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Parametri sconosciuti
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================

  -- VERBI: cosa_�, dove_�.
  -- ORIGINAL EN:  illegal_parameter_what_sg/pl, illegal_parameter_who_sg/pl
  HAS ogg1_sconosciuto "Non conosco $+1.".

--<

-->============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Destinazione non valida
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================

  -- VERBI: vai_a.
  -- ORIGINAL EN:  illegal_parameter_go
  HAS destinazione_invalida "Non puoi andare l�.".
--<


-->============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Parametri stringa
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================

  -- VERBI: d�, d�_a, rispondi, scrivi.
  -- ORIGINAL EN: illegal_parameter_string.
  HAS ogg_stringa_richiesto
    "Usa le virgolette ("""") per delimitare l'oggetto della tua azione.".
--<



-->============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Parametri inadatti contenitori
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--|
--| Messaggi per verbi riguardanti problemi con i parmetri che coinvolgono
--| contenitori.

  -- VERBI: [liquidi: svuota, svuota_in, svuota_su].
  -- ORIGINAL EN: (nessuno)
  HAS svuotare_solo_contenitori  "Solo i contenitori possono essere svuotati.".

  -- VERBI: lancia_in, metti_in, svuota_in, versa_in.
  -- ORIGINAL EN: check_obj_allowed_in_sg/pl
  HAS ogg1_non_pu�_stare_sg  "$+1 non pu� stare".
  HAS ogg1_non_pu�_stare_pl  "$+1 non possono stare".

--<


-->============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Parametri fuori portata
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--|
--| Messaggi che riferiscono l'impossibilit� di portare a termine l'azione a
--| causa di uno (o pi�) parametri fuori dalla portata dell'eroe.
--| (attributi: `NOT raggiungibile` e `distante`).

  -- ORIGINAL EN:  check_obj_reachable_sg/pl  +  check_obj2_reachable_sg/pl
  HAS ogg1_non_raggiungibile_sg  "$+1 � fuori dalla tua portata.".
  HAS ogg1_non_raggiungibile_pl  "$+1 sono fuori dalla tua portata.".
  HAS ogg2_non_raggiungibile_sg  "$+2 � fuori dalla tua portata.".
  HAS ogg2_non_raggiungibile_pl  "$+2 sono fuori dalla tua portata.".

  -- VERBI: chiedi.
  -- ORIGINAL EN: check_obj_reachable_ask.
  HAS ogg2_sg_non_raggiungibile_png1_sg
    "$+1 non pu� prendere $+2, � fuori dalla sua portata.".
  HAS ogg2_sg_non_raggiungibile_png1_pl
    "$+1 non possono prendere $+2, � fuori dalla sua portata.".
  HAS ogg2_pl_non_raggiungibile_png1_sg
    "$+1 non pu� prendere $+2, sono fuori dalla sua portata.".
  HAS ogg2_pl_non_raggiungibile_png1_pl
    "$+1 non possono prendere $+2, sono fuori dalla sua portata.".

  -- ORIGINAL EN:  check_obj_not_distant_sg/pl  +  check_obj2_not_distant_sg/pl
  HAS ogg1_distante_sg "$+1 � troppo distante.".
  HAS ogg1_distante_pl "$+1 sono troppo distanti.".
  HAS ogg2_distante_sg "$+2 � troppo distante.".
  HAS ogg2_distante_pl "$+2 sono troppo distanti.".
--<

-->============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Oggetti mancanti & non ottenibili
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================

  -- VERBI: (svariati, specie nei verbi con prendi implicito).
  -- ORIGINAL EN: check_obj_takeable
  HAS ogg1_non_posseduto  "Non possiedi $+1.".

  -- VERBI: riempi_con.
  -- ORIGINAL EN: check_obj2_takeable1
  HAS ogg2_non_posseduto  "Non possiedi $+2.".

  -- VERBI: chiedi.
  -- ORIGINAL EN: check_obj2_takeable2
  HAS ogg2_non_ottenibile  "Non puoi avere $+2.".
--<

-->============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Problemi relativi agli attributi
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--|
--<


-->=============================================================================
--~-----------------------------------------------------------------------------
--| ==== Parametri inadatti a interazioni verbali
--~-----------------------------------------------------------------------------
--~=============================================================================
--|
--| Messaggi per verbi che implicano scambi verbali, quando il destinatario non
--| � ha l'attributo `CAN parlare`.

  -- VERBI: chiedi, domanda, racconta.
  -- ORIGINAL EN: illegal_parameter_talk_sg
  HAS ogg1_non_pu�_capirti_sg  "$+1 non � in grado di capirti.".
  HAS ogg1_non_pu�_capirti_pl  "$+1 non sono in grado di capirti.".


  -- VERBI: d�_a.
  -- ORIGINAL EN: illegal_parameter_talk_sg
  HAS ogg2_non_pu�_capirti_sg  "$+2 non � in grado di capirti.".
  HAS ogg2_non_pu�_capirti_pl  "$+2 non sono in grado di capirti.".
--<


-->=============================================================================
--~-----------------------------------------------------------------------------
--| ==== Attributi del luogo
--~-----------------------------------------------------------------------------
--~=============================================================================

  --@TODO: migliora nome attributo e messaggio
  -- VERBI: (svariati verbi)
  -- ORIGINAL EN:  check_current_loc_lit
  HAS imp_luogo_buio  "� troppo buio.".
--<


-->=============================================================================
--~-----------------------------------------------------------------------------
--| ==== Dispositivi/fonti di luce
--~-----------------------------------------------------------------------------
--~=============================================================================

  -- ----------------------
  -- Dispositivo/Luce Rotto
  -- ----------------------
  -- VERBI: accendi
  -- ORIGINAL EN:  check_obj_not_broken
  HAS non_succede_nulla "Fatto, ma non succede nulla.".


  -- ------------------------------
  -- Oggetto/Dipositivo Non � Rotto
  -- ------------------------------
  -- VERBI: aggiusta
  -- ORIGINAL EN:  check_obj_broken_sg/pl
  HAS ogg1_non_rotto_sg "$+1 non necessita di riparazioni.".
  HAS ogg1_non_rotto_pl "$+1 non necessitano di riparazioni.".
--<


-->=============================================================================
--~-----------------------------------------------------------------------------
--| ==== Oggetti non esaminabili
--~-----------------------------------------------------------------------------
--~=============================================================================

  HAS impossibile_guardare "Non � possibile guardare".
--<

-->=============================================================================
--~-----------------------------------------------------------------------------
--| ==== Oggetti non spostabili
--~-----------------------------------------------------------------------------
--~=============================================================================

  -- VERBI: agita, prendi, prendi_da, solleva, spingi, spingi_con, tira
  -- ORIGINAL EN:  check_obj_movable
  HAS ogg1_non_spostabile_ms "$+1 � fissato al suo posto.".
  HAS ogg1_non_spostabile_mp "$+1 sono fissati al loro posto.".
  HAS ogg1_non_spostabile_fs "$+1 � fissata al suo posto.".
  HAS ogg1_non_spostabile_fp "$+1 sono fissate al loro posto.".
--<

-->=============================================================================
--~-----------------------------------------------------------------------------
--| ==== Oggetti scenario
--~-----------------------------------------------------------------------------
--~=============================================================================

  -- VERBI: esamina, prendi, prendi_da.
  -- ORIGINAL EN: ogg1_scenario_sg/pl.
  HAS ogg1_scenario_sg "$+1 non � importante ai fini del gioco.".
  HAS ogg1_scenario_pl "$+1 non sono importanti ai fini del gioco.".

  -- VERBI: chiedi, prendi_da.
  -- ORIGINAL EN: check_obj2_not_scenery_sg/pl.
  HAS ogg2_scenario_sg "$+2 non � importante ai fini del gioco.".
  HAS ogg2_scenario_pl "$+2 non sono importanti ai fini del gioco.".
--<


-->=============================================================================
--~-----------------------------------------------------------------------------
--| ==== Oggetti troppo pesanti
--~-----------------------------------------------------------------------------
--~=============================================================================

  -- VERBI: 'prendi', 'prendi_da' e 'solleva'.
  -- ORIGINAL EN: check_obj_weight_sg/pl.
  HAS ogg1_troppo_pesante_sg  "$+1 � troppo pesante".
  HAS ogg1_troppo_pesante_pl  "$+1 sono troppo pesanti".
--<

-->=============================================================================
--~-----------------------------------------------------------------------------
--| ==== Oggetto chiuso
--~-----------------------------------------------------------------------------
--~=============================================================================
--| Un oggetto chiuso impedisce l'azione richista

  -- VERBI: empty (in/on), pour (in/on), look_in
  -- ORIGINAL EN:  check_obj_open2_sg/pl
  HAS imp_ogg1_chiuso_ms "Non puoi farlo perch� $+1 � chiuso.".
  HAS imp_ogg1_chiuso_mp "Non puoi farlo perch� $+1 sono chiusi.".
  HAS imp_ogg1_chiuso_fs "Non puoi farlo perch� $+1 � chiusa.".
  HAS imp_ogg1_chiuso_fp "Non puoi farlo perch� $+1 sono chiuse.".

  -- VERBI: svuota_in, versa_in, metti_in, lancia_in
  -- ORIGINAL EN:  check_obj2_open_sg/pl
  HAS imp_ogg2_chiuso_ms "Non puoi farlo perch� $+2 � chiuso.".
  HAS imp_ogg2_chiuso_mp "Non puoi farlo perch� $+2 sono chiusi.".
  HAS imp_ogg2_chiuso_fs "Non puoi farlo perch� $+2 � chiusa.".
  HAS imp_ogg2_chiuso_fp "Non puoi farlo perch� $+2 sono chiuse.".
--<



-->=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Azioni prevenute
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--|
--| Risposte per azioni che non possono essere eseguite.


  -- VERBI: [lib_classi.i: metti_contro, metti_dietro, metti_vicino, metti_sotto
  --                       guarda_dietro, guarda_attraverso, guarda_sotto].
  -- ORIGINAL EN: (nessuno, introdotto ex novo nella libreria italiana)
  HAS non_fattibile "Non � una cosa fattibile.".

  -- VERBI: attacca, attacca_con, calcia, rompi, spara, spara_a_errore.
  HAS la_violenza_non_�_la_risposta
    "La violenza non � la giusta risposta a questo.". ---> taken from i6

--<

-->============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Azioni coinvolgenti PNG
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================

  -- VERBI: segui.
  -- ORIGINAL EN: check_act_near_hero.
  HAS impossibile_seguire_png1_sg  "Non hai idea di dove si trovi $+1 ora.
                                    Specifica la direzione in cui vorresti andare.".
  HAS impossibile_seguire_png1_pl  "Non hai idea di dove si trovino $+1 ora.
                                    Specifica la direzione in cui vorresti andare.".

  -- VERBI: gratta, ispeziona, sfrega, spingi, spingi_con, tira, tocca, tocca_con
  -- ORIGINAL EN:  check_obj_inanimate1 + check_obj_inanimate2
  HAS png1_non_gradirebbe_sg  "Non credo che $+1 gradirebbe.".
  HAS png1_non_gradirebbe_pl  "Non credo che $+1 gradirebbero.".

  -- VERBI: lancia_contro
  HAS png2_non_gradirebbe_sg  "Non credo che $+2 gradirebbe.".
  HAS png2_non_gradirebbe_pl  "Non credo che $+2 gradirebbero.".
--<

-->=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Azioni insensate
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================

  -- VERBI: (moltissimi)
  -- ORIGINAL EN: check_obj_not_hero1 + check_obj2_not_hero1
  HAS azione_insensata  "Questo non ha alcun senso.".

--| Oggetto '`bersaglio`' posseduto:


  HAS azione_insensata_ogg1_portato    "Che senso ha? Stai portando $+1.".
  HAS azione_insensata_ogg1_indossato  "Che senso ha? Stai indossando $+1.".

  HAS azione_insensata_ogg2_portato    "Che senso ha? Stai portando $+2.".
  HAS azione_insensata_ogg2_indossato  "Che senso ha? Stai indossando $+2.".

--| [NOTE]
--| ========================================================================
--| I messaggi qui sopra sono usati nei verbi per lanciare le cose (`lancia_a`,
--| `lancia_contro`, `lancia_in`) e sono usati quando la destinazione del lancio
--| � tra i possedimenti del giocatore (quindi non ha senso eseguire un lancio
--| dato che � a portata di mano).
--| ========================================================================

--<

-->=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Azioni vane
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--|
--| Risposte per azioni che non conseguono nulla e vengono rifiutate con la
--| scusante che l'eroe non desidera farlo...

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
  HAS azione_irrelevante  "Hai cose pi� importanti a cui pensare.".
--<

-->=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Azioni superflue
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--|
--| Risposte per azioni che sono superflue poich� tentano di conseguire un
--| risultato che � gi� disponibile...
--<

-->============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Superflue eroe
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================

--| Il giocatore si trova gi� sul posto:

  -- VERBI: find, vai_a.
  -- ORIGINAL EN:  check_obj_not_hero4
  HAS sei_gi�_qui  "Ti trovi gi� qui!".

--<

-->============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Superflue oggetti
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================

--| Scampolo generico riutilizzabile in varie risposte:

  -- VERBI: xxx.
  -- ORIGINAL EN: (nessuno)
  HAS ogg1_gi�_sg  "$+1 � gi�".
  HAS ogg1_gi�_pl  "$+1 sono gi�".



--| L'oggetto si trova gi� sul posto:

  -- VERBI: trova, follow, vai_a, dove_�.
  -- ORIGINAL EN:  check_obj_not_at_hero_sg/pl
  HAS ogg1_gi�_qui_sg  "$+1 � proprio qui.".
  HAS ogg1_gi�_qui_pl  "$+1 sono proprio qui.".

--| Oggetto gi� posseduto:

  -- VERBI: prendi, prendi_da
  -- ORIGINAL EN:  check_obj_not_in_hero2
  HAS ogg1_gi�_posseduto  "Possiedi gi� $+1.".

  -- VERBI: chiedi
  -- ORIGINAL EN:  check_obj2_not_in_hero3
  HAS ogg2_gi�_posseduto  "Possiedi gi� $+2.".


--| Oggetto gi� posseduto da PNG:

  -- VERBI: dai_a.
  -- ORIGINAL EN: check_obj_not_in_act_sg/pl.
  HAS ogg1_gi�_posseduto_da_png2_sg  "$+2 possiede gi� $+1.".
  HAS ogg1_gi�_posseduto_da_png2_pl  "$+2 possiedeno gi� $+1.".
--<

-->============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Superflue apri/chiudi/blocca
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================

--| Tentare di aprire un oggetto gi� aperto:

  -- VERBI: apri, apri_con
  -- ORIGINAL EN:  check_obj_not_open_sg/pl
  HAS ogg_gi�_aperto_ms "$+1 � gi� aperto".
  HAS ogg_gi�_aperto_mp "$+1 sono gi� aperti.".
  HAS ogg_gi�_aperto_fs "$+1 � gi� aperta".
  HAS ogg_gi�_aperto_fp "$+1 sono gi� aperte.".

--| Tentare di chiudere un oggetto gi� chiuso:

  -- VERBI: chiudi, chiudi_con
  -- ORIGINAL EN:  check_obj_open1_sg/pl
  HAS ogg_gi�_chiuso_ms "$+1 � gi� chiuso".
  HAS ogg_gi�_chiuso_mp "$+1 sono gi� chiusi.".
  HAS ogg_gi�_chiuso_fs "$+1 � gi� chiusa".
  HAS ogg_gi�_chiuso_fp "$+1 sono gi� chiuse.".

--| Tentare di bloccare un oggetto gi� bloccato:

  -- VERBI: blocca, blocca_con
  -- ORIGINAL EN:  check_obj_not_locked_sg/pl
  HAS ogg_gi�_bloccato_ms "$+1 � gi� bloccato".
  HAS ogg_gi�_bloccato_mp "$+1 sono gi� bloccati.".
  HAS ogg_gi�_bloccato_fs "$+1 � gi� bloccata".
  HAS ogg_gi�_bloccato_fp "$+1 sono gi� bloccate.".

--| Tentare di sbloccare un oggetto gi� sbloccato:

  -- VERBI: sblocca, sblocca_con
  -- ORIGINAL EN:  check_obj_locked_sg/pl
  HAS ogg_gi�_sbloccato_ms "$+1 � gi� sbloccato".
  HAS ogg_gi�_sbloccato_mp "$+1 sono gi� sbloccati.".
  HAS ogg_gi�_sbloccato_fs "$+1 � gi� sbloccata".
  HAS ogg_gi�_sbloccato_fp "$+1 sono gi� sbloccate.".
--<

-->============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Superflue contenitori
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================

--| Il Contenitore � gi� vuoto:

  -- VERBI: svuota + versa.
  -- ORIGINAL EN: (nessuno, introdotto ex novo nella libreria italiana)
  HAS ogg1_vuoto_sg  "ci provi, ma $+1 era vuot$$".
  HAS ogg1_vuoto_pl  "ci provi, ma $+1 erano vuot$$".


  -- VERBI: metti_in, lancia_in.
  -- ORIGINAL EN: check_obj_not_in_cont_sg/pl.
  HAS ogg1_sg_gi�_dentro_cont2  "$+1 � gi� dentro $+2.".
  HAS ogg1_pl_gi�_dentro_cont2  "$+1 sono gi� dentro $+2.".

  -- VERBI: riempi_con.
  -- ORIGINAL EN: check_obj_not_in_cont2.
  HAS ogg2_sg_gi�_dentro_cont1  "$+2 � gi� dentro $+1.".
  HAS ogg2_pl_gi�_dentro_cont1  "$+2 sono gi� dentro $+1.".

--<

-->============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Superflue vestiario
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================

  -- VERBI: indossa.
  -- ORIGINAL EN:  check_obj_not_in_worn1
  HAS ogg1_gi�_indossato  "Stai gi� indossando $+1.".
--<

-->=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Vestiario
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================

  -- VERBI: lascia.
  -- ORIGINAL EN:  check_obj_not_in_worn3
  HAS indumento_andrebbe_rimosso  "Prima dovresti toglierti $+1.".

  -- VERBI: togliti.
  -- ORIGINAL EN:  check_obj_in_worn
  HAS non_indossi  "Non stai indossando $+1.".

  -- VERBI: metti_in, metti_su.
  -- ORIGINAL EN:  (nessuno)
  HAS indumento_indossato_PNG_sg  "Al momento $+1 � indossat$$".
  HAS indumento_indossato_PNG_pl  "Al momento $+1 sono indossat$$".


  -- @TODO: *** UNTRANSLATED MESSAGES: ***

  -- clothing: wear
  HAS check_clothing_sex "On second thoughts you decide $+1 won't really suit you.".

--<

-->=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Armi
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================

  -- VERBI: spara_errore, spara_a_errore.
  -- ORIGINAL EN:  check_count_weapon_in_hero
  HAS non_hai_armi_da_fuoco  "Non stai portando nessun'arma da fuoco con te.".

  -- VERBI: uccidi_con, attacca_con.
  -- ORIGINAL EN: (nessuno, introdotto ex novo nella libreria italiana)
  HAS ogg2_non_arma_adatta_per_sg  "$+2 non � un'arma adatta per".
  HAS ogg2_non_arma_adatta_per_pl  "$+2 non sono un'arma adatta per".

  -- VERBI: spara, spara_a.
  -- ORIGINAL EN: (nessuno, introdotto ex novo nella libreria italiana)
  HAS ogg1_non_arma_da_fuoco_sg  "$+1 non � un'arma da fuoco.".
  HAS ogg1_non_arma_da_fuoco_pl  "$+1 non sono un'arma da fuoco.".
--<

-->=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Liquidi
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================


  -- VERBI: bevi, prendi (..altri..).
  -- ORIGINAL EN: (check_liquid_vessel_not_cont)
  HAS impossibile_maneggiare_liq1  "Non puoi maneggiare $+1 a mani nude.".

--<



-->=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == MESSAGGI NON TRADOTTI
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================

--| [NOTE]
--| ============================================================================
--| Quando tutti i messaggi saranno stati tradotti/implmentati in italiano gli
--| originali inglesi qui di seguito verranno cancellati. Fino ad allora bisogna
--| tenerli poich� sono richiesti dai verbi non ancora tradotti. Per� mano mano
--| che mi concentro su un blocco di messaggi simili li sposto nella sezione
--| italiana, cos� posso seguire meglio il lavoro di traduzione.
--| ============================================================================
--<


-->============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Parametri inadatti per azioni specifiche
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================

  -- VERBI: consulta.
  -- ORIGINAL EN: illegal_parameter_consult_sg/pl
  HAS ogg2_inadatto_ricerca_sg  "$+2 non � un valido argomento di ricerca.".
  HAS ogg2_inadatto_ricerca_pl  "$+2 non sono un valido argomento di ricerca.".


-- *** @TODO@ TRANSLATE ***
  -- give, put, put_in, put_on, put_against, put_behind, put_near,,
  -- put_under throw_at, throw_in, throw_to, tie_to, use, use_with:
  HAS illegal_parameter_obj     "You can only $v objects.".


--<


-->============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Verb check messages
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--|
--| verb check messages, found before `DOES` sections of verbs and used mainly
--| in 'lib_verbi.i':


--| Additional checks for classes
--| ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~


  -- supporter: put_in
  HAS check_cont_not_supporter "You can't put $+1 inside $+2.".

--<

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
