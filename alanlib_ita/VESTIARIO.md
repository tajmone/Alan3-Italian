# Il Vestiario in Alan StdLib

    ultima modifica: 2019/02/13

Appunti come viene gestito il vestiario nella Libreria Standard di Alan allo stato attuale (il sistema originale della libreria inglese).

> _**AVVERTENZA**_ — Allo stato attuale sono stati rilevati svariati problemi con le funzionalità del vestiario; sono quindi imminenti modifiche strutturali al codice della libreria che gestisce gli indumenti indossati e rimossi.
> 
> Per maggiori informazioni, vedi [`VESTIARIO_PROBLEMI.md`](VESTIARIO_PROBLEMI.md)

-----

**Indice**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Panoramica del vestiario](#panoramica-del-vestiario)
- [Dettagli tecnici dell'implementazione](#dettagli-tecnici-dellimplementazione)
    - [La classe `indumento` ed i suoi attributi](#la-classe-indumento-ed-i-suoi-attributi)
    - [Attributo `indossati` degli attori](#attributo-indossati-degli-attori)
        - [L'istanza `indumento_fittizio`](#listanza-indumento_fittizio)
    - [`abbigliamento` dell'Eroe](#abbigliamento-delleroe)
    - [Inizializzazione del Vestiario](#inizializzazione-del-vestiario)
    - [Evento `controlla_indossati`](#evento-controlla_indossati)
- [La Tabella del Vestiario](#la-tabella-del-vestiario)

<!-- /MarkdownTOC -->

-----

# Panoramica del vestiario

La libreria standard predispone un sistema articolato per la gestione del vestiario, sia dell'Eroe (`hero`) che degli altri personaggi (classe `actor`), che tiene conto delle aree del corpo che ciascun indumento va a ricoprire, nonché dell'ordine startificato in cui il vestiario deve essere indossato e rimosso.

La mappatura del vestiario alle zone del corpo ricoperte, così come la stratificazione d'indossamento, è gestita tramite attributi di tipo numerico presenti in ogni istanza di vestiario (classe `indumento`), grazie ai quali la libreria è in grado di calcolare se l'indumento che il giocatore vuole indossare o rimuovere è bloccato da indumenti che lo coprono, o se la zona in cui andrebbe indossato è già occupata. Alcuni tipi di indumenti sono trattati in modo speciale (in base ai loro valori di copertura) per maggior realisimo — p.es. un cappotto e una gonna non impediscono di indossare e rimuovere indumenti che interessano solo la zona delle gambe, ma non è possibile indossare sia pantaloni che gonna.

L'uso dei suddetti valori di copertura del corpo è opzionale, e gli indumenti privi di tali valori (ossia, con valori zero) potranno essere indossati e rimossi senza restrizioni di sorta.

La libreria predispone inoltre un sistema (opzionale) per distinguere il vestiario in genere di appartenenza (maschio/femmina, o anche adulto/bambino, ecc.), tramite l'attributo numerico `genere`, al fine di prevenire che il giocatore indossi indumenti non consoni al suo genere d'appartenenza.

A ogni attore viene assegnato l'attributo d'_insieme_ `indossati` (un _set_) contentente riferimenti a instanze di tipo `indumento`; gli indumenti indossati dall'Eroe vengono trasferiti nell'entità contenitore `abbigliamento`, per consentire all'inventario di elencare separatamente ciò che egli trasporta da ciò che indossa.

# Dettagli tecnici dell'implementazione

## La classe `indumento` ed i suoi attributi

Un indumento deve essere dichiarato come istanza della classe `indumento` (sottoclasse di `object`).

```alan
EVERY indumento IsA OBJECT

  IS indossabile.

  HAS genere 0.     -- Il genere `0` è neutro; qualsiasi altro valore impedirà
                    -- all'eroe di indossare indumenti il cui valore non sia
                    -- uguale al valore di `hero:genere`.
  HAS val_testa  0.
  HAS val_tronco 0.
  HAS val_gambe  0.
  HAS val_piedi  0.
  HAS val_mani   0.

  IS NOT indossato. -- Ossia, non è nel set degli `indossati` di alcun attore.

```

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


## Attributo `indossati` degli attori

A ogni attore viene assegnato (in `lib_classi.i`) l'attributo d'_insieme_ `indossati` (un _set_) contentente riferimenti a instanze di tipo `indumento`, con valore di default `indumento_fittizio`.

```alan
ADD TO EVERY actor
  ...
  HAS indossati { indumento_fittizio }.                     ---> wearing
  -- = the actor's clothing is not specified.
  -- "null_clothing" is a dummy default that can be ignored.
```

### L'istanza `indumento_fittizio`

`indumento_fittizio` è instanza "dummy" di `indumento`, creata dalla libreria (in `lib_classi.i`):

```alan
-- the default dummy clothing object; ignore

THE indumento_fittizio IsA indumento
END THE.
```

Viene assegnata ad ogni attore come valore segnaposto predefinito per l'attributo `indossati` (di tipo _set_), al fine di restringere le instanze consentite nel set ai discendenti di `indumento`. Durante l'inizializzazione delle libreria, `indumento_fittizio` viene eliminato dal set degli `indossati`:

```alan
ADD TO EVERY ACTOR
  INITIALIZE
    ...
    -- Rimuovi l'indumento fittizio dagli 'indossati' di ogni attore:
    EXCLUDE indumento_fittizio FROM THIS:indossati.
```


## `abbigliamento` dell'Eroe

Gli indumenti indossati dall'eroe (a differenza di quelli semplicemente in suo possesso) vengono immagazzinati nell'entità `abbigliamento`, che ha la proprietà contenitore:


```alan
THE abbigliamento IsA ENTITY
  CONTAINER TAKING indumento.
    HEADER
      SAY  mia_AT:header_abbigliamento.
    ELSE
      SAY  mia_AT:header_abbigliamento_else.
END THE.
```

Poiché le entità sono ubiquiescenti nel mondo dell'avventura, l'istanza `abbigliamento` e gli indumenti in essa contenuti saranno sempre accessibili durante il gioco.

Il verbo `inventario`, dopo aver elencato gli oggetti in possesso dell'eroe, elencherà anche gli indumenti da lui indossati tramite l'istruzione `LIST abbigliamento` (che invocherà lo `HEADER` dell'entità contenitore `abbigliamento`). Questo crea l'illusione che gli indumenti indossati siano parte dei possedimenti dell'eroe, mentre in realtà sono contenuti nell'entità `abbigliamento`.


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

## Evento `controlla_indossati`

Questo evento ricorre ad ogni turno ed ha lo scopo di assicurarsi che gli indumenti acquisiti ed indossati dall'Eroe e dai PNG nel corso di partita vengano correttamente inseriti nel seti degli `indossati` e, nel caso dell'Eroe, spostati dentro `abbigliamento`.

```alan
--------------------------------------------------------------------
-- An event checking that clothing acquired and worn by an actor
-- mid-game is recognised to be worn by the actor:
--------------------------------------------------------------------

EVENT controlla_indossati
  FOR EACH ac IsA ACTOR
    DO
      FOR EACH cl IsA indumento, IN indossati OF ac
        DO
          IF ac = hero
            THEN
              IF cl NOT IN abbigliamento
                THEN LOCATE cl IN abbigliamento.
                  MAKE cl indossato.
              END IF.
            ELSE
              IF cl NOT IN ac
                THEN LOCATE cl IN ac.
                  MAKE cl indossato.
              END IF.
          END IF.
      END FOR.
  END FOR.
  SCHEDULE controlla_indossati AFTER 1.
END EVENT.
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