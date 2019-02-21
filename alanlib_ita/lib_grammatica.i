--= Alan StdLib Italian: Grammatica
--| Tristano Ajmone <tajmone@gmail.com>
--~-----------------------------------------------------------------------------
--~ "lib_grammatica.i"
--| v0.16.0-Alpha, 2019-02-21: Alan 3.0beta6 build 1870
--|=============================================================================
--| Modulo grammaticale della liberia italiana, non presente nell'originale
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
--| italiana è contenuto in questo modulo. Per chi volesse usare questo modulo
--| per aggiungere la grammatica alle proprie avventure, è consigliabile anche
--| includere il modulo `lib_supplemento.i` poiché esso contiene ulteriore codice
--| per il supporto dell'italiano che, sebbene non strettamente indispensabile,
--| risulterà utile ai fini pratici.
--|
--| [NOTE]
--| ==================================================================
--| Il codice in `lib_supplemento.i` è stato separato da questo modulo
--| poiché esso diverrebbe superfluo il giorno in cui fosse introdotto
--| in Alan il supporto nativo per la lingua italiana.
--| ==================================================================
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


--=============================================================================
--\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
--------------------------------------------------------------------------------
-- Valori predefiniti
-------------------------------------------------------------------------------
--//////////////////////////////////////////////////////////////////////////////
--=============================================================================

-->valori_predefiniti(.11)
--~=============================================================================
--~ Genere e numero
--~=============================================================================

ADD TO EVERY ENTITY

  IS NOT plurale.
  IS NOT femminile.
--<

-->valori_predefiniti(.21)
--~=============================================================================
--~ Nome proprio
--~=============================================================================

  HAS NOT nome_proprio.                                     ---> named
--<

-->valori_predefiniti(.31)
--~=============================================================================
--~ Vocale per aggettivi
--~=============================================================================

  HAS vocale "o".
--<


-->valori_predefiniti(.41)
--~=============================================================================
--~ Preposizioni articolate
--~=============================================================================

  HAS prep_DI "del".
  HAS prep_A  "al".
  HAS prep_DA "dal".
  HAS prep_IN "nel".
  HAS prep_SU "sul".
--<

-->valori_predefiniti(.51)
--~=============================================================================
--~ Articolo di riferimento
--~=============================================================================

  HAS articolo "il".
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
        = "il"  THEN   "il"               ---> ms indet.
        = "lo"  THEN   "lo"               ---> ms indet.
        = "la"  THEN   "la"               ---> fs indet.

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
--| Dato che questo modulo è concepito per essere usato anche al di fuori della
--| libreria, verrà inclusa una documentazione dettagliata su come utilizzarlo.
--| 
--| === Attributi grammaticali delle entità
--| 
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


-->valori_predefiniti(1100.1)
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
--<


-->valori_predefiniti(.10)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== Genere e numero
--~-----------------------------------------------------------------------------
--~=============================================================================
--| 
--<

-->valori_predefiniti(.12)
--| 
--| [WARNING]
--| ================================
--| Sezione non ancora completata...
--| ================================
--<

--~                                                                             TRANSLATE!
--~ (We add the 'plural' attribute to the 'entity' class, because the plural
--~ applies not only to things but also to for example parameters in syntax 
--~ statements; ignore.)

-->valori_predefiniti(.20)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== Nome proprio
--~-----------------------------------------------------------------------------
--~=============================================================================
--| 
--<

-->valori_predefiniti(.22)
--| [WARNING]
--| =================================
--| Sezione non ancora disponibile...
--| =================================
--<

-->valori_predefiniti(.30)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== Vocale per accordo aggettivi
--~-----------------------------------------------------------------------------
--~=============================================================================
--| 
--<

-->valori_predefiniti(.32)
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
--<

-->inizializza(.40)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== Preposizioni articolate
--~-----------------------------------------------------------------------------
--~=============================================================================
--| 
--<

-->valori_predefiniti(.42)
--| Grazie a questi attributi, nei messaggi della libreria (e delle avventure)
--| è possibile recuperare le corrette preposizioni articolate da usare con
--| ciascuna istanza.

--~ @TODO: Chiarificare meglio! (non so neanche se sia corretto)                TODO!
--~ Non è necessario rappresentare tutte le preposizioni articolate, solo quelle
--~ che si uniscono all'articolo.
--<

-->valori_predefiniti(.50)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| ==== Articolo di riferimento
--~-----------------------------------------------------------------------------
--~=============================================================================
--| 
--| Ogni entità ha un attributo che ne specifica l'articolo determinativo:
--| 
--<

-->valori_predefiniti(.52)
--| L'autore potrà sovrascrivere il valore predefinito direttamente sulle
--| specifiche istanze dell'avventura, indicando l'articolo appropriato per
--| l'istanza in oggetto.
--| 
--| Questo attributo viene utilizzato dalla libreria per inizializzare le
--| istanze del gioco: in base all'articolo indicato dall'autore, la libreria sarà
--| in grado di dedurre il genere ed il numero dell'istanza, e ne imposterà tutte
--| le altre proprietà grammaticali con i valori appropriati.
--| 
--| L'autore deve semplicemente specficare l'articolo determinativo del
--| sostantivo, e la libreria farà tutto il resto. L'unica eccezione è
--| l'articolo `"l'"`, che può rifererirsi sia a un sostantivo maschile che
--| femminile; per questo articolo l'autore dovrà specificare `IS femminile`
--| nel caso di sostantivi femminili, altrimenti la libreria presumerà che si
--| tratti di un sostantivo maschile.


--| [NOTE]
--| ========================================================================
--| L'attributo `articolo` viene utilizzato solo ai fini dell'inizializzazione
--| delle istanze, come riferimento per dedurre genere, numero, articoli e
--| preposizioni dell'istanza, dopodiché non viene più utlizzato.
--| Quindi, la libreria non ricorre ad `articolo` per stampare l'articolo di un
--| istanza nei messaggi.
--| ========================================================================

--<

-->inizializzazione(1200.1)
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
--| * [ ] Sposta qui il codice di `lib_supplemento.i`? Farlo renderebbe questo
--|       modulo completamente indipendente poiché includerebbe anche le
--|       _player words_ che definiscono articoli, preposizioni, ecc.
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
