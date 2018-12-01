# Alan IF 3 Italian

    Alan Standard Library: 2.1
    Alan Development Kit:  3.0beta6

- https://github.com/tajmone/Alan3-Italian

This repository is a WIP translation to Italian of the _Alan Standard Library_ v2.1 (created by Anssi Räisänen) for the Alan Interactive Fiction Language version 3. Italian translation by [Tristano Ajmone].

[License]: Artistic License 2.0

Project start date: 2018-04-13.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Introduction](#introduction)
- [Status](#status)
- [Project Contents](#project-contents)
- [Work Environment Settings](#work-environment-settings)
    - [File Encodings](#file-encodings)
- [About](#about)
    - [Alan IF](#alan-if)
    - [Alan Standard Library](#alan-standard-library)
- [Known Limitations](#known-limitations)
- [Acknowledgements](#acknowledgements)
- [Third Party Assets](#third-party-assets)
    - [Highlight.js](#highlightjs)
    - [Base16 Eighties](#base16-eighties)

<!-- /MarkdownTOC -->

-----

# Introduction

The current goal of this project is to translate the latest version of the _Alan Standard Library_ (`v2.1`) to Italian. I can't estimate how long it will take as I'll be working on it on-and-off, according to spare time available (but it's not going to be soon, that's for sure).

I wanted to make the project publicly available so that anyone interested can follow its developement and/or contribute to it. Contributions would help achieve the goal faster; so, needless to say, they're most appreciated and welcome.

You can follow the discussion on this project on the [Alan-IF discussion group at Yahoo]. For any questions and suggestions, you can also [open an issue here].


[Alan-IF discussion group at Yahoo]: https://groups.yahoo.com/neo/groups/alan-if/info "Visit Alan-IF discussion group main page at Yahoo Groups"

[open an issue here]: https://github.com/tajmone/Alan3-Italian/issues/new "Open an issue for this project"

> __NOTICE__ — From now on all project documentation will be converted to Italian language, as well as future commits messages. During the initial stages of the translation work all documents, logs and commits were kept in English to facilitate collaboration and help from expert developers of the Alan community. But the project has now reached a stage where it's approching completion, and should therefore move toward a fully Italian documentation.
> 
> Once all docs are translated to Italian, a separate English README will be added to project.

# Status

All verbs (ca. 171) have been translated to Italian — for more details, see:

- [`docs/lib_verbi.html`][lib_verbi html]  ([Live HTML Preview][lib_verbi html live])

Now the verb response messages need to be translated, and the whole library documented.

A library test suite is being developed in the [`/test/`](./test) folder, for the benefit of anyone whishing to preview the current status of the translation (mostly vanilla test scenarios) without having to compile the tests sources and running them.

A [demo adventure] file is on the making in the [`/demo/`](./demo) folder (the original demo became messy and is going to be rebuilt from sratch), along with automation scripts to quickly simulate game sessions and provide transcripts.


[demo adventure]: ./demo/README.md "View the sourcefile of the demo adventure 'il_mondo_di_alan.alan'"

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


A full copy of every upstream _Alan Standard Library_ employed in this project is kept in the `/alanlib/` folder; when the library is updated, the upstream files of the currently used version can be diff-compared with the new version in order to track which changes should be integrated into the Italian files in order to bring them on par with the latest version of the Standard Library.

# Work Environment Settings

In order to work on this project, ensure that you get right a couple of settings in your editor.

## File Encodings

The following file extensions should be handled with [ISO-8859-1] enconding:

- "`.alan`" — Alan adventure source file.
- "`.i`" — Alan adventure included source file.
- "`.a3log`" — adventure gameplay transcript.
- "`.a3sol`" — solution file (aka "commands script") to run an adventure.

... if not, you're going to experience problems with special characters like accented letters — and Italian uses them abundantly!

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

Currently, the parser can't handle prepositions with an apostrophe, therefore commands like:

    prendi la mela dall'albero

... will not be interpreted correctly by the parser. The player will have to either omit the apostrophe or insert a space after it:

    prendi la mela dall albero
    prendi la mela dall' albero

... or resort to a shorthand syntax:

    prendi mela da albero

The nature of the problem is fully described in the Wiki page "[i18n Problems]".

> __UPDATE__ — A new feature is currently being implemented in Alan to allow support for apostrophes, to support languages like Italian and French:
> 
> - https://groups.yahoo.com/neo/groups/alan-if/conversations/messages/3635
> 
> The feature will be made available soon in public release, it's currently still being tested and documented.
> 
> My gratitude to __Thomas Nilefalk__ for having implemented this feature in support of the Italian Library project!


# Acknowledgements

Obviously, my gratitude goes in the first place to __Thomas Nilefalk__ and __Göran Forslund__, for creating Alan, and to __Anssi Räisänen__ for the Alan Standard Library. But I also want to thank them for their personal support for this project by answering my (many) questions and helping me out on the [Alan-IF discussion group at Yahoo].

Special thanks to __S3RioUs JokER__, who is constantly helping me out translating terminology and library responses, and to __Leonardo Boselli__, whose expertise in implementing/translating IF tools to Italian has made him my target of choice when I need technical advise, help, and an informed expert opinion. _Grazie di cuore, senza di voi questo progetto sarebbe stata un'impresa alquanto solitaria!_

# Third Party Assets

This project also utilizes the following third party components and assets.

## Highlight.js

- https://github.com/highlightjs/highlight.js

[Highlight.js] is Copyright (C) 2006, [Ivan Sagalaev], and is released under the BSD3 license:

    Copyright (c) 2006, Ivan Sagalaev
    All rights reserved.
    Redistribution and use in source and binary forms, with or without
    modification, are permitted provided that the following conditions are met:

        * Redistributions of source code must retain the above copyright
          notice, this list of conditions and the following disclaimer.
        * Redistributions in binary form must reproduce the above copyright
          notice, this list of conditions and the following disclaimer in the
          documentation and/or other materials provided with the distribution.
        * Neither the name of highlight.js nor the names of its contributors 
          may be used to endorse or promote products derived from this software 
          without specific prior written permission.

    THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND ANY
    EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
    WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
    DISCLAIMED. IN NO EVENT SHALL THE REGENTS AND CONTRIBUTORS BE LIABLE FOR ANY
    DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
    (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
    LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
    ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
    (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
    SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


## Base16 Eighties

- https://github.com/chriskempson/base16-builder

For the Highlight.js CSS theme for Alan, I've used the colors of the [Base16 Eighties] color scheme, from [Chris Kempson]'s Base16 project (MIT License):

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


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

[License]: ./LICENSE "View the full text of Artistic License 2.0"

[Alan-IF discussion group at Yahoo]: https://groups.yahoo.com/neo/groups/alan-if/info "Visit Alan-IF discussion group main page at Yahoo Groups"

[feature request]: https://groups.yahoo.com/neo/groups/alan-if/conversations/messages/3421 "See the post of the feature/fix request"

[i18n Problems]: https://github.com/tajmone/Alan3-Italian/wiki/i18n-Problems

[ISO-8859-1]: https://en.wikipedia.org/wiki/ISO/IEC_8859-1 "See Wikipedia page on ISO-8859-1"

<!-- Library Documentation  -->

[lib_verbi html]: ./docs/lib_verbi.html
[lib_verbi html live]: http://htmlpreview.github.io/?https://github.com/tajmone/Alan3-Italian/blob/master/docs/lib_verbi.html "Live HTML Preview via GitHub & BitBucket HTML Preview"

[lib_definizioni html]: ./docs/lib_definizioni.html
[lib_definizioni html live]: http://htmlpreview.github.io/?https://github.com/tajmone/Alan3-Italian/blob/master/docs/lib_definizioni.html "Live HTML Preview via GitHub & BitBucket HTML Preview"

<!-- Third Party Tools & Assets -->

[Base16 Eighties]: https://github.com/chriskempson/base16-builder/blob/master/schemes/eighties.yml "View upstream source scheme"
[Doxter]: https://git.io/doxter "Visit Doxter website"
[highlight.js]: https://highlightjs.org/ "Visit highlight.js website"

<!-- People -->

[Chris Kempson]: http://chriskempson.com "Visit Chris Kempson's website"
[Ivan Sagalaev]: https://github.com/isagalaev "View Ivan Sagalaev's GitHub profile"
[Tristano Ajmone]: https://github.com/tajmone "View Tristano Ajmone's GitHub profile"

<!-- EOF -->