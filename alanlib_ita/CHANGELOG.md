# CHANGELOG

    Status: Alpha stage | Log Range: Alpha v0.8.0–.

Changelog of Italian translation of Alan Standard Library v2.1.

This is the current changelog from Alpha v0.8.0 upward — the CHANGELOG was split into two files due to its huge size.

For previuos changes, see:

- [`CHANGELOG_OLD.md`](./CHANGELOG_OLD.md)  (v0.0.1–0.8.0)


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [2018/11/22 \(2\)](#20181122-2)
    - [Suddivisione modulo messaggi](#suddivisione-modulo-messaggi)
    - [Passa alla v0.9.0](#passa-alla-v090)
- [2018/11/22 \(1\)](#20181122-1)
    - [Messaggi dei verbi](#messaggi-dei-verbi)
        - [Rinomina attributi](#rinomina-attributi)
        - [Azioni insensate](#azioni-insensate)
        - [Azioni Futili](#azioni-futili)
- [2018/11/20](#20181120)
    - [Documentazione Messaggi](#documentazione-messaggi)
    - [Rinomina messaggi dei verbi](#rinomina-messaggi-dei-verbi)
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