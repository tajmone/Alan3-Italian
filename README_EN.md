# Alan Italian

- https://github.com/tajmone/Alan3-Italian

This repository is a WIP project to:

1. Add support for the Italian language to the Alan Interactive Fiction Language version 3.
2. Port to Italian [Anssi Räisänen]’s _[Alan Standard Library]_ v2.1.

Project created and maintained by [Tristano Ajmone].

[License]: Artistic License 2.0

Project start date: 2018-04-13.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introduction](#introduction)
    - [The Alan Italian Library](#the-alan-italian-library)
    - [The Alan Italian Grammar Module](#the-alan-italian-grammar-module)
- [About Alan IF](#about-alan-if)
- [About The Standard Library](#about-the-standard-library)
- [Project Status and ETA](#project-status-and-eta)
- [Project Contents](#project-contents)
    - [Test suite](#test-suite)
    - [Demo adventure](#demo-adventure)
- [Acknowledgements](#acknowledgements)

<!-- /MarkdownTOC -->

-----

> __NOTE__ — This documented is intended as a brief introduction in English language to the project. Since this is an Italian project, all technical details will be available in Italian only, and this page is limited to a general presentation, reference links and acknowledgements.

# Introduction

This project has two goals:

1. Translate the latest version of the _Alan Standard Library_ (`v2.1`) to Italian.
2. Provide a standalone module to add support for the Italian language to Alan.

Both will alow the creation of Italian interactive fiction adventures with Alan 3. The former will provide an easier starting point for new authors, by supplying a rich infrastructure of common classes and verbs, while the latter will enable experienced authors to build their own IF worlds from scratch, but enjoying a ready made module for the Italian language.


## The Alan Italian Library

The Alan Italian library will allow new authors to start developing their own adventures straight away, by providing a solid infrastructures of predefined classes and verbs which are commonly used in most adventures.

This is what most IF authors who have worked with other IF authoring systems are used to — i.e. working with a tool that provides all the basic verbs and classes to start building an adventure from.

For this reason, I've chosen to port to Italian Anssi Räisänen's _[Alan Standard Library]_, which is the most famous third party library created for Alan. It provides over 170 commonly used adventure verbs, and useful classes for the creation of supporters, listed containers, doors, light sources, devices, edibles, clothing, liquids and vessels, speaking actors, etc., and various behind the scenes mechanisms that greatly simplify the task of creating complex adventures.

## The Alan Italian Grammar Module

- [`alanlib_ita/lib_grammatica.i`][lib_grammatica]
- [`alanlib_ita/lib_supplemento.i`][lib_supplemento]

At the same time, the Italian grammar module of the Italian Library can be used on its own, without the whole Standard Library, to provide support for the Italian language in the creation of free-from adventures — i.e. where authors wish to create a world model from scratch, defining their own custom classes and verbs, without the constraints of a third party library.

This module might be of particular interest to people wishing to add support for other locales to Alan, especially if the target language requires requires gender in articles, prepositions, etc. The grammar module is well documented, albeit only in Italian. If you need support in implementing other languages into Alan, feel free to [open an issue here], I'd be happy to help.

# About Alan IF

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

Alan is a beautiful IF authoring language, designed to be simple to use for non programmers. Unlike other IF systems, Alan doesn't impose any infrastructure to the adventure world, there are no predefined verbs in Alan, just the basic classes which are the building blocks of any adventure:

![The predefined classes in Alan][alan classes]

Everything else has to be built from scratch. Of course, the Alan language supplies all the skeleton functionality which is required by all adventures (like saving and restoring games, mechanisms to intrinsically handle containers, list their contents, show room descriptions, defining directions, etc.), but the way these tools and functionalities are going to be linked together and implemented in any adventure is left to the author's own tastes and needs.

The Alan language offers all the tools for designing an IF world just the way you'd like it to be. There are so many different types of text adventures that trying to impose a model will never please all authors. Alan gives authors total freedom in this respect.


# About The Standard Library

- https://www.alanif.se/information/library
- https://github.com/AnssiR66/AlanStdLib (new official repo)
- https://bitbucket.org/alanif/alanlib

Written by Anssi Räisänen. Current version: v2.1.

The _Alan Standard Library_  is a set of preprogrammed basic verbs and classes to start building your own adventures. The standard library is not included with the ALAN programming system and must be downloaded separately.


# Project Status and ETA

The Italian library is already pretty much usable but, since it's still work in progress, updates to the library code could break adventures and require readapting their source code. Until the library enters the beta stage I can't guarantee that these type of backward-compatiblity breaks won't occur at any time. Right now, I still haven't taken final decisions regarding many features of the library, and need the freedom to change my mind regarding naming conventions and implementation details as I go along. 

The library verbs have all been translated, although quite a few verb responses and library messages are still in English; but in general verbs are safe to use in adventures, and as the messages get translated they will show up in Italian without requiring tweaking the adventure source code. 

I can't estimate how long it will take to ultimate porting the Library, since I'll be working on it on-and-off, according to spare time available (but it's not going to be soon, that's for sure).

I chose to make the project publicly available so that anyone interested can follow its developement and/or contribute to it — and even start using the library for their own adventures, in case they are the daring-minded pioneer type who like to embark in new adventures and unexplored territories. Contributions and feedback would help achieve the goal faster; so, needless to say, they're most appreciated and welcome.

You can follow the discussion on this project on the [Alan-IF discussion group at Yahoo]. For any questions and suggestions, you can also [open an issue here].


# Project Contents

- [`/alanlib_ita/`](./alanlib_ita) — standard library 2.1 translation to Italian (WIP)
- [`/alanlib/`](./alanlib) — copies of the upstream standard library:
    + [`/2.1/`](./alanlib/2.1/) (updated: 2018/10/22)
- [`/demo/`](./demo) — a demo adventure (eventually, but right now very messy)
- [`/docs/`](./docs) — library documentation in HTML
    + [`hjs`](./docs/hjs) — custom Highlight.js package
- [`/docs_src/`](./docs_src) — work directory for generating the documentation from AsciiDoc
- [`/test/`](./test) — various adventure test files and commands scripts
- [`LICENSE`][License] — Artistic License 2.0

## Test suite

A library test suite is being developed in the [`/test/`](./test) folder, for the benefit of anyone whishing to preview the current status of the translation (mostly vanilla test scenarios) without having to compile the tests sources and running them.

## Demo adventure

A [demo adventure] will eventually be available in the [`/demo/`](./demo) folder, along with automation scripts to quickly simulate game sessions and provide transcripts.

> __WARNING__ — Right now, the demo is just a messy adventure that ended up being used to test all kind of classes, packed with useless and unrelated instances. It needs to be reset and rewritten from the ground up.

# Acknowledgements

Obviously, my gratitude goes in the first place to __Thomas Nilefalk__ and __Göran Forslund__, for creating Alan, and to __Anssi Räisänen__ for the Alan Standard Library. But I also want to thank them for their personal support for this project by answering my (many) questions and helping me out on the [Alan-IF discussion group at Yahoo].

Special thanks to __S3RioUs JokER__, who has helped me out translating terminology and library responses, and to __Leonardo Boselli__, whose expertise in implementing/translating IF tools to Italian has made him my target of choice when I need technical advise, help, and an informed expert opinion. _Grazie di cuore, senza di voi questo progetto sarebbe stata un'impresa alquanto solitaria!_


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS
------------------------------------------------------------------------------>


[Alan-IF discussion group at Yahoo]: https://groups.yahoo.com/neo/groups/alan-if/info "Visit Alan-IF discussion group main page at Yahoo Groups"

[i18n Problems]: https://github.com/tajmone/Alan3-Italian/wiki/i18n-Problems

[ISO-8859-1]: https://en.wikipedia.org/wiki/ISO/IEC_8859-1 "See Wikipedia page on ISO-8859-1"

[Alan-IF discussion group at Yahoo]: https://groups.yahoo.com/neo/groups/alan-if/info "Visit Alan-IF discussion group main page at Yahoo Groups"

[open an issue here]: https://github.com/tajmone/Alan3-Italian/issues/new "Open an issue for this project"

<!-- Project Files -->

[License]: ./LICENSE "View the full text of Artistic License 2.0"

[lib_grammatica]: ./alanlib_ita/lib_grammatica.i "View source file"

[lib_supplemento]: ./alanlib_ita/lib_supplemento.i "View source file"

[alan classes]: ./docs_src/predefined-classes.svg "Alan built-in classes"

[demo adventure]: ./demo/README.md "Go to the demo adventure"

<!-- Alan Links -->

[Alan Standard Library]: https://github.com/AnssiR66/AlanStdLib "Visit the upstream Alan Standard Library repository"

<!-- People -->

[Chris Kempson]: http://chriskempson.com "Visit Chris Kempson's website"
[Ivan Sagalaev]: https://github.com/isagalaev "View Ivan Sagalaev's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"
[Anssi Räisänen]: https://github.com/AnssiR66 "View Anssi Räisänen's GitHub profile"

<!-- EOF -->