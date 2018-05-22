# Il Vestiario in Alan StdLib

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

La libreria standard predispone un sistema articolato per la gestione del vestiario, sia del giocatore (`hero`) che degli altri personaggi (PNG `ACTOR`).



## `worn` e `wearing`

A ogni attore viene assegnato l'attributo `wearing` — un attibuto di tipo `SET` (un _insieme_) contentente riferimenti a instanze di tipo `clothing`, con valore di default `null_clothing`.




## La classe `clothing` ed i suoi attributi

Un indumento deve essere dichiarato come istanza della classe `clothing` (sottoclasse di `OBJECT`).

Questa classe sovrascrive alcuni valori predefiniti di attributi comuni a tutti le cose (`THING`):

```alan
  IS wearable.
```

... laddove tutti gli altri oggetti sono dichiarati come `NOT wearable`.

Inoltre, questa classe introduce nuovi attributi speciali per il vestiario, non condivisi con altri tipi di oggetti:

|  attributo   |   tipo   | default |                               descrizione                                |
|--------------|----------|---------|--------------------------------------------------------------------------|
| `headcover`  | numerico | 0       |                                                                          |
| `handscover` | numerico | 0       |                                                                          |
| `feetcover`  | numerico | 0       |                                                                          |
| `topcover`   | numerico | 0       |                                                                          |
| `botcover`   | numerico | 0       |                                                                          |
| `donned`     | booleano | `NOT`   | (_uso interno_) Indica se l'indumento è indossato da qualcuno (hero o PNG) |

### Note di Traduzione

Gli attributi di cui sopra, andranno tradotti in italiano. Io e Alex J0K3R stiamo attualmente valutando se tradurre i termini independentemente tra loro, o se invece accumunarli da un prefisso che li renda intuitivamente riconducibili alla loro funzionalità.

Esempi del primo approccio di traduzione:

- `headcover` = `copricapo`
- `handscover` = `guanti`
- `feetcover` = `calzari`
- `topcover` = `superiore`
- `botcover` = `inferiore`

... purtroppo questo approccio non garantisce termini che ricoprano la funzione generale del vestiario per tutti le voci — laddove `copricapo` è un termine abbastanza generico per qualsiasi tipo di indumento indossabile in testa, `guanti` non è altrettanto elastico nel suo significato — e i termini `topcover` e `botcover` rischiano di essere tradotti con vocaboli poco rappresentativi della loro reale funzione.

Esempi del secondo approccio:

- `headcover` = `vestiario_testa`
- `handscover` = `vestiario_mani`
- `feetcover` = `vestiario_piedi`
- `topcover` = `vestiario_busto`
- `botcover` = `vestiario_gambe`

In questo caso, ogni attributo rappresenta chiaramente la funzione che ricopre: il suffisso conferisce un'omogeneità intuitiva a questo gruppo di attributi, semplificandone la memorizzazione. L'unico svantaggio è la lunghezza delle parole.

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
2. Ogni indumento nel `wearing` del giocatore viene collocato in `worn` e settato come `donned`.
3. Ogni indumento nel `wearing` di un PNG viene collocato nel PNG e settato come `donned`.
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
                MAKE THIS donned.
            END IF.
        ELSIF THIS IN wearing OF ac AND THIS <> null_clothing
            THEN
              IF THIS NOT IN ac
                THEN
                  LOCATE THIS IN ac.
              END IF.
              MAKE THIS donned.
        END IF.
    END FOR.

```


# La Tabella del Vestiario

> _**DA TRADURRE**_ — Questa tabella va tradotta in italiano, sia i termini di esempio della prima colonna che i termini degli attributi nelle rimanenti colonne (ma per questi ultimi, sto ancora lavorando sulla possibile terminologia da adottare).

| Clothing               | Headcover | Topcover | Botcover | Footcover | Handcover |
| ---------------------- | -------:  | ------:  | ------:  | -------:  | -------:  |
| hat                    | 2         | 0        | 0        | 0         | 0         |
| vest/bra               | 0         | 2        | 0        | 0         | 0         |
| undies/panties         | 0         | 0        | 2        | 0         | 0         |
| teddy                  | 0         | 4        | 4        | 0         | 0         |
| blouse/shirt/T-shirt   | 0         | 8        | 0        | 0         | 0         |
| dress/coveralls        | 0         | 8        | 32       | 0         | 0         |
| skirt                  | 0         | 0        | 32       | 0         | 0         |
| trousers/shorts        | 0         | 0        | 16       | 0         | 0         |
| sweater/pullover       | 0         | 16       | 0        | 0         | 0         |
| jacket                 | 0         | 32       | 0        | 0         | 0         |
| coat                   | 0         | 64       | 64       | 0         | 0         |
| socks/stockings        | 0         | 0        | 0        | 2         | 0         |
| tights/pantiehose      | 0         | 0        | 8        | 2         | 0         |
| shoes/boots            | 0         | 0        | 0        | 4         | 0         |
| gloves                 | 0         | 0        | 0        | 0         | 2         |

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


