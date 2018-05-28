# Alan IF 3 Italian

    Alan Standard Library: 2.1
    Alan Development Kit:  3.0beta5

This repository is a WIP translation to Italian of the _Alan Standard Library_ v2.1 (created by Anssi Räisänen) for the Alan Interactive Fiction Language version 3. Italian translation by [Tristano Ajmone].

[License]: Artistic License 2.0

Started on: 2018-04-13

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introduction](#introduction)
- [Status](#status)
- [Project Contents](#project-contents)
- [About](#about)
    - [Alan IF](#alan-if)
    - [Alan Standard Library](#alan-standard-library)
- [Known Limitations](#known-limitations)
- [Acknowledgements](#acknowledgements)

<!-- /MarkdownTOC -->

-----

# Introduction

The current goal of this project is to translate the latest version of the _Alan Standard Library_ (`v2.1`) to Italian. I can't estimate how long it will take as I'll be working on it on-and-off, according to spare time available (but it's not going to be soon, that's for sure).

I wanted to make the project publicly available so that anyone interested can follow its developement and/or contribute to it. Contributions would help achieve the goal faster; so, needless to say, they're most appreciated and welcome.

You can follow the discussion on this project on the [Alan-IF discussion group at Yahoo]. For any questions and suggestions, you can also [open an issue here].


[Alan-IF discussion group at Yahoo]: https://groups.yahoo.com/neo/groups/alan-if/info "Visit Alan-IF discussion group main page at Yahoo Groups"

[open an issue here]: https://github.com/tajmone/Alan3-Italian/issues/new "Open an issue for this project"


# Status

Gradually translating verbs and standard messages. A [demo adventure] file has been created to test the features being translated, along with automation scripts to quickly simulate a game session. Transcript logs of the test sessions are preserved in the [`/tests/`](./tests) folder, for the benefit of anyone whishing to preview the current status of the translation (in real use scenarios) without having to compile the demo and run the tests.

[demo adventure]: ./tests/il_mondo_di_alan.alan "View the sourcefile of the demo adventure 'il_mondo_di_alan.alan'"

# Project Contents

- [`/alanlib_ita/`](./alanlib_ita) — standard library 2.1 translation to Italian (WIP)
- [`/alanlib/`](./alanlib) — copies of the upstream standard library:
    + [`/2.1/`](./alanlib/2.1/) (released: 2018-04-13)
- [`/tests/`](./tests) — tests folder with demo adventure and commands scripts
- [`LICENSE`][License] — Artistic License 2.0


A full copy of every upstream _Alan Standard Library_ employed in this project is kept in the `/alanlib/` folder; when the library is updated, the upstream files of the currently used version can be diff-compared with the new version in order to track which changes should be integrated into the Italian files in order to bring them on par with the latest version of the Standard Library.


# About

## Alan IF

- https://www.alanif.se/
- https://bitbucket.org/alanif/alan

From [IFWiki]'s [Alan page]:

> An acronym for __Adventure LANguage__, Alan is an authoring system designed to make it easier for people unfamiliar with programming to write IF, or text-adventure games. It was created by Thomas Nilsson and Göran Forslund in 1985 and is continuously updated and maintained by Thomas Nilsson.

[Alan page]: http://www.ifwiki.org/index.php/Alan "View the full article on IFWiki"
[IFWiki]: http://www.ifwiki.org "Visit IFWiki.org, the Interactive Fiction Wiki"

From the [Alan website]:

> Alan consists of a programming language and a set of tools to support working in that language to create games. The tools include a compiler, various flavours of runners/interpreters, a completely integrated development environment, a map generator and more.
> 
> Alan is in the final stages in moving towards version 3, and has entered beta state. \[...\] Alan V3 is now ready for supported production work.

[Alan website]: https://www.alanif.se/ "Visit Alan official website"

## Alan Standard Library

- https://www.alanif.se/information/library
- https://github.com/AnssiR66/AlanStdLib (new official repo)
- https://bitbucket.org/alanif/alanlib

Written by Anssi Räisänen. Current version: v2.1.

The _Alan Standard Library_  is a set of preprogrammed basic verbs and classes to start building your own adventures. The standard library is not included with the ALAN programming system and must be downloaded separately.

# Known Limitations

Currently, there is no solution to handle correctly prepositions with an apostrophe, therefore commands like:

    prendi la mela dall'albero

... will not be interpreted correctly by the parser. The player will have to either omit the apostrophe or insert a space after it:

    prendi la mela dall albero
    prendi la mela dall' albero

... or resort to a shorthand syntax:

    prendi mela da albero

The nature of the problem is fully described in the Wiki page "[i18n Problems]".

This limitation poses a rather serious problem. Although it doesn't prevent playing the game, it nevertheless enforces on the player usage of bad Italian as a workaround. Wether this is an issue that comprmosises the usability of the whole Italian library project is a matter of debate. To quantify the severity of the problem using English as a parallel, imagine that the player would have to type `Bob s car` instead of `Bob's car` due to a limitation in parsing correctly the apostrophe in the possessive morpheme `'s`.

Some Italian IF authors and developers have suggested that the problem is sever enough to justify either giving up the whole project or to modify the source of Alan's interpreter to create a dedicate terp for playing Italian adventures — ie, which could preprocess the player's input and replace the culprit apostrophe with a space before it gets processed by the parser.

The original intention which motivated me to localize to Italian the Alan StdLib was the desire to have an IF authoring tool that could be used by non-programmers. The whole idea was to expand the domain of IF beyond the circle of expert programmers, hoping that IF authoring would spread beyond it. I therefore believe that the above mentioned limitation is not going to prevent people from learning how to create an IF work with Alan, although I do realize that it's definitely going to affect the status of the project, making it second choice whenever an authoring tool without this limit is affordable.

I've filed a [feature request] to Alan's developer exposing the problem and hoping that a new feature might be introduced into the language to handle preprocessing the raw input player before it gets to the parser. Such a feature would allow overcoming this and other similar issues not only in Italian but also in other languages, like French.

I've therefore decided to carry on with the project despite this problem (and suggestions against it), hoping that my plead for a solution via a new Alan feature will be fulfilled sometime in the future. I've also given some thought to the idea of creating a modified distribution of the Alan interpreter, as a last resort; but have finally dediced against it. First, it would introduce the burden of maintaining the code up to date with its upstream; second, it would require to maintain up to date precompiled binaries for all the supported platforms, inlcuding macOS (which I don't have access to). 

Therefore, I'm prepared to accept the fact that what I hoped would become a  full-fledged Italian IF authoring tool might have now recessed in status to being just an experimental tool to learn authoring IF, but not destined to be used in the production of adventures intended for publication.


# Acknowledgements

Obviously, my gratitude goes in the first place to __Thomas Nilefalk__ and __Göran Forslund__, for creating Alan, and to __Anssi Räisänen__ for the Alan Standard Library. But I also want to thank them for their personal support for this project by answering my (many) questions and helping me out on the [Alan-IF discussion group at Yahoo].

Special thanks to __S3RioUs JokER__, who is constantly helping me out translating terminology and library responses, and to __Leonardo Boselli__, whose expertise in implementing/translating IF tools to Italian has made him my target of choice when I need technical advise, help, and an informed expert opinion. _Grazie di cuore, senza di voi questo progetto sarebbe stata un'impresa alquanto solitaria!_



<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[License]: ./LICENSE "View the full text of Artistic License 2.0"

[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

[Alan-IF discussion group at Yahoo]: https://groups.yahoo.com/neo/groups/alan-if/info "Visit Alan-IF discussion group main page at Yahoo Groups"

[feature request]: https://groups.yahoo.com/neo/groups/alan-if/conversations/messages/3421 "See the post of the feature/fix request"

[i18n Problems]: https://github.com/tajmone/Alan3-Italian/wiki/i18n-Problems

