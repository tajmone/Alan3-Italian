# Alan StdLib Italian TODOs

Varie questioni da affrontare/risolvere nella libreria.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Problemi da risolvere](#problemi-da-risolvere)
    - [Preposizione Articolata "dai"](#preposizione-articolata-dai)
    - [Comandi brevi per direzioni](#comandi-brevi-per-direzioni)
        - [E = est](#e--est)
        - [NO = nordovest](#no--nordovest)
- [Problemi generali](#problemi-generali)
    - [Locations in Verb Responses](#locations-in-verb-responses)
- [Da implementare](#da-implementare)
    - [Hero Settings and Customization](#hero-settings-and-customization)
        - [Female Hero](#female-hero)
    - [Pronouns](#pronouns)
- [Da Valutare](#da-valutare)
    - [Articoli indeterminati come NOISE WORDS?](#articoli-indeterminati-come-noise-words)
    - [Messaggi Libreria Ricorrenti](#messaggi-libreria-ricorrenti)
- [Migliorie](#migliorie)
    - [Library Messages](#library-messages)
    - [Redundant Code in Actors and Persona](#redundant-code-in-actors-and-persona)
    - [Verbo `take`](#verbo-take)
        - [Take vs Remove](#take-vs-remove)
        - [Take in Inform](#take-in-inform)
        - [Other Take Related Stuff](#other-take-related-stuff)
        - [Remove \(clothing\) in Alan](#remove-clothing-in-alan)
- [Checklist](#checklist)
    - [List of i7 Verbs](#list-of-i7-verbs)

<!-- /MarkdownTOC -->

-----

# Problemi da risolvere

## Preposizione Articolata "dai"

We can't define as synonym of "da" the preposition "dai" because it would conflict with the imperative form of the verb "dare" ("dai" = give):

```alan
SYNTAX dai_a = 'dai' (ogg) 'a' (ricevente)

SYNONYMS porgi, offri = dai.
```

which would cause the following compile error:

    333 E : The word 'dai' is defined to be both a synonym and another word class.

Possible workarounds (none tested, possible conflicts):

- Define an alternative syntax for every verb that uses preposition "da", so that it will also cover "dai" explicitly (this doesn't seem to cause the error). All other prepositions will be defined as synonyms of "da".
- Test if the above error occurs also when using secondary syntaxes for `dai_a`.
- Drop the `SYNONYMS porgi, offri = dai.` line.
- Make "dai" synonym of "da" and redefine the `dai_a` syntax as:
 
    ```alan
    SYNTAX dai_a = 'da' (ogg) 'a' (ricevente)

    SYNONYMS porgi, offri = da.
    ```

    knowing that the parser will convert "dai" to "da". But this probably doesn't prevent the E333 above.


<!---------------------------------------------------------------------------->

## Comandi brevi per direzioni

Devo trovare un modo per risolvere il problema delle versioni brevi delle direzioni di modo da poter implementare le seguenti scorciatoie:

|  v.lunga  | desiderata | attuale |
|-----------|------------|---------|
| nord      | N          | N       |
| sud       | S          | S       |
| est       | __E__      | --      |
| ovest     | O          | O       |
| nordest   | NE         | NE      |
| sudest    | SE         | SE      |
| nordovest | __NO__     | NOV     |
| sudovest  | SO         | SO      |

Le forme brevi problematiche sono due: __E__ e __NO__.

### E = est

Ad impedire "E" per "est" vi è il fatto che la "E" è definita come sinonimo delle CONJUNCTION WORDS di Alan. Devo fare delle prove per confermare se è impossibile usarla anche come direzione, o se vi siano trucchi per riuscire a farlo.

### NO = nordovest

"NO" per "nordovest" è attualmente impedito dal verbo `rispondi_no`:

```alan
SYNTAX rispondi_No = 'no'.
```

Forse potrai usare la sintassi `dì no` per questo verbo, oppure `rispondi no`, e al limite ricorrere a parameteri stringa. Ne varrebbe la pena se riuscissi a liberare il `'no'` per "nordovest".



<!---------------------------------------------------------------------------->

# Problemi generali

## Locations in Verb Responses

This topic is the subject of a very long discussion thread on Alan IF Yahoo group:

- https://groups.yahoo.com/neo/groups/alan-if/conversations/messages/3474

Currently, when verbs are given a LOCATION as a parameter they produce a malformed message when referencing the parameter with `$+1`.

Examples:

Verb `pensa_a`:

```
> ascolta mercato
The mercato non è qualcosa che puoi ascoltare.
```

This happens only in the `SYNTAX` definition, in the `WHERE` clause that fails because a `LOCATION` is not a `THING`, `OBJECT`, or `ACTOR`. Also, it happens with locations which have a name that can be referenced by the player:

```alan
THE mercato IsA luogo_esterno.
```

... whereas `LOCATION`s with more complex names usually can't be referenced in commands by the player.

So, I'll have to think about how to fix this. Possible solutions:

1. In the `SYNTAX`/`WHERE` code I could add an `IF` statement to check if the parameter is a location before printing the message, and use a different (more generic) one in case it is.
2. I could also add all the article/preposition attributes to the `LOCATION` class, and initialize that as well — bu then the author would have to define an article for every location he creates as well (but I could handle some defaults in the `STANZA` and `LUOGO_ESTERNO` classes!) 
3. I could initialize  `LOCATION` to have an empty `ARTICLE` string.

All these solutions have pros and cons, and they tend to add overhead. But the problem has to be handled somehow, so I need to think about it well before implementing it.

Currently, the best solution seems __solution 1__: adding a conditional statement to produce a different response if parameter is a LOCATION. The number of verbs that use "!" is rather small, so this is the simplest solution to the problem right now. But __solution 3__ could also be employed, together with the former, as a security measure (not sure about its implications on authors).

<!---------------------------------------------------------------------------->

# Da implementare


## Hero Settings and Customization

I need to check tha `hero` is initialized properly, and consider some customization optimizations.

### Female Hero

The default settings should make `hero` a male character, but I must also allow to easily make `hero` a female by simply adding to it `IS femminile`.

Need some testing (and possibly, some tweaks) and then document the feature.

- [ ] Check if some library messages are affected by a female hero.
- [ ] Check if different synonyms are required for a female hero.



<!---------------------------------------------------------------------------->

## Pronouns

I still haven't looked into pronouns well enough, and there might be some room for exploiting them in Italian.

- [ ] Special char `$!<n>` (Pronoun for the parameter `<n>`).
- [ ] Predefined Player Words `THEM`.
- [ ] `PRONOUN` keyword.



<!---------------------------------------------------------------------------->

# Da Valutare

## Articoli indeterminati come NOISE WORDS?

Varebbe la pensa implementare `un'`, `una`, `un`, (`uno`?) come _NOISE WORDS_?

Vedi note in:

- `lib_supplemento.i`


<!---------------------------------------------------------------------------->

## Messaggi Libreria Ricorrenti


Trasforma in attributi risposta:
    + [ ]  `"Hai provato a esaminare te stesso?...`
    + [ ]  `"Dovrai scoprirlo da te!"`


<!---------------------------------------------------------------------------->

# Migliorie

## Library Messages

There might be some room for improvements in the Italian messages/responses system. Beside looking into pronouns (already dealt with above), I should look into:

- [ ] verbs whose syntaxes and synonyms all end in "a" could use the `$v` to build an infitive form based on the actual verb typed by the player, instead of spelling out a literal infinitive verb. For example, verb `bacia`: "bacia" e "abbraccia", uses "`$vre`" in responses (`bacia`+`re`/`abbraccia`+`re`).
- [ ] Special char `$-<n>` (Negative form of parameter `<n>`) might be useful in message.
- [ ] The original library uses a lot of `SAY THE obj` and `SAY THE instr` in VERBs, while a more simple approach would be to use just `$+1` and `$+2` in the strings. My tests have proven that the number `1` and `2` always refer to the position of the _main_ syntax definition, so if a verb has multiple syntaxes like `take (obj) from (act)` and  `take from (act) (obj)`, `$+1` and `$+2` will always refer to `obj` and `act` regardless of the inverted syntax used by player, because parameter positions always refer to the main (first) syntax definition!



<!---------------------------------------------------------------------------->

## Redundant Code in Actors and Persona

In `lib_classi.i`, the code that handles listing inventory of `ACTOR`s (`HEADER` and `EXTRACT` messages) is also duplicated on `PERSONA` (except the parts that check if current actor is the `hero`, since it will ever only be of `ACTOR` type).

This seems redundant, as the code on `ACTOR` is also inherited by `PERSONA`, and I had to translate both blocks in order to attain identical Italian messages.

But, as Anssi ha pointed out in [Issue #15], in English the reponse messages are not identical:

[Issue #15]: https://github.com/AnssiR66/AlanStdLib/issues/15

> After looking at the `ACTOR` and `PERSON` headers and else parts, I remembered why I have them defined separately. If you look closely, the messages are indeed not identical.
> 
> For Actors carrying nothing, the message is "`...is not carrying anything.`" while for Persons the corresponding message is "`... is empty-handed.`" This was to better cater for cases where the actor is for example a dog, and instead of "empty-handed" (because a dog of course doesn't have any hands) the "not carrying anything" message would be more appropriate. So, I would keep these two codings as they are now, and not change anything.

I'm evaluating if it might be OK to remove that redundant code on `PERSONA`. 

The pros of keeping it is that it would ensure that the library specific `PERSONA` class will always behave as expected, even if the author changes the `ACTOR` class `HEADER`; but chances are that isn't likely to happen. I can't think of any cons, except having to remember to change messages on both classes to keep them consistent. The duplicate code doesn't really had much overhead, it's more an issue of having some duplicate code that does the exact same thing of the code in its parent class (and also makes debugging more complicate).

But first I must look into it better and ask Anssi about it, as there might be some reasons for this which I'm failing to see.


<!---------------------------------------------------------------------------->


## Verbo `take`


### Take vs Remove

`take_off` e `remove` si sovrappongono in inglese, ma non in italiano. Quindi bisognerà rettificare la sintassi di:

```alan
  take_from = remove (obj)* 'from' (holder).
 
  take_from = get (obj) 'from' (holder).
```

... e il verbo `remove`, inteso come "togliti", "disindossa":

```alan
SYNTAX remove = remove (obj)
    WHERE obj ISA OBJECT
      ELSE 
        IF obj IS NOT plural
          THEN SAY illegal_parameter_sg OF my_game. "since you're not wearing it."
          ELSE SAY illegal_parameter_pl OF my_game. "since you're not wearing them."
        END IF.
   remove = take 'off' (obj).
   remove = take (obj) 'off'.
   remove = doff (obj).


ADD TO EVERY OBJECT
  VERB remove
    CHECK my_game CAN remove
      ELSE SAY restricted_response OF my_game.
    DOES
      IF obj IS NOT plural
        THEN "That's"
        ELSE "Those are"
      END IF. 
      
      "not something you can remove since you're not wearing"
          
      IF obj IS NOT plural
        THEN "it."
        ELSE "them."
      END IF. 
  END VERB.
END ADD TO.
```

### Take in Inform

`italiang.h` (542):

```inform
Verb 'prendi' 'trasporta' 'afferra' 'raccogli'
  * multi                                       -> Take
  * multiinside 'da'/'dal'/'dallo'/'dalla'/
    'dall^'/'dagli'/'dalle'/'dai' noun          -> Remove;
```

Inform 7 (3400):

```inform7
Understand "prendi [things]" or "prendi [art-det] [something]" as taking.
```

Inform 7 (3520):

```inform7
Understand "prendi [things] da [something]" or "prendi [art-det] [something] [da-art] [something]" as removing it from.
```


### Other Take Related Stuff

Inform 6 `italian.h` (425):

```inform
Verb 'pela' 'sbuccia'
  * noun            -> Take;
```

Inform 6 `italian.h` (465):

```inform
Verb 'rimuovi' 'togli'
  * held            -> Disrobe
  * worn            -> Disrobe
  * multi           -> Take
  * multiinside 'da'/'dal'/'dallo'/'dalla'/
    'dall^'/'dagli'/'dalle'/'dai' noun    -> Remove;
```

### Remove (clothing) in Alan

In Alan, "remove" verb only works with clothing.

syntax:

```
remove (obj)
take 'off' (obj)
take (obj) 'off'
doff (obj)
```


In the StdLib EN source:

```alan
-- this verb only works with clothing (see 'classes.i').

SYNTAX remove = remove (obj)
    WHERE obj ISA OBJECT
      ELSE
        IF obj IS NOT plural
          THEN SAY illegal_parameter_sg OF my_game. "since you're not wearing it."
          ELSE SAY illegal_parameter_pl OF my_game. "since you're not wearing them."
        END IF.
   remove = take 'off' (obj).
   remove = take (obj) 'off'.
   remove = doff (obj).
```

... but handled more in depth in `classes.i`:

```alan
-------------------------------------------------------------------
-- Now, we define some common attributes for clothing as well as
-- how the verbs 'remove', 'undress' and 'wear' (and their synonyms) behave with this class.
-------------------------------------------------------------------

```



<!---------------------------------------------------------------------------->

# Checklist

## List of i7 Verbs

This is a list of Italian verbs declared in Inform 7 (2406), as `In Italian stare is a verb.`:

```inform7
Chapter 3.1.1 - Responses in the Standard Rules

[Many thanks to Sarganar for the Collection of Responses]
In Italian stare is a verb.
In Italian guardare is a verb.
[...]
```

Full list, in alphabetical order:

- `accendere`
- `afferrare`
- `agitare`
- `agitare`
- `andare`
- `annusare`
- `aprire`
- `arrivare`
- `ascoltare`
- `aspettare`
- `assaggiare`
- `bloccare`
- `chiedere`
- `chiudere`
- `contenere`
- `dare`
- `dire`
- `dovere`
- `entrare`
- `fare`
- `guardare`
- `ispezionare`
- `lasciare`
- `mangiare`
- `mettere`
- `odorare`
- `ottenere`
- `parlare`
- `passare`
- `porgere`
- `posizionare`
- `possedere`
- `potere`
- `prendere`
- `provare`
- `rispondere`
- `ruotare`
- `salire`
- `salutare`
- `scendere`
- `scoprire`
- `sedere`
- `sembrare`
- `sentire`
- `sfilare`
- `sostenere`
- `spegnere`
- `spingere`
- `stare`
- `strizzare`
- `tenere`
- `tirare`
- `toccare`
- `togliere`
- `trovare`
- `uscire`
- `vedere`



<!-- EOF -->
