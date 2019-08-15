--= Alan StdLib Italian: Modulo Italian
--| Tristano Ajmone <tajmone@gmail.com>
--~-----------------------------------------------------------------------------
--~ "lib_italian.i"
--| v0.21.0-Alpha, 2019-08-15: Alan 3.0beta6 build 2015
--|=============================================================================
--| Modulo per il supporto della lingua italiana, utilizzabile indipendentemente
--| dalla Libreria Standard. Non presente nell'originale
--| _ALAN Standard Library_ v2.1 di Anssi Räisänen.
--| Creato da Tristano Ajmone,  (C) 2018, Artistic License 2.1.
--|=============================================================================


-->intro(100.1)
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Introduzione
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--| 
--| Questo modulo della libreria è il cuore del supporto della lingua italiana
--| in Alan. È stato progettato come un modulo a sé stante, indipendente dal
--| resto della libreria, di modo che possa essere utilizzato anche al di fuori
--| di essa per creare avventure in italiano senza l'infrastruttura della libreria
--| standard, usufruendo solo del codice base per la grammatica italiana.
--| 
--| Per i suddetti motivi, tutti il codice necessario per implementare la lingua
--| italiana è contenuto in questo modulo.
--|
--| Dato che questo modulo è concepito per essere usato anche al di fuori della
--| libreria, verrà inclusa una documentazione dettagliata su come utilizzarlo.
--<


--==============================================================================
-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--------------------------------------------------------------------------------
--
-- Attributi grammatica 
--
--------------------------------------------------------------------------------
--* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--==============================================================================


-->valori_predefiniti(1100)
--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Valori predefiniti
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| I valori predefiniti su entità sono quelli di un oggetto maschile singolare
--| con articolo "`il`". Fatta eccezione per alcune classi specializzate della
--| libreria, che definiscono articoli con numero e/o genere diversi (`femmina`
--| = `"la"`, `maschi` = `"i"`, `femmine` = `"le"`), l'onere di specificare un
--| corretto `articolo` su ogni istanza dell'avventura ricade sull'autore.

ADD TO EVERY ENTITY

  IS NOT plurale.
  IS NOT femminile.

  HAS NOT nome_proprio.

  HAS articolo "il".

  HAS vocale "o".

  HAS prep_DI "del".
  HAS prep_A  "al".
  HAS prep_DA "dal".
  HAS prep_IN "nel".
  HAS prep_SU "sul".
--<

--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- Inizializzazione attributi
-------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================



--==============================================================================
--------------------------------------------------------------------------------
-- Inizializzazione di genere, numero e preposizioni articolate
--------------------------------------------------------------------------------
--==============================================================================
-- La prima parte dell'inizializzazione è comune a tutti le tipologie.

  INITIALIZE

    IF THIS IS femminile           --| Questo è necessario per coprire il caso
      THEN SET THIS:vocale TO "a". --| in cui 'articolo' = "l'", prima che il
    END IF.                        --| codice seguente venga eseguito!

    DEPENDING ON articolo of THIS
      = "lo" THEN
        MAKE THIS NOT femminile.
        MAKE THIS NOT plurale.
        SET THIS:vocale TO "o".
        SET THIS:prep_DI TO "dello".
        SET THIS:prep_A TO  "allo".
        SET THIS:prep_DA TO "dallo".
        SET THIS:prep_IN TO "nello".
        SET THIS:prep_SU TO "sullo".

      = "la" THEN
        MAKE THIS femminile.
        MAKE THIS NOT plurale.
        SET THIS:vocale TO "a".
        SET THIS:prep_DI TO "della".
        SET THIS:prep_A TO  "alla".
        SET THIS:prep_DA TO "dalla".
        SET THIS:prep_IN TO "nella".
        SET THIS:prep_SU TO "sulla".

      = "l'" THEN              --| In questo caso non alteriamo il genere poiché
        MAKE THIS NOT plurale. --| questa forma può essere sia masch. che femm.
                               --| Sta all'autore specificare il genere nell'istanza.
        SET THIS:prep_DI TO "dell'$$".
        SET THIS:prep_A TO  "all'$$".
        SET THIS:prep_DA TO "dall'$$".
        SET THIS:prep_IN TO "nell'$$".
        SET THIS:prep_SU TO "sull'$$".

      = "i" THEN
        MAKE THIS NOT femminile.
        MAKE THIS plurale.
        SET THIS:vocale TO "i".
        SET THIS:prep_DI TO "dei".
        SET THIS:prep_A TO  "ai".
        SET THIS:prep_DA TO "dai".
        SET THIS:prep_IN TO "nei".
        SET THIS:prep_SU TO "sui".

      = "gli" THEN
        MAKE THIS NOT femminile.
        MAKE THIS plurale.
        SET THIS:vocale TO "i".
        SET THIS:prep_DI TO "degli".
        SET THIS:prep_A TO  "agli".
        SET THIS:prep_DA TO "dagli".
        SET THIS:prep_IN TO "negli".
        SET THIS:prep_SU TO "sugli".

      = "le" THEN
        MAKE THIS femminile.
        MAKE THIS plurale.
        SET THIS:vocale TO "e".
        SET THIS:prep_DI TO "delle".
        SET THIS:prep_A TO  "alle".
        SET THIS:prep_DA TO "dalle".
        SET THIS:prep_IN TO "nelle".
        SET THIS:prep_SU TO "sulle".

      ELSE -- = "il" (o dovrebbe esserlo)
        MAKE THIS NOT femminile.
        MAKE THIS NOT plurale.
        SET THIS:prep_DI TO "del".
        SET THIS:prep_A TO  "al".
        SET THIS:prep_DA TO "dal".
        SET THIS:prep_IN TO "nel".
        SET THIS:prep_SU TO "sul".

    END DEPEND.
--==============================================================================
-- Entità con nome proprio
--==============================================================================
-- Se l'entità ha un nome proprio, dovremo solo ridefinire le preposizioni da
-- articolate a semplici, di modo che si possa avere "da Gino" anziché "dal Gino".

    IF THIS HAS nome_proprio
      THEN
        SET THIS:prep_DI TO "di".
        SET THIS:prep_A TO  "a".
        SET THIS:prep_DA TO "da".
        SET THIS:prep_IN TO "in".
        SET THIS:prep_SU TO "su".
    END IF.


--==============================================================================
--------------------------------------------------------------------------------
-- Inizializzazione articoli indeterminativi
--------------------------------------------------------------------------------
--==============================================================================

  INDEFINITE ARTICLE
--==============================================================================
-- Entità con nome proprio
--==============================================================================
  IF THIS HAS nome_proprio
    THEN ""
    ELSE
--==============================================================================
-- Entità senza nome proprio
--==============================================================================
      DEPENDING ON articolo of THIS
        = "il"  THEN   "un"               ---> ms indet.
        = "lo"  THEN   "uno"              ---> ms indet.
        = "la"  THEN   "una"              ---> fs indet.

        = "l'"  THEN
          IF THIS IS NOT femminile
                THEN   "un"               ---> ms indet.
                ELSE   "un'$$"            ---> fs indet.
          END IF.

        = "i"   THEN   "dei"              ---> mp indet.
        = "gli" THEN   "degli"            ---> mp indet.
        = "le"  THEN   "delle"            ---> fp indet.

        ELSE -- se non è definito
          IF THIS IS NOT femminile
          THEN
            IF THIS IS NOT plurale
                THEN   "un"               ---> ms indet.
                ELSE   "dei"              ---> mp indet.
            END IF.
          ELSE
            IF THIS IS NOT plurale
                THEN   "una"              ---> fs indet.
                ELSE   "delle"            ---> fp indet.
            END IF.
          END IF.
      END DEPEND.
  END IF.

--==============================================================================
--------------------------------------------------------------------------------
-- Inizializzazione articoli determinativi
--------------------------------------------------------------------------------
--==============================================================================

  DEFINITE ARTICLE

--==============================================================================
-- Entità con nome proprio
--==============================================================================
  IF THIS HAS nome_proprio
    THEN ""
    ELSE
--==============================================================================
-- Entità senza nome proprio
--==============================================================================
      DEPENDING ON articolo of THIS
        = "il"  THEN   "il"               ---> ms  det.
        = "lo"  THEN   "lo"               ---> ms  det.
        = "la"  THEN   "la"               ---> fs  det.

        = "l'"  THEN   "l'$$"             ---> *s det.  (masc & femm)

        = "i"   THEN   "i"                ---> mp det.
        = "gli" THEN   "gli"              ---> mp det.
        = "le"  THEN   "le"               ---> fp det.

        ELSE -- se non è definito
          IF THIS IS NOT femminile
          THEN
            IF THIS IS NOT plurale
                THEN   "il"               ---> ms det.
                ELSE   "i"                ---> mp det.
            END IF.
          ELSE
            IF THIS IS NOT plurale
                THEN   "la"               ---> fs det.
                ELSE   "le"               ---> fp det.
            END IF.
          END IF.
      END DEPEND.
  END IF.

END ADD TO ENTITY.


-->player_words(2000.1)
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



-->guida(1000.1)
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == Guida all'uso
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--| 
--| Per poter utilizzare correttamente la lingua italiana in Alan è necessario
--| comprendere come funziona internamente questo modulo.


--| [WARNING]
--| ==========================================
--| La documentazione non è ancora completa...
--| ==========================================

--~=============================================================================
--~-----------------------------------------------------------------------------
--| === Attributi grammaticali delle entità
--~-----------------------------------------------------------------------------
--~=============================================================================

--| Questo modulo definisce una serie di attributi sulla classe `entity` che
--| serviranno a tracciare il genere ed il numero di ciascuna istanza, ed altre
--| informazioni grammaticali utili ai fini di una messaggistica dell'avventura
--| corretta. Essendo questi definiti sulla classe `entity`, saranno eridati
--| automaticamente da ognuna delle classi native di Alan, e quindi presenti su
--| ogni instanza del gioco (cose, oggetti, attori, luoghi) e finanche sulle
--| classi letterali `literal`, `string`, e `integer`.

--| Ai fini pratici di un'avventura, le classi di maggior interesse per un
--| autore saranno ovviamente gli oggetti e gli attori, le cui instanze dovranno
--| sempre essere inizializzate correttamente per garantire una messaggistica
--| consona al loro genere e numero. In casi meno frequenti, ci si troverà
--| anche a dover impostare gli attributi grammaticali su istanze di entità e/o
--| luoghi. Le classi letterali (che non ammettono né instanze né sottoclassi)
--| non hanno rilevanza pratica ai fini della grammatica italiana, sebbene esse
--| eriditino tali attributi di riflesso in quanto sottoclassi di `entity`.

--| [NOTE]
--| ========================================================================
--| La necessità di definire questi attributi direttamente su `entity` è anche
--| dettata dal fatto che per poter usufruire di essi nelle clausole sintattiche
--| dei verbi (e in altri contesti di esecuzione condizionale) è indispensabile
--| garantire che siano presenti in ogni possibile istanza assoggettabile a quel
--| contesto d'esecuzione.
--| ========================================================================
--<


-->valori_predefiniti

--| Fatta eccezione per gli attributi `articolo` e `nome_proprio`, questi
--| attributi sono destinati alla sola lettura, poiché i loro valori saranno
--| settati automaticamente su ciascuna istanza durante l'inizializzazione,
--| in base ai valori di `articolo` e `nome_proprio` della medesima.

--| Ora spiegheremo nel dettaglio la funzione di questi attributi e come debbano
--| essere usati dagli autori di avventure.

--~=============================================================================
--~-----------------------------------------------------------------------------
--| === Articolo di riferimento
--~-----------------------------------------------------------------------------
--~=============================================================================

--| Ogni istanza possiede l'attributo `articolo` che ne specifica l'articolo
--| determinativo ad essa associato. Questo attributo viene utilizzato dalla
--| libreria per inizializzare le istanze del gioco: in base ad esso il modulo
--| Italian sarà in grado di dedurre il genere ed il numero dell'istanza, e
--| imposterà tutte le sue proprietà grammaticali con i valori appropriati.

--| L'autore deve semplicemente specficare l'articolo determinativo del
--| sostantivo, e la libreria farà tutto il resto. L'unica eccezione è
--| l'articolo `"l'"`, che può rifererirsi sia a un sostantivo maschile che
--| femminile; per questo articolo l'autore dovrà specificare `IS femminile`
--| nel caso di sostantivi femminili, altrimenti la libreria presumerà che si
--| tratti di un sostantivo maschile.

--| [NOTE]
--| ========================================================================
--| Dopo l'inizializzazione, l'attributo `articolo` non viene più utlizzato in
--| alcun modo.
--| 
--| La libreria non ricorre mai all'attributo `articolo` per stampare l'articolo
--| di un istanza nei messaggi, e neanche gli autori dovrebbero farlo. L'attributo
--| `articolo` è solo un mezzo per inizializzare correttamente tutta una serie di
--| attributi e proprietà delle istanze, tra cui anche `DEFINITE`/`INDEFINITE
--| ARTICLE`.
--| ========================================================================

--~-----------------------------------------------------------------------------
--| ==== Esempi pratici
--~-----------------------------------------------------------------------------

--| Supponiamo di voler creare i seguenti oggetti: un palloncino, una mela, un
--| albero e un'arancia.

--| Per il palloncino non sarà necessario specificare l'articolo, dato che è il
--| medesimo del predefinito ("`il`"):

--| [source,alan,role=example]
--| --------------------------
--| The palloncino IsA object
--| End the.
--| --------------------------

--| Per creare la mela:

--| [source,alan,role=example]
--| --------------------------
--| The mela IsA object
--|   Has articolo "la".
--| End the.
--| --------------------------

--| Quanto all'albero e l'arancia, entrambi hanno il medesimo articolo ("`l'`"),
--| e in questo caso sarà necessario specificare il genere per l'arancia,
--| altrimenti il modulo Italian presumerà si tratti di un oggetto maschile:

--| [source,alan,role=example]
--| --------------------------
--| The albero IsA object
--|   Has articolo "l'".
--| End the.
--| 
--| The arancia IsA object
--|   Has articolo "l'".
--|   Is femminile.
--| End the.
--| --------------------------

--| L'articolo "`l'`" femminile è l'unico a richiedere di definire manualmente
--| il genere dell'istanza, poiché il modulo non è in grado di distinguere tra
--| maschile e femminile senza tale intervento.


--~=============================================================================
--~-----------------------------------------------------------------------------
--| === Nome proprio
--~-----------------------------------------------------------------------------
--~=============================================================================

--| [WARNING]
--| =================================
--| Sezione non ancora disponibile...
--| =================================

--~=============================================================================
--~-----------------------------------------------------------------------------
--| === Vocale per accordo aggettivi
--~-----------------------------------------------------------------------------
--~=============================================================================

--| [WARNING]
--| ================================
--| Sezione non ancora completata...
--| ================================

--| L'attributo `vocale` contiene la vocale finale di riferimento per gli
--| aggettivi che seguono la forma "`o/a i/e`" nell'accordo di genere e numero.

--| Anche `vocale` sarà inizializzato automaticamente dalla libreria, basandosi
--| sul valore di `articolo` dell'istanza.
--| 
--| Questo attributo semplifica molto la corretta rappresentazione di aggettivi
--| nei vari messaggi della libreria poiché consente di stampare direttamente
--| questo attributo come ultima vocale dell'aggetivo, aniziché dover eseguire
--| controlli sul genere e sul numero dell'istanza in oggetto, riducendo quindi
--| drasticamente la lunghezza del codice all'interno dei verbi.
--| Inoltre, questo attributo potrà essere impiegato anche dagli autori stessi,
--| poiché la sua utilità non è limitata all'uso interno che ne fa la libreria.


--~=============================================================================
--~-----------------------------------------------------------------------------
--| === Preposizioni articolate
--~-----------------------------------------------------------------------------
--~=============================================================================
--| 

--| Grazie a questi attributi, nei messaggi della libreria (e delle avventure)
--| è possibile recuperare le corrette preposizioni articolate da usare con
--| ciascuna istanza.

--~ @TODO: Chiarificare meglio! (non so neanche se sia corretto)                TODO!
--~ Non è necessario rappresentare tutte le preposizioni articolate, solo quelle
--~ che si uniscono all'articolo.

--| [WARNING]
--| ================================
--| Sezione non ancora completata...
--| ================================

--~============================================================================
--~\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--~-----------------------------------------------------------------------------
--| === Inizializzazione attributi
--~-----------------------------------------------------------------------------
--~/////////////////////////////////////////////////////////////////////////////
--~============================================================================
--| 
--| [WARNING]
--| =================================
--| Sezione non ancora disponibile...
--| =================================
--<


-- @TODO: Delete me (old info)!                                                 DELETE!
-- In questo modulo inizializzeremo solo le istanze di OBJECT, e lasceremo al
-- modulo "lib_classi.i" l'onore di inizializzare le instanze di ACTOR. Questa
-- separazione è necessaria per via del fatto che gli attori possono avere nome
-- proprio, e in tal caso devono avere le stringhe degli articoli nulle, e usare
-- preposizioni semplici anziché articolate.
-- 
-- La libreria originale inizializzava numero e articoli in EVERY THING, ma nel
-- nostro caso questo comprometterebbe gli attributi definiti dall'utente sugli
-- attori, dato che la classe THING ha la precedenza gerarchica su ACTOR, e dato
-- che l'inizializzazione basata sull'articolo modifica anche il genere ed il
-- numero dell'istanza in base ad esso.
-- ADD TO EVERY OBJECT

-->todo(50000.1)
--~=============================================================================
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~-----------------------------------------------------------------------------
--|
--| == TODO
--|
--~-----------------------------------------------------------------------------
--~* * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~ * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *
--~=============================================================================
--| 
--| Questa sezione contiene l'elenco delle cose da fare per completare il modulo
--| della grammatica italiana.
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
--| 
--| * [ ] Aggiungi esempi pratici di codice:
--| ** [ ] Definizione `articolo`.
--| ** [ ] Uso attributi preposizioni (es. `SAY mia_AT:prep_IN.`).
--| ** [ ] Istanze attore con nome proprio.
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
