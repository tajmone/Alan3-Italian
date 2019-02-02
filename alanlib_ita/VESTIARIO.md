# Il Vestiario in Alan StdLib

    ultima modifica: 2019/02/02

Appunti su come viene gestito il vestiario nella Libreria Standard di Alan.

> _**WIP**_ — Questo documento è ancora una bozza incompleta.

<!-- sep -->

> _**AVVERTENZA**_ — Allo stato attuale sono stati rilevati svariati problemi con le funzionalità del vestiario; sono quindi imminenti modifiche strutturali al codice della libreria che gestisce gli indumenti indossati e rimossi.
> 
> A breve, questo documento potrebbe non rispecchiare eventuali cambiamenti apportati in seguito alla data della sua ultima revisione.

-----

**Indice**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introduzione](#introduzione)
    - [`abbigliamento` e `indossati`](#abbigliamento-e-indossati)
    - [La classe `indumento` ed i suoi attributi](#la-classe-indumento-ed-i-suoi-attributi)
        - [`indumento_fittizio`](#indumento_fittizio)
    - [Inizializzazione del Vestiario](#inizializzazione-del-vestiario)
- [La Tabella del Vestiario](#la-tabella-del-vestiario)

<!-- /MarkdownTOC -->

-----

# Introduzione

La libreria standard predispone un sistema articolato per la gestione del vestiario, sia dell'Eroe (`hero`) che degli altri personaggi (classe `actor`), che tiene conto delle aree del corpo che ciascun indumento va a ricoprire, nonché dell'ordine startificato in cui il vestiario deve essere indossato e rimosso.

La mappatura del vestiario alle zone del corpo ricoperte, così come la stratificazione d'indossamento, è gestita tramite attributi di tipo numerico presenti in ogni istanza di vestiario (classe `indumento`).

La libreria predispone inoltre un sistema (opzionale) per distinguere il vestiario in genere di appartenenza (maschio/femmina, o anche adulto/bambino, ecc.), tramite l'attributo numerico `genere`, al fine di prevenire che il giocatore indossi indumenti non consoni al suo genere d'appartenenza.

## `abbigliamento` e `indossati`

A ogni attore viene assegnato l'attributo d'_insieme_ `indossati` (un _set_) contentente riferimenti a instanze di tipo `indumento`, con valore di default `indumento_fittizio`.


## La classe `indumento` ed i suoi attributi

Un indumento deve essere dichiarato come istanza della classe `indumento` (sottoclasse di `object`).

Questa classe sovrascrive alcuni valori predefiniti di attributi comuni a tutte le cose (classe `thing` e derivati):

```alan
  IS indossabile.
```

... laddove tutti gli altri oggetti sono dichiarati come `NOT indossabile`.

Inoltre, questa classe introduce nuovi attributi speciali per il vestiario, non condivisi con altri tipi di oggetti:

|  attributo   |   tipo   | default |                                descrizione                                 |
|--------------|----------|---------|----------------------------------------------------------------------------|
| `val_testa`  | numerico | 0       | (vedi _[Tabella del Vestiario]_, più sotto)                                |
| `val_mani`   | numerico | 0       | _idem_                                                                     |
| `val_piedi`  | numerico | 0       | _idem_                                                                     |
| `val_tronco` | numerico | 0       | _idem_                                                                     |
| `val_gambe`  | numerico | 0       | _idem_                                                                     |
| `indossato`  | booleano | `NOT`   | (_uso interno_) Indica se l'indumento è indossato da qualcuno (hero o PNG) |


### `indumento_fittizio`

`indumento_fittizio` è instanza "dummy" di `indumento`, creata dalla libreria ed assegnata ad ogni attore come valore segnaposto predefinito per l'attributo `indossati` (di tipo _set_), al fine di restringere le instanze consentite nel set ai discendenti di `indumento`. Durante l'inizializzazione delle libreria, `indumento_fittizio` viene eliminato dal set degli `indossati`:

```alan
ADD TO EVERY ACTOR
  INITIALIZE
    ...
    -- Rimuovi l'indumento fittizio dagli 'indossati' di ogni attore:
    EXCLUDE indumento_fittizio FROM THIS:indossati.
```

## Inizializzazione del Vestiario

Durante l'inizializzazione, la libreria si occuperà della gestione automatizzata del vestiario.

1. Ogni indumento collocato nell'`abbigliamento` viene incluso negli `indossati` dell'Eroe.
2. Ogni indumento negli `indossati` dell'Eroe viene collocato nell'`abbigliamento` e settato come `indossato`.
3. Ogni indumento negli `indossati` di un PNG viene collocato nel PNG (`IN <actor>`) e settato come `indossato`.
4. Qualsiasi oggetto contenuto in un indumento (p.es. un portafoglio in una giacca) verrà autmomaticamente aggiunto al set degli oggetti `consentiti` (attr. definito su `thing`) per quell'indumento, sì da potervelo rimettere dopo averlo estratto.

Dei controlli anologhi vengono eseguiti ad ogni turno (tramite l'evento `controlla_indossati`) per assicurarsi che i capi di vestiario acquisiti dagli attori nel corso del gioco vengano gestiti correttamente.

- [`lib_classi_vestiario.i`][lib_classi_vestiario] v0.13.0-Alpha:

```alan
EVERY indumento IsA OBJECT
  ...

  INITIALIZE

    -- L'attributo d'insieme 'indossati' è concepito per funzionare sia con
    -- l'Eroe che con i PNG:

    IF THIS IN abbigliamento
      THEN INCLUDE THIS IN indossati OF hero.
    END IF.

    FOR EACH ac IsA ACTOR
      DO
        IF ac = hero
          THEN
            IF THIS IN indossati OF hero AND THIS <> indumento_fittizio
              THEN
                IF THIS NOT IN abbigliamento
                  THEN LOCATE THIS IN abbigliamento.
                END IF.
                MAKE THIS indossato.
            END IF.
        ELSIF THIS IN indossati OF ac AND THIS <> indumento_fittizio
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

| Indumento                         | val_testa | val_tronco | val_gambe | val_piedi | val_mani |
| ----------------------            | -------:  | ------:    | ------:   | -------:  | -------: |
| cappello                          | **2**     | 0          | 0         | 0         | 0        |
| canottiera/reggiseno              | 0         | **2**      | 0         | 0         | 0        |
| mutande/slip                      | 0         | 0          | **2**     | 0         | 0        |
| pagliaccetto                      | 0         | **4**      | **4**     | 0         | 0        |
| blusa/camicia/T-shirt             | 0         | **8**      | 0         | 0         | 0        |
| salopette/abito donna/tuta lavoro | 0         | **8**      | **32**    | 0         | 0        |
| gonna                             | 0         | 0          | **32**    | 0         | 0        |
| pantaloni/pantaloncini            | 0         | 0          | **16**    | 0         | 0        |
| maglione/pullover                 | 0         | **16**     | 0         | 0         | 0        |
| giacca                            | 0         | **32**     | 0         | 0         | 0        |
| cappotto                          | 0         | **64**     | **64**    | 0         | 0        |
| calze/gambaletti                  | 0         | 0          | 0         | **2**     | 0        |
| collant/calzamaglia               | 0         | 0          | **8**     | **2**     | 0        |
| scarpe/stivali                    | 0         | 0          | 0         | **4**     | 0        |
| guanti                            | 0         | 0          | 0         | 0         | **2**    |

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

[lib_classi_vestiario]: ./lib_classi_vestiario.i

<!-- eof -->