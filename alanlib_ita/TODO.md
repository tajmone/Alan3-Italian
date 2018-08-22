# Alan StdLib Italian TODOs

Some pending tasks that need to be done.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Named Actors Initialization](#named-actors-initialization)
- [Locations in Verb Responses](#locations-in-verb-responses)
- [Hero Settings and Customization](#hero-settings-and-customization)
    - [Female Hero](#female-hero)
- [Pronouns](#pronouns)
- [Library Messages](#library-messages)
- [Redundant Code in Actors and Persona](#redundant-code-in-actors-and-persona)

<!-- /MarkdownTOC -->

-----

# Named Actors Initialization

There seems to be a problem with the newly implemented initialization of `ACTOR`s:

- [ ] the `vocale` of named actors/persons is not set correctly.
- [ ] unamed actors are not always initialized properly:
    + [ ] `plurale` doesn't match article
    + [ ] `femminile` doesn't match gender

# Locations in Verb Responses

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

-------------------------------------------------------------------------------

# Hero Settings and Customization

I need to check tha `hero` is initialized properly, and consider some customization optimizations.

## Female Hero

The default settings should make `hero` a male character, but I must also allow to easily make `hero` a female by simply adding to it `IS femminile`.

Need some testing (and possibly, some tweaks) and then document the feature.

- [ ] Check if some library messages are affected by a female hero.
- [ ] Check if different synonyms are required for a female hero.


-------------------------------------------------------------------------------

# Pronouns

I still haven't looked into pronouns well enough, and there might be some room for exploiting them in Italian.

- [ ] Special char `$!<n>` (Pronoun for the parameter `<n>`).
- [ ] Predefined Player Words `THEM`.
- [ ] `PRONOUN` keyword.


-------------------------------------------------------------------------------

# Library Messages

There might be some room for improvements in the Italian messages/responses system. Beside looking into pronouns (already dealt with above), I should look into:

- [ ] verbs whose syntaxes and synonyms all end in "a" could use the `$v` to build an infitive form based on the actual verb typed by the player, instead of spelling out a literal infinitive verb. For example, verb `bacia`: "bacia" e "abbraccia", uses "`$vre`" in responses (`bacia`+`re`/`abbraccia`+`re`).
- [ ] Special char `$-<n>` (Negative form of parameter `<n>`) might be useful in message.
- [ ] The original library uses a lot of `SAY THE obj` and `SAY THE instr` in VERBs, while a more simple approach would be to use just `$+1` and `$+2` in the strings. My tests have proven that the number `1` and `2` always refer to the position of the _main_ syntax definition, so if a verb has multiple syntaxes like `take (obj) from (act)` and  `take from (act) (obj)`, `$+1` and `$+2` will always refer to `obj` and `act` regardless of the inverted syntax used by player, because parameter positions always refer to the main (first) syntax definition!
- [ ] 


-------------------------------------------------------------------------------


# Redundant Code in Actors and Persona

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
