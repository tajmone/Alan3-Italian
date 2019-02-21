--= Alan StdLib Italian: Supplemento
--| Tristano Ajmone <tajmone@gmail.com>
--~-----------------------------------------------------------------------------
--~ "lib_supplemento.i"
--| v0.16.0-Alpha, 2019-02-21: Alan 3.0beta6 build 1870
--|=============================================================================
--| Modulo supplementare della liberia italiana, non presente nell'originale
--| _ALAN Standard Library_ v2.1 di Anssi Räisänen.
--| Creato da Tristano Ajmone,  (C) 2018, Artistic License 2.1.
--|=============================================================================


-->intro(100.1)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| == Introduzione
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| Questo modulo della libreria (non presente nella StdLib originale inglese)
--| definisce vari sinonimi italiani per tradurre le <<Predefined Player Words>>
--| inglesi di Alan.
--| Si tratta di un modulo supplementare in quanto non sarà più necessario una
--| volta aggiunto l'italiano alle lingue supportate nativamente da Alan. Quando
--| ciò avverrà, questo modulo sarà rimosso.
--~-----------------------------------------------------------------------------
--<


-->player_words(1000.1)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| == Predefined Player Words
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| Le _predefined Player Words_ sono dei gruppi di vocaboli del giocatore
--| predefiniti in Alan (ossia, integrate nel compilatore stesso). Le loro
--| definizioni variano in ciascuna delle lingue supportate nativamente da Alan.
--| La libreria italiana utilizza la lingua inglese come base di partenza.
--| 
--| Queste sono le _Player Words_ predefinite per la lingua inglese, suddivise
--| in gruppi di appartenenza:

--| --------------------------
--| ALL:   all everything
--| AND:   and then
--| BUT:   but except
--| THEM:  them
--| NOISE: go the
--| --------------------------

--| [NOTE]
--| ============================================================================
--| Le _Player Words_ delle varie lingue sono definite nel file sorgente di Alan
--| `compiler/wrd.c` (riga 182).
--| ============================================================================
--<

-->=============================================================================
--~-----------------------------------------------------------------------------
--| === CONJUNCTION WORDS
--~-----------------------------------------------------------------------------
--~=============================================================================
--|
--| .............
--| AND: and then
--| .............
--| 
--| Le _conjunction words_ (parole di congiunzione) consentono al parser di
--| interpretare correttamente i comandi del giocatore che fanno riferimento a
--| più oggetti, o le sequenze di comandi indipendenti combinati in una sola riga
--| di comando. Esempi:
--| 
--| * "prendi la mela E la pera"
--| * "prendi la mela E prendi la pera"
--| * "prendi la mela POI prendi la pera"
--| * "prendi la mela E POI prendi la pera"

SYNONYMS e, poi = 'and'.

--<


-->=============================================================================
--~-----------------------------------------------------------------------------
--| === NOISE WORDS
--~-----------------------------------------------------------------------------
--~=============================================================================
--|
--| .............
--| NOISE: go the
--| .............
--|
--| Le _noise words_ (parole rumore) vengono ignorate dal parser che le tratta
--| come rumore di sottofondo. 
--|
--| ==== Articoli determinativi
--|
--| Definiamo tutti gli articoli determinativi come sinonimi della _noise word_
--| `'the'` affinché vengano ignorati nel parsing dei comandi del giocatore, di
--| modo che comandi come "prendi LA mela" vengano interpretati come "prendi
--| mela".
--|
--| Nel caso di articoli con l'apostrofo, che vanno a formare un singolo lessema
--| con il sostantivo cui si riferiscono, il parser di Alan prima fallirà nel
--| riconoscere il lessema (es. `l'albero`) ma, appurata la presenza di un
--| apostrofo nel lessema, prima di generare un errore eseguirà un ulteriore
--| tentativo spezzando in due il lessema originale nel punto successivo al primo
--| apostrofo, e ritenterà il parsing dei due nuovi lessemi (`l'` + `albero`).
--| Durante il secondo tentativo, l'articolo `l'` verrà soppresso  in quanto
--| _noise word_, e `albero` verrà ora riconosciuto come il nome dell'oggetto
--| corrispondente.

SYNONYMS il, lo, la, 'l''', i, gli, le = 'the'.
--<

-- @TODO: Dovrei aggiungere anche gli articoli indeterminativi (un, uno, ecc.)  CHECK!
--        e forme come "delle", "alcune"? P.es. nel gioco potrebbero esserci
--        "delle mele" e il giocatore digiterebbe "prendi una mela". Il parser
--        potrebbe ignorare quel "un". Mi chiedo se questo potrebbe introdurre
--        conflitti, per esempio impedendo l'uso di "uno" come numero.
--        Sicuramente "delle" non può essere definito come noise word dato che
--        ne preverrebbe l'uso in comandi come "la mela delle streghe".
--        La questione va analizzata meglio, e dovrei informarmi sul perché non
--        sono presenti "a" ed "an" tra le noise words inglesi.

-- This is not going to be useful:
-- 
--    SYNONYMS vai = 'go'.
-- 
-- ... because player would always type "VAI A" (GO TO) followed by the direction;
-- but defining 'vai a' = 'go' doesn't work as expected, and 'a' must be preserved
-- for verbs ("a" means "TO", as in "give TO").
-- The best solution seems to be to implement the "VAI A" verb to catch player's
-- attempt to use this syntax, and just tell him that if he wants to go somewhere
-- he should type the direction instead (like the StdLib does with take_from
-- when used to pickup something from the floor).

-->=============================================================================
--~-----------------------------------------------------------------------------
--| === ALL WORDS
--~-----------------------------------------------------------------------------
--~=============================================================================
--|
--| .............
--| ALL: all everything
--| .............

SYNONYMS tutto, tutti, tutte = all.
--<

-- @NOTE: Dovrei includere anche "ogni"?                                        CHECK!

-->=============================================================================
--~-----------------------------------------------------------------------------
--| === EXCEPT WORDS
--~-----------------------------------------------------------------------------
--~=============================================================================
--|
--| .............
--| BUT: but except
--| .............
--|
--| Le _except words_ (parole di eccezione) operano congiuntamente alle _ALL words_
--| per escludere alcuni oggetti dall'insieme. Esempi:
--|
--| * "lascia TUTTO TRANNE la mela"
--| * "lascia TUTTO ECCETTO la mela"
--| * "lascia TUTTO ESCLUSA la mela"
--| * "lascia TUTTO ESCLUSO il mango"
--| * "lascia TUTTO ESCLUSI il mango e la mela"
--| * "lascia TUTTO ESCLUSE la mela e la pera"

SYNONYMS tranne, eccetto, escluso, esclusa, esclusi, escluse = except.
--<


-->=============================================================================
--~-----------------------------------------------------------------------------
--| === THEM WORDS
--~-----------------------------------------------------------------------------
--~=============================================================================
--|
--| ..........
--| THEM: them
--| ..........
--| 
--| Le _them words_ rappresentano gli oggetti multipli utilizzati in un comando
--| precedente. Esempio:
--| 
--| * "remove the hat and the scarf then drop THEM"
--| 
--| Questo tipo di riferimento a oggetti multipli è consentito solo nei comandi
--| che supportano parametri multipli. L'interprete restringerà il campo dei
--| parametri idonei all'inclusione nel referente in base alle regole di _scoping_.
--<


-->============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| == Preposizioni articolate
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 

--| La libreria definisce dei sinonimi per trasformare le preposizioni articolate
--| nelle corrispettive preposizioni semplici (es. _della_ -> _di_).

--| Solo alcune preposizioni (di|a|da|in|con|su) hanno un'applicazione practica
--| nelle avventure testuali, e non tutte le forme contratte delle preposizioni
--| articolate sono implementabili. 
--| La seguente tabella riporta tra parentesi le forme contratte non supportate,
--| e in corsivo quelle che non subiscono sostituzioni nel parsing:

--| [cols="<h,7*<d",options="header"]
--| |========================================================================
--| |     | il    | lo      | la      | l'       | i     | gli     | le
--~ +-----+-------+---------+---------+----------+-------+---------+--------+
--| | di  | del   | dello   | della   | dell'    | dei   | degli   | delle
--| | a   | al    | allo    | alla    | all'     | ai    | agli    | alle
--| | da  | dal   | dallo   | dalla   | dall'    | (dai) | dagli   | dalle
--| | in  | nel   | nello   | nella   | nell'    | nei   | negli   | nelle
--| | con | (col) | (collo) | (colla) | _con l'_ | (coi) | (cogli) | (colle)
--| | su  | sul   | sullo   | sulla   | sull'    | sui   | sugli   | sulle
--| | per | (pel) | (pello) | (pella) | (pell')  | (pei) | (pegli) | (pelle)
--| |========================================================================

--| Il mancato supporto di _dai_ è dovuto a un conflitto con l'imperativo del
--| verbo _dare_, e si sta cercando una soluzione a questo.

--| Le forme contratte di _con_+articolo sono state tralasciate per via dei
--| potenziali conflitti con altri vocaboli: _collo_ (parte del corpo), _colla_
--| (adesiva), _cogli_ (verbo), _colle_ (collina). L'implementazione di queste
--| forme come sinonimi avrebbe impedito l'uso di quei vocaboli nelle avventure.

--| Le varie preposizioni con _per_ (_pel_, _pello_, ecc.) sono state omesse
--| poiché raramente usate oggi, così come altre forme arcaiche (_gl`'_, e affini).

--| Nell'implementazione attuale sussistono comunque potenziali conflitti:
--| _dei_ (divinità), _dallo/a/e_ (verbo), _Nello/a_ (nomi propri),
--| _nei_ (cutanei).
--| Ma all'atto pratico questi non costituiscono un problema reale per le AT, e
--| simili occorrenze sono più rare nelle AT di quanto non lo siano nella vita
--| reale, ed eventuali loro conflitti dovrebbero essere comunque gestibili.

--| Sull'argomento, si veda l'eccellente articolo di Max Bianchi:
--| 
--| * http://www.tads.org/xlat3/En_vs_It.htm


--| Adesso, definiamo i vari sinonimi.

--~=============================================================================
--| === "`DI`" + Articolo
--~=============================================================================
SYNONYMS
  del, dello, della, 'dell''', dei, degli, delle = di.
--~=============================================================================
--| === "`A`" + Articolo
--~=============================================================================
SYNONYMS
  al, allo, alla, 'all''', ai, agli, alle  = a.
--~=============================================================================
--| === "`DA`" + Articolo
--~=============================================================================
SYNONYMS
  dal, dallo, dalla, 'dall''', dall, dagli, dalle  = da.

--| [WARNING]
--| ======================================================
--| La preposizione `dai` è stata omessa dalla lista di sinonimi poiché creava
--| conflitto con la forma imperativa del verbo "`dare`", causando l'errore di
--| compilazione:
--| ......................................................
--| 333 E : The word 'dai' is defined to be both a synonym and another word class.
--| ......................................................
--| Sto ancora cercando una soluzione ottimale al problema.
--| ======================================================
--<

-->todo_checklist(.33)
--| * [ ] Risolvi conflitti con verbo `dai_a` che prevenie `SYNONYMS dai = da.`.
--<

--  dai = da.       -- dai (masc.plur.) --| CAN'T BE USED AS ALTERNATIVE because
--                                      --| of conflict with 'dai' verb:
-- 333 E : The word 'dai' is defined to be both a synonym and another word class.

-->=============================================================================
--| === "`IN`" + Articolo
--~=============================================================================
SYNONYMS
  nel, nello, nella, 'nell''', nei, negli, nelle = 'in'.
--~=============================================================================
--| === "`SU`" + Articolo
--~=============================================================================
SYNONYMS
  sul, sullo, sulla, 'sull''', sui, sugli, sulle = su.
--<



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
--| italiano del modulo supplementare.
--<


-->todo_checklist(51000.1)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| === Check-list generale
--~-----------------------------------------------------------------------------
--~=============================================================================
--| 
--| Lista della spesa per le varie cosucce da fare:
--| 
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
