# Alan Italian

    Alan Standard Library: 2.1
    Alan Development Kit:  3.0beta6 build 1878

- https://github.com/tajmone/Alan3-Italian

|                                                 |
|-------------------------------------------------|
| **[CLICK HERE FOR ENGLISH README!][README_EN]** |

Questo progetto ha due scopi:

- Fornire supporto per la lingua italiana in Alan IF 3.
- Tradurre in italiano la _[Alan Standard Library]_ v2.1 di [Anssi Räisänen]. 

Alan Italian diventerà il sistema di autoraggio di AT italiane più facile da usare per i non programmatori, con una ricca libreria standard di partenza con oltre 170 verbi e una vasta gamma di classi predefinite e funzionalità per creare personaggi, fonti di luce, dispositivi, vestiario, porte e finestre, serrature, e molto altro ancora.

[![Donazione PayPal][donazione img]][donazione link]

Progetto a cura di [Tristano Ajmone].

[Licenza][License]: Artistic License 2.0

Data inizio progetto: 2018/04/13.

-----

**Indice dei contenuti**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introduzione](#introduzione)
    - [Alan IF](#alan-if)
        - [Programmazione prosaica](#programmazione-prosaica)
        - [Libertà autoriale](#libert%C3%A0-autoriale)
    - [Alan Italian vs Libreria Standard Italiana](#alan-italian-vs-libreria-standard-italiana)
    - [Alan Standard Library](#alan-standard-library)
- [Stato del progetto](#stato-del-progetto)
- [Sostieni il progetto](#sostieni-il-progetto)
- [Ultime novità](#ultime-novit%C3%A0)
    - [2019/02/28: Adozione di Highlight per la documentazione](#20190228-adozione-di-highlight-per-la-documentazione)
    - [2019/02/27: Passaggio a Alan 3.0beta6 build 1878](#20190227-passaggio-a-alan-30beta6-build-1878)
    - [2019/02/21: Passaggio a Alan 3.0beta6 build 1870](#20190221-passaggio-a-alan-30beta6-build-1870)
    - [2019/02/19: Riscritto il codice per il vestiario](#20190219-riscritto-il-codice-per-il-vestiario)
    - [2019/02/07: Inizio lavori per il "Ricettario di Alan"](#20190207-inizio-lavori-per-il-ricettario-di-alan)
    - [2019/02/05: Modulo per l'italiano indipendente e pronto all'uso](#20190205-modulo-per-litaliano-indipendente-e-pronto-alluso)
    - [2019/02/01: Passaggio a Alan 3.0beta6 build 1866](#20190201-passaggio-a-alan-30beta6-build-1866)
    - [2019/01/24: Passaggio a Alan 3.0beta6 build 1862](#20190124-passaggio-a-alan-30beta6-build-1862)
    - [2019/01/17: Passaggio a Alan 3.0beta6 build 1855](#20190117-passaggio-a-alan-30beta6-build-1855)
    - [2019/01/15: Grossa svolta con Alan 3.0beta6 build 1852](#20190115-grossa-svolta-con-alan-30beta6-build-1852)
        - [Supporto per le preposizioni apostrofate](#supporto-per-le-preposizioni-apostrofate)
        - [Baco della e-grave risolto!](#baco-della-e-grave-risolto)
    - [2018/11/13: Tutti i verbi tradotti](#20181113-tutti-i-verbi-tradotti)
- [Contenuti del progetto](#contenuti-del-progetto)
- [Impostare l'ambiente di lavoro](#impostare-lambiente-di-lavoro)
    - [Encoding dei file](#encoding-dei-file)
- [Ringraziamenti](#ringraziamenti)
- [Componenti terze parti](#componenti-terze-parti)
    - [Base16](#base16)
    - [Asciidoctor](#asciidoctor)
        - [Attributi italiani Asciidoctor](#attributi-italiani-asciidoctor)
    - [Estensione per Highlight](#estensione-per-highlight)
        - [ERB Templates](#erb-templates)
    - [Sass Boilerplate](#sass-boilerplate)
- [Link di approfondimento](#link-di-approfondimento)

<!-- /MarkdownTOC -->

-----

# Introduzione

Questo progetto si prefigge due obiettivi:

1. Tradurre in italiano la _[Alan Standard Library]_ v2.1 di [Anssi Räisänen]. 
2. Fornire un modulo indipendente per il supporto della lingua italiana in Alan IF 3.

Entrambi consentiranno la creazione di avventure testuali in lingua italiana utilizzando Alan 3, un linguaggio dedicato alla creazione di opere di interactive fiction.

Il primo dei due obiettivi è mirato a fornire ai novizi di Alan uno strumento di facile utilizzo per la creazione di avventure in italiano, grazie a una ricca infrastruttura di classi e verbi comunemente utilizzati nelle avventure.

Il secondo, è mirato agli utenti più esperti di Alan, che vogliono creare le proprie avventure partendo solo con il supporto per la lingua italiana, e costruirsi da zero tutti i verbi e l'infrastruttura dell'avventura.


## Alan IF

- https://www.alanif.se/
- https://bitbucket.org/alanif/alan

Alan (acronimo per __Adventure LANguage__) è un linguaggio dedicato alla creazione di [avventure testuali] (dette anche "AT", o "IF"/"Interactive Fiction"). Creato da Thomas Nilsson e Göran Forslund nel lontano 1985. Alan è oggi giunto alla sua terza incarnazione (Alan 3). Sebbene la versione 3 di Alan sia ancora in fase Beta, è sufficientemente stabile da poter essere usata per la creazione di avventure.

Gli ideatori di Alan hanno voluto creare uno strumento che fosse semplice da usare per chi non avesse esperienza di programmazione, e che non imponesse un modello standard su come debba essere strutturato il mondo delle avventure. Queste caretterstiche rendono Alan un ottimo candidato per la creazione di avventure in italiano.

### Programmazione prosaica

La sintassi di Alan è modellata attorno alle esigenze dello scrittore, più che del programmatore, quindi l'uso di parentesi, punteggiatura e altri simboli per l'organizzazione sintattica del codice è ridotto al minimo indispensabile, e non vi sono vincoli strutturali riguardo l'uso di indentazione e la ripartizione del codice nelle righe del sorgente. L'aspetto di un file sorgente di Alan è più simile alla prosa che non alla programmazione.

Questo è un esempio (completo) di codice Alan per creare un'avventura con una stanza, un attore ed un verbo, scritto in forma prosaica:

```alan
The classroom IsA location
Name 'English Literature Classroom'. Exit south to corridor.
Description "there are no studends in the classroom, except you."
End the classroom.

Syntax greet = greet (person) where person IsA actor else "You can only greet people."

The teacher IsA actor at classroom.
Name teacher. Name professor mr John Keating. Pronoun him.
Description "Mr Keating is busy at his desk, proofreading the students' homework."
Verb greet does
     "-- Good evening professor Keating.
    $nA whole minute goes by before your teacher finally raises
      his head from the papers and acknowledges your presence.
    $n-- How may I help you, Mr. Anderson?"
End verb. End the teacher.

The corridor IsA location
  EXit north to classroom.
End the corridor.

Start at classroom.
```

Questo è il medesimo codice, scritto in una forma che è più tipica della programmazione:

```alan
THE classroom IsA location
  NAME 'English Literature Classroom'.
  DESCRIPTION "There are no studends in the classroom, except you."
  EXIT south TO corridor.
END THE classroom.

SYNTAX greet = greet (person)
  WHERE person IsA actor
    ELSE "You can only greet people."

THE teacher IsA actor AT classroom.
  NAME teacher.
  NAME professor mr John Keating.
  PRONOUN him.
  DESCRIPTION
    "Mr Keating is busy at his desk, proofreading the students' homework."
  VERB greet
    DOES
      "-- Good evening professor Keating. $nA whole minute goes by before your
       teacher finally raises his head from the papers and acknowledges your
       presence. $n-- How may I help you, Mr. Anderson?"
  END VERB greet.
END THE teacher.

THE corridor IsA location
  EXIT north TO classroom.
END THE corridor.

START AT classroom.
```

In entrambi i casi, anche un lettore che non conoscesse Alan sarebbe in grado di intuire a cosa serve il codice, e come funzionerà l'avventura da esso creato. Il primo esempio risulterà più facile da comprendere a chi non ha esperienza di programmazione, mentre il secondo risulterà più familiare ai programmatori. Ogni autore è libero di adottare lo stile che preferisce nel proprie avventure.

Nei sorgenti della libreria di questo progetto, adotteremo uno stile di programmazione formale, più simile al secondo esempio, per ragioni di praticità di editing. Nei sorgenti degli esempi adotteremo invece uno stile meno formale, più prosaico.

Sebbene Alan adotti un approccio sintattico alla programmazione che ne semplifica l'uso, avvicinandola il più possibile all'uso naturale della lingua inglese, si tratta comunque di un vero e proprio linguaggio di programmazione formale — da non confodere, per esempio, con la [programmazione in lingua naturale] adottata da [Inform 7].

### Libertà autoriale

A differenza di altri sistemi per la creazione di AT, Alan non impone un modello standard del mondo dell'avventura, o un set di verbi predefiniti; la filosofia di Alan è di lasciare all'autore totale autonomia su come modellare l'avventura. Alan mette a disposizione un insieme di funzionalità e meccanismi che sono comuni a tutte le avventure, ma starà ai singoli autori decidere se e come usarle — ad esempio le funzionalità per il salvataggio e il caricamento di una partita sono controllate dall parole chiave `Save` e `Restore`, ma sarà l'autore a dover decidere _se e come_ rendere queste funzionalità accessibili al giocatore (p.es. implementando i comandi per il giocatore "salva" e "carica").


Per gli autori che sono abituati a lavorare con Inform, TADS, e altri sistemi di autoraggio dotati di una libreria standard che mette a disposizione i verbi, le classi ed i messaggi d'uso comune, l'approccio _tabula rasa_ di Alan potrà sembrare insolito. Lavorare con Alan è come dipingere partendo da una tela bianca: toccherà a noi scegliere i pennelli ed i colori da usare, e preparare la tela dandogli un fondo appropriato al tipo di colori che useremo. Gli altri sistemi, invece, sono come un kit di partenza dove il materiale di lavoro è già presente: abbiamo pennelli di varie misure, un set di tubetti con tutti i colori principali, e una tela già pretrattata e pronta all'uso.

A secondo del tipo di avventura che si vuole creare, i modelli preconfezionati potranno risultare troppo dettagliati o troppo scarni — molto dipende dal tipo di realismo che vogliamo conseguire. Magari non ci servono affatto le funzionalità per il vestiario o per i dialoghi, oppure ce ne servirebbe una versione più dettagliata e realistica. Alan ci consente di costruire un'infrastruttura _ad hoc_ per le nostre avventure, partendo da zero.

Alan mette a disposizione le seguenti classi di base con cui modellare il mondo delle AT:

![Le classi predefinite di Alan][classi predefinite]

Si tratta delle classi universali che sono alla base di qualsiasi avventura, e ciascuna di esse ha caratteristiche specifiche studiate appositamente per l'interactive fiction. L'autore potrà estenderle e specializzarle secondo necessità — creando supporti, animali, persone, indumenti, cibi e bevande, armi, e quant'altro. Queste classi sono come i colori primari dell'artista, e usandole saggiamente sarà possibile illustrare mondi fantastici ricchi e vivaci, creando le giuste tinte e sfumature con cui narrare la propria avventura.


## Alan Italian vs Libreria Standard Italiana

Per gli amanti della libertà assoluta nel plasmare il mondo delle avventure, __Alan__ "nudo e crudo" è lo strumento ideale, e __Alan Italian__ è un modulo a sé stante che aggiunge il supporto della grammatica italiana senza intaccare la _tabula rasa_ offerta da Alan.

Per chi invece preferisce scrivere le proprie avventure avvalendosi di un modello ricco e consolidato, la __Alan Standard Library__ è lo strumento ideale da cui partire, rendendo l'uso di Alan simile agli altri sistemi di autoraggio. Per gli autori italiani, questo progetto mette a disposizione
la __Libreria Standard Italiana__, che è la traduzione/adattamento della libreria inglese.

## Alan Standard Library

- https://www.alanif.se/information/library
- https://github.com/AnssiR66/AlanStdLib (nuovo repository ufficiale)
- https://bitbucket.org/alanif/alanlib

La _Alan Standard Library_, scritta da [Anssi Räisänen], definisce un ricco insieme di verbi, classi e funzionalità comunemente usati nelle avventure testuali, che gli autori possono usare come fondamenta su cui costruire le proprie avventure.

La libreria standard non è inclusa nella distribuzione ufficiale di Alan, e va scaricata separatamente.

Questo progetto è finalizzato alla traduzione italiana della _Alan Standard Library_.

# Stato del progetto

Non mi è ancora possibile fornire una data prevista per l'ultimazione della libreria, dato che vi sto lavoro a singhiozzo, a seconda del tempo libero a disposizione (sicuramente ci vorrà ancora parecchio tempo).

Ho comunque scelto di condividere su GitHub il progetto sin dall'inizio, nel caso qualcuno fosse interessanto a seguirne gli sviluppi e contribuirvi attivamente. I contributi e le opinoni di terzi sarebero di grande aiuto per accellerare il progetto; quindi sarei grato a chiunque volesse contribuire clonando il repository, sperimentando con la libreria, condvidendo opinioni, consigli e segnalandomi bachi ed errori. 

Potete seguire la discussione di questo progetto all'interno del [gruppo di discussione Alan-IF su Yahoo Groups][Alan Yahoo] (in inglese). Per qualsiasi domanda e suggerimento, potete [aprire uno issue qui].

# Sostieni il progetto

Da aprile 2018 ad oggi sono state investite centinaia di ore di lavoro (ed ettolitri di caffé) in questo progetto open source. Sostieni il progetto con una donazione.

[![Donazione PayPal][donazione img]][donazione link]

E non dimenticarti di dare una stella al progetto!

Grazie.


# Ultime novità

Alcune notizie flash sugli aggiornamenti importanti del progetto...

## 2019/02/28: Adozione di Highlight per la documentazione

<img src="https://assets.gitlab-static.net/uploads/-/system/project/avatar/6678916/highlight_256.png" align="left" width=192 alt="Highlight logo" title="Logo di Highlight, il coloratore di sintassi di André Simon">

D'ora in poi il progetto utilizzerà lo strumento [Highlight] di [André Simon] (anziché [highlight.js]) per la colorazione sintattica del codice nella documentazione del progetto.

Highlight è uno strumento molto più flessibile di [highlight.js], consente un maggior controllo sulle definizioni delle sintassi e — sebbene attualmente l'estensione di Highlight per Asciidoctor non supporti i callout o la colorazione di codice all'interno di tabelle (ci sto lavorando) — Highlight offre numerosi vantaggi:

<br clear="all" />

- I documenti HTML non dipenderanno più da JavaScript.
- Supporto per la numerazione delle righe del codice.
- Estensibilità delle funzionalità tramite plugin Lua.
- Numerosi formati di output supportati oltre allo HTML (XHTML, RTF, LaTeX, TeX, SVG, BBCode, e altri).
- [Oltre 210 linguaggi di programmazione e markup supportati].
- Circa 200 temi colorati nativi.


## 2019/02/27: Passaggio a Alan 3.0beta6 build 1878

La libreria adotta la nuova [developer snaphshot] di Alan [3.0beta6 build 1878].

## 2019/02/21: Passaggio a Alan 3.0beta6 build 1870

La libreria adotta la nuova [developer snaphshot] di Alan [3.0beta6 build 1870].


## 2019/02/19: Riscritto il codice per il vestiario

A partire dalla versione v0.15.0, la Libreria adotta un nuovo sistema per la gestione del vestiario. Adesso l'uso del vestiario da parte dell'utente finale sarà più semplice ed intuitivo.

Il codice riguardante gli indumenti è stato praticamente riscritto tutto, per ovviare a una serie di problematiche e bachi presenti nella libreria originale.

Queste modifiche consentiranno inoltre di introdurre a breve nuove funzionalità per il vestiario, che ne renderanno l'uso nelle avventure ancora più flessibile e personalizzabile.


## 2019/02/07: Inizio lavori per il "Ricettario di Alan"

- [`/ricettario/`](./ricettario)

La cartella `ricettario/` conterrà il _Ricettario di Alan_, una collezione organizzata di esempi ispirati a _[The Inform Recipe Book]_, uno dei manuali inclusi con il sistema di sviluppo [Inform 7]. Lo scopo del ricettario sarà fornire esempi pratici e documentati su come sia possibile implementare idee e funzionalità nelle avventure.

## 2019/02/05: Modulo per l'italiano indipendente e pronto all'uso

Tutto il codice per il supporto della lingua italiana è stato spostato in un modulo a sé stante che può essere utilizzato indipendentemente dalla Libreria Standard:

- [`alanlib_ita/lib_grammatica.i`][lib_grammatica]

Il modulo è già pronto all'uso, e parzialmente documentato. Allo stato attuale si consiglia anche di includere il seguente modulo aggiuntivo:

- [`alanlib_ita/lib_supplemento.i`][lib_supplemento]

Quindi, è finalmente possibile creare avventure italiane con Alan, anche se la traduzione della Libreria Standard non è ultimata.


## 2019/02/01: Passaggio a Alan 3.0beta6 build 1866

La libreria adotta la nuova [developer snaphshot] di Alan [3.0beta6 build 1866].


## 2019/01/24: Passaggio a Alan 3.0beta6 build 1862

La libreria adotta la nuova [developer snaphshot] di Alan [3.0beta6 build 1862], in cui sono stati risolti alcuni bachi (tra cui un baco che preveniva la definizione di pronomi multipli).


## 2019/01/17: Passaggio a Alan 3.0beta6 build 1855

La nuova [developer snaphshot] di Alan [3.0beta6 build 1855] implementa una funzionalità che avevo richiesto per supportare l'uso di due AND WORDS consecutive nell'input del giocatore, di modo che sia possibile digitare:

> **&gt;** _prendi la mela E POI mangia la mela_

Prima il parser vedeva "E POI" come "AND AND", e non era in grado di interpretare il comando. Adesso, più AND WORDS consecutive vengono trattate come una singola occorrenza.

Per i dettagli dell'implementazione, si veda il commit [054581b] sul [repository di Alan][Alan Bitbucket].


## 2019/01/15: Grossa svolta con Alan 3.0beta6 build 1852

La nuova [developer snaphshot] di Alan [3.0beta6 build 1852] introduce una nuova funzionalità che era stata richiesta specificamente per l'italiano, e segna un punto di svolta nello sviluppo di questo progetto. Risolve anche un baco che affliggeva la lingua italiana e alcuni verbi della Libreria.

### Supporto per le preposizioni apostrofate

Thomas ha generosamente implementato in Alan la funzionalità da me richiesta per supportare le preposizioni articolate modificando il parsing di token compositi (uniti da un apostrofo) come due parole distinte.

Adesso il parser è in grado di gestire articoli e preposizioni con apostrofo in comandi come questi:

    prendi la mela dall'albero
    prendi l'arco

... che ora sono supportati nativamente da Alan.

Questa nuova funzionalità risolve il problema riservando un trattamento speciale ai lessemi contenenti apostrofi: se il token parserizzato non viene riconosciuto, Alan proverà a spezzarlo in due lessemi nel punto in cui cade l'apostrofo (il primo, nel caso di apostrofi multipli), e poi ritenta il parsing dei due lessemi separati.

La nuova funzonalità rende anche superfluo dover creare sinonimi con articolo-e-sostantivo (es. `l'albero`) per gli oggetti il cui articolo richiede l'apostrofo — che, fino ad oggi, richiedevano tali sinonimi affinché il parser potesse riconoscere `l'albero` come `albero`.

Ringrazio tantissimo __Thomas Nilefalk__ per aver implementato questa funzionalità appositamente in sostegno del progetto Alan Italian!

Per una discussione sulle previe limitazioni, vedi:

- https://groups.yahoo.com/neo/groups/alan-if/conversations/messages/3635

Per i dettagli d'implementazione, vedi il commit [1bfc8f7] che ha introdtto questa funzionalità:

```
Handle elisions (contractions) with apostrophes

In latin langauges, such as Italian, contractions are commonly used
and represented with an apostrophe between the parts. This change
allows handling them as separated words although they are typed
together ("l'acqua" will be tried as the two words "l'" and "acqua").
```

### Baco della e-grave risolto!

La nuova build 1852 risolve anche un baco che impediva la preservazione delle 'e' con accento grave (`è`) nelle sintassi e nei sinonimi (il problema non si estendeva alle istanze e ai parametri).

Questo bug-fix risolve vari "verbi domande" della Libreria, che in precedenza dovevano ripiegare sull'uso della 'e' con accento acuto (`é`). 

Il problema era causato dall'omissione accidentale della E-grave in una costante del codice sorgente. Il problema è stato risolto nel commit [ad2c7de]  ("Add forgotten grave accented e").

## 2018/11/13: Tutti i verbi tradotti

Tutti verbi della libreria (circa 171) sono ora tradotti in italiano — per maggiori dettagli vedi:

- [`docs/lib_verbi.html`][lib_verbi html]  ([Live HTML Preview][lib_verbi html live])

Ora restano ancora da tradurre molti messagi di risposta dei verbi, e l'intera libreria va documentata.

È in corso lo sviluppo di una test suite per la libreria, nella cartella [`/test/`](./test), di cui potranno beneficiare quanti desiderano accedere ad un'anteprima dello stato della libreria (perlopiù "alla vaniglia") senza dover compilare ed eseguire i sorgenti dei test.

È in preparazione una nuova [avventura dimostrativa] nella cartella [`/demo/`](./demo) (la demo iniziale è diventata troppo caotica e verrà riscritta da zero), con tanto di script per la simulazione automatizzata delle sessioni di gioco e la creazione di trascrizioni di partita.


# Contenuti del progetto

- [`/alanlib_ita/`](./alanlib_ita) — Libreria Standard 2.1 in italiano (WIP)
- [`/alanlib/`](./alanlib) — copie della Alan Standard Library upstream:
    + [`/2.1/`](./alanlib/2.1/) (updated: 2018/10/22)
- [`/demo/`](./demo) — avventura dimostrativa (attualmente disastrata)
- [`/docs/`](./docs) — documentazione HTML della libreria
- [`/docs_src/`](./docs_src) — cartella sorgenti e risorse per la documentazione in AsciiDoc
- [`/ricettario/`](./ricettario) — il "Ricettario di Alan" (WIP)
- [`/test/`](./test) — test suite della libreria
- [`LICENSE`][License] — Artistic License 2.0

Una copia completa della versione upstream della _Alan Standard Library_ impiegata in questo progetto viene conservata nella cartella `/alanlib/`. Quando la libreria viene aggiornata, i file della upstream attualmente utilizzata possono essere diffati con la nuova versione al fine di tracciare quali modifiche andrebbero integrate nei sorgenti della libreria italiana al fine di portarla in pari con la versione più recente dell'originale inglese.


# Impostare l'ambiente di lavoro

Per poter lavorare a questo progetto, assicurati di impostare correttamente alcuni settagi nel tuo editor preferito.

## Encoding dei file

Le seguenti estensioni file devono essere trattate con encoding [ISO-8859-1]:

- "`.alan`" — avventura sorgente di Alan.
- "`.i`" — modulo sorgente per avventura di Alan.
- "`.a3log`" — trascrizione di partita.
- "`.a3sol`" — file di soluzione ("script di comandi") per eseguire un'avventura.

... se il tuo editor non è in grado di preservare corretamente l'encoding per questi file, ti troverai ad affrontare problemi con i caratteri speciali, p.es. le lettere accentate — che in italiano sono comunissime!


# Ringraziamenti

La mia gratitudine va inanzitutto a __Thomas Nilefalk__ e __Göran Forslund__, per aver creato Alan, e a __Anssi Räisänen__ per aver creato la _[Alan Standard Library]_. Ma voglio anche rigraziarli per tutto il supporto offerto a questo progetto rispondendo ai mei (molteplici) quesiti ed aiutandomi a superare i vari ostacoli in cui mi sono imbattuto nel corso dell'opera.

Ringrazio la comunità degli utenti di Alan, attiva sul [gruppo di discussione Alan-IF su Yahoo Groups][Alan Yahoo], per la calorosa accoglienza, il duraturo sostegno e la loro disponibilità.

Infine, ci tengo a ringraziare __S3RioUs JokER__, che mi ha aiutato sin dall'inizio con le difficili scelte di traduzione della terminologia della libreria e della sua messaggistica, e __Leonardo Boselli__, la cui esperienza in materia di implementazione e traduzione in Italiano di strumenti per le AT l'ha reso il mio bersaglio d'elezione quando necessito di consulenze tecniche e dell'opinione di un esperto. Grazie di cuore, senza di voi questo progetto sarebbe stata un'impresa alquanto solitaria!

# Componenti terze parti

Questo progetto impiega i seguenti componenti e risorse di terze parti.

## Base16

- https://github.com/chriskempson/base16-builder

Nel tema CSS di colorazione sintattica di Alan, per [Highlight], ho usato i seguenti temi di colore [Base16], presi dal progetto [base16-builder], di [Chris Kempson]  (licenza MIT):

- [Base16 Eighties] — di [Chris Kempson].
- [Base16 Google] — di [Seth Wright].

<!--  -->

    Copyright (C) 2012 [Chris Kempson](http://chriskempson.com)
    
    Permission is hereby granted, free of charge, to any person obtaining
    a copy of this software and associated documentation files (the
    "Software"), to deal in the Software without restriction, including
    without limitation the rights to use, copy, modify, merge, publish,
    distribute, sublicense, and/or sell copies of the Software, and to
    permit persons to whom the Software is furnished to do so, subject to
    the following conditions:
    
    The above copyright notice and this permission notice shall be
    included in all copies or substantial portions of the Software.
    
    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
    EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
    MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
    NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
    LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
    OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
    WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


## Asciidoctor

La toolchain per la documentazione HTML tramite [Asciidoctor] riutilizza varie risorse attinte dal [Progetto Asciidoctor], adattate alle esigenze di questo progetto.

### Attributi italiani Asciidoctor

- https://github.com/asciidoctor/asciidoctor/blob/a9dc0e2/data/locale/attributes-it.adoc

La documentazione del progetto usa una versione adattata del file `attributes-it.adoc` (preso da Asciidoctor), tradotto da Marco Ciampa (licenza MIT):

    MIT License

    Copyright (C) 2012-2018 Dan Allen, Ryan Waldron and the Asciidoctor Project

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.


## Estensione per Highlight

- https://github.com/asciidoctor/asciidoctor-extensions-lab/blob/18bdf62/lib/highlight-treeprocessor.rb

Il file [`docs_src/adoc/highlight-treeprocessor_mod.rb`][HL rb] è un adattamento a cura di Tristano Ajmone dell'estensione [`highlight-treeprocessor.rb`][HL rb upstream] presa dal progetto [Asciidoctor Extensions Lab] (commit 18bdf62), Copyright © 2014-2016 [Progetto Asciidoctor]  (licenza MIT):


    The MIT License

    Copyright (C) 2018 Tristano Ajmone.
    Copyright (C) 2014-2016 The Asciidoctor Project

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.

### ERB Templates

- https://github.com/asciidoctor/asciidoctor-backends/tree/master/erb/html5

I file nella cartella [`docs_src/erb/`][erb] sono adattamenti a cura di Tristano Ajmone di [template ERB HTML5] presi dal progetto [Asciidoctor Backends], Copyright © 2012-2016 Dan Allen e il [Progetto Asciidoctor]  (licenza MIT):

    The MIT License
    
    Copyright (C) 2018 Tristano Ajmone.
    Copyright (C) 2012-2016 Dan Allen and the Asciidoctor Project

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in
    all copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
    THE SOFTWARE.


## Sass Boilerplate

-  https://github.com/magnetikonline/sass-boilerplate

Il mixin `fontFace` all'interno del file [`docs_src/sass/_helpers.scss`][helpers scss] è un adattamento del file "[`fontface.scss`][fontface scss]", preso dal progetto [Sass Boilerplate], Copyright © 2013 Peter Mescalchin, (licenza MIT):
 
    The MIT License (MIT)

    Copyright (c) 2013 Peter Mescalchin

    Permission is hereby granted, free of charge, to any person obtaining a copy of
    this software and associated documentation files (the "Software"), to deal in
    the Software without restriction, including without limitation the rights to
    use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
    the Software, and to permit persons to whom the Software is furnished to do so,
    subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
    FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
    COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
    IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
    CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


# Link di approfondimento

Alan:

- [www.alanif.se][Alan WWW] — sito ufficiale di Alan.
- [Bitbucket » Alan][Alan Bitbucket] — repository ufficiale con i sorgenti di Alan.
- [Yahoo Groups » Alan-IF][Alan Yahoo] — gruppo di discussione di Alan.
- [IFWiki » Alan][Alan IFWiki] — la pagina di Alan sullo [IFWiki].

Alan Standard Library:

- [GitHub » AlanStdLib][Alan Standard Library] — repository ufficiale della Alan Standard Library su GitHub.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>

[aprire uno issue qui]: https://github.com/tajmone/Alan3-Italian/issues/new "Open an issue for this project"
[avventure testuali]: https://it.wikipedia.org/wiki/Avventura_testuale "Vedi la pagina Wikipedia sulle avventure testuali"
[IFWiki]: http://www.ifwiki.org "Visita IFWiki.org, il Wiki dedicato all'Interactive Fiction"
[ISO-8859-1]: https://it.wikipedia.org/wiki/ISO/IEC_8859-1 "Vedi la pagina Wikipedia sullo ISO-8859-1"

[programmazione in lingua naturale]: https://en.wikipedia.org/wiki/Natural-language_programming "Vedi la pagina Wikipedia su 'Natural-language_programming'"
[The Inform Recipe Book]: http://inform7.com/learn/man/RB_1_1.html "Naviga alla versione online di 'The Inform Recipe Book'"

[Oltre 210 linguaggi di programmazione e markup supportati]: http://www.andre-simon.de/doku/highlight/en/langs.php "Vedi la lista completa dei linguaggi supportati da Highlight"

<!-- Donazione PayPal -->

[donazione img]: ./docs_src/donazione-paypal.gif
[donazione link]: https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=55GFRM9EBF3SU&source=url "Sostieni il progetto Alan Italian con una donazione..."

<!-- File di progetto -->

[classi predefinite]: ./docs_src/predefined-classes.svg "Le classi predefinite di Alan"
[avventura dimostrativa]: ./demo/README.md "Vai alla cartella dell'avventura dimostrativa"
[lib_grammatica]: ./alanlib_ita/lib_grammatica.i "Vedi file sorgente"
[lib_supplemento]: ./alanlib_ita/lib_supplemento.i "Vedi file sorgente"
[License]: ./LICENSE "Leggi il testo completo della Artistic License 2.0"

[README_EN]: ./README_EN.md "View English README"

[erb]: ./docs_src/erb/ "Vai alla cartella"
[HL rb]: ./docs_src/adoc/highlight-treeprocessor_mod.rb
[HL rb upstream]: https://github.com/asciidoctor/asciidoctor-extensions-lab/blob/18bdf62/lib/highlight-treeprocessor.rb "Vedi il sorgente upstream originale"
[helpers scss]: ./docs_src/sass/_helpers.scss "Vedi sorgente"


<!-- Alan Links -->

[Alan Bitbucket]: https://bitbucket.org/alanif/alan "Visita il repository di Alan su Bitbucket"
[Alan IFWiki]: http://www.ifwiki.org/index.php/Alan "Visita la pagina di Alan su IFWiki"
[Alan Standard Library]: https://github.com/AnssiR66/AlanStdLib "Visita il repository upstream della Alan Standard Library"
[Alan WWW]: https://www.alanif.se/ "Visit Alan official website"
[Alan Yahoo]: https://groups.yahoo.com/neo/groups/alan-if/info "Visita il gruppo di discussione Alan-IF su Yahoo Groups"


<!-- Alan SDK Links -->

[developer snaphshot]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots "Vai alla pagina delle Developer Snapshots sul sito di Alan"
[3.0beta6 build 1852]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots/build1852 "Vai alla pagina di download della snapshot Alan 3.0beta6 build 1852"
[3.0beta6 build 1855]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots/build1855 "Vai alla pagina di download della snapshot Alan 3.0beta6 build 1855"
[3.0beta6 build 1862]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots/build1862 "Vai alla pagina di download della snapshot Alan 3.0beta6 build 1862"
[3.0beta6 build 1866]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots/build1866 "Vai alla pagina di download della snapshot Alan 3.0beta6 build 1866"
[3.0beta6 build 1870]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots/build1870 "Vai alla pagina di download della snapshot Alan 3.0beta6 build 1870"
[3.0beta6 build 1878]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots/build1878 "Vai alla pagina di download della snapshot Alan 3.0beta6 build 1878"


<!-- Alan Commits Links -->

[054581b]: https://bitbucket.org/alanif/alan/commits/054581b "Vedi i dettagli del commit nel repository di Alan su Bitbucket"
[1bfc8f7]: https://bitbucket.org/alanif/alan/commits/1bfc8f7 "Vedi i dettagli del commit nel repository di Alan su Bitbucket"
[ad2c7de]: https://bitbucket.org/alanif/alan/commits/ad2c7de "Vedi i dettagli del commit nel repository di Alan su Bitbucket"


<!-- Documentazione della Libreria -->

[lib_verbi html]: ./docs/lib_verbi.html
[lib_verbi html live]: http://htmlpreview.github.io/?https://github.com/tajmone/Alan3-Italian/blob/master/docs/lib_verbi.html "Anteprima HTML Livetramite GitHub & BitBucket HTML Preview"

[lib_definizioni html]: ./docs/lib_definizioni.html
[lib_definizioni html live]: http://htmlpreview.github.io/?https://github.com/tajmone/Alan3-Italian/blob/master/docs/lib_definizioni.html "Anteprima HTML Livetramite GitHub & BitBucket HTML Preview"

<!-- Third Party Tools & Assets -->

[Inform 7]: http://inform7.com "Visita il sito di Inform 7"

[Asciidoctor]: https://asciidoctor.org/ "Visita il sito di Asciidoctor"
[progetto Asciidoctor]: https://github.com/asciidoctor "Visita il progetto Asciidoctor su GitHub"
[Asciidoctor Extensions Lab]: https://github.com/asciidoctor/asciidoctor-extensions-lab/ "Visita il progetto Asciidoctor Extensions Lab su GitHub"
[Asciidoctor Backends]: https://github.com/asciidoctor/asciidoctor-backends "Visita il progetto Asciidoctor Backends su GitHub"
[template ERB HTML5]: https://github.com/asciidoctor/asciidoctor-backends/tree/master/erb/html5 "Vedi i sorgenti upstream su GitHub"

[Base16]: http://chriskempson.com/projects/base16/ "Visita il sito di Base16"
[base16-builder]: https://github.com/chriskempson/base16-builder "Visita il repository di base16-builder"
[Base16 Eighties]: https://github.com/chriskempson/base16-builder/blob/master/schemes/eighties.yml "Vedi il sorgente originale dello schema di colore"
[Base16 Google]: https://github.com/chriskempson/base16-builder/blob/master/schemes/google.yml "Vedi il sorgente originale dello schema di colore"

[Sass Boilerplate]: https://github.com/magnetikonline/sass-boilerplate "Visita il progetto Sass Boilerplate su GitHub"
[fontface scss]: https://github.com/magnetikonline/sass-boilerplate/blob/702d924/fontface.scss "Vedi il sorgente upstream originale"


[Doxter]: https://git.io/doxter "Visita il sito di Doxter"

[Highlight]: http://www.andre-simon.de/ "Visita il sito di Highlight"

[highlight.js]: https://highlightjs.org/ "Visita il sito highlight.js"

<!-- Persone -->

[Anssi Räisänen]: https://github.com/AnssiR66 "Guarda il profilo GitHub di Anssi Räisänen"
[André Simon]: https://gitlab.com/saalen "Guarda il profilo GitLab di André Simon"
[Chris Kempson]: http://chriskempson.com "Visita il sito di Chris Kempson"
[Seth Wright]:   http://sethawright.com  "Visita il sito di Seth Wright"
[Ivan Sagalaev]: https://github.com/isagalaev "Guarda il profilo GitHub di Ivan Sagalaev"
[Tristano Ajmone]: https://github.com/tajmone "Guarda il profilo GitHub di Tristano Ajmone"

<!-- EOF -->
