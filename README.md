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

<!-- /MarkdownTOC -->

-----

# Introduction

The current goal of this project is to translate the latest version of the _Alan Standard Library_ (`v2.1`) to Italian. I can't estimate how long it will take as I'll be working on it on-and-off, according to spare time available (but it's not going to be soon, that's for sure).

I wanted to make the project publicly available so that anyone interested can follow its developement and/or contribute to it. Contributions would help achieve the goal faster; so, needless to say, they're most appreciated and welcome.

You can follow the discussion on this project on the [Alan-IF discussion group at Yahoo]. For any questions and suggestions, you can also [open an issue here].


[Alan-IF discussion group at Yahoo]: https://groups.yahoo.com/neo/groups/alan-if/info "Visit Alan-IF discussion group main page at Yahoo Groups"

[open an issue here]: https://github.com/tajmone/Alan3-Italian/issues/new "Open an issue for this project"

# Status

Nothing done yet, just created the project and preparing the ground.

# Project Contents

- [`/alanlib_ita/`](./alanlib_ita) — standard library 2.1 translation to Italian (WIP)
- [`/alanlib/`](./alanlib) — copies of the upstream standard library:
    + [`/2.1/`](./alanlib/2.1/) (released: 2018-04-13)
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
- https://bitbucket.org/alanif/alanlib

Written by Anssi Räisänen. Current version: v2.1.

The _Alan Standard Library_  is a set of preprogrammed basic verbs and classes to start building your own adventures. The standard library is not included with the ALAN programming system and must be downloaded separately.



[License]: ./LICENSE "View the full text of Artistic License 2.0"

[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"