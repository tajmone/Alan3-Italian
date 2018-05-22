# Verbi Tradotti in Italiano

Questo documento riassume i verbi finora tradotti in italiano, annotandone i vari usi e sinonimi.


-----

**Indice**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [DARE, PRENDERE, RIMUOVERE](#dare-prendere-rimuovere)
    - [prendi](#prendi)
    - [prendi_da](#prendi_da)
    - [dai_a](#dai_a)
- [INDOSSARE, SPOGLIARSI](#indossare-spogliarsi)
    - [spogliati](#spogliati)

<!-- /MarkdownTOC -->

-----

# DARE, PRENDERE, RIMUOVERE

Questi verbi sono legati tra loro.

## prendi

attributo `my_game`:

    CAN [NOT] prendere

sintassi:

    [prendi|afferra|raccogli|trasporta] (ogg)

## prendi_da

attributo `my_game`:

    CAN [NOT] prendere_da

sintassi:

    [prendi|rimuovi|togli] (ogg) da (holder)

## dai_a

attributo `my_game`:

    CAN [NOT] give

sintassi:

    [dai|porgi|offri] (ogg) a (recipient)

... dove `recipient` è un ATTORE.

# INDOSSARE, SPOGLIARSI

Questi verbi sono legati tra loro.

## spogliati

attributo `my_game`:

    CAN [NOT] spogliarsi

sintassi:

    [spogliati|svestiti]

condizioni:

- `my_game CAN spogliarsi`
- `CURRENT LOCATION IS lit`

esito:

- Nulla, ti dice che ripensandoci non è una buona idea.

> __NOTA__ — La definizione del verbo contiene del codice (commentato) di esempio su come implementare l'azione di spogliarsi. Quella parte andrebbe controllata meglio (messaggi, ecc.)
