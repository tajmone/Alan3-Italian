# CHANGELOG

    Status: Alpha stage | Log Range: Alpha v0.12.1–.

Changelog of Italian translation of Alan Standard Library v2.1.

This is the current changelog from Alpha v0.12.1 upward — the CHANGELOG was split into two files due to its huge size.

For previuos changes, see:

- [`CHANGELOG_OLD.md`](./CHANGELOG_OLD.md)  (v0.0.1–0.12.1)


-----

**Indice**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Alan 3.0beta6 build 2022](#alan-30beta6-build-2022)
    - [2019/08/25](#20190825)
        - [Verbi](#verbi)
        - [Eventi](#eventi)
        - [Messaggi libreria](#messaggi-libreria)
    - [2019/08/24 \(2\)](#20190824-2)
        - [Verbi](#verbi-1)
        - [Messaggi libreria](#messaggi-libreria-1)
    - [2019/08/24 \(1\)](#20190824-1)
        - [Migliorie sintassi verbi](#migliorie-sintassi-verbi)
        - [Messaggi libreria](#messaggi-libreria-2)
        - [Risposte verbi](#risposte-verbi)
    - [2019/08/22](#20190822)
        - [Passa alla v0.22.0](#passa-alla-v0220)
        - [Passa ad Alan 3.0beta6 build 2022](#passa-ad-alan-30beta6-build-2022)
        - [Pulizia Sorgenti](#pulizia-sorgenti)
        - [Modulo classi](#modulo-classi)
- [Alan 3.0beta6 build 2015](#alan-30beta6-build-2015)
    - [2019/08/19](#20190819)
        - [Correggi e migliora verbo `ascolta`](#correggi-e-migliora-verbo-ascolta)
    - [2019/08/18](#20190818)
        - [Sinonimi "Dentro" e "Sopra"](#sinonimi-dentro-e-sopra)
        - [Problemi vari](#problemi-vari)
    - [2019/08/15](#20190815)
        - [Passa alla v0.21.0](#passa-alla-v0210)
        - [Passa ad Alan 3.0beta6 build 2015](#passa-ad-alan-30beta6-build-2015)
- [Alan 3.0beta6 build 1980](#alan-30beta6-build-1980)
    - [2019/07/28](#20190728)
        - [Liquidi](#liquidi)
        - [Contenitori Elencati](#contenitori-elencati)
        - [Messaggi Libreria](#messaggi-libreria-3)
    - [2019/06/26](#20190626)
        - [Repulisti classi attori](#repulisti-classi-attori)
        - [Verbo `prendi_da` sempre onnipotente](#verbo-prendi_da-sempre-onnipotente)
- [Alan 3.0beta6 build 1980](#alan-30beta6-build-1980-1)
    - [2019/06/16](#20190616)
        - [Nuovi messaggi dei verbi](#nuovi-messaggi-dei-verbi)
        - [Traduci messaggi dei verbi](#traduci-messaggi-dei-verbi)
        - [Elimina messaggi dei verbi](#elimina-messaggi-dei-verbi)
        - [Verbo `prendi_da`](#verbo-prendi_da)
    - [2019/06/15 \(3\)](#20190615-3)
        - [Elimina Verbi Modalità Lunga/Breve](#elimina-verbi-modalit%C3%A0-lungabreve)
    - [2019/06/15 \(2\)](#20190615-2)
        - [Sinonimi Direzioni](#sinonimi-direzioni)
        - [Doxterizza Modulo Luoghi](#doxterizza-modulo-luoghi)
    - [2019/06/15 \(1\)](#20190615-1)
        - [Passa alla v0.20.0](#passa-alla-v0200)
        - [Passa ad Alan 3.0beta6 build 1980](#passa-ad-alan-30beta6-build-1980)
- [Alan 3.0beta6 build 1880](#alan-30beta6-build-1880)
    - [2019/04/02](#20190402)
        - [Modulo Italian unificato](#modulo-italian-unificato)
    - [2019/03/23](#20190323)
        - [Passa alla v0.18.0](#passa-alla-v0180)
        - [Passa ad Alan 3.0beta6 build 1880](#passa-ad-alan-30beta6-build-1880)
        - [Riferimenti di versione](#riferimenti-di-versione)
        - [Modifiche Banner](#modifiche-banner)
- [Alan 3.0beta6 build 1878](#alan-30beta6-build-1878)
    - [2019/02/27](#20190227)
        - [Passa alla v0.17.0](#passa-alla-v0170)
        - [Passa ad Alan 3.0beta6 build 1878](#passa-ad-alan-30beta6-build-1878)
- [Alan 3.0beta6 build 1870](#alan-30beta6-build-1870)
    - [2019/02/21](#20190221)
        - [Passa alla v0.16.0](#passa-alla-v0160)
        - [Passa ad Alan 3.0beta6 build 1870](#passa-ad-alan-30beta6-build-1870)
        - [Aggiornamento vestiario](#aggiornamento-vestiario)
- [Alan 3.0beta6 build 1866](#alan-30beta6-build-1866)
    - [2019/02/19](#20190219)
        - [Passa alla v0.15.0](#passa-alla-v0150)
        - [Rinnovato il codice del vestiario](#rinnovato-il-codice-del-vestiario)
        - [Novità riguardanti il vestiario](#novit%C3%A0-riguardanti-il-vestiario)
        - [Nuovi messaggi dei verbi](#nuovi-messaggi-dei-verbi-1)
    - [2019/02/05](#20190205)
        - [Passa alla v0.14.0](#passa-alla-v0140)
        - [Separa modulo grammatica italiana](#separa-modulo-grammatica-italiana)
        - [Modulo classi](#modulo-classi-1)
        - [Modulo messaggi runtime](#modulo-messaggi-runtime)
    - [2019/02/02 \(2\)](#20190202-2)
        - [Passa alla v0.13.0](#passa-alla-v0130)
        - [Separa modulo classi vestiario](#separa-modulo-classi-vestiario)
        - [Vestiario](#vestiario)
    - [2019/02/02 \(1\)](#20190202-1)
        - [Passa ad Alan 3.0beta6 build 1866](#passa-ad-alan-30beta6-build-1866)

<!-- /MarkdownTOC -->

-----

# Alan 3.0beta6 build 2022

## 2019/08/25

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.22.3
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.22.1
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.22.3

### Verbi

#### Risposte azioni autodirette

Aggiungi messaggi _ad hoc_ nei seguenti verbi se indirizzati al protagonista:

|        verbo        |                   risposta                   |
|---------------------|----------------------------------------------|
| `guarda_in`         | "Ora come ora non è tempo di introspezione." |
| `guarda_attraverso` | `mia_AT:azione_insensata`                    |

### Eventi

Tradotti identificativi eventi:

|  evento EN  |   evento IT   |   in modulo    |
|-------------|---------------|----------------|
| `light_off` | `luci_spente` | `lib_luoghi.i` |

### Messaggi libreria

Eliminati attributi stringa originali inglesi che non erano più utilizzati da alcun verbo:

- `check_obj_not_in_worn2`


Rimpiazzati attributi stringa con testo in loco nel corpo del verbo:

|       attributo       |      verbo      |
|-----------------------|-----------------|
| `check_obj_not_hero5` | `libera`        |
| `check_obj_not_hero7` | `guarda_dietro` |
| `check_obj_not_hero8` | `guarda_sotto`  |


Rimpiazzati attributi stringa inglesi con attributi italiani già tradotti:

|            attributo EN           |      attributo IT      |        verbo        |
|-----------------------------------|------------------------|---------------------|
| `illegal_parameter_look_through`  | `impossibile_guardare` | `guarda_attraverso` |
| `check_obj_suitable_look_through` | `impossibile_guardare` | `guarda_attraverso` |


Tradotto identificativo attributo `dark_loc_desc` in `desc_luogo_buio` (il testo era già stato tradotto).

Tradotti attributi inglesi:

|             attributo EN            |           attributo IT          |                           testo                           |
|-------------------------------------|---------------------------------|-----------------------------------------------------------|
| `light_goes_off`                    | `luci_spente`                   | `"È buio pesto!"`                                         |
| `check_obj_allowed_in_sg`           | `ogg2_[sg/pl]_già_dentro_cont1` | `"$+2 [è/sono] già dentro $+1."`                          |
| `check_obj_not_in_cont2`/`pl`       | `ogg1_non_può_stare_sg`/`pl`    | `"$+1 non [può/possono] stare"`                           |
| `illegal_parameter_consult_sg`/`pl` | `ogg2_inadatto_ricerca_sg`/`pl` | `"$+2 non [è/sono] un valido argomento di ricerca."`/`pl` |


<!---------------------------------------------------------------------------->

## 2019/08/24 (2)

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.22.2
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.22.2

### Verbi

#### Verbi Domande

Tradotti i messaggi per parametri non validi in `cosa_è` e `dove_è`.

Migliorate le risposte quando alcuni di questi verbi vengono usati sul protoganista stesso:

|  verbo   |        esempio        |             risposta            |
|----------|-----------------------|---------------------------------|
| `chi_è`  | &gt; chi è [me/hero]  | Tu sei te. Chi altri?           |
| `cosa_è` | &gt; cosa è [me/hero] | Te! Che altro?                  |
| `dove_è` | &gt; dove è [me/hero] | Ti trovi qui. Dove altro sennò? |


### Messaggi libreria

Tradotti i seguenti attributi per i messaggi di risposta dei verbi:

|           Attributo EN           |    Attributo IT    |        Testo         |
|----------------------------------|--------------------|----------------------|
| `illegal_parameter_what_sg`/`pl` | `ogg1_sconosciuto` | `"Non conosco $+1."` |
| `illegal_parameter_who_sg`/`pl`  | `ogg1_sconosciuto` | `"Non conosco $+1."` |

Sostituite tutte le rimanenti occorrenze di attributi inglesi già tradotti, ed eliminati gli attributi originali inglesi:

|             Attributo EN             |                 Attributo IT                |      verbi       |
|--------------------------------------|---------------------------------------------|------------------|
| `check_obj2_suitable_for_sg`/`pl`    | `ogg2_inadatto_sg`/`pl`                     | `chiedi`         |
| `check_obj2_suitable_there`/`pl`     | `ogg2_inadatto_A_sg`/`pl`                   | `lega_a`         |
| `check_obj2_suitable_there`/`pl`     | `ogg2_inadatto_IN_sg`/`pl`                  | `lancia_in`      |
| `check_obj_not_in_hero1`             | `azione_insensata_ogg1_portato`/`indossato` | `solleva`        |
| `check_obj_suitable_at`              | `ogg2_inadatto_A_sg`/`pl`                   | `lancia_a`       |
| `check_obj_suitable_at`              | `ogg2_inadatto_CONTRO_sg`/`pl`              | `lancia_contro`  |
| `check_obj_suitable_examine_sg`/`pl` | `ogg1_inadatto_sg`/`pl`                     | `esamina`        |
| `check_obj_suitable_sg`/`pl`         | `ogg1_inadatto_sg`                          | `calcia`, `gira` |
| `check_obj_suitable_there`           | `impossibile_guardare`                      | vari `guarda_*`  |
| `illegal_parameter_examine_sg`/`pl`  | `ogg1_inadatto_sg`/`pl`                     | `esamina`        |
| `illegal_parameter_there`            | `impossibile_guardare`                      | vari `guarda_*`  |

Eliminati messaggi originali inglesi che non erano più utilizzati da alcun verbo:

- `check_obj_suitable_off_sg`/`pl`

<!---------------------------------------------------------------------------->

## 2019/08/24 (1)

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.22.1
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.22.1

### Migliorie sintassi verbi

In alcuni verbi, migliorate le clausole `WHERE` di modo che se uno dei parametri è l'Eroe stesso venga mostrato un messaggio appropriato (`mia_AT:azione_insensata`):

- `chiedi`
- `nuota_in`
- `scendi_da`
- `sdraiati_in`
- `tuffati_in`

### Messaggi libreria

Corretto messaggio `ogg1_già_pl`  da `"$+1 è già"` in `"$+1 sono già"`.

Rimossi da `mia_AT` alcuni attributi stringa duplicati e sostituita ogni loro occorrenza con l'attributo equivalente:

|       rimosso        |    sostituito con   |         testo         |
|----------------------|---------------------|-----------------------|
| `ogg1_non_posseduto` | `non_possiedi_ogg1` | `"Non possiedi $+1."` |
| `ogg2_non_posseduto` | `non_possiedi_ogg2` | `"Non possiedi $+2."` |


Rimossi alcuni attributi originali inglesi e rimpiazzati con attributi già tradotti:

|             rimosso              |         sostituito con         |                     testo                      |
|----------------------------------|--------------------------------|------------------------------------------------|
| `check_hero_not_lying_down2`/`3` | `impossibile_da_sdraiato`      | `"Non puoi farlo da sdraiato.`                 |
| `check_hero_not_sitting2`/`3`    | `impossibile_da_seduto`        | `"Non puoi farlo da seduto.`                   |
| `check_obj2_not_hero3`           | `azione_insensata`             | `"Questo non ha alcun senso."`                 |
| `illegal_parameter2_to_sg`/`pl`  | `ogg2_inadatto_A_sg`/`pl`      | `"$+1 non [è/sono] qualcosa a cui poter"`      |
| `illegal_parameter_at`/`pl`      | `ogg2_inadatto_CONTRO_sg`/`pl` | `"$+1 non [è/sono] qualcosa contro cui poter"` |
| `illegal_parameter_in_sg`/`pl`   | `ogg1_inadatto_IN_sg`/`pl`     | `"$+1 non [è/sono] qualcosa in cui poter"`     |
| `illegal_parameter_off_sg`/`pl`  | `ogg1_inadatto_DA_sg`/`pl`     | `"$+1 non [è/sono] qualcosa da cui poter"`     |


Rimossi alcuni attributi dei messaggi scarsamente utilizzati, e sostituiti con stringhe in loco nel corpo del verbo:

|      attributo rimosso       |    sostituito con    |
|------------------------------|----------------------|
| `check_hero_not_lying_down4` | `"Sei già sdraiato!` |
| `check_hero_not_sitting4`    | `"Sei già seduto!`   |

Rimossi attributi originali inglesi non più utilizzati:

- `illegal_parameter2_from_sg`/`pl`
- `illegal_parameter_for_sg`/`pl`
- `illegal_parameter_sg`/`pl`
- `illegal_parameter_to_sg`/`pl`

Tradotti ed eliminati i seguenti attributi inglesi per i messaggi di risposta dei verbi:

|            Attributo EN           |        Attributo IT        |                Testo                |
|-----------------------------------|----------------------------|-------------------------------------|
| `illegal_parameter_about_sg`/`pl` | `ogg2_inadatto_DI_sg`/`pl` | `"$+2 non è qualcosa di cui poter"` |


### Risposte verbi

Tradotte in italiano le risposte dei seguenti verbi:

- `calcia`
- `scavalca`

<!---------------------------------------------------------------------------->

## 2019/08/22

- [`libreria.i`][libreria] &#x27f6; v0.22.0
- [`lib_italian.i`][lib_italian] &#x27f6; v0.22.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.22.0
- [`lib_classi_vestiario.i`][lib_classi_vestiario] &#x27f6; v0.22.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.22.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.22.0
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.22.0
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.22.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.22.0

### Passa alla v0.22.0

Tutti i moduli della libreria passano alla versione 0.22.0.

### Passa ad Alan 3.0beta6 build 2022

Da qui in avanti il progetto adotta la [developer snaphshot]  [Alan 3.0beta6 build 2022][3.0beta6-2022] per testare la libreria.

Questa build risolve il baco del mancato parsing della `ì` nei verbi (e.s. in `dì`) introdotto nella build 2015.

Inoltre, la nuova build previene l'espansione dei simboli speciali con `$` nelle string di input del giocatore (problema che causava crash e ricorsioni infinite nel caso il giocatore digitasse `$1` e la stringa veniva stampata nell'avventura). Ora i simboli del `$` sono trattati come caratteri letterali.

### Pulizia Sorgenti

Pulizia generale del codice: rimossi commenti obsoleti, tradotti commenti dall'inglese e aggiunto nuovo testo documentazione ed esempi qui e là.

Convertite tutte le occorrennze delle classi predefinite in maiuscolo, per distinguerle dalle classi definite dalla libreria.

Ritoccati e tradotte alcune risposte della libreria, direttamente nei verbi.

### Modulo classi

Sono qui di seguito riportate alcune modifiche significative in `lib_classi.i`.

#### Porte

Aggiunto alla definizione della classe `porta` l'attributo `chiave_abbinata` con valore predefinito `chiave_fittizia`:

```alan
EVERY porta IsA OBJECT
  ...
  HAS chiave_abbinata  chiave_fittizia.
```

Sebbene il codice funzionava anche senza di esso (grazie al codice di inizializzazione della classe), è preferibile dichiarare tutti gli attributi di base con i loro valori predefiniti, anche solo per chiarezza di lettura del codice.

#### Liquidi

Tradotta varie risposte e/o messaggi di errore per i seguenti verbi
sulla classe `liquido`: `dai_a`, `versa`, `versa_in` e `su`.

Modifica la risposta di `versa` adottando i criter di `versa_in`, il
quale prevedeva messaggi di errore distinti nel caso si tratti di un liquido con contentitore fittizio o non prendibile.

-------------------------------------------------------------------------------

# Alan 3.0beta6 build 2015


## 2019/08/19

- [`lib_classi_vestiario.i`][lib_classi_vestiario] &#x27f6; v0.21.1
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.21.1

### Correggi e migliora verbo `ascolta`

Modificatio il verbo `ascolta` di modo che non restituisca più stringhe vuote in caso di parametri fuori portata, ma che in tal caso restituisca il messaggio `"$+1 è fuori dalla portata del tuo udito."`.

Inoltre, migliorato il criterio di azione di modo che anche un parametro contenuto in un luogo contenente un luogo contiguo a quello attuale (ossia, connesso tramite `Exit`) venga trattato come se si trovasse nel luogo contiguo stesso — questo è ottenuto grazie a un'iterazione di tutti i luoghi dell'avventura:

```alan
ADD TO EVERY THING
  VERB ascolta
      ...
      ELSIF ogg NEARBY -- (b) L'oggetto si trova in un luogo contiguo.
        THEN "Non riesci a sentire $+1 da questa distanza."
      ELSE
        -- Verifichiamo se l'oggetto è in un luogo contentente un luogo contiguo:
        MAKE mia_AT NOT temp_bool. --> variabile per esito ricerca.
        FOR EACH loc IsA location DO
          IF loc AT ogg:location
            THEN
              IF loc NEARBY
                THEN -- (c) L'oggetto sarebbe a portata in un luogo contiguo.
                  "Non riesci a sentire $+1 da questa distanza."
                  MAKE mia_AT temp_bool.
                -- ELSE "$n++++" Say loc. "but not NEARBY!"
              END IF.
            -- ELSE "$n...." Say loc. "not AT" Say ogg:location.
          END IF.
        END FOR.
        IF mia_AT IS NOT temp_bool
          THEN -- (d) L'oggetto si trova in un luogo distante o scollegato.
            "$+1 è fuori dalla portata del tuo udito."
        END IF.
      END IF.
  END VERB ascolta.
```

Questo emula il criterio di portata (_scoping_) di Alan, in cui un'oggetto sito in un luogo che contiene il luogo attuale è raggiungibile dai parametri di un verbo (es. il cielo in un `luogo_esterno`).

Quanto alle cose in un luogo annidato in un luogo contiguo, esse non sono considerate alla portata del giocatore, proprio come non lo sarebbero in Alan (che non consente di usarle come parametri).

<!---------------------------------------------------------------------------->

## 2019/08/18

- [`lib_italian.i`][lib_italian] &#x27f6; v0.21.1
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.21.1

### Sinonimi "Dentro" e "Sopra"

In `lib_italian.i`, aggiunti `dentro` e `sopra` come sinonimi di `in` e `su`:

```alan
SYNONYMS
  nel, nello, nella, 'nell''', nei, negli, nelle, dentro = 'in'.

SYNONYMS
  sul, sullo, sulla, 'sull''', sui, sugli, sulle, sopra = su.
```

Ora è possibile scrivere "metti la frutta DENTRO il cesto" anziché "NEL cesto", e "posa il libro SOPRA il tavolo" anziché "SUL tavolo".

In `lib_luoghi.i`, modificata la direzione `sopra` in `su`, per via del conflitto con il fatto che ora `sopra` è già definito come sinonimo.

> __IMPORTANTE__ — D'ora in poi la direzione `sopra` andrà sempre implementata tramite `su` nelle varie `Exit":
>
> ```alan
> The sgabuzzino IsA stanza.
>   Description "Sul soffitto noti una botola."
>   Exit su to soffitta. -- ossia "sopra"
> End The.
> ```
>
> E per implementare `dentro` come direzione servirà usare `'in`'. In entrambi i casi, l'uso di `sopra` o `dentro` causerebbe un errore di compilazione poiché questi vocaboli sono già definiti come sinonimi nella Libreria.

### Problemi vari

Durante i test sono venuti alla luce diversi bachi e malfunzionamenti.
Li annoto qui di seguito come promemoria.

#### Baco nuova build

Nel passaggio dalla dev build 3.0beta6 build 1980 alla 2015, è venuto fuori che ora il verbo `dì` ("dì argomento") non funziona più poiché il parser non riesce a riconoscere la `ì`. Il baco è stato segnalato nello [Issue #8].

Non ho avuto modo di vedere se altre lettere accentate sono compromesse nel parsing, e se questo baco tocchi altri verbi. Confido che verrà presto risolto.

[Issue #8]: https://github.com/alan-if/alan/issues/8 "Vedi issue nel repository Alan su GitHub"

#### Problemi con `vai_a`

Il verbo `vai_a` non funziona come dovrebbe; le sintassi con la "A" prima della direzione non vengono comprese:

```
> vai a nord
> a nord
```

Per maggiori dettagli, vedasi il nuovo test `direzioni` (in `vari/`):

- [`test/vari/direzioni.alan`](https://github.com/tajmone/Alan3-Italian/blob/master/test/vari/direzioni.alan)
- [`test/vari/direzioni.a3log`](https://github.com/tajmone/Alan3-Italian/blob/master/test/vari/direzioni.a3log)
- [`test/vari/direzioni.a3sol`](https://github.com/tajmone/Alan3-Italian/blob/master/test/vari/direzioni.a3sol)

<!---------------------------------------------------------------------------->

## 2019/08/15

- [`libreria.i`][libreria] &#x27f6; v0.21.0
- [`lib_italian.i`][lib_italian] &#x27f6; v0.21.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.21.0
- [`lib_classi_vestiario.i`][lib_classi_vestiario] &#x27f6; v0.21.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.21.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.21.0
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.21.0
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.21.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.21.0

### Passa alla v0.21.0

Tutti i moduli della libreria passano alla versione 0.21.0.

### Passa ad Alan 3.0beta6 build 2015

Da qui in avanti il progetto adotta la [developer snaphshot]  [Alan 3.0beta6 build 2015][3.0beta6-2015].

-------------------------------------------------------------------------------


# Alan 3.0beta6 build 1980

## 2019/07/28

- [`lib_classi.i`][lib_classi] &#x27f6; v0.20.2
- [`lib_classi_vestiario.i`][lib_classi_vestiario] &#x27f6; v0.20.1
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.20.2
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.20.4

### Liquidi

In `lib_classi.i`, modificato il verbo `esamina` sulla classe `liquido` di modo che venga onorata la `xDesc` di un liquido con recipiente `recipiente_fittizio`.

> __NOTA__ — per quanto riguarda i liquidi con un recipiente, allo stato attuale il verbo `esamina` onorerà sempre la `xDesc` del liquido, non del suo recipiente. Questo è il comportamento desiderabile nella maggior parte dei casi, ma possono esservi eccezioni per cui sarebbe il caso di ripiegare sulla `xDesc` del contenitore, nel caso il liquido non ne avesse una.

Tradotta la risposta di `guarda_in` sulla classe `liquido`.

Tradotto lo `Header` della classe `liquido`.

### Contenitori Elencati

Se un `contenitore_elencato` possiede una `xDesc`, onorala con il verbo `esamina`.

Migliorato il messaggio per contenitori chiusi:

|                 prima                  |                              adesso                              |
|----------------------------------------|------------------------------------------------------------------|
| `"Non puoi vedere dentro <l'oggetto>"` | `"Non puoi vedere dentro <l'oggetto> perche [è/sono] chius[*]."` |

### Messaggi Libreria

Correggi alcuni messaggi cui mancava il punto finale nella frase:

- `imp_ogg1_chiuso_ms`
- `imp_ogg1_chiuso_fs`
- `imp_ogg2_chiuso_ms`
- `imp_ogg2_chiuso_fs`

<!---------------------------------------------------------------------------->

## 2019/06/26

- [`lib_classi.i`][lib_classi] &#x27f6; v0.20.1
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.20.3

### Repulisti classi attori

Nel modulo `lib_classi.i` è stato rimosso del codice ridondante sulla classe `persona` che era identico a quello della classe genitore `actor` (nell'originale inglese, alcuni messaggi variavano leggermente, ma buona parte del codice era ridondante anche nell'originale).

### Verbo `prendi_da` sempre onnipotente

Ora tutte le sintassi di `prendi_da` consentono l'onnipotenza per il primo parametro (ossia, l'uso di TUTTO), laddove prima era consentito solo con `rimuovi` — dato che era possibile usare quella sintassi alternativa con TUTTO, tanto valeva abilitarne l'uso per tutte le sintassi; d'altronde, è conveniente poter applicare l'azione a tutti gli oggetti in un contenitore, così come avviene con altri verbi la cui portata è circoscritta (e.s. `lascia`).

```alan
SYNTAX prendi_da = prendi (ogg)* da (detentore)
  ...
  prendi_da = prendi  (ogg)* dai (detentore).
  prendi_da = rimuovi (ogg)* da  (detentore).
  prendi_da = rimuovi (ogg)* dai (detentore).
  prendi_da = togli   (ogg)* da  (detentore).
  prendi_da = togli   (ogg)* dai (detentore).
```

Tradotte ulteriori risposte, e annotati i vari problemi e le cose da fare.

<!---------------------------------------------------------------------------->

# Alan 3.0beta6 build 1980

## 2019/06/16

- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.20.2
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.20.1
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.20.2

Pulizia generale dei sorgenti.

### Nuovi messaggi dei verbi

Creati nuovi attributi per i messaggi di risposta dei verbi (nessuna controparte nella libreria originale inglese):

|         Attributo          |                   Testo                    |
|----------------------------|--------------------------------------------|
| `ogg2_inadatto_DA_sg`/`pl` | `"$+2 non [è/sono] qualcosa in cui poter"` |


### Traduci messaggi dei verbi

Tradotti i seguenti attributi per i messaggi di risposta dei verbi:

|     Attributo EN    |               Attributo IT              |                    Testo                    |
|---------------------|-----------------------------------------|---------------------------------------------|
| `check_obj_movable` | `ogg1_non_spostabile_ms`/`mp`/`fs`/`fp` | `"$1 [è/sono] fissat* al [suo/loro] posto"` |

Tutte le occorrenze di `check_obj_movable` sono state rimpiazzate con l'equivalente italiano, e l'originale inglese eliminato.

### Elimina messaggi dei verbi

Elimina attributi inglesi per i messaggi di risposta dei verbi:

|           Attributo            |              Testo              |
|--------------------------------|---------------------------------|
| `check_obj_in_act_sg`/`pl`     | `"$+2 [doesn/don]'t have $+1."` |
| `check_obj_in_cont_sg`/`pl`    | `"$+1 [is/are] not in $+2."`    |
| `check_obj_on_surface_sg`/`pl` | `"$+1 [is/are] not on $+2."`    |



### Verbo `prendi_da`

Tradotte quasi tutte le risposte del verbo `prendi_da` che erano ancora in inglese. Ma il corpo del verbo sembra contenere dei bachi, per cui alcune risposte non sono state tradotte, prima bisogna verificare la correttezza della sua esecuzione.

<!---------------------------------------------------------------------------->


## 2019/06/15 (3)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.20.1
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.20.1

Questo commit si sbarazza dei verbi di partita `modalità_breve` e `modalità_lunga`, che non funzionavano come dovevano.

### Elimina Verbi Modalità Lunga/Breve

Eliminati i verbi `modalità_breve` e `modalità_lunga` (e tutti gli attributi di restrizione associati), dato che il primo di essi non funzionava a causa del fatto che ogni volta che la libreria aggiornava gli attributi `visitato` e `descritto` di un luogo, Alan ingorava la direttiva `VISITS` (di fatto, vanificando questi due comandi di partita).

Non era possibile salvare questi due meta-verbi — non fintanto che la libreria modifica costantemente gli attributi del luogo. Siccome l'idea generale che `VISITS` debba essere ignorato quando gli attributi del luogo mutano è radicata nella filosofia d'uso di Alan, è improbabile che questo cambi in futuro.

Per maggiori dettagli su questo problema, si veda lo [Issue #32](https://github.com/AnssiR66/AlanStdLib/issues/32) sul repository della StdLib.

<!---------------------------------------------------------------------------->

## 2019/06/15 (2)

- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.20.1

Modifica sinonimi delle direzioni predefinite, e doxterizza `lib_luoghi.i`.

### Sinonimi Direzioni

Modificati i sinonimi delle direzioni per ottenere un sistema più coerente:

- Eliminati:
    + `alto`  per `su`
    + `basso` per `giù`
    + `b`     per `giù`
    + `n` per `nord`
    + `s` per `sud`
    + `o` per `ovest`
- Rinominati:
    + `ne`  in `nest`
    + `nov` in `novest`
    + `se`  in `sest`
    + `so`  in `sovest`

Il vecchio sistema era poco elegante e difficile da memorizzare (per via dell'impossibilità ad avere `e` per `est` e `no` per `nordovest`). Il nuovo sistema almeno è coerente.

La seguente tabella riassume tutte le direzioni predefinite e i loro sinonimi (vocaboli alternativi e comandi brevi):


| Direzione | Sinonimi |
|-----------|----------|
| nord      |          |
| sud       |          |
| est       |          |
| ovest     |          |
| nordest   | nest     |
| sudest    | sest     |
| nordovest | novest   |
| sudovest  | sovest   |
| su        | sopra    |
| giù       | giu      |
| dentro    |          |
| fuori     |          |

### Doxterizza Modulo Luoghi

Inizia a doxterizzare `lib_luoghi.i`:

- Documenta `limbo`.
- Documenta direzioni e loro sinonimi.

<!---------------------------------------------------------------------------->

## 2019/06/15 (1)

- [`libreria.i`][libreria] &#x27f6; v0.20.0
- [`lib_italian.i`][lib_italian] &#x27f6; v0.20.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.20.0
- [`lib_classi_vestiario.i`][lib_classi_vestiario] &#x27f6; v0.20.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.20.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.20.0
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.20.0
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.20.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.20.0

### Passa alla v0.20.0

Tutti i moduli della libreria passano alla versione 0.20.0.

### Passa ad Alan 3.0beta6 build 1980

Da qui in avanti il progetto adotta la [developer snaphshot]  [Alan 3.0beta6 build 1980][3.0beta6-1980].

-------------------------------------------------------------------------------

# Alan 3.0beta6 build 1880

## 2019/04/02

- [`libreria.i`][libreria] &#x27f6; v0.19.0
- [`lib_italian.i`][lib_italian] &#x27f6; v0.19.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.19.0
- [`lib_classi_vestiario.i`][lib_classi_vestiario] &#x27f6; v0.19.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.19.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.19.0
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.19.0
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.19.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.19.0

### Modulo Italian unificato

Unisci `lib_grammatica.i` e `lib_supplemento.i` in un unico modulo rinominato `lib_italian.i`.

Questo semplifica l'uso del modulo Alan Italian indipendentemente dalla libreria. Il motivo originale per cui il codice di `lib_supplemento.i` era in un modulo separato era in vista di un'eventuale implementazione del supporto nativo della lingua italiana in Alan, eventualità sempre più remota (per varie ragioni, anche tecniche).

Un modulo unificato è quindi la scelta migliore, e consente di documentare meglio il modulo a sé stante per l'italiano.


## 2019/03/23

- [`libreria.i`][libreria] &#x27f6; v0.18.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.18.0
- [`lib_classi_vestiario.i`][lib_classi_vestiario] &#x27f6; v0.18.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.18.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.18.0
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.18.0
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.18.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.18.0
- [`lib_grammatica.i`][lib_grammatica] &#x27f6; v0.18.0
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.18.0

### Passa alla v0.18.0

Tutti i moduli della libreria passano alla versione 0.18.0.

### Passa ad Alan 3.0beta6 build 1880

Da qui in avanti il progetto adotta la [developer snaphshot]  [Alan 3.0beta6 build 1880][3.0beta6-1880].

### Riferimenti di versione

I riferimenti alla versione di Alan Italian e della Alan SDK nei sorgenti del progetto (moduli libreria, sorgenti dei test, delle demo e del ricettario, e nella documentazione) sono stati modificati al fine di utilizzare una notazione omogenea.

Sono stati aggiunti script per semplificare i salti di versione della Libreria e della Alan SDK, automatizzando la sostituzione di tutte le occorrenze delle info di versione nei sorgenti del progetto:

- [`ver.sh`][ver.sh] — definisce le versioni attuali di AlanITA e AlanSDK.
- [`verbump.sh`][verbump.sh] — aggiorna info versione nei sorgenti del progetto.
- [`AGGIORNA_TUTTO.bat`][AGGIORNA_TUTTO.bat] — invoca tutti gli script di test e documentazione.

Quando la libreria passa ad una versione successiva, sarà necessario eseguire i seguenti passaggi:

1. Modificare `ver.sh` con i nuovi dati di versione. Esempio:
    ```bash
    #!/bin/bash
    AlanSDK="3.0beta6 build 1880"
    AlanITA="0.18.0"
    AlanITA_RevDate="2019-03-23"
    ```
2. Eseguire `verbump.sh`.
3. Eseguire `AGGIORNA_TUTTO.bat`.
4. Eseguire il commit delle modifiche.

Lo script `verbump.sh` utilizzerà le informazioni contenute in `ver.sh` per aggiornare tutti i riferimenti alle versioni di Alan Italian e della Alan SDK in tutti i file sorgenti del progetto — commenti di header, attributi Alan, AsciiDoc e AsciiDoc/Doxter, ecc. Le sostituzioni vengono operate tramite sed ed espressioni regolari; lo script è stato studiato per la Bash di Git for Windows.

Lo script `AGGIORNA_TUTTO.bat` propagherà le versioni aggiornate nei sorgenti anche ai file prodotti tratime automazione — trascirzioni dei test, documentazione HTML, ecc.

Per maggiori dettagli, vedi:

- [`VERSIONING.md`][VERSIONING.md]

### Modifiche Banner

#### Versione Alan

Aggiorna la versione di Alan nell'attributo `AlanV` alla `3.0beta6 build 1880`.

Abbrevia il testo della versione di Alan mostrato nel Banner da:

    Avventura realizzata con ALAN Interactive Fiction Language v3.0beta6 build 1880.

a:

    Avventura realizzata con ALAN 3.0beta6 build 1880.

#### Versione Alan Italian

Aggiunto nuovo attributo per la versione della Libreria Standard Italiana:

```alan
--| La libreria definisce anche l'attributo `AlanV`, che mostrerà nel banner la
--| versione di Alan utilizzata:

  HAS         AlanV  "3.0beta6 build 1880".
  HAS      AlanItaV  "18 Alpha".
```

Che verrà visualizzita nel Banner:

```alan
THE intestazione IsA LOCATION

  DESCRIPTION
...
 "$n(C)" SAY mia_AT:autore. "," SAY mia_AT:anno. "."
    "$nAvventura realizzata con ALAN" SAY mia_AT:AlanV. "."
    "$nLibreria Standard Italiana:"   SAY mia_AT:AlanItaV. "."
```



-------------------------------------------------------------------------------

# Alan 3.0beta6 build 1878

## 2019/02/27

- [`libreria.i`][libreria] &#x27f6; v0.17.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.17.0
- [`lib_classi_vestiario.i`][lib_classi_vestiario] &#x27f6; v0.17.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.17.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.17.0
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.17.0
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.17.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.17.0
- [`lib_grammatica.i`][lib_grammatica] &#x27f6; v0.17.0
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.17.0

### Passa alla v0.17.0

Tutti i moduli della libreria passano alla versione 0.17.0. Siccome sono stati rinominati gli attributi `indumento` per la mappatura del corpo, tutti i sorgenti di avventure che usano il vestiario vanno adattati di conseguenze.

### Passa ad Alan 3.0beta6 build 1878

Da qui in avanti il progetto adotta la [developer snaphshot]  [Alan 3.0beta6 build 1878][3.0beta6-1878] per testare la libreria usufruendo dei più recenti bug fix.

-------------------------------------------------------------------------------

# Alan 3.0beta6 build 1870

## 2019/02/21

- [`libreria.i`][libreria] &#x27f6; v0.16.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.16.0
- [`lib_classi_vestiario.i`][lib_classi_vestiario] &#x27f6; v0.16.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.16.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.16.0
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.16.0
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.16.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.16.0
- [`lib_grammatica.i`][lib_grammatica] &#x27f6; v0.16.0
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.16.0

### Passa alla v0.16.0

Tutti i moduli della libreria passano alla versione 0.16.0. Siccome sono stati rinominati gli attributi `indumento` per la mappatura del corpo, tutti i sorgenti di avventure che usano il vestiario vanno adattati di conseguenze.

### Passa ad Alan 3.0beta6 build 1870

Da qui in avanti il progetto adotta la [developer snaphshot]  [Alan 3.0beta6 build 1870][3.0beta6-1870] per testare la libreria usufruendo dei più recenti bug fix.

### Aggiornamento vestiario

#### Rinomina attributi zone del corpo

Rinominati tutti gli attributi di `indumento` per la mappatura delle
zone del corpo, da `val_*` in `strato_*`:

|  Vecchio ID  |     Nuovo ID    |
|--------------|-----------------|
| `val_testa`  | `strato_testa`  |
| `val_viso`   | `strato_viso`   |
| `val_tronco` | `strato_tronco` |
| `val_gambe`  | `strato_gambe`  |
| `val_piedi`  | `strato_piedi`  |
| `val_mani`   | `strato_mani`   |

Questo sistema è più intuitivo e naturale da usare dato che i valori indicano lo strato di ciascuna zona del corpo che l'indumento andrà a coprire.


#### Nuovo attributo `strato_viso`

Questo commit introduce `strato_viso`, un nuovo attributo della classe `indumento` per la mappatura delle zone del corpo. Grazie ad esso sarà possibile distinguere tra indumenti indossabili sopra la testa (come i cappelli, che fanno riferimento a `strato_testa`) e indossabili facciali (occhiali, barbe finte, maschere, ecc).

#### Nuovi attributi per indumenti speciali

Aggiungi attributi `IS blocca_gambe` e `IS NOT due_pezzi` sulla classe
`indumento`, per consentire di creare indumenti come gonne e cappotti,
che non impediscono di indossare/rimuovere indumenti per le gambe negli
strati inferiori, e anche indumenti che coprono torso e gambe in due
pezzi separati (ma gestiti come un unico indumento) come un bikini, di
modo che possano essere indossati mentre si indossa una gonna.


-------------------------------------------------------------------------------

# Alan 3.0beta6 build 1866

## 2019/02/19

- [`libreria.i`][libreria] &#x27f6; v0.15.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.15.0
- [`lib_classi_vestiario.i`][lib_classi_vestiario] &#x27f6; v0.15.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.15.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.15.0
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.15.0
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.15.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.15.0
- [`lib_grammatica.i`][lib_grammatica] &#x27f6; v0.15.0
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.15.0

### Passa alla v0.15.0

Tutti i moduli della libreria passano alla versione 0.15.0.


### Rinnovato il codice del vestiario

Questo aggiornamento rivede tutto il codice per gestire il vestiario, implementando un nuovo sistema che è sia più semplice da gestire nella libreria che più facile usare per gli utenti finali, e risolve i molteplici bachi presenti nella libreria originale.

Sono previste ulteriori modifiche alle funzionalità di abbigliamento, che verranno implementate nei prossimi commit. Alcune di esse prevedono nuove funzionalità al momento non contemplate.

Per i dettagli completi delle molteplici modifiche strutturali al codice, si vedano i seguenti appunti di lavoro:

- [`VESTIARIO.md`][VESTIARIO]
- [`VESTIARIO_DEV.md`][VESTIARIO_DEV]
- [`VESTIARIO_PROBLEMI.md`][VESTIARIO_PROBLEMI]

Le modifiche richieste per adattare il nuovo sistema di vestario hanno coinvolto moltissime parti della libreria, e non è possibile riassumere tutte le modifiche.

> __ANNOTAZIONI__ — Per ora, il codice originale è stato preservato accanto alle modifiche, per facilitarne la consultazione in caso di problemi, e le parti del codice modificate, rimosse o aggiunte sono state marcate con commenti che iniziano per `-- >>> dev-vestario:`, per facilitarne l'individuazione tramite funzioni di ricerca (questi commenti verranno rimossi appena tutti i lavori riguardanti il vestiario saranno ultimati).


### Novità riguardanti il vestiario

Dal lato utente, il nuovo sistema funziona grosso modo come il precedente, e saranno richiesti solo alcuni piccoli accorgimenti per adattare le avventure preesistenti. Però il nuovo sistema è più intuitivo, specie per quanto riguarda la mappatura del vestiario al corpo e gli strati di indossamento. Inoltre, con il nuovo sistema è molto più semplice creare nuovi verbi _ad hoc_ che possano coinvolgere indumenti.

Dal lato della Libreria, il codice per il vestiario è diventato molto più snello, e più facile da gestire nel corso dello sviluppo.

Qui nel changelog mi limiterò a riassumere i cambiamenti più imporanti del vestiario nella libreria; per maggiori dettagli si veda il documento [`VESTIARIO_DEV.md`][VESTIARIO_DEV].

#### Abbandono di `abbigliamento` e `indossati`

Il nuovo sistema non ricorre più all'entità `abbigliamento` né al set degli `indossati` di ogni attore, ma utilizza solo l'attributo booleano `indossato` (ora spostato su `thing`). Questi introducevano troppe complicazioni gestionali e pochi benefici reali.

#### Utilizzo nelle avventure

Ora, per creare degli indumenti indossati nelle proprie avventure, sarà sufficienti collocare l'indumento nell'attore destinatario e settarlo come `indossato`, al resto ci penserà la libreria nel corso dell'inizializzazione.

```alan
THE scarpe_eroe IsA indumento IN hero.
  IS indossato.
```


#### Nuovo approccio all'indossabilità

Il nuovo sistema sposta l'attributo `indossato` su `thing`, rendendolo così accessibili ai CHECK di ogni verbo. Ovviamente, questo attributo dovrebbe aver senso solo con oggetti della classe `indumento`, e quindi se la libreria fa il suo dovere non dovrebbe accadere che un oggetto non indumento risulti `indossato`.

Il criterio per distinguere tra indumenti indossati e non indossati è molto semplice:

- Qualsiasi `indumento IS indossato DIRECLY IN` un attore è un indumento indossato.
- Qualsiasi `indumento INDIRECLY IN` un attore _non può_ essere un indumento indossato, ma solo trasportato.
- Un `indumento DIRECLY IN` un attore può essere o un indumento indossato, o un indumento trasportato, a seconda del valore dell'attributo `indossato`.

Quindi, nel nuovo sistema è sufficiente accertarsi che qualsiasi verbo che _potrebbe_ spostare indumenti al di fuori di un attore si assicuri di settare l'oggetto come `NOT indossato` — anche se non è un `indumento` non importa, dato che per i non-indumenti l'attributo non fa differenza e, comunque, dovrebbe sempre essere settato come `NOT indossato`. Questo accorgimento è finalizzato a supportare l'estensibilità degli indossabili ad altri tipi che non siano indumenti.


#### Estensibilità degli indossabili

L'attributo `indossato` introduce il criterio _generale_ di indossabilità (secondo cui solo oggetti _direttamente_ in attori possono essere nello stato di indossati) che potrebbe essere sfruttato anche per altri tipi di indossabili. Allo stato attuale, la Libreria gestisce solo indossabili di tipo `indumento`, ma gli autori potrebbero implementare altre classi di indossabili — p.es. dei gadget/dispositivi che siano indossabili pur non essendo della classe `indumento`.

Poiché l'attributo `indossato` è già presente su `thing`, e visto che tutti i verbi della libreria si assicurano di settare a `NOT indossando` un oggetto che viene dislocato da un attore, eventuali nuove classi di indossabili potrebbero tranquillamente sfruttare questo attributo, dato che il criterio generale di indossabilità è il medesimo.

Sulla classe `indumento` la Libreria definisce verbi mirati agli indumenti, come i verbi `indossa`/`rimuovi` che gestiscono l'abbigliamento a strati e l'indossamento ordinato dei capi di vestiario. Un autore che volesse introdurre indossabili di altro tipo potrebbe farlo creando una nuova classe, di modo da poter implementare su di essa varianti specifiche dei verbi `indossa`/`rimuovi`, che non vadano a sovrapporsi ai verbi del vestiario.


#### Stratificazione senza vincoli

Il nuovo sistema si limita a verificare che gli indumenti con valori di copertura non-zero vengano indossati e rimossi nell'ordine corretto, ma non gestisce più i casi speciali come i cappotti e le gonne.

La codifica dei casi speciali nella libreria limitava la libertà d'uso degli strati imponendo un modello arbitrario e restrittivo. Ora starà agli autori implementare la gestione di casi speciali, se ne avessero la necessità.

#### Stratificazione non esponenziale

Il nuovo sistema non impone più una numerazione esponenziale per gli strati del vestiario (2, 4, 8, 16, 32, 64) ma adotta ora una numerazione libera (1, 2, 3, ...) che l'autore potrà utilizzare come rietiene più opportuno.

Il nuovo sistema è più intuitivo e facile da gestire, ed è compatibile con indumenti creati per il sistema precedente, dato che si limita a verificare se i valori sono uguali o superiori tra loro.

#### Migliorie messaggistica

Anche la messaggistica riguardo al vestiario è stata notevolmente migliorata.

Nei verbi che impediscono l'azione se uno dei parametri è trasportato dall'Eroe, ora verrà prodotto un messaggio diverso a seconda se l'oggetto sia solo portato o indossato.

##### Messaggi di fallimento indossa/rimuovi

Nel vecchio sistema, quando l'azione dei verbi `indossa`/`togliti` non andava a buon fine il messaggio riportava l'elenco completo degli indumenti indossati dal giocatore. Il nuovo sistema elenca solo quegli indumenti che bloccano l'azione e andrebbero rimossi.


##### Elenchi inventario

Il nuovo sistema produrra sia per l'inventario dell'Eroe che per 'esamina attore' due elenchi separati per gli oggetti trasportati e quelli indossati. Questo è ottenuto tramite dei loop personalizzati nel codice dei verbi, e senza ricorrere a `LIST actor` (il vecchio sistema usava `LIST abbigliamento`).

Inoltre, i messaggi prodotti sono leggermente diversi, meno verbosi e meno invadenti.

- __Non menzionare nudità__ — Ora non verrà menzionato se un attore non sta indossando nulla. Oltre ad essere inutilmente verboso, menzionarlo interferirebbe con quelle avventure che non utilizzano affatto il vestiario, sottolineando costantemente la nudità dei personaggi mentre invece il loro abbigliamento potrebbe essere descritto assieme al personaggio ma non implementato attraverso l'uso di indumenti.
- __Non menzionare a mani vuote__ — Ora non verrà menzionato se un PNG non sta portando nulla, tanto è implicito. Oltre ad essere inutilmente verboso, menzionarlo interferirebbe con quelle avventure in cui non è previsto affatto che i PNG trasportino oggetti.


#### Criteri maneggiamento indumenti indossati

Il nuovo sistema stabilisce delle regole formali riguardo i verbi che potrebbero dislocare un indumento indossato da un attore. La regola generale è che non è consentito farlo.

Se si tratta di un indumento indossato dall'Eroe, il presupposto è che potrà toglierselo prima di eseguire l'azione; nel caso di PNG invece il presupposto è che l'indumento andrebbe ottenuto chiedendolo al PNG, in modo da rispettare le regole di consenzienza.

Il vecchio sistema consentiva di prendere implicitamente indumenti indossati dai PNG, con vari verbi — p.es. era possibile lanciare ad Alice le scapre indossate da Bob. A mio avviso, consentire di prelevare gli indumenti indossati alla stregua degli oggetti trasportati è eccessivo, e la Libreria deve prevenirlo di default, lasciando agli autori il margine di libertà per implementare i casi specifici (o generali) in cui questo sia fattibile.

Sono stati aggiunti dei CHECK sulla classe `indumento` per bloccare i verbi che dislocherebbero un indumento indossato dal suo propietario (Eroe o attore che sia), tranne nei casi in cui l'azione è sensata (p.es. indossare un indumento non indossato, o chiedere a un indumento indossato a un PNG consenziente). Questo include anche quei verbi che prendono implicitamente un oggetto per prepare/eseguire l'azione richiesta.

### Nuovi messaggi dei verbi

Creati nuovi attributi per i messaggi di risposta dei verbi:

|             Attributo             |                      Testo                       |
|-----------------------------------|--------------------------------------------------|
| `png2_non_gradirebbe_sg`/`pl`     | `"Non credo che $+2 [gradirebbe/gradirebbero]."` |
| `azione_insensata_ogg1_portato`   | `"Che senso ha? Stai portando $+1."`             |
| `azione_insensata_ogg1_indossato` | `"Che senso ha? Stai indossando $+1."`           |
| `azione_insensata_ogg2_portato`   | `"Che senso ha? Stai portando $+2."`             |
| `azione_insensata_ogg2_indossato` | `"Che senso ha? Stai indossando $+2."`           |



<!---------------------------------------------------------------------------->

## 2019/02/05

- [`libreria.i`][libreria] &#x27f6; v0.14.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.14.0
- [`lib_classi_vestiario.i`][lib_classi_vestiario] &#x27f6; v0.14.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.14.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.14.0
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.14.0
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.14.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.14.0
- [`lib_grammatica.i`][lib_grammatica] &#x27f6; v0.14.0
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.14.0

### Passa alla v0.14.0

Tutti i moduli della libreria passano alla versione 0.14.0.

### Separa modulo grammatica italiana

Questo commit raccoglie tutto il codice per la definizione e l'inizializzazione degli attributi grammaticali dell'italiano in un nuovo modulo della libreria a sé stante:

- [`lib_grammatica.i`][lib_grammatica]

Questo rende possibile utilizzare il modulo indipendentemente dalla Libreria Standard, per creare avventure in italiano senza l'infrastruttura della libreria.

> __NOTA__ — Per ora il codice di `lib_supplemento.i`, che si occupa di definire le _player words_ per la conversione (durante il parsing) degli articoli, le preposizioni, ecc., non è stato incluso nel nuovo modulo `lib_grammatica.i`. Poiché l'idea originale dietro il modulo supplementare era di creare un modulo temporaneo in attesa del supporto nativo per l'italiano in Alan, mi sono riservato di prendermi del tempo prima di decidere se includerlo in `lib_grammatica.i` o meno.

#### Attributi grammatica su entity

Adesso la libreria definisce gli attributi per la grammatica direttamente sulla classe `entity`, rendendoli disponibili su ogni classe e istanza (incluse le classi letterali). Questa novità migliora lo sviluppo della libreria e introduce nuove possibilità.

Le migliorie per lo sviluppono riguardano il fatto che ora gli attributi sono disponibili in qualsiasi contesto di Alan, poiché la loro presenza è ora garantita su qualsiasi classe e istanza. È quindi possibile utilizzare controlli sugli attributi in qualsiasi clausola sintattica, e finanche nelle definizioni dei messagi runtime.

Le nuove possibilità per gli autori di avventure riguardono il fatto che è ora possibile creare messaggi _ad hoc_ in cui far riferimento a luoghi usando genere e numero appropriati, così come preposizioni, vocali per l'accordo, ecc. Questo risulta estramente utile nella creazione di messaggi che coinvolgono luoghi (p.es. un messaggio quando si entra o esce da certi tipi di stanze), e adesso l'autore potrà utilizzare (per esempio) `SAY prep_DA OF CURRENT LOCATION` per mostrare la preposizione giusta per la stanza (es. "esci dalla cucina"). Siccome anche le istanze di `location` vengono ora inizializzate con gli attributi di grammatica, sarà sufficiente specificare il corretto attributo `articolo` per quei luoghi cui si dovrà far riferimento nei messaggi.

#### Entità con nome proprio

Anche l'attributo `nome_proprio` è stato spostato su `entity` (mentre prima era presente solo su `actor`) per consentire di creare entità e luoghi con nome proprio. Sebbene in genere sono solo gli attori ad avere un nome proprio, in alcuni contesti può essere necessario creare oggetti inanimati con un nome proprio. Ecco alcuni esempi teorici e pratici:

- Un PNG (Marco) muore nel gioco, e dobbiamo sostituire la sua istanza di `actor` con una di classe `object` per rappresentarne il cadavere. Il giocatore potrebbe non sapere che Marco è morto, e quindi continuerà a riferirsi ad esso con il nome proprio. Per questo motivo, è utile che la libreria consenta di definire oggetti con `nome_proprio`, sì poter mostrare una corretta messaggistica dei verbi:

    > &gt; _chiedi le chiavi a marco_
    >
    > Marco non è in grado di capirti.

    In questo esempio, "non è in grado di capirti" è la risposta del verbo 'chiedi a' quando è utilizzato con entità non attore. La possibilità di definire oggetti con nome proprio garantisce una corretta messaggistica con qualsiasi verbo (in questo esempio, previene il messaggio "Il Marco non è in grado di capirti.").

- In alcuni casi anche i luoghi possono avere un nome proprio, e nelle avventure che producono messaggi riguardanti luoghi sarà necessaria una corretta gestione degli articoli. P.es., "Luigi parte per Roma" (e non "per LA Roma", che lascierebbe intendere la squadra di calcio). Un esempio estremo potrebbe essere la balena di Pinocchio: il giocatore si trova ad entrare in un luogo che è (dal punto di vista della storia) un personaggio, magari con un nome proprio (es. "Dentro Moby Dick").

- A volte gli autori implementeranno istanze di `entity` per creare entità astratte ed onnipresenti, p.es. fantasmi, emozioni, ecc. Queste entità potrebbero avere nomi propri (il fantasma "Casper", ecc.).

Le AT sono opere narrative, per cui non vi è limite pratico a ciò che gli autori possono inventare. La disponibilità globale degli attributi di grammatica rimuove qualsiasi precedente limite in tal senso.


### Modulo classi

#### Nuove classi maschi e femmine

Sono state aggiunte due nuove sottoclassi di `persona`:

- `maschi`  — per collettivi di maschi (o maschi e femmine misti).
- `femmine` — per collettivi di femmine.

Queste nuove classi sono utili perché oltre a definire attributi di genere e numero, e articoli di base, definiscono e anche dei pronomi (essi/loro, esse/loro). Ora le sottoclassi di `persona` definite dalla libreria (ed i valori predefiniti) sono:

|   classe  |  art.  |  pronomi   |
|-----------|--------|------------|
| `maschio` | `"il"` | lui        |
| `femmina` | `"la"` | lei        |
| `maschi`  | `"i"`  | essi, loro |
| `femmine` | `"le"` | esse, loro |


> __NOTA__ — Il pronome 'loro' potrebbe essere rimosso in seguito, nel caso dovessero confliggere con future definizioni delle _them words_. Al momento non ho ancora avuto modo di esplorare l'uso delle _them words_, e devo capire meglio se potrebbero esservi anche dei conflitti con potenziali usi di 'loro' in riferimento al possesso.
>
> In linea di massima, la Libreria non si occupa di definire i pronomi (relegando questo compito all'autore), l'unica eccezzione sono le sottoclassi di `persona`. Può anche darsi che in futuro le definizioni dei pronomi verranno completamente rimosse dalla libreria.

### Modulo messaggi runtime

Ora che gli attributi grammaticali per il genere, numero e vocale per gli aggettivi sono disponibili sulla classe `entity`, è stato possibile ottimizzare vari messaggi di runtime per sfruttare `vocale` anziché dover controllare se l'istanza è plurale/singolare e maschile/femminile. Esempio:

```alan
  CONTAINMENT_LOOP:
    "Non è possibile mettere $+1 dentro sé stess$$" SAY parameter1:vocale. "."
```



<!---------------------------------------------------------------------------->


## 2019/02/02 (2)

- [`libreria.i`][libreria] &#x27f6; v0.13.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.13.0
- [`lib_classi_vestiario.i`][lib_classi_vestiario] &#x27f6; v0.13.0 (_nuovo_)
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.13.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.13.0
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.13.0
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.13.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.13.0
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.13.0

### Passa alla v0.13.0

Tutti i moduli della libreria passano alla versione 0.13.0.

### Separa modulo classi vestiario

Sposta tutto il codice riguardante il vestiario da `lib_classi.i` al nuovo modulo [`lib_classi_vestiario.i`][lib_classi_vestiario].

> __NOTA__ — In realtà rimangono ancora in `lib_classi.i` alcuni frammenti di codice riguardanti il vestiario (p.es. nell'inizializzazione degli attori).

Questa scelta ha una duplice motivatazione:

1. Il codice per il vestiario è di grosse dimensioni e isolarlo in un proprio sottomodulo semplifica il lavoro di manutenzione della libreria, soprattutto in vista del fatto che la documentazione interna del modulo sarà di dimensioni consistenti.

2. L'altra ragione per questa mossa è il desiderio di poter rendere (in futuro) le funzionalità del vestiario opzionali, consentendo all'utente finale di escludere il suddetto modulo dall'importazione qualora non volesse utilizzarlo.

    Il vestiario introduce una notevole complessità nella libreria (i vari controlli automatici per gli indumenti indossati dal giocatore e dai PNG), e può complicare la vita agli autori quando creano verbi personalizzati che potrebbero coinvolgere indumenti indossati, ecc. Siccome non tutte le avventure necessiteranno del vestiario, questa funzionalità dovrebbe poter essere interamente opzionale nella libreria. Purtroppo, la modularizzazione condizionale dei moduli è un po' complicata in Alan, e questo obiettivo potrebbe rivelarsi complicato da conseguire, ma il primo passo consiste comunque nell'isolare in un modulo a sé stante il codice per il vestiario.

### Vestiario

Rinominato l'evento `worn_clothing_check` in `controlla_indossati`.

#### Documentazione vestiario

Aggiornato il documento:

- [`VESTIARIO.md`][VESTIARIO]

Minimi ritocchi alla documentazione Doxter del nuovo modulo vestiario.

<!---------------------------------------------------------------------------->

## 2019/02/02 (1)

### Passa ad Alan 3.0beta6 build 1866

Da qui in avanti il progetto adotta la [developer snaphshot]  [Alan 3.0beta6 build 1866][3.0beta6-1866] per testare la libreria usufruendo dei più recenti bug fix.

Tutti i riferimenti alla precedente build nei moduli della libreria e nei sorgenti dei test vengono aggiornati, ma non viene variata la versione dei moduli né la loro data poiché il salto di version non ha determinato differenze nei risultati dei test.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

<!-- File del Progetto -->

[VESTIARIO]: ./VESTIARIO.md "Vedi documento"
[VESTIARIO_DEV]: ./VESTIARIO_DEV.md "Vedi documento"
[VESTIARIO_PROBLEMI]: ./VESTIARIO_PROBLEMI.md "Vedi documento"

[AGGIORNA_TUTTO.bat]: ../AGGIORNA_TUTTO.bat "Vedi sorgente"
[ver.sh]: ../ver.sh "Vedi sorgente"
[verbump.sh]: ../verbump.sh "Vedi sorgente"
[VERSIONING.md]: ../VERSIONING.md "Vedi sorgente"

<!-- Cartelle del Progetto -->

[test]: ../test/

<!-- Moduli della Libreria --------------------------------------------------->

[libreria]:              ./libreria.i
[lib_classi]:            ./lib_classi.i
[lib_classi_vestiario]:  ./lib_classi_vestiario.i
[lib_definizioni]:       ./lib_definizioni.i
[lib_italian]:           ./lib_italian.i
[lib_luoghi]:            ./lib_luoghi.i
[lib_messaggi_libreria]: ./lib_messaggi_libreria.i
[lib_messaggi_runtime]:  ./lib_messaggi_runtime.i
[lib_verbi]:             ./lib_verbi.i

<!-- vecchi nomi di moduli rinominati -->

[lib_grammatica]:        ./lib_italian.i
[lib_supplemento]:       ./lib_italian.i


<!-- Documentazione Libreria  ------------------------------------------------>

[Doxter]: https://git.io/doxter "Visit Doxter website"

[BUILD_DOCS]: ./BUILD_DOCS.bat
[ANNOTAZIONI_DOXTER]: ./ANNOTAZIONI_DOXTER.adoc

[lib_verbi adoc]: ./lib_verbi.asciidoc
[lib_verbi html]: ./lib_verbi.html
[lib_verbi html live]: https://tajmone.github.io/Alan3-Italian/lib_verbi.html "Anteprima HTML sul sito Alan Italian"

<!-- Link Esterni ------------------------------------------------------------>

[Alan StdLib upstream repository]: https://github.com/AnssiR66/AlanStdLib

[AlanStdLib]: https://github.com/AnssiR66/AlanStdLib

[Alan SDK 3.0beta6]: https://www.alanif.se/download-alan-v3/development-kits/development-kits-3-0beta6

<!-- Developer Snapshot di Alan ---------------------------------------------->

[developer snaphshot]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots "Vai alla pagina delle Developer Snapshots sul sito di Alan"


[3.0beta6-1866]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots/build1866 "Vai alla pagina di download della snapshot Alan 3.0beta6 build 1866"
[3.0beta6-1870]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots/build1870 "Vai alla pagina di download della snapshot Alan 3.0beta6 build 1870"
[3.0beta6-1878]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots/build1878 "Vai alla pagina di download della snapshot Alan 3.0beta6 build 1878"
[3.0beta6-1880]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots/build1880 "Vai alla pagina di download della snapshot Alan 3.0beta6 build 1880"
[3.0beta6-1980]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots/build1980 "Vai alla pagina di download della snapshot Alan 3.0beta6 build 1980"
[3.0beta6-2015]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots/build2015 "Vai alla pagina di download della snapshot Alan 3.0beta6 build 2015"
[3.0beta6-2022]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots/build2022 "Vai alla pagina di download della snapshot Alan 3.0beta6 build 2022"

<!-- Alan Commits ------------------------------------------------------------>

[repository di Alan]: https://bitbucket.org/alanif/alan "Visita il repository di Alan su Bitbucket"



<!-- StdLib Issues & PRs ----------------------------------------------------->


<!-- EOF -->
