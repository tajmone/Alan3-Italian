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
    - [attraversa](#attraversa)
    - [siediti](#siediti)
    - [siediti_su](#siediti_su)
    - [vai_a](#vai_a)
- [ESAMINARE, LEGGERE, ISPEZIONARE, SCRIVERE](#esaminare-leggere-ispezionare-scrivere)
    - [esamina](#esamina)
    - [leggi](#leggi)
    - [scrivi](#scrivi)
    - [ascolta0](#ascolta0)
    - [ascolta](#ascolta)
- [TRASFERIMENTO OGGETTI](#trasferimento-oggetti)
    - [prendi](#prendi)
    - [prendi_da](#prendi_da)
    - [lascia](#lascia)
    - [dai_a](#dai_a)
    - [inventario](#inventario)
    - [compra](#compra)
    - [vendi](#vendi)
- [INTERAZIONI VERBALI](#interazioni-verbali)
    - [rispondi](#rispondi)
- [MANGIARE, BERE](#mangiare-bere)
    - [mangia](#mangia)
    - [bevi](#bevi)
- [APRIRE, CHIUDERE, BLOCCARE](#aprire-chiudere-bloccare)
    - [apri](#apri)
    - [apri_con](#apri_con)
    - [chiudi](#chiudi)
    - [chiudi_con](#chiudi_con)
    - [blocca](#blocca)
    - [blocca_con](#blocca_con)
    - [sblocca](#sblocca)
    - [sblocca_con](#sblocca_con)
- [ACCENDERE, SPEGNERE](#accendere-spegnere)
    - [accendi](#accendi)
    - [spegni](#spegni)
- [INTERAZIONI VARIE CON OGGETTI](#interazioni-varie-con-oggetti)
    - [libera](#libera)
    - [ripara](#ripara)
    - [taglia](#taglia)
    - [taglia_con](#taglia_con)
- [INDOSSARE, SPOGLIARSI](#indossare-spogliarsi)
    - [spogliati](#spogliati)
- [ATTACCARE, ROMPERE, BRUCIARE](#attaccare-rompere-bruciare)
    - [attacca](#attacca)
    - [attacca_con](#attacca_con)
    - [brucia](#brucia)
    - [brucia_con](#brucia_con)
    - [rompi](#rompi)
    - [rompi_con](#rompi_con)
- [VERBI CHE NON CONSEGUONO NULLA](#verbi-che-non-conseguono-nulla)
    - [aspetta](#aspetta)
    - [balla](#balla)
    - [dormi](#dormi)
    - [dici_No](#dici_no)
    - [dici_Sì](#dici_s%C3%AC)
    - [gioca_con](#gioca_con)
    - [pensa](#pensa)
    - [pensa_a](#pensa_a)
    - [prega](#prega)
    - [scava](#scava)
    - [suona](#suona)
    - [usa](#usa)
    - [usa_con](#usa_con)
- [VERBI VARI](#verbi-vari)
    - [Domande Dirette](#domande-dirette)
    - [guida](#guida)
    - [trova](#trova)

<!-- /MarkdownTOC -->

-----

# Indice dei Verbi

Siccome in questo documento i vari verbi sono raggrupati per categorie di affinità, il seguente indice elenca tutti i verbi disponibili (e loro sinonimi) linkandoli alla loro sezione nel documento.


- [abbandona]  (partita)
- [abbandona][abbandona ogg]  (oggetto)
- [abbandona partita]
- [accendi]
- [afferra]
- [aggiusta]
- [apri]
- [apri con]
- [ascolta][ascolta0]
- [ascolta][ascolta] (oggetto)
- [aspetta]
- [attacca]
- [attacca con]
- [attendi]
- [attraversa]
- [balla]
- [bevi]
- [blocca]
- [blocca con]
- [brucia]
- [brucia con]
- [carica]
- [carica partita]
- [chiudi]
- [chiudi con]
- [combatti]
- [combatti con]
- [compra]
- [dai]
- [danza]
- [descrivi]
- [distruggi]
- [distruggi con]
- [dormi]
- [esamina]
- [gioca con]
- [guida]
- [inventario]
- [lascia]
- [leggi]
- [libera]
- [mangia]
- [medita]
- [medita su]
- [metti giù]
- [no]
- [offri]
- [osserva]
- [picchia]
- [picchia con]
- [pensa]
- [pensa a]
- [pondera]
- [pondera argomento]
- [porgi]
- [posa]
- [prega]
- [prendi]
- [prendi da]
- [raccogli]
- [ricomincia]
- [ricomincia partita]
- [rifletti]
- [rifletti su]
- [rimuovi]
- [ripara]
- [riposa]
- [rompi]
- [rompi con]
- [rilascia]
- [rispondi]
- [salva partita]
- [salva]
- [sblocca]
- [sblocca con]
- [scava]
- [scrivi]
- [serra]
- [serra con]
- [sfonda]
- [sfonda con]
- [sì]
- [siedi]
- [siedi su]
- [siediti]
- [siediti su]
- [spacca]
- [spacca con]
- [spegni]
- [spogliati]
- [suona]
- [svestiti]
- [taglia]
- [taglia con]
- [togli]
- [trasporta]
- [trova]
- [usa]
- [usa con]
- [vai a]
- [vendi]

-------------------------------------------------------------------------------


# Tabella dei Verbi

Copiata da "`lib_verbi.i`" v0.4.6 (2018/07/31).

Elenco alfabetico dei verbi tradotti, suddivisi in comandi di partita (prima) e comandi di gioco (dopo il divisorio orizzontale di tabella):

```
--+--------------------+------------------------------+------------------------------+---+---+---+
--| VERBO              | SINONIMI                     | SINTASSI                     | M | A | O |
--|--------------------|------------------------------|------------------------------|---|---|---|
--| abbandona_partita  | quit, Q                      | abbandona [partita]          | x | 0 |   |
--| carica_partita     | restore                      | carica [partita]             | x | 0 |   |
--| ricomincia_partita | restart                      | ricomincia [partita]         | x | 0 |   |
--| salva_partita      | save                         | salva [partita]              | x | 0 |   |
--+--------------------+------------------------------+------------------------------+---+---+---+
--| accendi            |                              | accendi (disp)               |   | 1 |   |
--| apri               |                              | apri (ogg)                   |   | 1 | x |
--| apri_con           |                              | apri (ogg) con (strum)       |   | 2 | x |
--| aspetta            | attendi, Z                   | aspetta                      |   | 0 |   |
--| attraversa         |                              | attraversa (ogg)             |   | 1 | x |
--| bevi               |                              | bevi (liq)                   |   | 1 |   |
--| blocca             | serra                        | blocca (ogg)                 |   | 1 | x |
--| blocca_con         | serra                        | blocca (ogg) con (chiave)    |   | 2 | x |
--| brucia             |                              | brucia (ogg)                 |   | 1 | x |
--| brucia_con         |                              | brucia (ogg) con (strum)     |   | 2 | x |
--| chi_è              |                              | chi è (png)                  |   | 1 |   | * BUGGED!
--| chi_sono_io        |                              | chi sono                     |   | 0 |   |
--| chiudi             |                              | chiudi (ogg)                 |   | 1 | x |
--| chiudi_con         |                              | chiudi (ogg) con (strum)     |   | 2 | x |
--| compra             | acquista                     | compra (merce)               |   | 1 |   |
--| cosa_è             |                              | cosa è (ogg)                 |   | 1 | x | * BUGGED!
--| cosa_sono_io       |                              | cosa sono                    |   | 0 |   |
--| dai_a              | porgi, offri                 | dai (ogg) a (ricevente)      |   | 2 | x |
--| dici_No            |                              | no                           |   | 0 |   |
--| dici_Sì            |                              | sì                           |   | 0 |   |
--| dormi              | riposa                       | dormi                        |   | 0 |   |
--| dove_è             |                              | dove è (ogg)                 |   | 1 | x | * BUGGED!
--| dove_mi_trovo      |                              | dove sono                    |   | 0 |   |
--| esamina            | guarda, descrivi, osserva, X | esamina (ogg)                |   | 1 | x |
--| gioca_con          |                              | gioca con (ogg)              |   | 1 | x |
--| inventario         | inv                          | inventario                   | x | 0 |   |
--| lascia             | abbandona, metti giù, posa   | lascia (ogg)*                |   | 1 | x |
--| leggi              |                              | leggi (ogg)                  |   | 1 | x |
--| libera             | rilascia                     | libera (ogg)                 |   | 1 | x |
--| mangia             |                              | mangia (cibo)                |   | 1 |   |
--| pensa              | pondera, rifletti, medita    | pensa                        |   | 0 |   |
--| pensa_a            | rifletti/medita su, pondera  | pensa a (argomento)          |   | 1 |   |
--| prega              |                              | prega                        |   | 0 |   |
--| prendi             | afferra, raccogli, trasporta | prendi (ogg)                 |   | 1 | x |
--| prendi_da          | rimuovi, togli               | prendi (ogg) da (detentore)  |   | 2 | x |
--| rifai              | ancora, G                    | rifai                        |   | 0 |   |
--| riempi             |                              | riempi (cont)                |   | 1 |   |
--| riempi_con         |                              | riempi (cont) con (sostanza) |   | 2 |   |
--| rompi              | distruggi, spacca, sfonda    | rompi (ogg)                  |   | 1 | x |
--| rompi_con          | distruggi, spacca, sfonda    | rompi (ogg) con (strum)      |   | 2 | x |
--| ripara             | aggiusta                     | ripara (ogg)                 |   | 1 | x |
--| rispondi           |                              | rispondi (argomento)         |   | 1 |   |
--| sblocca            |                              | sblocca (ogg)                |   | 1 | x |
--| sblocca_con        |                              | sblocca (ogg) con (chiave)   |   | 2 | x |
--| scrivi             |                              | scrivi "testo" su (ogg)      |   | 1 | x |
--| siediti            | siedi                        | siediti                      |   | 0 |   |
--| siediti_su         | siedi                        | siediti su (superficie)      |   | 1 |   |
--| spegni             |                              | spegni (disp)                |   | 1 |   |
--| spogliati          | svestiti                     | spogliati                    |   | 0 |   |
--| suona              |                              | suona (ogg)                  |   | 1 | x |
--| trova              |                              | trova (ogg)                  |   | 1 | x |
--| usa                |                              | usa (ogg)                    |   | 1 | x |
--| usa_con            |                              | usa (ogg) con (strum)        |   | 2 | x |
--| vai_a              |                              | vai a (dest)                 |   | 1 |   |
--| vendi              |                              | vendi (merce)                |   | 1 |   |
--+--------------------+------------------------------+------------------------------+---+---+---+
```


-------------------------------------------------------------------------------

# META-COMANDI DI PARTITA

Ovvero, quei comandi che non riguardano il mondo dell'avventura ma funzionalità legate alla partita (salvare, opzioni di verbosità, ecc.).

> __NOTA__ — Benché il messaggio di run-time `QUIT_ACTION` (_Do you want to RESTART, RESTORE, QUIT or UNDO?_) possa essere tradotto, le possibili risposte del giocatore ad esso non possono esserlo. Pertanto, al fine di non confondere il giocatore, i termini inglesi per `RESTART`, `RESTORE`, `QUIT` e `UNDO` andrebbero preservati come sinonimi/sintassi alternative anche nelle definizioni dei corrispettivi verbi tradotti in italiano (e quindi, anche `save` per `salva`, per coerenza); almeno fin quando non sarà possibile tradurre in italiano le risposte.

## carica_partita

[carica]: #carica_partita "carica_partita"
[carica partita]: #carica_partita "carica_partita"


attributo `mia_AT`:

    CAN [NOT] caricare_partita


sintassi:

    carica [partita]
    restore

condizioni:

- `mia_AT CAN caricare_partita`

## salva_partita

[salva]: #salva_partita "salva_partita"
[salva partita]: #salva_partita "salva_partita"


attributo `mia_AT`:

    CAN [NOT] salvare_partita


sintassi:

    salva [partita]
    save

condizioni:

- `mia_AT CAN salvare_partita`

## ricomincia_partita

[ricomincia]: #ricomincia_partita
[ricomincia partita]: #ricomincia_partita


attributo `mia_AT`:

    CAN [NOT] ricominciare_partita


sintassi:

    ricomincia [partita]
    restart

condizioni:

- `mia_AT CAN ricominciare_partita`

## abbandona_partita

[abbandona]: #abbandona_partita "abbandona_partita"
[abbandona partita]: #abbandona_partita "abbandona_partita"


attributo `mia_AT`:

    CAN [NOT] abbandonare_partita


sintassi:

    abbandona [partita]
    quit

sinonimi:

    quit = q

condizioni:

- `mia_AT CAN abbandonare_partita`


-------------------------------------------------------------------------------

# VERBI DI SPOSTAMENTO

Verbi che riguardano lo spostamento del personaggio protagonista nell'avventura:

- [attraversa]
- [siediti]
- [siediti su]
- [vai a]


## attraversa

[attraversa]: #attraversa "attraversa"


attributo `mia_AT`:

    CAN [NOT] attraversare

sintassi:

    attraversa <ogg>

## siediti

[siediti]: #siediti "siediti"
[siedi]: #siediti "siediti"


attributo `mia_AT`:

    CAN [NOT] sedersi

sintassi:

    (siediti|siedi)


## siediti_su

[siediti su]: #siediti_su "siediti_su"
[siedi su]: #siediti_su "siediti_su"


attributo `mia_AT`:

    CAN [NOT] sedersi_su

sintassi:

    (siediti|siedi) su <superficie>





## vai_a

[vai a]: #vai_a "vai_a"

attributo `mia_AT`:

    CAN [NOT] andare_a

sintassi:

    [vai] a <dest>

> __NOTA__ — In realtà in questo verbo l'uso di "vai" è del tutto opzionale dato che "vai" è definito come sinonimo di "go", che è una delle NOISE WORDS che vengono ignorate dal parser. Quindi, i seguenti comandi risultano identici al parser:
> 
> ```
> > vai alla cabina telefonica
> > alla cabina telefonica
> ```


-------------------------------------------------------------------------------

# ESAMINARE, LEGGERE, ISPEZIONARE, SCRIVERE


- [ascolta0]
- [ascolta] (oggetto)
- [esamina]
- [leggi]
- [scrivi]


## esamina

[esamina]: #esamina "esamina"
[descrivi]: #esamina "esamina"
[osserva]: #esamina "esamina"

attributo `mia_AT`:

    CAN [NOT] esaminare

sintassi:

    (esamina|descrivi|osserva|X) <ogg>
    guarda <ogg>


## leggi

[leggi]: #leggi "leggi"

attributo `mia_AT`:

    CAN [NOT] leggere

sintassi:

    leggi <ogg>


## scrivi

[scrivi]: #scrivi "scrivi"


attributo `mia_AT`:

    CAN [NOT] scrivere

sintassi:

    scrivi "testo" (su|in) <ogg>


## ascolta0

[ascolta0]: #ascolta0 "ascolta0"


attributo `mia_AT`:

    CAN [NOT] ascoltare0

sintassi:

    ascolta


## ascolta

[ascolta]: #ascolta "ascolta"


attributo `mia_AT`:

    CAN [NOT] ascoltare

sintassi:

    ascolta <ogg!>




-------------------------------------------------------------------------------

# TRASFERIMENTO OGGETTI

Questi verbi sono accomunati dal fatto che riguardano il trasferimento di oggetti da un luogo/proprietario ad un altro.


## prendi

[prendi]: #prendi "prendi"
[afferra]: #prendi "prendi"
[raccogli]: #prendi "prendi"
[trasporta]: #prendi "prendi"

attributo `mia_AT`:

    CAN [NOT] prendere

sintassi:

    (prendi|afferra|raccogli|trasporta) <ogg>


## prendi_da

[prendi da]: #prendi_da "prendi_da"
[rimuovi]: #prendi_da "prendi_da"
[togli]: #prendi_da "prendi_da"

attributo `mia_AT`:

    CAN [NOT] prendere_da

sintassi:

    (prendi|rimuovi|togli) <ogg> da <detentore>


## lascia

[lascia]: #lascia "lascia"
[abbandona ogg]: #lascia "lascia"
[metti giù]: #lascia "lascia"
[posa]: #lascia "lascia"


attributo `mia_AT`:

    CAN [NOT] lasciare

sintassi:

    (lascia|abbandona|metti giù|posa) <ogg>



## dai_a

[dai]: #dai_a "dai_a"
[porgi]: #dai_a "dai_a"
[offri]: #dai_a "dai_a"

attributo `mia_AT`:

    CAN [NOT] give

sintassi:

    (dai|porgi|offri) <ogg> a <ricevente>

... dove `ricevente` è un ATTORE.

## inventario

[inventario]: #inventario "inventario"

attributo `mia_AT`:

    CAN [NOT] inventariare

sintassi:

    (inventario|inv)


## compra

[compra]: #compra "compra"

sintassi:

    (compra|acquista) <merce>


## vendi

[vendi]: #vendi "vendi"

sintassi:

    vendi <merce>


-------------------------------------------------------------------------------

# INTERAZIONI VERBALI

## rispondi

[rispondi]: #rispondi


attributo `mia_AT`:

    CAN [NOT] rispondere

sintassi:

    rispondi "testo"


-------------------------------------------------------------------------------

# MANGIARE, BERE

## mangia

[mangia]: #mangia "mangia"

sintassi:

    mangia <cibo>

## bevi

[bevi]: #bevi "bevi"

sintassi:

    bevi <liq>



-------------------------------------------------------------------------------

# APRIRE, CHIUDERE, BLOCCARE

## apri

[apri]: #apri "apri"


attributo `mia_AT`:

    CAN [NOT] aprire

sintassi:

    apri <ogg>


## apri_con

[apri con]: #apri_con "apri_con"


attributo `mia_AT`:

    CAN [NOT] aprire_con

sintassi:

    apri <ogg> con <strum>


## chiudi

[chiudi]: #chiudi "chiudi"


attributo `mia_AT`:

    CAN [NOT] chiudere

sintassi:

    chiudi <ogg>



## chiudi_con

[chiudi con]: #chiudi_con "chiudi_con"


attributo `mia_AT`:

    CAN [NOT] chiudere_con

sintassi:

    chiudi <ogg> con <strum>



## blocca

[blocca]: #blocca "blocca"
[serra]: #blocca "blocca"


attributo `mia_AT`:

    CAN [NOT] bloccare

sintassi:

    (blocca|serra) <ogg>


## blocca_con

[blocca con]: #blocca_con "blocca_con"
[serra con]: #blocca_con "blocca_con"


attributo `mia_AT`:

    CAN [NOT] bloccare_con

sintassi:

    (blocca|serra) <ogg> con <chiave>


## sblocca

[sblocca]: #sblocca "sblocca"


attributo `mia_AT`:

    CAN [NOT] sbloccare

sintassi:

    sblocca <ogg>


## sblocca_con

[sblocca con]: #sblocca_con "sblocca_con"


attributo `mia_AT`:

    CAN [NOT] sbloccare_con

sintassi:

    sblocca <ogg> con <chiave>


-------------------------------------------------------------------------------

# ACCENDERE, SPEGNERE

## accendi

[accendi]: #accendi "accendi"


attributo `mia_AT`:

    CAN [NOT] accendere

sintassi:

    accendi <disp>

Dove `disp` è un `dispositivo` o una `fonte_di_luce`.

Se l'azione avrà successo, altererà il seguente attributo di `<disp>`:

- `IS acceso`, se `<disp>` è un dispositivo, 
- `IS illuminato` se `<disp>` è una `fonte_di_luce`.

## spegni

[spegni]: #spegni "spegni"


attributo `mia_AT`:

    CAN [NOT] spegnere

sintassi:

    spegni <disp>

Dove `disp` è un `dispositivo` o una `fonte_di_luce`.

Se l'azione avrà successo, altererà il seguente attributo di `<disp>`:

- `IS NOT acceso`, se `<disp>` è un dispositivo, 
- `IS NOT illuminato` se `<disp>` è una `fonte_di_luce`.


-------------------------------------------------------------------------------

# INTERAZIONI VARIE CON OGGETTI

- [libera]
- [ripara]
- [taglia]
- [taglia con]

## libera

[libera]: #libera "libera"
[rilascia]: #libera "libera"


attributo `mia_AT`:

    CAN [NOT] liberare

sintassi:

    (libera|rilascia) <ogg>


## ripara

[ripara]: #ripara "ripara"
[aggiusta]: #ripara "ripara"


attributo `mia_AT`:

    CAN [NOT] riparare

sintassi:

    (ripara|aggiusta) <ogg>


## taglia

[taglia]: #taglia "taglia"


attributo `mia_AT`:

    CAN [NOT] tagliare

sintassi:

    taglia <ogg>

## taglia_con

[taglia con]: #taglia_con "taglia_con"


attributo `mia_AT`:

    CAN [NOT] tagliare_con

sintassi:

    taglia <ogg> con <strum>



-------------------------------------------------------------------------------

# INDOSSARE, SPOGLIARSI

Questi verbi sono legati tra loro.


## spogliati

[spogliati]: #spogliati "spogliati"
[svestiti]: #spogliati "spogliati"

attributo `mia_AT`:

    CAN [NOT] spogliarsi

sintassi:

    (spogliati|svestiti)

condizioni:

- `mia_AT CAN spogliarsi`
- `CURRENT LOCATION IS lit`

esito:

- Nulla, ti dice che ripensandoci non è una buona idea.

> __NOTA__ — La definizione del verbo contiene del codice (commentato) di esempio su come implementare l'azione di spogliarsi. Quella parte andrebbe controllata meglio (messaggi, ecc.).


-------------------------------------------------------------------------------

# ATTACCARE, ROMPERE, BRUCIARE


- [attacca]
- [attacca_con]
- [brucia]
- [brucia_con]
- [rompi]
- [rompi_con]

## attacca

[attacca]: #attacca "attacca"
[combatti]: #attacca "attacca"
[picchia]: #attacca "attacca"


attributo `mia_AT`:

    CAN [NOT] attaccare

sintassi:

    (attacca|combatti|picchia) <bersaglio>

## attacca_con

[attacca_con]: #attacca_con "attacca_con"
[attacca con]: #attacca_con "attacca_con"
[combatti con]: #attacca_con "attacca_con"
[picchia con]: #attacca_con "attacca_con"


attributo `mia_AT`:

    CAN [NOT] attaccare_con

sintassi:

    (attacca|combatti|picchia) <bersaglio> con (arma)


## brucia

[brucia]: #brucia "brucia"

sintassi:

    brucia <ogg>

esito:

- Informa il giocatore che deve specificare con che cosa vuole bruciare <ogg>.

## brucia_con

[brucia_con]: #brucia_con "brucia_con"
[brucia con]: #brucia_con "brucia_con"

sintassi:

    brucia <ogg> con <strumento>

esito:

- Nulla

## rompi

[distruggi]: #rompi "rompi"
[spacca]: #rompi "rompi"
[sfonda]: #rompi "rompi"
[rompi]: #rompi "rompi"


sintassi:

    (rompi|distruggi|spacca|sfonda) <ogg>

condizioni:

- `mia_AT CAN rompere`
- `ogg IS esaminabile`
- `CURRENT LOCATION IS lit`
- `ogg IS raggiungibile AND ogg IS NOT distante`

esito:

- Nulla, dice solo "`La violenza non è la giusta risposta a questo.`" (testo preso da Inform 6 _Infit_).


## rompi_con

[rompi_con]: #rompi_con "rompi_con"
[rompi con]: #rompi_con "rompi_con"
[distruggi con]: #rompi_con "rompi_con"
[spacca con]: #rompi_con "rompi_con"
[sfonda con]: #rompi_con "rompi_con"


sintassi:

    (rompi|distruggi|spacca|sfonda) <ogg> 'con' <strum>

condizioni:

_ULTERIORI DETTAGLI DA APPROFONDIRE_

esito:

- Nulla, dice solo "`Tentare di rompere <THE ogg> con <THE strum> non risolverebbe nulla.`"  


-------------------------------------------------------------------------------

# VERBI CHE NON CONSEGUONO NULLA

Raggruppo qui vari verbi che nell'implementazione di base della libreria sono riconosciuti ma non sortiscono alcun effetto (e che solitamente non dovrebbero fare nulla di speciale).

- [aspetta]
- [attendi]
- [balla]
- [dormi]
- [gioca con]
- [medita]
- [medita su]
- [no]
- [pensa]
- [pensa a]
- [pondera]
- [pondera argomento]
- [prega]
- [rifletti]
- [rifletti su]
- [riposa]
- [scava]
- [sì]
- [suona]
- [usa]
- [usa con]

## aspetta

[aspetta]: #aspetta "aspetta"
[attendi]: #aspetta "aspetta"

sintassi:

    (aspetta|attendi|Z)

condizioni:

- `mia_AT CAN aspettare`

esito:

- Nulla, dice solo "`Il tempo passa.`" (testo preso da Inform 6 _Infit_).


## balla

[balla]: #balla "balla"
[danza]: #balla "balla"


attributo `mia_AT`:

    CAN [NOT] ballare

sintassi:

    (balla|danza)


## dormi

[dormi]: #dormi "dormi"
[riposa]: #dormi "dormi"

sintassi:

    (dormi|riposa)

condizioni:

- `mia_AT CAN dormire`

esito:

- Nulla, dice solo "`Non è il momento di riposare.`"



## dici_No

[no]: #dici_no


attributo `mia_AT`:

    CAN [NOT] dire_no

sintassi:

    no



## dici_Sì

[sì]: #dici_si


attributo `mia_AT`:

    CAN [NOT] dire_sì

sintassi:

    sì


## gioca_con

[gioca con]: #gioca_con "gioca con"

sintassi:

    suona <ogg>

condizioni:

- `mia_AT CAN suonare`


## pensa

[pensa]: #pensa "pensa"
[pondera]: #pensa "pensa"
[rifletti]: #pensa "pensa"
[medita]: #pensa "pensa"


attributo `mia_AT`:

    CAN [NOT] pensare

sintassi:

    (pensa|pondera|rifletti|medita)


## pensa_a

[pensa a]: #pensa_a "pensa_a"
[rifletti su]: #pensa_a "pensa_a"
[medita su]: #pensa_a "pensa_a"
[pondera argomento]: #pensa_a "pensa_a"


attributo `mia_AT`:

    CAN [NOT] pensare_a

sintassi:

    pensa a <argomento>
    (rifletti|medita) su <argomento>
    pondera <argomento>



## prega

[prega]: #prega "prega"

sintassi:

    prega

condizioni:

- `mia_AT CAN pregare`

esito:

- Nulla, dice solo "`Sembra che le tue preghiere non siano state esaudite.`" (testo preso da Inform 6 _Infit_).


## scava

[scava]: #scava "scava"


attributo `mia_AT`:

    CAN [NOT] scavare

sintassi:

    scava <ogg>

Risponde: "Qui non c'è nulla da scavare."


## suona

[suona]: #suona "suona"

sintassi:

    suona <ogg>

condizioni:

- `mia_AT CAN suonare`



## usa

[usa]: #usa "usa"


attributo `mia_AT`:

    CAN [NOT] usare

sintassi:

    usa <ogg>


Esito:

- invita il giocatore ad essere più specifico.



## usa_con

[usa con]: #usa_con "usa_con"


attributo `mia_AT`:

    CAN [NOT] usare_con

sintassi:

    usa <ogg> con (strum)

Esito:

- invita il giocatore ad essere più specifico.

-------------------------------------------------------------------------------

# VERBI VARI

Verbi che non rientrano in categorie specifiche.

## Domande Dirette

Questi verbi non fanno un granché, e alcuni di essi sono affetti dal baco che impedisce di usare la "è" nelle sintassi e nei sinonimi (per cui usano la "é"):

- `chi_è`
- `chi_sono_io`
- `cosa_è`
- `cosa_sono_io`
- `dove_è`
- `dove_mi_trovo`

Per maggior informazioni su questi verbi, consultare il sorgente di "`lib_verbi.i`".



## guida

[guida]: #guida "guida"


attributo `mia_AT`:

    CAN [NOT] guidare

sintassi:

    guida <veicolo>



## trova

[trova]: #trova


attributo `mia_AT`:

    CAN [NOT] trovare

sintassi:

    trova <ogg>

Dove `ogg` è un `THING`.

