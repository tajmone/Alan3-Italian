# Verbi Tradotti in Italiano

Questo documento riassume i verbi finora tradotti in italiano, annotandone i vari usi e sinonimi.


-----

**Indice**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Indice dei Verbi](#indice-dei-verbi)
- [DARE, PRENDERE, RIMUOVERE](#dare-prendere-rimuovere)
    - [prendi](#prendi)
    - [prendi_da](#prendi_da)
    - [dai_a](#dai_a)
- [INDOSSARE, SPOGLIARSI](#indossare-spogliarsi)
    - [spogliati](#spogliati)
- [ATTACCARE, ROMPERE](#attaccare-rompere)
    - [rompi](#rompi)
    - [rompi_con](#rompi_con)
- [Verbi che non fanno nulla](#verbi-che-non-fanno-nulla)
    - [prega](#prega)

<!-- /MarkdownTOC -->

-----

# Indice dei Verbi

Siccome in questo documento i vari verbi sono raggrupati per categorie di affinità, il seguente indice elenca tutti i verbi disponibili (e loro sinonimi) linkandoli alla loro sezione nel documento.

- [afferra]
- [dai]
- [distruggi con]
- [distruggi]
- [offri]
- [porgi]
- [prega]
- [prendi da]
- [prendi]
- [raccogli]
- [rimuovi]
- [rompi con]
- [rompi]
- [sfonda con]
- [sfonda]
- [spacca con]
- [spacca]
- [spogliati]
- [svestiti]
- [togli]
- [trasporta]


-----------------------------------------

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

    [prendi|afferra|raccogli|trasporta] (ogg)


## prendi_da

[prendi da]: #prendi_da
[rimuovi]: #prendi_da
[togli]: #prendi_da

attributo `my_game`:

    CAN [NOT] prendere_da

sintassi:

    [prendi|rimuovi|togli] (ogg) da (holder)


## dai_a

[dai]: #dai_a
[porgi]: #dai_a
[offri]: #dai_a

attributo `my_game`:

    CAN [NOT] give

sintassi:

    [dai|porgi|offri] (ogg) a (recipient)

... dove `recipient` è un ATTORE.

------------------------------------------------------------------

# INDOSSARE, SPOGLIARSI

Questi verbi sono legati tra loro.


## spogliati

[spogliati]: #spogliati
[svestiti]: #spogliati

attributo `my_game`:

    CAN [NOT] spogliarsi

sintassi:

    [spogliati|svestiti]

condizioni:

- `my_game CAN spogliarsi`
- `CURRENT LOCATION IS lit`

esito:

- Nulla, ti dice che ripensandoci non è una buona idea.

> __NOTA__ — La definizione del verbo contiene del codice (commentato) di esempio su come implementare l'azione di spogliarsi. Quella parte andrebbe controllata meglio (messaggi, ecc.).

------------------------------------------------------------------

# ATTACCARE, ROMPERE

## rompi

[distruggi]: #rompi
[spacca]: #rompi
[sfonda]: #rompi
[rompi]: #rompi


sintassi:

    [rompi|distruggi|spacca|sfonda] (ogg)

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

    [rompi|distruggi|spacca|sfonda] (ogg) 'con' (instr)

condizioni:

_ULTERIORI DETTAGLI DA APPROFONDIRE_

esito:

- Nulla, dice solo "`Tentare di rompere <THE obj> con <THE instr> non risolverebbe nulla.`"  


------------------------------------------------------------------

# Verbi che non fanno nulla

Raggruppo qui vari verbi che nell'implementazione di base della libreria sono riconosciuti ma non sortiscono alcun effetto.


## prega

[prega]: #prega

sintassi:

    prega

condizioni:

- `my_game CAN pregare`

esito:

- Nulla, dice solo "`Sembra che le tue preghiere non siano state esaudite.`" (testo preso da Inform 6 _Infit_).

