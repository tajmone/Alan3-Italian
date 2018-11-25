# CHANGELOG

    Status: Alpha stage | Log Range: Alpha v0.8.0–.

Changelog of Italian translation of Alan Standard Library v2.1.

This is the current changelog from Alpha v0.8.0 upward — the CHANGELOG was split into two files due to its huge size.

For previuos changes, see:

- [`CHANGELOG_OLD.md`](./CHANGELOG_OLD.md)  (v0.0.1–0.8.0)


-----

**Indice**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [2018/11/25 \(2\)](#20181125-2)
    - [Aggiornamento Doxter](#aggiornamento-doxter)
- [2018/11/25 \(1\)](#20181125-1)
    - [Messaggi dei verbi](#messaggi-dei-verbi)
        - [Traduci messaggi dei verbi](#traduci-messaggi-dei-verbi)
        - [Nuovi messaggi dei verbi](#nuovi-messaggi-dei-verbi)
        - [Sostituisci messaggi inglesi dei verbi](#sostituisci-messaggi-inglesi-dei-verbi)
- [2018/11/24](#20181124)
    - [Messaggi dei verbi](#messaggi-dei-verbi-1)
        - [Correggi baco in `chiedi`](#correggi-baco-in-chiedi)
        - [Sostituisci messaggi inglesi dei verbi](#sostituisci-messaggi-inglesi-dei-verbi-1)
        - [Traduci messaggi dei verbi](#traduci-messaggi-dei-verbi-1)
    - [Nuovi messaggi dei verbi](#nuovi-messaggi-dei-verbi-1)
- [2018/11/23 \(2\)](#20181123-2)
    - [Rinomina messaggi dei verbi](#rinomina-messaggi-dei-verbi)
    - [Sostituisci messaggi inglesi dei verbi](#sostituisci-messaggi-inglesi-dei-verbi-2)
    - [Traduci Messaggi dei verbi](#traduci-messaggi-dei-verbi-2)
- [2018/11/23 \(1\)](#20181123-1)
    - [Correggi Baco LIQUIDI](#correggi-baco-liquidi)
- [2018/11/22 \(5\)](#20181122-5)
    - [Messaggi dei verbi](#messaggi-dei-verbi-2)
        - [Elimina Messaggi dei verbi](#elimina-messaggi-dei-verbi)
        - [Nuovi Messaggi dei verbi](#nuovi-messaggi-dei-verbi-2)
- [2018/11/22 \(4\)](#20181122-4)
    - [Correggi Baco in LIQUIDO](#correggi-baco-in-liquido)
- [2018/11/22 \(3\)](#20181122-3)
    - [Documentazione](#documentazione)
    - [Verbi](#verbi)
    - [Messaggi dei verbi](#messaggi-dei-verbi-3)
- [2018/11/22 \(2\)](#20181122-2)
    - [Suddivisione modulo messaggi](#suddivisione-modulo-messaggi)
    - [Passa alla v0.9.0](#passa-alla-v090)
- [2018/11/22 \(1\)](#20181122-1)
    - [Messaggi dei verbi](#messaggi-dei-verbi-4)
        - [Rinomina attributi](#rinomina-attributi)
        - [Azioni insensate](#azioni-insensate)
        - [Azioni Futili](#azioni-futili)
- [2018/11/20](#20181120)
    - [Documentazione Messaggi](#documentazione-messaggi)
    - [Rinomina messaggi dei verbi](#rinomina-messaggi-dei-verbi-1)
- [2018/11/16](#20181116)
    - [Documentazione verbi](#documentazione-verbi)
- [2018/11/15](#20181115)
    - [Documentazione verbi](#documentazione-verbi-1)
- [2018/11/13 \(2\)](#20181113-2)
    - [Pulizia documentazione verbi](#pulizia-documentazione-verbi)
    - [Documenta il baco della "è"](#documenta-il-baco-della-%C3%A8)
- [2018/11/13 \(1\)](#20181113-1)
    - [Passa alla v0.8.0: Tutti i verbi tradotti](#passa-alla-v080-tutti-i-verbi-tradotti)

<!-- /MarkdownTOC -->

-----


# 2018/11/25 (2)

- [`libreria.i`][libreria] (v0.9.1)
- [`lib_classi.i`][lib_classi] (v0.9.3)
- [`lib_definizioni.i`][lib_definizioni] (v0.9.1)
- [`lib_luoghi.i`][lib_luoghi] (v0.9.1)
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] (v0.9.2)
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] (v0.9.6)
- [`lib_verbi.i`][lib_verbi] (v0.9.6)
- [`lib_supplemento.i`][lib_supplemento] (v0.9.1)

## Aggiornamento Doxter

L'aggiornamento a Doxter v0.2.4-alpha ha richiesto delle piccole modifiche in elementi comuni a tutti i moduli della libreria (lo spazio dopo un marcatore Doxter è ora obbligatorio).

<!---------------------------------------------------------------------------->

# 2018/11/25 (1)

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] (v0.9.5)
- [`lib_verbi.i`][lib_verbi] (v0.9.5)


## Messaggi dei verbi

### Traduci messaggi dei verbi

Tradotti i seguenti attributi per i messaggi di risposta dei verbi:

|           Attributo EN           |       Attributo IT      |                       Testo                        |
|----------------------------------|-------------------------|----------------------------------------------------|
| `check_obj_not_scenery_sg`/`pl`  | `ogg1_scenario_sg`/`pl` | `"$+1 non [è/sono] importante ai fini del gioco."` |
| `check_obj2_not_scenery_sg`/`pl` | `ogg2_scenario_pl`/`pl` | `"$+2 non [è/sono] importante ai fini del gioco."` |

Gli attributi originali inglesi sono stati eliminati.

### Nuovi messaggi dei verbi

Creati nuovi attributi per i messaggi di risposta dei verbi (nessuna controparte nella libreria originale inglese):

|           Attributo           |                  Testo                   |
|-------------------------------|------------------------------------------|
| `impossibile_maneggiare_liq1` | `"Non puoi maneggiare $+1 a mani nude."` |


### Sostituisci messaggi inglesi dei verbi

Sostituisci tutte le occorrenze degli attributi inglesi per i messaggi di risposta dei verbi con attributi italiani:


|       Attributo EN      |    Attributo IT    |
|-------------------------|--------------------|
| `illegal_parameter_act` | `azione_insensata` |

Gli attributi originali inglesi sono stati eliminati.



<!---------------------------------------------------------------------------->

# 2018/11/24

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] (v0.9.4)
- [`lib_verbi.i`][lib_verbi] (v0.9.4)

## Messaggi dei verbi

Tradotte varie risposte nel corpo dei verbi.

### Correggi baco in `chiedi`

Corretto baco nel verbo `chiedi`, dove un CHECK impiegava i messaggi per il parametro sbagliato: `mia_AT:ogg1_distante_sg`/`pl` anziché  `mia_AT:ogg2_distante_sg`/`pl`.

### Sostituisci messaggi inglesi dei verbi

Sostituisci tutte le occorrenze degli attributi inglesi per i messaggi di risposta dei verbi con attributi italiani:

|            Attributo EN           |         Attributo IT        |
|-----------------------------------|-----------------------------|
| `check_obj_not_hero1`             | `azione_insensata`          |
| `check_obj_suitable_with_sg`/`pl` | `ogg1_inadatto_CON_sg`/`pl` |
| `illegal_parameter_with_sg`/`pl`  | `ogg1_inadatto_CON_sg`/`pl` |
| `illegal_parameter_with_sg`/`pl`  | `ogg2_inadatto_CON_sg`/`pl` |

Gli attributi originali inglesi sono stati eliminati.


### Traduci messaggi dei verbi

Tradotti i seguenti attributi per i messaggi di risposta dei verbi:

|      Attributo EN     |            Attributo IT            |                         Testo                         |
|-----------------------|------------------------------------|-------------------------------------------------------|
| `check_act_near_hero` | `impossibile_seguire_png1_sg`/`pl` | `"Non hai idea di dove si [trovi/trovino] $+1 [...]"` |
| `check_obj_not_hero6` | `azione_irrelevante`               | `"Hai cose più importanti a cui pensare."`            |


#### Messaggio in quattro attributi

Nel verbo `chiedi`, il seguente attributo inglese:

|        Attributo EN       |          Testo           |
|---------------------------|--------------------------|
| `check_obj_reachable_ask` | `"$+1 can't reach $+2."` |

ha richiesto quattro attributi distinti in italiano, poiché entrambi i parametri cui fa riferimento potrebbero essere singolari o plurali:

|             Attributo IT            |                              Testo                              |
|-------------------------------------|-----------------------------------------------------------------|
| `ogg2_sg_non_raggiungibile_png1_sg` | `"$+1 non può prendere $+2, è fuori dalla sua portata."`        |
| `ogg2_sg_non_raggiungibile_png1_pl` | `"$+1 non possono prendere $+2, è fuori dalla sua portata."`    |
| `ogg2_pl_non_raggiungibile_png1_sg` | `"$+1 non può prendere $+2, sono fuori dalla sua portata."`     |
| `ogg2_pl_non_raggiungibile_png1_pl` | `"$+1 non possono prendere $+2, sono fuori dalla sua portata."` |

Nel codice del verbo si sono dovuti inserire altrettanti controlli:

```alan
THEN
  IF ogg IS NOT plurale
    THEN
      IF png IS NOT plurale
        THEN SAY mia_AT:ogg1_sg_non_raggiungibile_png2_sg.
        ELSE SAY mia_AT:ogg1_sg_non_raggiungibile_png2_pl.
      END IF.
    ELSE
      IF png IS NOT plurale
        THEN SAY mia_AT:ogg1_pl_non_raggiungibile_png2_sg.
        ELSE SAY mia_AT:ogg1_pl_non_raggiungibile_png2_pl.
      END IF.
  END IF.
```

L'attributo originale inglese è stato elimato (non era utilizzato in altri verbi).


## Nuovi messaggi dei verbi

Creati nuovi attributi per i messaggi di risposta dei verbi (nessuna controparte nella libreria originale inglese):

|         Attributo         |                     Testo                      |
|---------------------------|------------------------------------------------|
| `per_consultare_qlco_USA` | `"Per consultare qualcosa usa CONSULTA [...]"` |



<!---------------------------------------------------------------------------->

# 2018/11/23 (2)

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] (v0.9.3)
- [`lib_verbi.i`][lib_verbi] (v0.9.3)

Annota il codice sorgente.

<!-- Aggiorna documentazione della messaggistica di libreria. -->

## Rinomina messaggi dei verbi

Rinominati gli attributi per i messaggi di risposta dei verbi secondo nuovi criteri:

- Usa `png1` e `png2` per messaggi che fanno riferimenti a parametri che sono esclusivamente attori.


|          Vecchio ID          |         Nuovo ID         |
|------------------------------|--------------------------|
| `ogg1_png_non_apprezzerebbe` | `png1_non_apprezzerebbe` |


## Sostituisci messaggi inglesi dei verbi

Sostituisci tutte le occorrenze degli attributi inglesi per i messaggi di risposta dei verbi con attributi italiani:

|      Attributo EN      |        Attributo IT       |
|------------------------|---------------------------|
| `check_obj_inanimate2` |  `png1_non_apprezzerebbe` |

Gli attributi originali inglesi sono stati eliminati.

## Traduci Messaggi dei verbi

Tradotti i seguenti attributi per i messaggi di risposta dei verbi:

|           Attributo EN           |          Attributo IT          |
|----------------------------------|--------------------------------|
| `illegal_parameter_talk_sg`/`pl` | `ogg1_non_può_capirti_sg`/`pl` |
| `illegal_parameter_talk_sg`/`pl` | `ogg2_non_può_capirti_sg`/`pl` |
| `check_act_can_talk_sg`/`pl`     | `ogg1_non_può_capirti_sg`/`pl` |
| `check_act_can_talk_sg`/`pl`     | `ogg2_non_può_capirti_sg`/`pl` |

Dove in italiano le risposte sono:

|          Attributo IT          |                   Testo                   |
|--------------------------------|-------------------------------------------|
| `ogg1_non_può_capirti_sg`/`pl` | `"$+1 non [è/sono] in grado di capirti."` |
| `ogg2_non_può_capirti_sg`/`pl` | `"$+2 non [è/sono] in grado di capirti."` |

<!---------------------------------------------------------------------------->

# 2018/11/23 (1)

- [`lib_classi.i`][lib_classi] (v0.9.2)

## Correggi Baco LIQUIDI

Risolto il baco per cui dopo aver tentato di riempire un contenitore con un liquido (verbo `riempi_con`, azione bloccata di default) il `recipiente` del liquido veniva sempre e comunque cambiato nel contenitore menzionato nel verbo, a prescindere dall'esito dell'azione.

- Modifica l'evento `check_vessel` di modo che, a ogni turno, il `recipiente` di ogni `liquido` venga settato al `contenitore_elenecato` in cui esso è direttamente contenuto.
- Elimina il verbo `riempi_con` implementato sulla classe `liquido`.

Per maggiori dettagli, vedi [AlanStdLib/#39] e la [soluzione proposta in #47] da @AnssiR66.

[AlanStdLib/#39]: https://github.com/AnssiR66/AlanStdLib/issues/39
[soluzione proposta in #47]: https://github.com/AnssiR66/AlanStdLib/pull/47#issuecomment-441152924


<!---------------------------------------------------------------------------->

# 2018/11/22 (5)

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] (v0.9.2)
- [`lib_verbi.i`][lib_verbi] (v0.9.2)

## Messaggi dei verbi

### Elimina Messaggi dei verbi

Elimina attributi inglesi per i messaggi di risposta dei verbi:

|             Attributo              |                    Testo                    |
|------------------------------------|---------------------------------------------|
| `check_obj_not_on_surface_sg`/`pl` | `"$+1 [is/are] already on $+2."`            |
| `check_obj_suitable_on_sg`/`pl`    | `"That's not something you can $v on."`     |
| `illegal_parameter2_there`         | `"It's not possible to $v anything there."` |

Nel verbo in cui venivano utilizzati `check_obj_not_on_surface_sg`/`pl` (solo in `metti_su`) è stato più semplice implementare le risposte direttamente nel verbo.

Invece `illegal_parameter2_there`, a seconda del verbo, è stato rimpiazzato da attributi diversi (con preposizioni articolate o improprie).

Gli altri attributi erano rimasti nel modulo messaggi ma non erano più utilizzati nei verbi.

### Nuovi Messaggi dei verbi

Creati nuovi attributi per i messaggi di risposta dei verbi (usati per rimpiazzare svariati attributi della libreria originale inglese le cui traduzioni in si sovrappongono a quelle italiane):

|           Attributo            |                      Testo                       |
|--------------------------------|--------------------------------------------------|
| `ogg2_inadatto_SU_sg`/`pl`     | `"$+2 non [è/sono] qualcosa su cui poter"`       |
| `ogg2_inadatto_CONTRO_sg`/`pl` | `"$+2 non [è/sono] qualcosa contro cui poter"`   |
| `ogg2_inadatto_DIETRO_sg`/`pl` | `"$+2 non [è/sono] qualcosa dietro cui poter"`   |
| `ogg2_inadatto_SOTTO_sg`/`pl`  | `"$+2 non [è/sono] qualcosa sottocui poter"`     |
| `ogg2_inadatto_VICINO_sg`/`pl` | `"$+2 non [è/sono] qualcosa vicino a cui poter"` |

<!---------------------------------------------------------------------------->

# 2018/11/22 (4)

- [`lib_classi.i`][lib_classi] (v0.9.1)

## Correggi Baco in LIQUIDO

Il verbo `metti_su` implementato sulla classe `liquido` non spostava il contenitore del liquido sulla superficie indicata dal parametro, si limitava a dire di averlo fatto.

<!---------------------------------------------------------------------------->

# 2018/11/22 (3)

- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] (v0.9.1)
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] (v0.9.1)
- [`lib_verbi.i`][lib_verbi] (v0.9.1)

## Documentazione

Riorganizza e metti un po' in ordine la documentazione Doxter.

## Verbi

Sostituisi attributi di risposte inglesi con attributi italiani già tradotti ma non ancora sostituiti.

Annota gli attributi messagi non ancora tradotti.

## Messaggi dei verbi

Tradotti i seguenti attributi per i messaggi di risposta dei verbi:

|        Attributo EN       |     Attributo IT     |         Testo         |
|---------------------------|----------------------|-----------------------|
| `check_obj_not_in_hero2`  | `ogg1_già_posseduto` | `"Possiedi già $+1."` |
| `check_obj2_not_in_hero3` | `ogg2_già_posseduto` | `"Possiedi già $+2."` |

Gli attributi originali inglesi sono stati eliminati.


<!---------------------------------------------------------------------------->

# 2018/11/22 (2)

- [`libreria.i`][libreria] (v0.9.0)
- [`lib_classi.i`][lib_classi] (v0.9.0)
- [`lib_definizioni.i`][lib_definizioni] (v0.9.0)
- [`lib_luoghi.i`][lib_luoghi] (v0.9.0)
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] (v0.9.0)
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] (v0.9.0)
- [`lib_verbi.i`][lib_verbi] (v0.9.0)
- [`lib_supplemento.i`][lib_supplemento] (v0.9.0)

## Suddivisione modulo messaggi

Per ragioni pratiche, il modulo `lib_messaggi.i` è stato diviso in due moduli distinti:

- [`lib_messaggi_runtime.i`][lib_messaggi_runtime]
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria]

## Passa alla v0.9.0

Tutti i moduli della libreria passano alla versione 0.9.0.


-------------------------------------------------------------------------------

# 2018/11/22 (1)

- [`lib_messaggi.i`][lib_messaggi_libreria] (v0.8.3)
- [`lib_verbi.i`][lib_verbi] (v0.8.5)

## Messaggi dei verbi

### Rinomina attributi

Rinominati i seguenti attributi per i messaggi di risposta dei verbi:

|        Vecchio ID        |     Nuovo ID    |               Testo               |
|--------------------------|-----------------|-----------------------------------|
| `non_servirebbe_a_nulla` | `azione_futile` | `"Farlo non servirebbe a nulla."` |

### Azioni insensate

Tutte le occorrenze dei seguenti attributi sono stati rimpiazzate con `azione_insensata` ("Questo non ha alcun senso."):

|        Attributo EN       |            Testo             |
|---------------------------|------------------------------|
| `check_cont_not_in_obj`   | `"That doesn't make sense."` |

Gli attributi originali inglesi sono stati eliminati.

#### Usare un oggetto su se stesso

Anche le occorrenze dei seguenti attributi sono stati rimpiazzate con `azione_insensata`:

|        Attributo EN       |                         Testo                          |
|---------------------------|--------------------------------------------------------|
| `check_obj_not_obj2_at`   | `"It doesn't make sense to $v something at itself."`   |
| `check_obj_not_obj2_from` | `"It doesn't make sense to $v something from itself."` |
| `check_obj_not_obj2_in`   | `"It doesn't make sense to $v something into itself."` |
| `check_obj_not_obj2_on`   | `"It doesn't make sense to $v something onto itself."` |
| `check_obj_not_obj2_put`  | `"That doesn't make sense."`                           |
| `check_obj_not_obj2_to`   | `"It doesn't make sense to $v something to itself."`   |
| `check_obj_not_obj2_with` | `"It doesn't make sense to $v something with itself."` |

Gli attributi originali inglesi sono stati eliminati.

La libreria originale inglese utilizzava questi messaggi nei verbi con parametri multipli, quando il giocatore tenta di usare un oggetto su se stesso.

In italiano non è possibile utilizzare dei modelli di risposta altrettanto flessibili, soprattutto per l'impossibilità a utilizzare `$v` nelle risposte (a noi serve l'infinito del verbo). Per evitare macchinose complicazioni, tutti questi messaggi sono stati rimpiazzati con l'attributo `azione_insensata`, già presente nella libreria.

Il contesto dell'errore è sufficientemente chiaro da non richiedere ulteriori spiegazioni, perciò il messaggio "Questo non ha alcun senso." dovrebbe bastare. Quindi, per ora utilizzerò questa soluzione, se poi mi viene in mente una soluzione migliore la implementerò.

> __NOTA__ — In teoria, potrebbero presentarsi casi in cui l'errore è dovuto all'uso di sinonimi implementati come escamotage per creare l'illusione di due oggetti diversi nel gioco, ma in simili casi un messaggio di risposta che utilizzi `$+1` e `$+2` creerebbe solo più confusione dato che Alan mostrerebbe per entrambi il nome principale dell'oggetto e non il sinonimo digitato dal giocatore. 

### Azioni Futili

Tutte le occorrenze dei seguenti attributi sono stati rimpiazzate con `azione_futile` ("Farlo non servirebbe a nulla."):

|        Attributo EN       |            Testo             |
|---------------------------|------------------------------|
| `check_obj2_not_hero2`    | `"That would be futile."`    |
| `check_obj2_not_in_hero2` | `"That would be futile."`    |

Gli attributi originali inglesi sono stati eliminati.


<!---------------------------------------------------------------------------->

# 2018/11/20

- [`lib_classi.i`][lib_classi] (v0.8.1)
- [`lib_definizioni.i`][lib_definizioni] (v0.8.1)
- [`lib_messaggi.i`][lib_messaggi_libreria] (v0.8.2)
- [`lib_verbi.i`][lib_verbi] (v0.8.4)
- [`lib_luoghi.i`][lib_luoghi] (v0.8.1)
- [`lib_supplemento.i`][lib_supplemento] (v0.8.1)


Correggi maiuscole nei titoli.

## Documentazione Messaggi

Aggiungi note riguardo l'uso del simbolo speciale `$v` nei messaggi di risposta dei verbi, e i relativi problemi riguardo la formazione del verbo infinito.

Inizia a documentare le abbreviazioni e convenzioni adottate negli identificativi degli attributi stringa dei messaggi.

## Rinomina messaggi dei verbi

Rinominati in `ogg?_inadatto_*` tutti gli attributi per i messaggi dei verbi che avevano il nome `ogg?_illegale_*`.

|          Vecchio ID         |           Nuovo ID          |
|-----------------------------|-----------------------------|
| `ogg1_illegale_DA_sg`/`pl`  | `ogg1_inadatto_DA_sg`/`pl`  |
| `ogg1_illegale_A_sg`/`pl`   | `ogg1_inadatto_A_sg`/`pl`   |
| `ogg2_illegale_A_sg`/`pl`   | `ogg2_inadatto_A_sg`/`pl`   |
| `ogg1_illegale_IN_sg`/`pl`  | `ogg1_inadatto_IN_sg`/`pl`  |
| `ogg2_illegale_IN_sg`/`pl`  | `ogg2_inadatto_IN_sg`/`pl`  |
| `ogg1_illegale_SU_sg`/`pl`  | `ogg1_inadatto_SU_sg`/`pl`  |
| `ogg1_illegale_CON_sg`/`pl` | `ogg1_inadatto_CON_sg`/`pl` |
| `ogg2_illegale_CON_sg`/`pl` | `ogg2_inadatto_CON_sg`/`pl` |



<!---------------------------------------------------------------------------->

# 2018/11/16

- [`lib_messaggi.i`][lib_messaggi_libreria] (v0.8.1)
- [`lib_verbi.i`][lib_verbi] (v0.8.2)

## Documentazione verbi

Aggiungi commenti Doxter per documentare "Descrizioni Brevi e Lunghe" e menziona l'attuale baco della libreria che ne impedisce il corretto funzionamento.

Inizia a documentare il modulo dei messaggi.

<!---------------------------------------------------------------------------->


# 2018/11/15

- [`lib_verbi.i`][lib_verbi] (v0.8.2)

## Documentazione verbi

Aggiungi commenti Doxter per documentare i verbi preposti al controllo della trascrizione della partita.

-------------------------------------------------------------------------------

# 2018/11/13 (2)

- [`lib_verbi.i`][lib_verbi] (v0.8.1)

## Pulizia documentazione verbi

Questo commit mette un po' d'ordine nella documentazione dei verbi:

- Organizza meglio il gruppo dei "Verbi di Domande".

## Documenta il baco della "è"

- Documenta il baco della `è` grave nelle sintassi.

Inoltre, i verbi di domande che coinvolgono la "è" sono stati modificati: prima tutte le `è` erano stato sostituite da `é`; ora i verbi sono definiti usando la `è` grave come sintassi primaria, e la `é` acuta è utilizzata per creare sintassi alternative che raggirino il baco. Questo fa sì che quando il baco verrà risolto sarà possibile rimuovere le sintassi alternative e preservare quelle primarie.

- Crea test per i verbi di domande e il baco `è`.

È stato aggiunto file di test apposito per testare il baco della `è` e il funzionamento delle sintassi alternative che ripiegano sulla `é`:

- [`../test/casa_verbi-domande.a3sol`](../test/casa_verbi-domande.a3sol)
- [`../test/casa_verbi-domande.a3log`](../test/casa_verbi-domande.a3log)

Grazie alle trascrizioni dei test, sarà possibile rilevare automaticamente eventuali modifiche del comportamento di Alan quando, in futuro, verrà risolto il baco.

<!---------------------------------------------------------------------------->

# 2018/11/13 (1)

- [`libreria.i`][libreria] (v0.8.0)
- [`lib_classi.i`][lib_classi] (v0.8.0)
- [`lib_definizioni.i`][lib_definizioni] (v0.8.0)
- [`lib_luoghi.i`][lib_luoghi] (v0.8.0)
- [`lib_messaggi.i`][lib_messaggi_libreria] (v0.8.0)
- [`lib_verbi.i`][lib_verbi] (v0.8.0)
- [`lib_supplemento.i`][lib_supplemento] (v0.8.0)

## Passa alla v0.8.0: Tutti i verbi tradotti

Con questo commit tutti i verbi della libreria ed i corrispettivi attributi di restrizione sono stati tradotti in italiano.

Tutti i moduli della libreria passano alla versione 0.8.0.



<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

<!-- NOMI FILE LIBRERIA (NUOVI) -->

[libreria]:              ./libreria.i
[lib_classi]:            ./lib_classi.i
[lib_definizioni]:       ./lib_definizioni.i
[lib_luoghi]:            ./lib_luoghi.i
[lib_messaggi_runtime]:  ./lib_messaggi_runtime.i
[lib_messaggi_libreria]: ./lib_messaggi_libreria.i
[lib_verbi]:             ./lib_verbi.i
[lib_supplemento]:       ./lib_supplemento.i

[test]: ../test/


<!-- Library Documentation  -->

[Doxter]: https://git.io/doxter "Visit Doxter website"

[ANNOTAZIONI_DOXTER]: ./ANNOTAZIONI_DOXTER.adoc
[BUILD_DOCS]: ./BUILD_DOCS.bat

[lib_verbi adoc]: ./lib_verbi.asciidoc
[lib_verbi html]: ./lib_verbi.html
[lib_verbi html live]: http://htmlpreview.github.io/?https://github.com/tajmone/Alan3-Italian/blob/master/alanlib_ita/lib_verbi.html "Live HTML Preview via GitHub & BitBucket HTML Preview"

<!-- External Links ---------------------------------------------------------->

[Alan StdLib upstream repository]: https://github.com/AnssiR66/AlanStdLib

[AlanStdLib]: https://github.com/AnssiR66/AlanStdLib

[Alan SDK 3.0beta6]: https://www.alanif.se/download-alan-v3/development-kits/development-kits-3-0beta6

<!-- StdLib Issues & PRs ----------------------------------------------------->


<!-- EOF -->