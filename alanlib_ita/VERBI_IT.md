# Verbi Tradotti in Italiano

Questo documento riassume i verbi finora tradotti in italiano, annotandone i vari usi e sinonimi.


-----

**Indice**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Indice dei Verbi](#indice-dei-verbi)
- [Tabella dei Verbi](#tabella-dei-verbi)
- [META-COMANDI DI PARTITA](#meta-comandi-di-partita)
    - [carica_partita](#carica_partita)
    - [salva_partita](#salva_partita)
    - [ricomincia_partita](#ricomincia_partita)
    - [abbandona_partita](#abbandona_partita)
- [VERBI DI SPOSTAMENTO](#verbi-di-spostamento)
    - [vai_a](#vai_a)
    - [attraversa](#attraversa)
- [DARE, PRENDERE, RIMUOVERE](#dare-prendere-rimuovere)
    - [prendi](#prendi)
    - [prendi_da](#prendi_da)
    - [dai_a](#dai_a)
    - [inventario](#inventario)
- [MANGIARE, BERE](#mangiare-bere)
    - [mangia](#mangia)
- [INDOSSARE, SPOGLIARSI](#indossare-spogliarsi)
    - [spogliati](#spogliati)
- [ATTACCARE, ROMPERE, BRUCIARE](#attaccare-rompere-bruciare)
    - [brucia](#brucia)
    - [brucia_con](#brucia_con)
    - [rompi](#rompi)
    - [rompi_con](#rompi_con)
- [VERBI CHE NON CONSEGUONO NULLA](#verbi-che-non-conseguono-nulla)
    - [aspetta](#aspetta)
    - [dormi](#dormi)
    - [prega](#prega)
- [VERBI VARI](#verbi-vari)
    - [Compra](#compra)

<!-- /MarkdownTOC -->

-----

# Indice dei Verbi

Siccome in questo documento i vari verbi sono raggrupati per categorie di affinità, il seguente indice elenca tutti i verbi disponibili (e loro sinonimi) linkandoli alla loro sezione nel documento.

- [abbandona]
- [abbandona partita]
- [afferra]
- [aspetta]
- [attendi]
- [attraversa]
- [brucia]
- [brucia con]
- [carica]
- [carica partita]
- [compra]
- [dai]
- [distruggi]
- [distruggi con]
- [dormi]
- [inventario]
- [mangia]
- [offri]
- [porgi]
- [prega]
- [prendi]
- [prendi da]
- [raccogli]
- [ricomincia]
- [ricomincia partita]
- [rimuovi]
- [riposa]
- [rompi con]
- [rompi]
- [salva]
- [salva partita]
- [sfonda]
- [sfonda con]
- [spacca]
- [spacca con]
- [spogliati]
- [svestiti]
- [togli]
- [trasporta]
- [vai a]

-------------------------------------------------------------------------------

# Tabella dei Verbi

Copiata da "`lib_verbi.i`" v0.2.16 (2018/07/17).

Elenco alfabetico dei verbi tradotti, suddivisi in comandi di partita (prima) e comandi di gioco (dopo il divisorio orizzontale di tabella):

```
--+--------------------+------------------------------+--------------------------+---+---+---+
--| VERBO              | SINONIMI                     | SINTASSI                 | M | A | O |
--|--------------------|------------------------------|--------------------------|---|---|---|
--| abbandona_partita  | quit, Q                      | abbandona [partita]      | x | 0 |   |
--| carica_partita     | restore                      | carica [partita]         | x | 0 |   |
--| ricomincia_partita | restart                      | ricomincia [partita]     | x | 0 |   |
--| salva_partita      | save                         | salva [partita]          | x | 0 |   |
--+--------------------+------------------------------+--------------------------+---+---+---+
--| aspetta            | attendi, Z                   | aspetta                  |   | 0 |   |
--| attraversa         |                              | attraversa (ogg)         |   | 1 | x |
--| brucia             |                              | brucia (ogg)             |   | 1 | x |
--| brucia_con         |                              | brucia (ogg) con (instr) |   | 2 | x |
--| compra             | acquista                     | compra (item)            |   | 1 |   |
--| dai_a              | porgi, offri                 | dai (ogg) a (recipient)  |   | 2 | x |
--| inventario         | inv                          | inventario               | x | 0 |   |
--| mangia             |                              | mangia (cibo)            |   | 1 |   |
--| prega              |                              | prega                    |   | 0 |   |
--| prendi             | afferra, raccogli, trasporta | prendi (ogg)             |   | 1 | x |
--| prendi_da          | rimuovi, togli               | prendi (ogg) da (holder) |   | 2 | x |
--| rifai              | ancora, G                    | rifai                    |   | 0 |   |
--| rompi              | distruggi, spacca, sfonda    | rompi (ogg)              |   | 1 | x |
--| rompi_con          | distruggi, spacca, sfonda    | rompi (ogg) con (instr)  |   | 2 | x |
--| spogliati          | svestiti                     | spogliati                |   | 0 |   |
--| vai_a              |                              | vai a (dest)             |   | 1 |   |
--+--------------------+------------------------------+--------------------------+---+---+---+
```


-------------------------------------------------------------------------------

# META-COMANDI DI PARTITA

Ovvero, quei comandi che non riguardano il mondo dell'avventura ma funzionalità legate alla partita (salvare, opzioni di verbosità, ecc.).

> __NOTA__ — Benché il messaggio di run-time `QUIT_ACTION` (_Do you want to RESTART, RESTORE, QUIT or UNDO?_) possa essere tradotto, le possibili risposte del giocatore ad esso non possono esserlo. Pertanto, al fine di non confondere il giocatore, i termini inglesi per `RESTART`, `RESTORE`, `QUIT` e `UNDO` andrebbero preservati come sinonimi/sintassi alternative anche nelle definizioni dei corrispettivi verbi tradotti in italiano (e quindi, anche `save` per `salva`, per coerenza); almeno fin quando non sarà possibile tradurre in italiano le risposte.

## carica_partita

[carica]: #carica_partita
[carica partita]: #carica_partita


attributo `my_game`:

    CAN [NOT] caricare_partita


sintassi:

    carica [partita]
    restore

condizioni:

- `my_game CAN caricare_partita`

## salva_partita

[salva]: #salva_partita
[salva partita]: #salva_partita


attributo `my_game`:

    CAN [NOT] salvare_partita


sintassi:

    salva [partita]
    save

condizioni:

- `my_game CAN salvare_partita`

## ricomincia_partita

[ricomincia]: #ricomincia_partita
[ricomincia partita]: #ricomincia_partita


attributo `my_game`:

    CAN [NOT] ricominciare_partita


sintassi:

    ricomincia [partita]
    restart

condizioni:

- `my_game CAN ricominciare_partita`

## abbandona_partita

[abbandona]: #abbandona_partita
[abbandona partita]: #abbandona_partita


attributo `my_game`:

    CAN [NOT] abbandonare_partita


sintassi:

    abbandona [partita]
    quit

sinonimi:

    quit = q

condizioni:

- `my_game CAN abbandonare_partita`


-------------------------------------------------------------------------------

# VERBI DI SPOSTAMENTO

Verbi che riguardano lo spostamento del personaggio protagonista nell'avventura:

- [vai a]


## vai_a

[vai a]: #vai_a

attributo `my_game`:

    CAN [NOT] andare_a

sintassi:

    [vai] a (dest)

> __NOTA__ — In realtà in questo verbo l'uso di "vai" è del tutto opzionale dato che "vai" è definito come sinonimo di "go", che è una delle NOISE WORDS che vengono ignorate dal parser. Quindi, i seguenti comandi risultano identici al parser:
> 
> ```
> > vai alla cabina telefonica
> > alla cabina telefonica
> ```


## attraversa

[attraversa]: #attraversa


attributo `my_game`:

    CAN [NOT] attraversare

sintassi:

    attraversa (ogg)


-------------------------------------------------------------------------------

# DARE, PRENDERE, RIMUOVERE

Questi verbi sono legati tra loro.

## prendi

[prendi]: #prendi
[afferra]: #prendi
[raccogli]: #prendi
[trasporta]: #prendi

attributo `my_game`:

    CAN [NOT] prendere

sintassi:

    (prendi|afferra|raccogli|trasporta) (ogg)


## prendi_da

[prendi da]: #prendi_da
[rimuovi]: #prendi_da
[togli]: #prendi_da

attributo `my_game`:

    CAN [NOT] prendere_da

sintassi:

    (prendi|rimuovi|togli) (ogg) da (holder)


## dai_a

[dai]: #dai_a
[porgi]: #dai_a
[offri]: #dai_a

attributo `my_game`:

    CAN [NOT] give

sintassi:

    (dai|porgi|offri) (ogg) a (recipient)

... dove `recipient` è un ATTORE.

## inventario

[inventario]: #inventario

attributo `my_game`:

    CAN [NOT] inventariare

sintassi:

    (inventario|inv)



-------------------------------------------------------------------------------

# MANGIARE, BERE

## mangia

[mangia]: #mangia

sintassi:

    mangia (cibo)



-------------------------------------------------------------------------------

# INDOSSARE, SPOGLIARSI

Questi verbi sono legati tra loro.


## spogliati

[spogliati]: #spogliati
[svestiti]: #spogliati

attributo `my_game`:

    CAN [NOT] spogliarsi

sintassi:

    (spogliati|svestiti)

condizioni:

- `my_game CAN spogliarsi`
- `CURRENT LOCATION IS lit`

esito:

- Nulla, ti dice che ripensandoci non è una buona idea.

> __NOTA__ — La definizione del verbo contiene del codice (commentato) di esempio su come implementare l'azione di spogliarsi. Quella parte andrebbe controllata meglio (messaggi, ecc.).


-------------------------------------------------------------------------------

# ATTACCARE, ROMPERE, BRUCIARE

## brucia

[brucia]: #brucia

sintassi:

    brucia (ogg)

esito:

- Informa il giocatore che deve specificare con che cosa vuole bruciare (ogg).

## brucia_con

[brucia con]: #brucia_con

sintassi:

    brucia (ogg) con (strumento)

esito:

- Nulla

## rompi

[distruggi]: #rompi
[spacca]: #rompi
[sfonda]: #rompi
[rompi]: #rompi


sintassi:

    (rompi|distruggi|spacca|sfonda) (ogg)

condizioni:

- `my_game CAN rompere`
- `obj IS examinable`
- `CURRENT LOCATION IS lit`
- `obj IS reachable AND obj IS NOT distant`

esito:

- Nulla, dice solo "`La violenza non è la giusta risposta a questo.`" (testo preso da Inform 6 _Infit_).


## rompi_con

[distruggi con]: #rompi_con
[spacca con]: #rompi_con
[sfonda con]: #rompi_con
[rompi con]: #rompi_con


sintassi:

    (rompi|distruggi|spacca|sfonda) (ogg) 'con' (instr)

condizioni:

_ULTERIORI DETTAGLI DA APPROFONDIRE_

esito:

- Nulla, dice solo "`Tentare di rompere <THE obj> con <THE instr> non risolverebbe nulla.`"  


-------------------------------------------------------------------------------

# VERBI CHE NON CONSEGUONO NULLA

Raggruppo qui vari verbi che nell'implementazione di base della libreria sono riconosciuti ma non sortiscono alcun effetto (e che solitamente non dovrebbero fare nulla di speciale).


## aspetta

[aspetta]: #aspetta
[attendi]: #aspetta

sintassi:

    (aspetta|attendi|Z)

condizioni:

- `my_game CAN aspettare`

esito:

- Nulla, dice solo "`Il tempo passa.`" (testo preso da Inform 6 _Infit_).


## dormi

[dormi]: #dormi
[riposa]: #dormi

sintassi:

    (dormi|riposa)

condizioni:

- `my_game CAN dormire`

esito:

- Nulla, dice solo "`Non è il momento di riposare.`"


## prega

[prega]: #prega

sintassi:

    prega

condizioni:

- `my_game CAN pregare`

esito:

- Nulla, dice solo "`Sembra che le tue preghiere non siano state esaudite.`" (testo preso da Inform 6 _Infit_).

-------------------------------------------------------------------------------

# VERBI VARI

Verbi che non rientrano in categorie specifiche.

## Compra

[compra]: #compra

sintassi:

    (compra|acquista) (item)



