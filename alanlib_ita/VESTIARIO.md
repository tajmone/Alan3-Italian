# Il Vestiario in Alan StdLib

    ultima modifica: 2018/07/18

Appunti su come viene gestito il vestiario nella Libreria Standard di Alan, e note di traduzione all'italiano.

> _**WIP**_ — Questo documento è ancora una bozza incompleta.

-----

**Indice**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introduzione](#introduzione)
    - [`worn` e `wearing`](#worn-e-wearing)
    - [La classe `clothing` ed i suoi attributi](#la-classe-clothing-ed-i-suoi-attributi)
        - [Note di Traduzione](#note-di-traduzione)
        - [`null_clothing`](#null_clothing)
    - [Inizializzazione del Vestiario](#inizializzazione-del-vestiario)
- [La Tabella del Vestiario](#la-tabella-del-vestiario)

<!-- /MarkdownTOC -->

-----

# Introduzione

La libreria standard predispone un sistema articolato per la gestione del vestiario, sia del giocatore (`hero`) che degli altri personaggi (PNG `ACTOR`), che tiene conto delle aree interessate del corpo per ciascun capo, nonché dell'ordine startificato in cui il vestiario deve essere indossato e rimosso.

La mappatura del vestiario alle zone del corpo che ricopre, così come la stratificazione d'indossamento, è gestita tramite attributi di tipo numerico presenti in ogni istanza di vestiario.

La libreria predispone inoltre un sistema (opzionale) per distinguere il vestiario in genere di appartenenza (maschio/femmina), tramite l'attributo numerico `sex`, al fine di prevenire al giocatore di indossare abbigliamento non consono al suo genere d'appartenenza.

## `worn` e `wearing`

A ogni attore viene assegnato l'attributo `wearing` — un attibuto di tipo `SET` (un _insieme_) contentente riferimenti a instanze di tipo `clothing`, con valore di default `null_clothing`.




## La classe `clothing` ed i suoi attributi

Un indumento deve essere dichiarato come istanza della classe `clothing` (sottoclasse di `OBJECT`).

Questa classe sovrascrive alcuni valori predefiniti di attributi comuni a tutte le cose (`THING`):

```alan
  IS indossabile.
```

... laddove tutti gli altri oggetti sono dichiarati come `NOT indossabile`.

Inoltre, questa classe introduce nuovi attributi speciali per il vestiario, non condivisi con altri tipi di oggetti:

|  attributo   |   tipo   | default |                                descrizione                                 |
|--------------|----------|---------|----------------------------------------------------------------------------|
| `headcover`  | numerico | 0       | (vedi _[Tabella del Vestiario]_, più sotto)                                |
| `handscover` | numerico | 0       | _idem_                                                                           |
| `feetcover`  | numerico | 0       | _idem_                                                                           |
| `topcover`   | numerico | 0       | _idem_                                                                           |
| `botcover`   | numerico | 0       | _idem_                                                                           |
| `indossato`  | booleano | `NOT`   | (_uso interno_) Indica se l'indumento è indossato da qualcuno (hero o PNG) |

### Note di Traduzione

Gli attributi di cui sopra, andranno tradotti in italiano. Io e __Alex J0K3R__ stiamo attualmente valutando se tradurre i termini independentemente tra loro, o se invece accumunarli da un prefisso che li renda intuitivamente riconducibili alla loro funzionalità.

Esempi del primo approccio di traduzione:

- `headcover` = `copricapo`
- `handscover` = `guanti`
- `feetcover` = `calzari`
- `topcover` = `superiore`
- `botcover` = `inferiore`


... purtroppo questo approccio non garantisce termini che ricoprano la funzione generale del vestiario per tutti le voci — laddove `copricapo` è un termine abbastanza generico per qualsiasi tipo di indumento indossabile in testa (p.es., anche un casco da moto), `guanti` non è altrettanto elastico nel suo significato (p.es., delle manette, un orologio) — e i termini `topcover` e `botcover` rischiano di essere tradotti con vocaboli poco rappresentativi della loro reale funzione.

Esempi del secondo approccio:

- `headcover` = `vestiario_testa` / `indumento_testa`
- `handscover` = `vestiario_mani` / `indumento_mani`
- `feetcover` = `vestiario_piedi` / `indumento_piedi`
- `topcover` = `vestiario_busto` / `indumento_busto`
- `botcover` = `vestiario_gambe` / `indumento_gambe`

In questo caso, ogni attributo rappresenta chiaramente la funzione che ricopre: il suffisso conferisce un'omogeneità intuitiva a questo gruppo di attributi, semplificandone la memorizzazione. L'unico svantaggio è la lunghezza finale degli attributi — anche se, dopotutto, non è che verrebbero usati poi così spesso nel codice; specie nelle avventure in cui il vestiario è importante, poiché in tal caso verranno quasi sempre usati per creare sottoclassi _ad hoc_ di indumenti (cappello, camicia, pantaloni, ecc) e quindi non verrebbero mai usati nella creazione di singole istanze di vestiario.

### `null_clothing`

`null_clothing` è instanza "dummy" di `clothing`, creata dalla libreria ed assegnata ad ogni attore come valore segnaposto predefinito per l'attributo `wearing` (di tipo _set_), al fine di restringere le instanze consentite nel set ai discendenti di `clothing`. Durante l'inizializzazione delle libreria, `null_clothing` viene eliminato dal set di `wearing`:

```alan
    INITIALIZE
    -- [...]

    -- excluding the default dummy clothing object from all actors; ignore.
    EXCLUDE null_clothing FROM wearing OF THIS.
```

## Inizializzazione del Vestiario

Durante l'inizializzazione, la libreria si occuperà della gestione automatizzata del vestiario.

1. Ogni indumento collocato in `worn` viene incluso nel `wearing` del giocatore.
2. Ogni indumento nel `wearing` del giocatore viene collocato in `worn` e settato come `indossato`.
3. Ogni indumento nel `wearing` di un PNG viene collocato nel PNG e settato come `indossato`.
4. Qualsiasi oggetto contenuto in un indumento (p.es. un portafoglio in una giacca) verrà autmomaticamente aggiunto alla set degli oggetti consentiti (attr. `allowed`) per quell'indumento, così da consentire di rimettervelo una volta toltolo.

Dei controlli anologhi vengono eseguiti ad ogni turno (tramite l'evento `worn_clothing_check`) per assicurarsi che i capi di vestiario acquisiti dagli attori nel corso del gioco vengano gestiti correttamente.

```alan
EVERY clothing ISA OBJECT
    -- [...]

  INITIALIZE


    -- the set attribute 'IS wearing' is defined to work for both the hero
    -- and NPCs:

    IF THIS IN worn
      THEN INCLUDE THIS IN wearing OF hero.
    END IF.

    FOR EACH ac ISA ACTOR
      DO
        IF ac = hero
          THEN
            IF THIS IN wearing OF hero AND THIS <> null_clothing
              THEN
                IF THIS NOT IN worn
                  THEN LOCATE THIS IN worn.
                END IF.
                MAKE THIS indossato.
            END IF.
        ELSIF THIS IN wearing OF ac AND THIS <> null_clothing
            THEN
              IF THIS NOT IN ac
                THEN
                  LOCATE THIS IN ac.
              END IF.
              MAKE THIS indossato.
        END IF.
    END FOR.

```


# La Tabella del Vestiario

> _**DA TRADURRE**_ — Questa tabella va tradotta in italiano, sia i termini di esempio della prima colonna che i termini degli attributi nelle rimanenti colonne (ma per questi ultimi, sto ancora lavorando sulla possibile terminologia da adottare).

| Clothing                    | Headcover | Topcover | Botcover | Footcover | Handcover |
| ----------------------      | -------:  | ------:  | ------:  | -------:  | -------:  |
| cappello                    | **2**     | 0        | 0        | 0         | 0         |
| canottiera/reggiseno        | 0         | **2**    | 0        | 0         | 0         |
| mutande/slip                | 0         | 0        | **2**    | 0         | 0         |
| pagliaccetto                | 0         | **4**    | **4**    | 0         | 0         |
| camicetta/camicia/maglietta | 0         | **8**    | 0        | 0         | 0         |
| salopette/abito da donna    | 0         | **8**    | **32**   | 0         | 0         |
| gonna                       | 0         | 0        | **32**   | 0         | 0         |
| pantaloni/pantaloncini      | 0         | 0        | **16**   | 0         | 0         |
| maglione/pullover           | 0         | **16**   | 0        | 0         | 0         |
| giacca_                     | 0         | **32**   | 0        | 0         | 0         |
| cappotto                    | 0         | **64**   | **64**   | 0         | 0         |
| calze/gambaletti            | 0         | 0        | 0        | **2**     | 0         |
| collant/calzamaglia         | 0         | 0        | **8**    | **2**     | 0         |
| scarpe/stivali              | 0         | 0        | 0        | **4**     | 0         |
| guanti                      | 0         | 0        | 0        | 0         | **2**     |

La tabella originale inglese (_The clothing table_):

```
--+--------------------------+----------+----------+-----------+-----------+
--| Clothing     | Headcover | Topcover | Botcover | Footcover | Handcover |
--+--------------------------+----------+----------+-----------+-----------+
--| hat                    2 |        0 |        0 |         0 |         0 |
--| vest/bra               0 |        2 |        0 |         0 |         0 |
--| undies/panties         0 |        0 |        2 |         0 |         0 |
--| teddy                  0 |        4 |        4 |         0 |         0 |
--| blouse/shirt/T-shirt   0 |        8 |        0 |         0 |         0 |
--| dress/coveralls        0 |        8 |       32 |         0 |         0 |
--| skirt                  0 |        0 |       32 |         0 |         0 |
--| trousers/shorts        0 |        0 |       16 |         0 |         0 |
--| sweater/pullover       0 |       16 |        0 |         0 |         0 |
--| jacket                 0 |       32 |        0 |         0 |         0 |
--| coat                   0 |       64 |       64 |         0 |         0 |
--| socks/stockings        0 |        0 |        0 |         2 |         0 |
--| tights/pantiehose      0 |        0 |        8 |         2 |         0 |
--| shoes/boots            0 |        0 |        0 |         4 |         0 |
--| gloves                 0 |        0 |        0 |         0 |         2 |
--+--------------------------+----------+----------+-----------+-----------+
```



<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

<!-- link interni -->

[Tabella del Vestiario]: #la-tabella-del-vestiario "Vai alla Tabella del Vestiario"

<!-- eof -->