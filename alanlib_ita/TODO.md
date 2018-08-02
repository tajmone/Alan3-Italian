# Alan StdLib Italian TODOs

Some pending tasks that need to be done.


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Locations in Verb Responses](#locations-in-verb-responses)
- [Preposizioni Articolate of ACTORS](#preposizioni-articolate-of-actors)

<!-- /MarkdownTOC -->

-----

# Locations in Verb Responses

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

# Preposizioni Articolate of ACTORS

When initializing articles and prepositions, I must also ensure that for named actors the preposizioni articolare are set to the base preposition without article, othersiwe I'll get responses like this:

```
> lega pera a gustavo
(taking la pera first)
Non è possibile legare la pera al Gustavo.
```

... where it should be "__a Gustavo__" instead!

Initialization of preposizioni articolate is being handled on `EVERY THING`: should I add some checks there to handle ACTORs differently (ie, _NAMED actors_), or should I add a dedicated initialization on the ACTOR classes?

There is also an Italian initialization code for `EVERY ACTOR`, in "`lib_classi.i`", which is handling articles but not preposizioni articolate. It looks like I should add there the code to handle this problem!