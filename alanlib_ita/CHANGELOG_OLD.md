# OLD CHANGELOG

Log Range: Alpha v0.0.1–0.12.1.

This is the old changelog of the Italian translation of Alan Standard Library v2.1, covering changes from the initial work (v0.0.1) up to draft translation of all library verbs (v0.12.1).

For the latest changes, see:

- [`CHANGELOG.md`](./CHANGELOG.md)  (v0.8.0–)

> __NOTE__ — due to some library modules having been renamed, split into separate file, or part of their contents moved to another module, some of the source files linked in CHANGELOG entries might now point to a module which no longer holds the original contents edited by that commit.
> 
> Please refer to Git's history and blame functionality for accurate references.

-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Alan 3.0beta6 build 1862](#alan-30beta6-build-1862)
    - [2019/02/01](#20190201)
        - [Vestiario](#vestiario)
        - [Messaggi runtime](#messaggi-runtime)
    - [2019/01/24](#20190124)
        - [Passa alla v0.12.0](#passa-alla-v0120)
        - [Passa ad Alan 3.0beta6 build 1862](#passa-ad-alan-30beta6-build-1862)
- [Alan 3.0beta6 build 1855](#alan-30beta6-build-1855)
    - [2019/01/17](#20190117)
        - [Passa alla v0.11.0](#passa-alla-v0110)
        - [Passa ad Alan 3.0beta6 build 1852](#passa-ad-alan-30beta6-build-1852)
        - [Uso di E POI in comandi di gioco](#uso-di-e-poi-in-comandi-di-gioco)
- [Alan 3.0beta6 build 1852](#alan-30beta6-build-1852)
    - [2019/01/16](#20190116)
        - [Sintassi alternative con 'a' in `guarda_*`](#sintassi-alternative-con-a-in-guarda_)
        - [Sintassi alternative per preposizione 'dai'](#sintassi-alternative-per-preposizione-dai)
        - [Porte e Finestre](#porte-e-finestre)
    - [2019/01/15](#20190115)
        - [Aggiusta verbi modulo classi](#aggiusta-verbi-modulo-classi)
    - [2019/01/14](#20190114)
        - [Passa alla v0.10.0](#passa-alla-v0100)
        - [Passa ad Alan 3.0beta6 build 1852](#passa-ad-alan-30beta6-build-1852-1)
        - [Aggiusta i verbi di domande con "è"](#aggiusta-i-verbi-di-domande-con-%C3%A8)
        - [Modulo supplemento](#modulo-supplemento)
        - [Nuovo attributo banner di versione Alan](#nuovo-attributo-banner-di-versione-alan)
        - [Rimuovi stropping superfluo](#rimuovi-stropping-superfluo)
- [Alan 3.0beta6](#alan-30beta6)
    - [2019/01/06](#20190106)
        - [Vestiario](#vestiario-1)
    - [2018/12/08 \(3\)](#20181208-3)
        - [Verbi](#verbi)
        - [Verbi Classi](#verbi-classi)
        - [Documentazione classi](#documentazione-classi)
    - [2018/12/08 \(2\)](#20181208-2)
        - [Verbi](#verbi-1)
        - [Messaggi libreria](#messaggi-libreria)
    - [2018/12/08 \(1\)](#20181208-1)
        - [Verbi apri, chiudi, blocca e sblocca](#verbi-apri-chiudi-blocca-e-sblocca)
        - [Messaggi libreria](#messaggi-libreria-1)
        - [Modulo classi](#modulo-classi)
    - [2018/12/07](#20181207)
        - [Messaggi libreria](#messaggi-libreria-2)
        - [Verbi](#verbi-2)
        - [Pulizia sorgenti](#pulizia-sorgenti)
    - [2018/12/04 \(3\)](#20181204-3)
        - [Messaggi libreria](#messaggi-libreria-3)
        - [Risposte dei verbi](#risposte-dei-verbi)
    - [2018/12/04 \(2\)](#20181204-2)
        - [Messaggi libreria](#messaggi-libreria-4)
    - [2018/12/04 \(1\)](#20181204-1)
        - [Messaggi libreria](#messaggi-libreria-5)
        - [Modulo classi](#modulo-classi-1)
    - [2018/12/01](#20181201)
        - [Documentazione messaggi libreria](#documentazione-messaggi-libreria)
    - [2018/11/30 \(2\)](#20181130-2)
        - [Documentazione](#documentazione)
        - [Messaggi dei verbi](#messaggi-dei-verbi)
    - [2018/11/30 \(1\)](#20181130-1)
        - [Messaggi dei verbi](#messaggi-dei-verbi-1)
        - [Rinomina parametri del verbo `scrivi`](#rinomina-parametri-del-verbo-scrivi)
    - [2018/11/25 \(2\)](#20181125-2)
        - [Aggiornamento Doxter](#aggiornamento-doxter)
    - [2018/11/25 \(1\)](#20181125-1)
        - [Messaggi dei verbi](#messaggi-dei-verbi-2)
    - [2018/11/24](#20181124)
        - [Messaggi dei verbi](#messaggi-dei-verbi-3)
        - [Nuovi messaggi dei verbi](#nuovi-messaggi-dei-verbi)
    - [2018/11/23 \(2\)](#20181123-2)
        - [Rinomina messaggi dei verbi](#rinomina-messaggi-dei-verbi)
        - [Sostituisci messaggi inglesi dei verbi](#sostituisci-messaggi-inglesi-dei-verbi)
        - [Traduci messaggi dei verbi](#traduci-messaggi-dei-verbi)
    - [2018/11/23 \(1\)](#20181123-1)
        - [Correggi Baco LIQUIDI](#correggi-baco-liquidi)
    - [2018/11/22 \(5\)](#20181122-5)
        - [Messaggi dei verbi](#messaggi-dei-verbi-4)
    - [2018/11/22 \(4\)](#20181122-4)
        - [Correggi Baco in LIQUIDO](#correggi-baco-in-liquido)
    - [2018/11/22 \(3\)](#20181122-3)
        - [Documentazione](#documentazione-1)
        - [Verbi](#verbi-3)
        - [Messaggi dei verbi](#messaggi-dei-verbi-5)
    - [2018/11/22 \(2\)](#20181122-2)
        - [Suddivisione modulo messaggi](#suddivisione-modulo-messaggi)
        - [Passa alla v0.9.0](#passa-alla-v090)
    - [2018/11/22 \(1\)](#20181122-1)
        - [Messaggi dei verbi](#messaggi-dei-verbi-6)
    - [2018/11/20](#20181120)
        - [Documentazione messaggi](#documentazione-messaggi)
        - [Rinomina messaggi dei verbi](#rinomina-messaggi-dei-verbi-1)
    - [2018/11/16](#20181116)
        - [Documentazione verbi](#documentazione-verbi)
    - [2018/11/15](#20181115)
        - [Documentazione verbi](#documentazione-verbi-1)
    - [2018/11/13 \(2\)](#20181113-2)
        - [Pulizia documentazione verbi](#pulizia-documentazione-verbi)
        - [Documenta il baco della "è"](#documenta-il-baco-della-%C3%A8)
    - [2018/11/13 \(1\)](#20181113-1)
        - [Passa alla v0.8.0: Tutti i verbi tradotti](#passa-alla-v080-tutti-i-verbi-tradotti)
        - [Verb Restriction Attributes](#verb-restriction-attributes)
        - [Verb: `shake`](#verb-shake)
        - [Verb: `squeeze`](#verb-squeeze)
        - [Verb: `clean`](#verb-clean)
        - [Verb: `rub`](#verb-rub)
    - [2018/11/12 \(6\)](#20181112-6)
        - [Verb Restriction Attributes](#verb-restriction-attributes-1)
        - [Verb: `climb`](#verb-climb)
    - [2018/11/12 \(5\)](#20181112-5)
        - [Verb Restriction Attributes](#verb-restriction-attributes-2)
        - [Verbs: `pry` and `pry_with`](#verbs-pry-and-pry_with)
    - [2018/11/12 \(4\)](#20181112-4)
        - [Verb Restriction Attributes](#verb-restriction-attributes-3)
        - [Verb: `stand_on`](#verb-stand_on)
        - [Verb: `climb_on`](#verb-climb_on)
    - [2018/11/12 \(3\)](#20181112-3)
        - [Verb Restriction Attributes](#verb-restriction-attributes-4)
        - [Meta Verb: `'about'`](#meta-verb-about)
        - [Meta Verb: `hint`](#meta-verb-hint)
    - [2018/11/12 \(2\)](#20181112-2)
        - [Verb Restriction Attributes](#verb-restriction-attributes-5)
        - [Verb: `search`](#verb-search)
        - [Fix Verb `ascolta` \(was `listen`\)](#fix-verb-ascolta-was-listen)
    - [2018/11/12 \(1\)](#20181112-1)
        - [Verb Responses](#verb-responses)
        - [Verb: `'show'`](#verb-show)
    - [2018/11/11 \(2\)](#20181111-2)
        - [Verb Restriction Attributes](#verb-restriction-attributes-6)
        - [Verbs: `knock` and `knock_error`](#verbs-knock-and-knock_error)
        - [Verb: `lift`](#verb-lift)
        - [Verb: `follow`](#verb-follow)
    - [2018/11/11 \(1\)](#20181111-1)
        - [Verb Restriction Attributes](#verb-restriction-attributes-7)
        - [Group of Verbs: `fire*`](#group-of-verbs-fire)
        - [Delete `shoot*` Verbs](#delete-shoot-verbs)
        - [Verb Responses](#verb-responses-1)
    - [2018/11/10 \(5\)](#20181110-5)
        - [Verb Restriction Attributes](#verb-restriction-attributes-8)
        - [Verbs: `enter` and `'exit'`](#verbs-enter-and-exit)
        - [Verb Responses](#verb-responses-2)
    - [2018/11/10 \(4\)](#20181110-4)
        - [Verb Restriction Attributes](#verb-restriction-attributes-9)
        - [Verb: `turn`](#verb-turn)
    - [2018/11/10 \(3\)](#20181110-3)
        - [Verb: `shout`](#verb-shout)
    - [2018/11/10 \(2\)](#20181110-2)
        - [Verb Restriction Attributes](#verb-restriction-attributes-10)
        - [Verb: `catch`](#verb-catch)
    - [2018/11/10 \(1\)](#20181110-1)
        - [Doxterize Verbs Groups](#doxterize-verbs-groups)
    - [2018/11/09 \(8\)](#20181109-8)
    - [2018/11/09 \(7\)](#20181109-7)
        - [Verb Restriction Attributes](#verb-restriction-attributes-11)
        - [Verb: `kick`](#verb-kick)
        - [Doxterize](#doxterize)
    - [2018/11/09 \(6\)](#20181109-6)
        - [Group of Verbs: `push*`](#group-of-verbs-push)
    - [2018/11/09 \(5\)](#20181109-5)
        - [Group of Verbs: `dive*` and `swim*`](#group-of-verbs-dive-and-swim)
    - [2018/11/09 \(4\)](#20181109-4)
        - [Verb Restriction Attributes](#verb-restriction-attributes-12)
        - [Verb: `tear`](#verb-tear)
    - [2018/11/09 \(3\)](#20181109-3)
        - [Verb Restriction Attributes](#verb-restriction-attributes-13)
        - [Group of Verbs: `throw*`](#group-of-verbs-throw)
    - [2018/11/09 \(2\)](#20181109-2)
        - [Verb Restriction Attributes](#verb-restriction-attributes-14)
        - [Verb: `stand`](#verb-stand)
        - [Delete Verb: `get_up`](#delete-verb-get_up)
        - [Verb: `get_off`](#verb-get_off)
        - [Verbs `lie_*`](#verbs-lie_)
    - [2018/11/09 \(1\)](#20181109-1)
        - [Verbs: `jump`, `jump_in` and `jump_on`](#verbs-jump-jump_in-and-jump_on)
        - [Verb Responses](#verb-responses-3)
    - [2018/11/08](#20181108)
    - [2018/11/03 \(3\)](#20181103-3)
        - [Verb Restriction Attributes](#verb-restriction-attributes-15)
        - [Verbs `put*`](#verbs-put)
        - [Verb Responses](#verb-responses-4)
        - [Doxterize](#doxterize-1)
    - [2018/11/03 \(2\)](#20181103-2)
        - [Code Cleanup](#code-cleanup)
        - [Doxterize](#doxterize-2)
    - [2018/11/03 \(1\)](#20181103-1)
        - [Verb: `bite`](#verb-bite)
        - [Verb Restriction Attributes](#verb-restriction-attributes-16)
        - [Verb Responses](#verb-responses-5)
    - [2018/11/02 \(2\)](#20181102-2)
        - [Doxterize Classes](#doxterize-classes)
        - [Verbs: `empty*` and `pour*`](#verbs-empty-and-pour)
        - [Verb Responses](#verb-responses-6)
    - [2018/11/02 \(1\)](#20181102-1)
        - [Verb: `taste`](#verb-taste)
    - [2018/11/01](#20181101)
        - [Verb: `sip`](#verb-sip)
        - [Verb Restriction Attributes](#verb-restriction-attributes-17)
        - [Verb Responses](#verb-responses-7)
        - [Doxterize Verbs](#doxterize-verbs)
        - [Tweak Lib Classes](#tweak-lib-classes)
    - [2018/10/31 \(2\)](#20181031-2)
        - [Verb Restriction Attributes](#verb-restriction-attributes-18)
        - [Verbs: `smell0` and `smell`](#verbs-smell0-and-smell)
    - [2018/10/31 \(1\)](#20181031-1)
        - [Doxterize Verbs](#doxterize-verbs-1)
    - [2018/10/25](#20181025)
        - [Make `inventario` Not META](#make-inventario-not-meta)
        - [Doxterize Verbs](#doxterize-verbs-2)
    - [2018/10/24](#20181024)
        - [Verb Restriction Attributes](#verb-restriction-attributes-19)
        - [Verb: `'score'`](#verb-score)
    - [2018/10/22 \(2\)](#20181022-2)
        - [`script*` Verbs](#script-verbs)
        - [Verb Restriction Attributes](#verb-restriction-attributes-20)
    - [2018/10/22 \(1\)](#20181022-1)
        - [Rename Restriction Attributes](#rename-restriction-attributes)
        - [Rename Verbs](#rename-verbs)
    - [2018/10/21 \(3\)](#20181021-3)
        - [`notify*` Verbs](#notify-verbs)
        - [Verb Responses](#verb-responses-8)
        - [Library Attributes for Notify](#library-attributes-for-notify)
        - [Score Event](#score-event)
    - [2018/10/21 \(2\)](#20181021-2)
        - [Verb Restriction Attributes](#verb-restriction-attributes-21)
        - [Fix VERB END IDs](#fix-verb-end-ids)
    - [2018/10/21 \(1\)](#20181021-1)
        - [Fix META VERBs](#fix-meta-verbs)
    - [2018/10/19 \(2\)](#20181019-2)
        - [Verb: `verbose`](#verb-verbose)
        - [Verb: `brief` \(buggy\)](#verb-brief-buggy)
        - [Verb: `credits`](#verb-credits)
        - [Verb Restriction Attributes](#verb-restriction-attributes-22)
    - [2018/10/19 \(1\)](#20181019-1)
        - [Verb: `scratch`](#verb-scratch)
        - [Verb Restriction Attributes](#verb-restriction-attributes-23)
        - [Verb Responses](#verb-responses-9)
    - [2018/10/18](#20181018)
        - [Translate Responses for "Look" Verbs](#translate-responses-for-look-verbs)
        - [Verb Responses](#verb-responses-10)
    - [2018/10/17](#20181017)
        - [Verb Restriction Attributes](#verb-restriction-attributes-24)
        - [Translate "Look" Verbs](#translate-look-verbs)
        - [Delete `sotto` Synonym](#delete-sotto-synonym)
    - [2018/10/15 \(3\)](#20181015-3)
        - [Move Messages Attributes to `lib_messaggi.i`](#move-messages-attributes-to-lib_messaggii)
        - [Bump Up Lib to v0.7.0](#bump-up-lib-to-v070)
    - [2018/10/15 \(2\)](#20181015-2)
        - [Verb: `consult`](#verb-consult)
    - [2018/10/15 \(1\)](#20181015-1)
        - [Doxterize `lib_luoghi.i` and `lib_supplemento.i`](#doxterize-lib_luoghii-and-lib_supplementoi)
    - [2018/10/14 \(3\)](#20181014-3)
        - [Doxterize `lib_classi.i`](#doxterize-lib_classii)
    - [2018/10/14 \(2\)](#20181014-2)
        - [Banner Translation](#banner-translation)
        - [Verb Restriction Attributes](#verb-restriction-attributes-25)
    - [2018/10/14 \(2\)](#20181014-2-1)
        - [Doxterize `lib_definizioni.i`](#doxterize-lib_definizionii)
    - [2018/10/14 \(1\)](#20181014-1)
        - [Optimize Restricted Actions](#optimize-restricted-actions)
        - [Tweak Level 2 Restrictions](#tweak-level-2-restrictions)
    - [2018/10/13](#20181013)
        - [Add Doxter for Documentation Generator](#add-doxter-for-documentation-generator)
    - [2018/10/09](#20181009)
        - [Verb Restriction Attributes](#verb-restriction-attributes-26)
        - [Verb: `Tell`](#verb-tell)
    - [2018/08/27 \(3\)](#20180827-3)
        - [New Recurrent Verb Responses Attributes](#new-recurrent-verb-responses-attributes)
    - [2018/08/27 \(2\)](#20180827-2)
        - [Verb Restriction Attributes](#verb-restriction-attributes-27)
        - [Verb Responses](#verb-responses-11)
        - [Verbs: `talk` and `talk_to`](#verbs-talk-and-talk_to)
    - [2018/08/27 \(1\)](#20180827-1)
        - [Verb Restriction Attributes](#verb-restriction-attributes-28)
        - [Verb: `ask`](#verb-ask)
    - [2018/08/24](#20180824)
        - [Fix Verb `chiedi` \(`ask_for`\)](#fix-verb-chiedi-ask_for)
    - [2018/08/22 \(3\)](#20180822-3)
        - [Verb Restriction Attributes](#verb-restriction-attributes-29)
        - [Verb: `ask_for`](#verb-ask_for)
        - [Fix Actors Initialization \(Again\)](#fix-actors-initialization-again)
    - [2018/08/22 \(2\)](#20180822-2)
        - [Fix Actors Initialization](#fix-actors-initialization)
    - [2018/08/22 \(1\)](#20180822-1)
        - [Verb Restriction Attributes](#verb-restriction-attributes-30)
        - [Verb: `say`](#verb-say)
        - [Verb: `say_to`](#verb-say_to)
    - [2018/08/18 \(2\)](#20180818-2)
        - [Update to Alan 3 Beta 6](#update-to-alan-3-beta-6)
        - [Fix Noise Words as Synomyms of `'the'`](#fix-noise-words-as-synomyms-of-the)
- [Alan 3.0beta5](#alan-30beta5)
    - [2018/08/18 \(1\)](#20180818-1)
        - [Group Together Verbs That Are Questions/Statements](#group-together-verbs-that-are-questionsstatements)
    - [2018/08/16 \(2\)](#20180816-2)
        - [Fix Actors Initialization and Description](#fix-actors-initialization-and-description)
    - [2018/08/16 \(1\)](#20180816-1)
        - [Verb Responses](#verb-responses-12)
        - [Corretto Risposte Per `indossa` e `togliti`](#corretto-risposte-per-indossa-e-togliti)
    - [2018/08/11](#20180811)
        - [Verb Restriction Attributes](#verb-restriction-attributes-31)
        - [Verb Responses](#verb-responses-13)
        - [Verb: `remove`](#verb-remove)
    - [2018/08/09](#20180809)
        - [Verb Responses](#verb-responses-14)
        - [Verb: `wear`](#verb-wear)
    - [2018/08/08](#20180808)
        - [Deleted `present_actor` Attribute](#deleted-present_actor-attribute)
        - [Translated Actors Inventory Messages](#translated-actors-inventory-messages)
    - [2018/08/07](#20180807)
    - [2018/08/06 \(2\)](#20180806-2)
        - [Inizializzazione di `OBJECT` anziché `THING`](#inizializzazione-di-object-anzich%C3%A9-thing)
        - [Inizializzazione di `ACTOR`](#inizializzazione-di-actor)
        - [Note Sugli Attori Con Nome Proprio](#note-sugli-attori-con-nome-proprio)
    - [2018/08/06 \(1\)](#20180806-1)
        - [Library Attributes](#library-attributes)
    - [2018/08/02 \(3\)](#20180802-3)
        - [Verb Responses](#verb-responses-15)
        - [Verbs: `tie` and `tie_to`](#verbs-tie-and-tie_to)
    - [2018/08/02 \(2\)](#20180802-2)
    - [2018/08/02 \(1\)](#20180802-1)
        - [Verbs: `kill` and `kill_with`](#verbs-kill-and-kill_with)
        - [Verbs: `touch` and `touch_with`](#verbs-touch-and-touch_with)
        - [Code Cleanup](#code-cleanup-1)
    - [2018/08/01 \(4\)](#20180801-4)
        - [Verb Responses](#verb-responses-16)
        - [Verb: `sing`](#verb-sing)
        - [Verb: `kiss`](#verb-kiss)
        - [Verb: `pull`](#verb-pull)
    - [2018/08/01 \(3\)](#20180801-3)
        - [Verbs: `attack` and `attack_with`](#verbs-attack-and-attack_with)
    - [2018/08/01 \(2\)](#20180801-2)
        - [Verb Restriction Attributes](#verb-restriction-attributes-32)
        - [Verb Responses](#verb-responses-17)
        - [Verbs: `cut` and `cut_with`](#verbs-cut-and-cut_with)
        - [Verb: `dance`](#verb-dance)
        - [Verb: `dig`](#verb-dig)
    - [2018/08/01 \(1\)](#20180801-1)
        - [Verb Restriction Attributes](#verb-restriction-attributes-33)
        - [Verb: `drive`](#verb-drive)
        - [Verbs: `listen0` and `listen`](#verbs-listen0-and-listen)
    - [2018/07/31 \(2\)](#20180731-2)
        - [Verb: `free`](#verb-free)
        - [Verb: `think`](#verb-think)
        - [Verb: `think_about`](#verb-think_about)
    - [2018/07/31 \(1\)](#20180731-1)
        - [Verb Restriction Attributes](#verb-restriction-attributes-34)
        - [Verb Responses](#verb-responses-18)
        - [Verb: `fix`](#verb-fix)
    - [2018/07/29 \(2\)](#20180729-2)
        - [Remove Verb Restriction Attributes](#remove-verb-restriction-attributes)
    - [2018/07/29 \(1\)](#20180729-1)
        - [Accendere/Spegnere Dispositivi e Fonti di Luce](#accenderespegnere-dispositivi-e-fonti-di-luce)
        - [Il Nocciolo del Problema](#il-nocciolo-del-problema)
        - [Abolizione dell'Attributo `naturale`](#abolizione-dellattributo-naturale)
        - [Rilfessioni sull'Attributo `illuminato`](#rilfessioni-sullattributo-illuminato)
        - [Verb Restriction Attributes](#verb-restriction-attributes-35)
        - [Testo dei Verbi](#testo-dei-verbi)
    - [2018/07/28 \(3\)](#20180728-3)
        - [Verb Responses](#verb-responses-19)
    - [2018/07/28 \(2\)](#20180728-2)
        - [Verb Responses](#verb-responses-20)
        - [Verb Restriction Attributes](#verb-restriction-attributes-36)
        - [Verbs: `sit` and `sit_on`](#verbs-sit-and-sit_on)
    - [2018/07/28 \(1\)](#20180728-1)
        - [Verb Restriction Attributes](#verb-restriction-attributes-37)
        - [Verb: `answer`](#verb-answer)
        - [Verbs: `fill` and `fill_with`](#verbs-fill-and-fill_with)
    - [2018/07/27 \(7\)](#20180727-7)
    - [2018/07/27 \(6\)](#20180727-6)
        - [New THING Attribute `vocale` for Adjectives Conjucation](#new-thing-attribute-vocale-for-adjectives-conjucation)
    - [2018/07/27 \(5\)](#20180727-5)
    - [2018/07/27 \(4\)](#20180727-4)
        - [Translated Verb Responses + Attributes](#translated-verb-responses--attributes)
        - [Verb: `find`](#verb-find)
    - [2018/07/27 \(3\)](#20180727-3)
    - [2018/07/27 \(2\)](#20180727-2)
        - [Translated Verb Responses + Attributes](#translated-verb-responses--attributes-1)
        - [Italian Responses For Illegal Obj2 With](#italian-responses-for-illegal-obj2-with)
    - [2018/07/27 \(1\)](#20180727-1)
        - [Italian Responses For Illegal Obj2 With](#italian-responses-for-illegal-obj2-with-1)
    - [2018/07/26 \(10\)](#20180726-10)
        - [Verb Response Attributes Renaming](#verb-response-attributes-renaming)
        - [Renamed Verb Responses](#renamed-verb-responses)
    - [2018/07/26 \(9\)](#20180726-9)
        - [Translate Verb Responses for Closed Obj2 Blocking the Action](#translate-verb-responses-for-closed-obj2-blocking-the-action)
    - [2018/07/26 \(8\)](#20180726-8)
        - [Translate Verb Responses for Closed Obj1 Blocking the Action](#translate-verb-responses-for-closed-obj1-blocking-the-action)
    - [2018/07/26 \(7\)](#20180726-7)
        - [Translate Verb Responses for Already Unlocked Objects](#translate-verb-responses-for-already-unlocked-objects)
    - [2018/07/26 \(6\)](#20180726-6)
        - [Translate Verb Responses for Already Locked Objects](#translate-verb-responses-for-already-locked-objects)
    - [2018/07/26 \(5\)](#20180726-5)
        - [Translate Verb Responses for Already Close Objects](#translate-verb-responses-for-already-close-objects)
    - [2018/07/26 \(4\)](#20180726-4)
        - [Translate Verb Responses for Already Open Objects](#translate-verb-responses-for-already-open-objects)
    - [2018/07/26 \(3\)](#20180726-3)
        - [Translate Verb Responses for Distant Params](#translate-verb-responses-for-distant-params)
    - [2018/07/26 \(2\)](#20180726-2)
        - [Implement Italian Verb Responses](#implement-italian-verb-responses)
    - [2018/07/26 \(1\)](#20180726-1)
        - [Polish and Fix Translated Verbs](#polish-and-fix-translated-verbs)
        - [Verb Parameters Fixes](#verb-parameters-fixes)
    - [2018/07/25 \(8\)](#20180725-8)
        - [Verb Restriction Attributes](#verb-restriction-attributes-38)
        - [Verbs: `yes` and `no`](#verbs-yes-and-no)
    - [2018/07/25 \(7\)](#20180725-7)
    - [2018/07/25 \(6\)](#20180725-6)
        - [Verb Restriction Attributes](#verb-restriction-attributes-39)
        - [Verb: `play`](#verb-play)
        - [Verb: `play_with`](#verb-play_with)
    - [2018/07/25 \(5\)](#20180725-5)
        - [Verb Restriction Attributes](#verb-restriction-attributes-40)
    - [2018/07/25 \(4\)](#20180725-4)
    - [2018/07/25 \(3\)](#20180725-3)
        - [Library Instances](#library-instances)
        - [Library Classes](#library-classes)
    - [2018/07/25 \(2\)](#20180725-2)
        - [Library Classes](#library-classes-1)
    - [2018/07/25 \(1\)](#20180725-1)
        - [Clothing Attributes](#clothing-attributes)
    - [2018/07/24 \(5\)](#20180724-5)
        - [Library Attributes](#library-attributes-1)
        - [Library Classes](#library-classes-2)
        - [Library Instances](#library-instances-1)
    - [2018/07/24 \(4\)](#20180724-4)
    - [2018/07/24 \(3\)](#20180724-3)
        - [Input Response Messages](#input-response-messages)
    - [2018/07/24 \(2\)](#20180724-2)
    - [2018/07/24 \(1\)](#20180724-1)
        - [Who/Where Verbs](#whowhere-verbs)
    - [2018/07/23 \(5\)](#20180723-5)
    - [2018/07/23 \(4\)](#20180723-4)
        - [Verb: `use`](#verb-use)
        - [Verb: `use_with`](#verb-use_with)
    - [2018/07/23 \(2\)](#20180723-2)
        - [Verb: `drop`](#verb-drop)
    - [2018/07/23 \(1\)](#20180723-1)
    - [2018/07/22 \(7\)](#20180722-7)
        - [Tweaked `LISTED_CONTAINER`](#tweaked-listed_container)
        - [Small Fixes](#small-fixes)
    - [2018/07/22 \(6\)](#20180722-6)
    - [2018/07/22 \(5\)](#20180722-5)
    - [2018/07/22 \(4\)](#20180722-4)
        - [Verb: `sell`](#verb-sell)
    - [2018/07/22 \(3\)](#20180722-3)
        - [Translate Verb Parameters](#translate-verb-parameters)
    - [2018/07/22 \(2\)](#20180722-2)
        - [Changed Behaviour of `examine`](#changed-behaviour-of-examine)
    - [2018/07/22 \(1\)](#20180722-1)
        - [Verb: `write`](#verb-write)
    - [2018/07/21 \(5\)](#20180721-5)
        - [Verb: `examine`](#verb-examine)
        - [Verb: `read`](#verb-read)
    - [2018/07/21 \(4\)](#20180721-4)
    - [2018/07/21 \(3\)](#20180721-3)
    - [2018/07/21 \(2\)](#20180721-2)
    - [2018/07/21 \(1\)](#20180721-1)
    - [2018/07/20 \(3\)](#20180720-3)
        - [Library Locations](#library-locations)
    - [2018/07/20 \(2\)](#20180720-2)
        - [Null Objects](#null-objects)
    - [2018/07/20 \(1\)](#20180720-1)
        - [Make `banner` an Instance of `LOCATION`](#make-banner-an-instance-of-location)
    - [2018/07/19 \(5\)](#20180719-5)
    - [2018/07/19 \(4\)](#20180719-4)
        - [Banner Attributes](#banner-attributes)
    - [2018/07/19 \(3\)](#20180719-3)
        - [Add Remaining Preposizioni Articolate Synonyms](#add-remaining-preposizioni-articolate-synonyms)
    - [2018/07/19 \(2\)](#20180719-2)
    - [2018/07/19 \(1\)](#20180719-1)
    - [2018/07/18 \(4\)](#20180718-4)
    - [2018/07/18 \(3\)](#20180718-3)
        - [Verb Responses Attributes](#verb-responses-attributes)
    - [2018/07/18 \(2\)](#20180718-2)
        - [Verb: `drink`](#verb-drink)
    - [2018/07/18 \(1\)](#20180718-1)
    - [2018/07/17 \(5\)](#20180717-5)
    - [2018/07/17 \(4\)](#20180717-4)
        - [Verb: `eat`](#verb-eat)
    - [2018/07/17 \(3\)](#20180717-3)
        - [Meta Verbs](#meta-verbs)
    - [2018/07/17 \(2\)](#20180717-2)
    - [2018/07/17 \(1\)](#20180717-1)
        - [Verb: `climb_through`](#verb-climb_through)
    - [2018/07/03 \(3\)](#20180703-3)
        - [Verb: `go_to`](#verb-go_to)
    - [2018/07/03 \(2\)](#20180703-2)
        - [Verb: `buy`](#verb-buy)
    - [2018/07/03 \(1\)](#20180703-1)
    - [2018/07/02](#20180702)
        - [Verb: `burn`/`burn_with`](#verb-burnburn_with)
        - [`my_game` Verb Messages](#my_game-verb-messages)
    - [2018/06/29](#20180629)
    - [2018/06/24 \(3\)](#20180624-3)
    - [2018/06/24 \(2\)](#20180624-2)
    - [2018/06/24 \(1\)](#20180624-1)
        - [Translate StdLib's `plural`](#translate-stdlibs-plural)
    - [2018/06/23 \(2\)](#20180623-2)
    - [2018/06/23 \(1\)](#20180623-1)
        - [Verb `again`](#verb-again)
    - [2018/06/16 \(3\)](#20180616-3)
        - [Verb: `wait`](#verb-wait)
        - [Verb: `sleep`](#verb-sleep)
    - [2018/06/16 \(2\)](#20180616-2)
    - [2018/06/16 \(1\)](#20180616-1)
        - [Translate `check_obj_suitable_XX` Messages](#translate-check_obj_suitable_xx-messages)
    - [2018/06/11](#20180611)
        - [Library Files Renamed to Italian](#library-files-renamed-to-italian)
    - [2018/06/10](#20180610)
        - [The New `articolo` Attribute](#the-new-articolo-attribute)
        - [Preposizioni Articolate](#preposizioni-articolate)
    - [2018/06/02](#20180602)
    - [2018/05/31:2](#201805312)
    - [2018/05/31:1](#201805311)
        - [Verb: `restore`](#verb-restore)
        - [Verb: `restart`](#verb-restart)
        - [Verb: `quit`](#verb-quit)
    - [2018/05/28](#20180528)
    - [2018/05/27](#20180527)
        - [Verb: `save`](#verb-save)
    - [2018/05/22 \(3\)](#20180522-3)
        - [Verb: `pray`](#verb-pray)
        - [Verb: `break`](#verb-break)
        - [Verb: `break_with`](#verb-break_with)
        - [Verb Restriction Attributes](#verb-restriction-attributes-41)
    - [2018/05/22 \(2\)](#20180522-2)
        - [Verb Restriction Attributes](#verb-restriction-attributes-42)
    - [2018/05/22 \(1\)](#20180522-1)
        - [Verb: `undress`](#verb-undress)
    - [2018/05/19](#20180519)
        - [Verb: `take`](#verb-take)
        - [Verb: `take_from`](#verb-take_from)
        - [Verb: `give`](#verb-give)
    - [2018/05/15](#20180515)
    - [2018/05/12 \(2\)](#20180512-2)
    - [2018/05/12 \(1\)](#20180512-1)
    - [2018/05/01](#20180501)
        - [Directions](#directions)
        - [Movement Messages](#movement-messages)

<!-- /MarkdownTOC -->

-------------------------------------------------------------------------------


# Alan 3.0beta6 build 1862

## 2019/02/01

- [`lib_classi.i`][lib_classi] &#x27f6; v0.12.1
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.12.1

### Vestiario

Questo commit apporta delle migliorie al modo in cui la libreria gestisce il vestiario e ne corregge alcuni problemi.

#### Elenchi indumenti indossati

##### Ridondanze verbo Indossa

Ora quando il verbo `indossa` non può portare a termine l'azione (per via di un indumento che la ostacola), nel messaggio di risposta non appaiono più i ridondanti "(indossato)" che c'erano prima:

> __&gt;__ _indossa i boxer_
> 
> Prendi i boxer. Stai già indossando un paio di blue jeans ~~(indossato)~~ e una bombetta ~~(indossato)~~...

Questa modifica al codice ha reso superfluo l'oggetto `tempworn`, che non era usato altrove ed è quindi stato rimosso:

```alan
THE tempworn IsA OBJECT
  CONTAINER TAKING indumento.
  HEADER "Stai già indossando"
END THE tempworn.
```


##### Concordanza elenchi

Ora, quando si esamina un PNG e viene stampato l'elenco di indumenti da lui indossati, nelle varie occorrenze di "(indossat*)" vi è concordanza con l'indumento cui si fa riferimento:

> __&gt;__ _esamina l'assistente_
> 
> È la tua assistente personale per lo shopping. L'assistente sta portando un
> paio di stivaletti (indossati) e un abito (indossato).

mentre prima veniva stampato sempre e solo "(indossato)".


#### Baco `indossa`

Risolto un baco nel verbo `indossa` per cui indumento che veniva _preso_ ed indossato non veniva settato come `indossato`.

### Messaggi runtime

Si è fatta un po' di pulizia nel modulo `lib_messaggi_libreria.i` e ottimizzato il codice in vari punti.

<!---------------------------------------------------------------------------->


## 2019/01/24

- [`libreria.i`][libreria] &#x27f6; v0.12.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.12.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.12.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.12.0
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.12.0
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.12.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.12.0
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.12.0

### Passa alla v0.12.0

Tutti i moduli della libreria passano alla versione 0.12.0.

### Passa ad Alan 3.0beta6 build 1862

Da qui in avanti il progetto adotta la [developer snaphshot]  [Alan 3.0beta6 build 1862][3.0beta6-1862] per testare la libreria usufruendo dei più recenti bug fix — tra cui un importane bug fix concernente l'uso di pronomi multipli.

-------------------------------------------------------------------------------

# Alan 3.0beta6 build 1855

## 2019/01/17

- [`libreria.i`][libreria] &#x27f6; v0.11.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.11.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.11.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.11.0
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.11.0
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.11.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.11.0
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.11.0

### Passa alla v0.11.0

Tutti i moduli della libreria passano alla versione 0.11.0.

### Passa ad Alan 3.0beta6 build 1852

Da qui in avanti il progetto adotta la [developer snaphshot]  [Alan 3.0beta6 build 1855][3.0beta6-1855] per testare la libreria usufruendo di nuove funzionalità.

### Uso di E POI in comandi di gioco

La nuova build ha aggiunto ([054581b]) la possibilità di utilizzare più AND WORD consecutive nell'input del giocatore, così ora è possibile digitare:

    prendi la pistola E POI spara 

laddove nelle build precedenti il parser (vedendo "E POI" come "AND AND") lo considerava un errore. Ora invece il parser tollera l'uso di AND WORD ridondanti.

-------------------------------------------------------------------------------

# Alan 3.0beta6 build 1852


## 2019/01/16

- [`lib_classi.i`][lib_classi] &#x27f6; v0.10.2
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.10.1

Dai una ripulita al codice del modulo classi.
Traduci risposte di `guarda_attraverso`.

### Sintassi alternative con 'a' in `guarda_*`

Aggiunte sintassi alternative ai seguenti verbi del gruppo `guarda_*`, per consentire l'uso (facoltativo) della 'a' nelle preposizioni improprie:

|       Verbo       |     Sintassi base     |     Sintassi alternativa     |
|-------------------|-----------------------|------------------------------|
| `guarda_dietro`   | guarda dietro (bulk)  | guarda dietro a (bulk)       |
| `guarda_sotto`    | guarda sotto (bulk)   | guarda sotto a (bulk)        |


### Sintassi alternative per preposizione 'dai'

Aggiunte sintassi alternative ai seguenti verbi, per supportare correttamente la preposizione 'dai':

|       Verbo       |     Sintassi base      |   Sintassi alternativa  |
|-------------------|------------------------|-------------------------|
| `esci_da`         | esci da (ogg)          | esci dai (ogg)          |
| `guarda_fuori_da` | guarda fuori da (ogg)  | guarda fuori dai (ogg)  |
| `scendi_da`       | scendi da (superficie) | scendi dai (superficie) |

> __NOTA 1__ — Nel verbo `prendi_da` erano già state definite le sintassi con `dai`.

<!-- sep -->

> __NOTA 2__ — La necessità di definire una sintassi a sé per supportare "`<verbo> dai`" è dovuta al fatto che non è stato possibile definire la preposizione `dai` come sinonimo di `da` in [`lib_supplemento.i`](https://github.com/tajmone/Alan3-Italian/blob/6b1dd90/alanlib_ita/lib_supplemento.i#L277 "Vedi sorgente del modulo") a causa dei conflitti con l'imperativo `dai` del verbo avere:
> 
> ```alan
> --~=============================================================================
> --| === "`DA`" + Articolo
> --~=============================================================================
> SYNONYMS
>   dal, dallo, dalla, 'dall''', dall, dagli, dalle  = da.
> 
> --| [WARNING]
> --| ======================================================
> --| La preposizione `dai` è stata omessa dalla lista di sinonimi poiché creava
> --| conflitto con la forma imperativa del verbo "`dare`", causando l'errore di
> --| compilazione:
> --| ......................................................
> --| 333 E : The word 'dai' is defined to be both a synonym and another word class.
> --| ......................................................
> --| Sto ancora cercando una soluzione ottimale al problema.
> --| ======================================================
> --<
> ```
> 
> Sto cercando una soluzione definitiva al problema, ma attualmente l'unico ripiego consiste nel definire sintassi aggiuntive ogni volta che è coinvolta la preposizione 'da' in un verbo.
> 
> Purtroppo, questo ripiego grava sugli utenti finali della libreria, i quali si vedono costretti a implementare tali sintassi alternative anche nei loro verbi (con il rischio che se ne scordino). L'ideale sarebbe trovare una soluzione interna alla libreria che non abbia ripercussioni sulla creazione di nuovi verbi.

### Porte e Finestre

Traduci in italiano le risposte per i verbi delle classi `porta` e `finestra`:

|        Verbo        |       Classi       |
|---------------------|--------------------|
| `bussa`             | `porta`            |
| `guarda_attraverso` | `finestra`         |
| `guarda_dietro`     | `porta`/`finestra` |
| `guarda_fuori_da`   | `finestra`         |
| `guarda_sotto`      | `porta`            |



La classi `porta` e `finestra` non definiscono alcun `NAME` dato che le loro istanze nell'avventura potrebbero avere diversi nomi, numeri e genere — es. una `porta` può essere _porta_, _portone_, _cancelli_, _botola_; una `finestra` _finestra_, _oblò_, _lucernaio_, _grata_, ecc.). La libreria si assicura di utilizzare nella messaggistica che le riguarda il nome definito dall'autore, e che  aggettivi e preposizioni concordino con esso.


<!---------------------------------------------------------------------------->

## 2019/01/15

- [`lib_classi.i`][lib_classi] &#x27f6; v0.10.1


### Aggiusta verbi modulo classi

Gli identificativi di alcuni verbi in `lib_classi.i` non erano stati tradotti:

|    Verbo EN    |       Verbo IT      |         Classi         |
|----------------|---------------------|------------------------|
| `knock`        | `bussa`             | `porta`                |
| `look_behind`  | `guarda_dietro`     | `porta`/`finestra`     |
| `look_under`   | `guarda_sotto`      | `porta`                |
| `look_out_of`  | `guarda_fuori_da`   | `finestra`             |
| `look_through` | `guarda_attraverso` | `finestra`             |
| `search`       | `ispeziona`         | `contenitore_elencato` |

Ora non risultano più esserci identificativi non tradotti.

<!---------------------------------------------------------------------------->


## 2019/01/14

- [`libreria.i`][libreria] &#x27f6; v0.10.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.10.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.10.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.10.0
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.10.0
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.10.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.10.0
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.10.0

### Passa alla v0.10.0

Tutti i moduli della libreria passano alla versione 0.10.0.

### Passa ad Alan 3.0beta6 build 1852

Da qui in avanti il progetto adotta la [Alan 3.0beta6 build 1852][3.0beta6-1852] (una [developer snaphshot]) per testare la libreria, anziché continuare ad usare la beta release ufficiale e attendere la beta7.

Questo è un punto di svolta importante poiché la build 1852 rende disponibili in anteprima due importanti novità per la libreria italiana:

- __BugFix "é"__ — Il baco che impediva il parsing delle 'e' con accento grave nei comandi del giocatore è ora risolto (commit [ad2c7de]).
- __Supporto Apostrofi__ — Questa versione introduce in anteprima la nuova funzionalità (richiesta appositamente per l'italiano) per il supporto di articoli e preposizioni articolate con apostrofi (commit [1bfc8f7]).

Essendo entrambe funzionalità chiave per lo sviluppo della libreria italiana, vale la pena passare ad una pre-release di Alan in attesa della prossima Beta ufficiale (Alan 3.0beta7) per poterne usufruire subito e iniziare a riassestare la libreria di modo che sia tutto pronto per la prossima release di Alan.

### Aggiusta i verbi di domande con "è"

Adesso i verbi di domande che contengono una E con accento grave (`è`) funzionano, quindi sono state eliminate le sintassi alternative che ripiegavano sulla E acuta (`é`).

### Modulo supplemento

Modifica codice e commenti di modo che riflettano l'introduzione della nuova funzionalità per il supporto degli apostrofi.

- Traduci, aggiorna e Doxterizza i commenti di documentazione per:
    + _Player Words_ .
    + Preposizioni articolate.

### Nuovo attributo banner di versione Alan

Ora la libreria definisce su `blocco_definizioni` l'attributo stringa `AlanV` (ossia, `mia_AT:AlanV`) per gestire la versione di Alan mostrata nel banner. Il valore predefinito è quello della ultima release di Alan al tempo dell'ultimo aggiornamento della Libreria:

```alan
EVERY blocco_definizioni IsA LOCATION

-->intestazione(.20)
--~=============================================================================
--~-----------------------------------------------------------------------------
--| === Attributi dell'intestazione
--~-----------------------------------------------------------------------------
--~=============================================================================
--| L'istanza `mia_AT` (del `blocco_definizioni`) espone all'autore degli
--| attributi per fornire i dettagli del banner che potrà (facoltativamente)
--| essere mostrato all'inizio della partita tramite il template dell'istanza
--| `intestazione`:

  HAS        titolo  "Nuova Avventura".
  HAS   sottotitolo  "".
  HAS        autore  "Il Mio Nome".
  HAS          anno   2018.
  HAS      versione  "1".

--| La libreria definisce anche l'attributo `AlanV`, che mostrerà nel banner la
--| versione di Alan utilizzata:

  HAS         AlanV  "v3.0beta6".

--| Il valore predefinito è quello dell'ultima release di Alan all'epoca della
--| libreria. L'autore è libero di sovrascriverlo nel caso stesse usando una
--| versione di Alan più recente, diversa, o una developer snapshot, senza dover
--| modificare i sorgenti della libreria.
--<
```

Questo semplifica le cose quando l'autore si trova a lavorare con una versione di Alan più recente (o diversa, per esempio una dev snapshot) poiché può sovrascrivere la versione di Alan direttamente nell'intestazione della sua avventura. Esempio:

```alan
THE mia_AT IsA blocco_definizioni
  HAS       titolo  "La notte dei babbalusci viventi".
  HAS  sottotitolo  "Una AT horror in cui spietate lumache aliene conquistano la terra.".
  HAS       autore  "Tristano Ajmone".
  HAS         anno   2019.
  HAS     versione  "1".
  HAS        AlanV  "v3.0beta6 build 1852".
END THE.
```

### Rimuovi stropping superfluo

In svariate sintassi alcuni identificati erano tra virgolette anche se non richieste (es. `'dai'`, `'a'`, ecc.); virgolette rimosse. 

-------------------------------------------------------------------------------

# Alan 3.0beta6

## 2019/01/06

- [`lib_classi.i`][lib_classi] &#x27f6; v0.9.9

### Vestiario

Inizia a tradurre e doxterizzare la documentazione riguardante l'abbigliamento.

<!---------------------------------------------------------------------------->

## 2018/12/08 (3)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.9.8
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.13


### Verbi

Ripulisci un po' il codice.


### Verbi Classi

Ripulisci il codice e traduci varie stringhe di risposte.

#### Correggi verbi `look_in` non tradotti

Nel modulo classi non erano stati tradotti gli identificativi del verbo `look_in` su alcune classi:

- `liquido`
- `contenitore_elencato`
- `supporto`

### Documentazione classi

Procedi con la documentazione doxterizzata del modulo classi:

- Inizializzazione dei contenitori elencati


<!---------------------------------------------------------------------------->

## 2018/12/08 (2)

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.15
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.12

### Verbi

#### Migliora risposte blocca

Aggiunto controllo `azione_insensata` se il secondo parametro è l'eroe nei verbi:

- `blocca_con`
- `sblocca_con`

### Messaggi libreria

#### Traduci messaggi dei verbi

Tradotti i seguenti attributi per i messaggi di risposta dei verbi:

|        Attributo EN       |        Attributo IT        |                   Testo                    |
|---------------------------|----------------------------|--------------------------------------------|
| `check_door_matching_key` | `chiave2_non_blocca_ogg1`  | `"Non è possibile bloccare $+1 con $+2."`  |
| `check_door_matching_key` | `chiave2_non_sblocca_ogg1` | `"Non è possibile sbloccare $+1 con $+2."` |

Eliminato attributo originale.

<!---------------------------------------------------------------------------->

## 2018/12/08 (1)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.9.7
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.14
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.11

### Verbi apri, chiudi, blocca e sblocca

Migliorate le risposte dei verbi per l'apertura, chiusura, blocco e sblocco di oggetti apribili/bloccabili:

- `apri`
- `blocca_con`
- `blocca`
- `chiudi`
- `sblocca_con`
- `sblocca`

Se l'azione richiede un chiudi implicito, la risposta sarà:

- "`Prima chiudi $+1 e poi [art] blocchi.`"

altrimenti sarà:

- "`Fatto, ora $+1 [è/sono] [apert/chius/bloccat/sbloccat]*.`"

### Messaggi libreria

#### Nuovi messaggi dei verbi

Creati nuovi attributi per i messaggi di risposta dei verbi (nessuna controparte nella libreria originale inglese):

|          Attributo          |                      Testo                       |
|-----------------------------|--------------------------------------------------|
| `descrizione_standard_ogg1` | `"Esamini $+1, ma non noti niente di speciale."` |

L'attributo `descrizione_standard_ogg1` viene ora utilizzato dal verbo `esamina` e la sua variante su `liquido`.

### Modulo classi

#### Liquidi

##### Onora `xDesc`

Se l'attributo `xDesc` di un liquido è una stringa non vuota, il verbo `esamina` la mostrerà invece della descrizione standard.

#### Porte e finestre

Traduci le risposte per il verbo `esamina`.


<!---------------------------------------------------------------------------->

## 2018/12/07

- [`lib_classi.i`][lib_classi] &#x27f6; v0.9.6
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.9.2
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.13
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.10


### Messaggi libreria

#### Elimina messaggi dei verbi

Elimina attributi inglesi per i messaggi di risposta dei verbi:

|           Attributo            |                       Testo                        |
|--------------------------------|----------------------------------------------------|
| `check_liquid_vessel_not_cont` | `"You can't carry $+1 around in your bare hands."` |

Al posto degli attributi originali sono stati impiegati attributi italiani preesistenti, oppure la risposta è stata gestita direttamente nel codice del verbo.

### Verbi

#### Condiscendenza PNG in `chiedi` dei liquidi

Corretto il verbo `chiedi` sulla classe `liquido` di modo che la condiscendenza del PNG sia ripristinata correttamente al termine dell'azione.

### Pulizia sorgenti

Ripulisci il codice di `lib_classi.i` e annota stringhe e commenti da tradurre.

Sostituisci occorrenze di `attributo OF istanza` con la forma breve `instanza:attributo` nei moduli `lib_classi.i`, `lib_luoghi.i` e `lib_verbi.i`.

<!---------------------------------------------------------------------------->

## 2018/12/04 (3)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.9.5
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.12

### Messaggi libreria

#### Nuovi messaggi dei verbi

Creati nuovi attributi per i messaggi di risposta dei verbi (nessuna controparte nella libreria originale inglese):

|     Attributo      |     Testo     |
|--------------------|---------------|
| `ogg1_già_sg`/`pl` | `"$+1 è già"` |

#### Elimina messaggi dei verbi

Elimina attributi inglesi per i messaggi di risposta dei verbi:

|               Attributo                |                        Testo                        |   classe d'uso  |
|----------------------------------------|-----------------------------------------------------|-----------------|
| `check_device_on_sg`/`pl`              | `"$+1 [is/are] already off."`                       | `dispostivo`    |
| `check_device_not_on_sg`/`pl`          | `"$+1 [is/are] already on."`                        | `dispostivo`    |
| `check_lightsource_not_lit_sg`/`pl`    | `"$+1 is already lit."`                             | `fonte_di_luce` |
| `check_lightsource_lit_sg`/`pl`        | `"But $+1 is not lit."`                             | `fonte_di_luce` |
| `check_lightsource_switchable_sg`/`pl` | `"That's not something you can switch on and off."` |                 |

### Risposte dei verbi

Tradotte varie risposte all'interno dei verbi:

- `lancia`

#### Risposte per dispositivi e fonti di luce

Tradotte le ultime risposte dei verbi per dispositivi e fonti di luce.



<!---------------------------------------------------------------------------->

## 2018/12/04 (2)

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.11


### Messaggi libreria

Continua a riorganizzare i messaggi della libreria raggruppandoli per affinità.


<!---------------------------------------------------------------------------->

## 2018/12/04 (1)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.9.4
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.10
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.8

### Messaggi libreria

Continua a riorganizzare i messaggi della libreria raggruppandoli per affinità.

#### Traduci messaggi dei verbi

Tradotti i seguenti attributi per i messaggi di risposta dei verbi:

|           Attributo EN          |           Attributo IT          |              Testo               |
|---------------------------------|---------------------------------|----------------------------------|
| `check_obj_not_in_cont_sg`/`pl` | `ogg1_sg_già_dentro_cont2`/`pl` | `"$+1 [è/sono] già dentro $+2."` |

#### Azioni eterodirette

Nei verbi che richiedono un parametro `object`, aggiungi un ulteriore controllo per verificare se il parametro è l'eroe e, in caso affermativo, mostra il messaggio `azione_insensata` anziché il messaggio originale della libreria (`illegal_parameter_obj`). Esempio:

```alan
SYNTAX metti_in = metti (ogg) 'in' (cont)
  WHERE ogg IsA OBJECT
    ELSE
      IF ogg = hero
        THEN SAY mia_AT:azione_insensata.
        ELSE SAY mia_AT:illegal_parameter_obj.
      END IF.
```

Questo produce una risposta più adatta per comandi del tipo "metti me nella scatola".

Verbi modificati:

- `dai_a`
- `lancia_a`
- `lancia_contro` (solo parametro 1, dato che il controllo c'è già nel corpo del verbo)
- `lancia_in`
- `lancia`
- `metti_contro`
- `metti_dietro`
- `metti_in`
- `metti_sotto`
- `metti_su`
- `metti_vicino`
- `metti`
- `usa_con` (parametro 1)

Alcuni verbi in cui questo controllo è stato tralasciato — o perché tale comando non sarebbe del tutto insensato da parte del giocatore, o perché la risposta standard va più che bene, oppure perché servirebbe una risposta dedicata al contesto:

- `lega_a`
- `usa_con` (parametro 2)
- `usa`

#### Traduci messaggi delle classi

Tradotti i messaggi per gli attori che seguono l'eroe.

### Modulo classi

- Traduci pronomi di `maschio` ("lui") e `femmina` ("lei").

<!---------------------------------------------------------------------------->

## 2018/12/01

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.9

### Documentazione messaggi libreria

Sposta la regione Doxter che documenta l'uso di `$v` dal modulo `lib_messaggi_libreria.i` al file `doc_src/appunti-lavoro.asciidoc`.

Inizia a doxterizzare la documentazione dei messaggi, rendendo consultabili le categorie nelle quali sono attualmente organizzati.

<!---------------------------------------------------------------------------->

## 2018/11/30 (2)

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.8
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.8

### Documentazione

Nei verbi `entra` ed `esci` documenta l'uso di luoghi annidati per simulare l'eroe che entra ed esce da contenitori.

### Messaggi dei verbi

Riordina i messaggi da tradurre inserendoli nei gruppi di appartenenza degli attributi già tradotti.

#### Elimina messaggi dei verbi

Elimina attributi inglesi per i messaggi di risposta dei verbi:

|               Attributo               |                     Testo                     |
|---------------------------------------|-----------------------------------------------|
| `check_obj_suitable_look_out_sg`/`pl` | `"That's not something you can look out of."` |
| `illegal_parameter_look_out_sg`/`pl`  | `"That's not something you can look out of."` |

Al posto degli attributi originali sono stati impiegati attributi italiani preesistenti, oppure la risposta è stata gestita direttamente nel codice del verbo.

#### Rinomina messaggi dei verbi

Rinominati i seguenti attributi per i messaggi di risposta dei verbi:

|   Vecchio ID  |       Nuovo ID       |
|---------------|----------------------|
| `indossi_già` | `ogg1_già_indossato` |

#### Correggi messaggi dei verbi

Modificati i seguenti attributi per i messaggi di risposta dei verbi per adattarli a coprire anche la forma plurale:

|        Vecchio ID        |            Nuovi ID           |
|--------------------------|-------------------------------|
| `png1_non_apprezzerebbe` | `png1_non_gradirebbe_sg`/`pl` |


#### Traduci messaggi dei verbi

Tradotti i seguenti attributi per i messaggi di risposta dei verbi:

|          Attributo EN          |             Attributo IT             |                 Testo                  |
|--------------------------------|--------------------------------------|----------------------------------------|
| `check_obj_not_in_act_sg`/`pl` | `ogg1_già_posseduto_da_png2_sg`/`pl` | `"$+2 [possiede/possiedono] già $+1."` |

Gli attributi originali inglesi sono stati eliminati.



<!---------------------------------------------------------------------------->

## 2018/11/30 (1)

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.7
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.7


### Messaggi dei verbi

#### Traduci messaggi dei verbi

Tradotti i seguenti attributi per i messaggi di risposta dei verbi:

|       Attributo EN      |        Attributo IT        |                 Testo                  |
|-------------------------|----------------------------|----------------------------------------|
| `ogg_stringa_richiesto` | `illegal_parameter_string` | `"Usa le virgolette ("""") per [...]"` |

Gli attributi originali inglesi sono stati eliminati.

#### Elimina messaggi dei verbi

Elimina attributi inglesi per i messaggi di risposta dei verbi:

|       Attributo       |               Testo               |
|-----------------------|-----------------------------------|
| `check_obj_writeable` | `"Nothing can be written there."` |

Al posto degli attributi originali sono stati impiegati attributi italiani preesistenti, oppure la risposta è stata gestita direttamente nel codice del verbo.

### Rinomina parametri del verbo `scrivi`

Rinomina parametro `txt` in `testo` nei verbi `scrivi` e `scrivi_errore3`.


<!---------------------------------------------------------------------------->

## 2018/11/25 (2)

- [`libreria.i`][libreria] &#x27f6; v0.9.1
- [`lib_classi.i`][lib_classi] &#x27f6; v0.9.3
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.9.1
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.9.1
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.9.2
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.6
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.6
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.9.1

### Aggiornamento Doxter

L'aggiornamento a Doxter v0.2.4-alpha ha richiesto delle piccole modifiche in elementi comuni a tutti i moduli della libreria (lo spazio dopo un marcatore Doxter è ora obbligatorio).

<!---------------------------------------------------------------------------->

## 2018/11/25 (1)

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.5
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.5


### Messaggi dei verbi

#### Traduci messaggi dei verbi

Tradotti i seguenti attributi per i messaggi di risposta dei verbi:

|           Attributo EN           |       Attributo IT      |                       Testo                        |
|----------------------------------|-------------------------|----------------------------------------------------|
| `check_obj_not_scenery_sg`/`pl`  | `ogg1_scenario_sg`/`pl` | `"$+1 non [è/sono] importante ai fini del gioco."` |
| `check_obj2_not_scenery_sg`/`pl` | `ogg2_scenario_pl`/`pl` | `"$+2 non [è/sono] importante ai fini del gioco."` |

Gli attributi originali inglesi sono stati eliminati.

#### Nuovi messaggi dei verbi

Creati nuovi attributi per i messaggi di risposta dei verbi (nessuna controparte nella libreria originale inglese):

|           Attributo           |                  Testo                   |
|-------------------------------|------------------------------------------|
| `impossibile_maneggiare_liq1` | `"Non puoi maneggiare $+1 a mani nude."` |


#### Sostituisci messaggi inglesi dei verbi

Sostituisci tutte le occorrenze degli attributi inglesi per i messaggi di risposta dei verbi con attributi italiani:


|       Attributo EN      |    Attributo IT    |
|-------------------------|--------------------|
| `illegal_parameter_act` | `azione_insensata` |

Gli attributi originali inglesi sono stati eliminati.



<!---------------------------------------------------------------------------->

## 2018/11/24

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.4
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.4

### Messaggi dei verbi

Tradotte varie risposte nel corpo dei verbi.

#### Correggi baco in `chiedi`

Corretto baco nel verbo `chiedi`, dove un CHECK impiegava i messaggi per il parametro sbagliato: `mia_AT:ogg1_distante_sg`/`pl` anziché  `mia_AT:ogg2_distante_sg`/`pl`.

#### Sostituisci messaggi inglesi dei verbi

Sostituisci tutte le occorrenze degli attributi inglesi per i messaggi di risposta dei verbi con attributi italiani:

|            Attributo EN           |         Attributo IT        |
|-----------------------------------|-----------------------------|
| `check_obj_not_hero1`             | `azione_insensata`          |
| `check_obj_suitable_with_sg`/`pl` | `ogg1_inadatto_CON_sg`/`pl` |
| `illegal_parameter_with_sg`/`pl`  | `ogg1_inadatto_CON_sg`/`pl` |
| `illegal_parameter_with_sg`/`pl`  | `ogg2_inadatto_CON_sg`/`pl` |

Gli attributi originali inglesi sono stati eliminati.


#### Traduci messaggi dei verbi

Tradotti i seguenti attributi per i messaggi di risposta dei verbi:

|      Attributo EN     |            Attributo IT            |                         Testo                         |
|-----------------------|------------------------------------|-------------------------------------------------------|
| `check_act_near_hero` | `impossibile_seguire_png1_sg`/`pl` | `"Non hai idea di dove si [trovi/trovino] $+1 [...]"` |
| `check_obj_not_hero6` | `azione_irrelevante`               | `"Hai cose più importanti a cui pensare."`            |


##### Messaggio in quattro attributi

Nel verbo `chiedi`, il seguente attributo inglese:

|        Attributo EN       |          Testo           |
|---------------------------|--------------------------|
| `check_obj_reachable_ask` | `"$+1 can't reach $+2."` |

ha richiesto quattro attributi distinti in italiano, poiché entrambi i parametri cui fa riferimento potrebbero essere singolari o plurali:

|             Attributo IT            |                              Testo                              |
|-------------------------------------|-----------------------------------------------------------------|
| `ogg2_sg_non_raggiungibile_png1_sg` | `"$+1 non può prendere $+2, è fuori dalla sua portata."`        |
| `ogg2_sg_non_raggiungibile_png1_pl` | `"$+1 non possono prendere $+2, è fuori dalla sua portata."`    |
| `ogg2_pl_non_raggiungibile_png1_sg` | `"$+1 non può prendere $+2, sono fuori dalla sua portata."`     |
| `ogg2_pl_non_raggiungibile_png1_pl` | `"$+1 non possono prendere $+2, sono fuori dalla sua portata."` |

Nel codice del verbo si sono dovuti inserire altrettanti controlli:

```alan
THEN
  IF ogg IS NOT plurale
    THEN
      IF png IS NOT plurale
        THEN SAY mia_AT:ogg1_sg_non_raggiungibile_png2_sg.
        ELSE SAY mia_AT:ogg1_sg_non_raggiungibile_png2_pl.
      END IF.
    ELSE
      IF png IS NOT plurale
        THEN SAY mia_AT:ogg1_pl_non_raggiungibile_png2_sg.
        ELSE SAY mia_AT:ogg1_pl_non_raggiungibile_png2_pl.
      END IF.
  END IF.
```

L'attributo originale inglese è stato elimato (non era utilizzato in altri verbi).


### Nuovi messaggi dei verbi

Creati nuovi attributi per i messaggi di risposta dei verbi (nessuna controparte nella libreria originale inglese):

|         Attributo         |                     Testo                      |
|---------------------------|------------------------------------------------|
| `per_consultare_qlco_USA` | `"Per consultare qualcosa usa CONSULTA [...]"` |



<!---------------------------------------------------------------------------->

## 2018/11/23 (2)

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.3
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.3

Annota il codice sorgente.

<!-- Aggiorna documentazione della messaggistica di libreria. -->

### Rinomina messaggi dei verbi

Rinominati gli attributi per i messaggi di risposta dei verbi secondo nuovi criteri:

- Usa `png1` e `png2` per messaggi che fanno riferimenti a parametri che sono esclusivamente attori.


|          Vecchio ID          |         Nuovo ID         |
|------------------------------|--------------------------|
| `ogg1_png_non_apprezzerebbe` | `png1_non_apprezzerebbe` |


### Sostituisci messaggi inglesi dei verbi

Sostituisci tutte le occorrenze degli attributi inglesi per i messaggi di risposta dei verbi con attributi italiani:

|      Attributo EN      |        Attributo IT       |
|------------------------|---------------------------|
| `check_obj_inanimate2` |  `png1_non_apprezzerebbe` |

Gli attributi originali inglesi sono stati eliminati.

### Traduci messaggi dei verbi

Tradotti i seguenti attributi per i messaggi di risposta dei verbi:

|           Attributo EN           |          Attributo IT          |
|----------------------------------|--------------------------------|
| `illegal_parameter_talk_sg`/`pl` | `ogg1_non_può_capirti_sg`/`pl` |
| `illegal_parameter_talk_sg`/`pl` | `ogg2_non_può_capirti_sg`/`pl` |
| `check_act_can_talk_sg`/`pl`     | `ogg1_non_può_capirti_sg`/`pl` |
| `check_act_can_talk_sg`/`pl`     | `ogg2_non_può_capirti_sg`/`pl` |

Dove in italiano le risposte sono:

|          Attributo IT          |                   Testo                   |
|--------------------------------|-------------------------------------------|
| `ogg1_non_può_capirti_sg`/`pl` | `"$+1 non [è/sono] in grado di capirti."` |
| `ogg2_non_può_capirti_sg`/`pl` | `"$+2 non [è/sono] in grado di capirti."` |

<!---------------------------------------------------------------------------->

## 2018/11/23 (1)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.9.2

### Correggi Baco LIQUIDI

Risolto il baco per cui dopo aver tentato di riempire un contenitore con un liquido (verbo `riempi_con`, azione bloccata di default) il `recipiente` del liquido veniva sempre e comunque cambiato nel contenitore menzionato nel verbo, a prescindere dall'esito dell'azione.

- Modifica l'evento `check_vessel` di modo che, a ogni turno, il `recipiente` di ogni `liquido` venga settato al `contenitore_elenecato` in cui esso è direttamente contenuto.
- Elimina il verbo `riempi_con` implementato sulla classe `liquido`.

Per maggiori dettagli, vedi [AlanStdLib/#39] e la [soluzione proposta in #47] da @AnssiR66.

[AlanStdLib/#39]: https://github.com/AnssiR66/AlanStdLib/issues/39
[soluzione proposta in #47]: https://github.com/AnssiR66/AlanStdLib/pull/47#issuecomment-441152924


<!---------------------------------------------------------------------------->

## 2018/11/22 (5)

- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.2
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.2

### Messaggi dei verbi

#### Elimina messaggi dei verbi

Elimina attributi inglesi per i messaggi di risposta dei verbi:

|             Attributo              |                    Testo                    |
|------------------------------------|---------------------------------------------|
| `check_obj_not_on_surface_sg`/`pl` | `"$+1 [is/are] already on $+2."`            |
| `check_obj_suitable_on_sg`/`pl`    | `"That's not something you can $v on."`     |
| `illegal_parameter2_there`         | `"It's not possible to $v anything there."` |

Nel verbo in cui venivano utilizzati `check_obj_not_on_surface_sg`/`pl` (solo in `metti_su`) è stato più semplice implementare le risposte direttamente nel verbo.

Invece `illegal_parameter2_there`, a seconda del verbo, è stato rimpiazzato da attributi diversi (con preposizioni articolate o improprie).

Gli altri attributi erano rimasti nel modulo messaggi ma non erano più utilizzati nei verbi.

#### Nuovi messaggi dei verbi

Creati nuovi attributi per i messaggi di risposta dei verbi (usati per rimpiazzare svariati attributi della libreria originale inglese le cui traduzioni in si sovrappongono a quelle italiane):

|           Attributo            |                      Testo                       |
|--------------------------------|--------------------------------------------------|
| `ogg2_inadatto_SU_sg`/`pl`     | `"$+2 non [è/sono] qualcosa su cui poter"`       |
| `ogg2_inadatto_CONTRO_sg`/`pl` | `"$+2 non [è/sono] qualcosa contro cui poter"`   |
| `ogg2_inadatto_DIETRO_sg`/`pl` | `"$+2 non [è/sono] qualcosa dietro cui poter"`   |
| `ogg2_inadatto_SOTTO_sg`/`pl`  | `"$+2 non [è/sono] qualcosa sottocui poter"`     |
| `ogg2_inadatto_VICINO_sg`/`pl` | `"$+2 non [è/sono] qualcosa vicino a cui poter"` |

<!---------------------------------------------------------------------------->

## 2018/11/22 (4)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.9.1

### Correggi Baco in LIQUIDO

Il verbo `metti_su` implementato sulla classe `liquido` non spostava il contenitore del liquido sulla superficie indicata dal parametro, si limitava a dire di averlo fatto.

<!---------------------------------------------------------------------------->

## 2018/11/22 (3)

- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.9.1
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.1
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.1

### Documentazione

Riorganizza e metti un po' in ordine la documentazione Doxter.

### Verbi

Sostituisi attributi di risposte inglesi con attributi italiani già tradotti ma non ancora sostituiti.

Annota gli attributi messagi non ancora tradotti.

### Messaggi dei verbi

Tradotti i seguenti attributi per i messaggi di risposta dei verbi:

|        Attributo EN       |     Attributo IT     |         Testo         |
|---------------------------|----------------------|-----------------------|
| `check_obj_not_in_hero2`  | `ogg1_già_posseduto` | `"Possiedi già $+1."` |
| `check_obj2_not_in_hero3` | `ogg2_già_posseduto` | `"Possiedi già $+2."` |

Gli attributi originali inglesi sono stati eliminati.


<!---------------------------------------------------------------------------->

## 2018/11/22 (2)

- [`libreria.i`][libreria] &#x27f6; v0.9.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.9.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.9.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.9.0
- [`lib_messaggi_runtime.i`][lib_messaggi_runtime] &#x27f6; v0.9.0 (_rinominato_)
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria] &#x27f6; v0.9.0 (_nuovo_)
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.9.0
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.9.0

### Suddivisione modulo messaggi

Per ragioni pratiche, il modulo `lib_messaggi.i` è stato diviso in due moduli distinti:

- [`lib_messaggi_runtime.i`][lib_messaggi_runtime]
- [`lib_messaggi_libreria.i`][lib_messaggi_libreria]

### Passa alla v0.9.0

Tutti i moduli della libreria passano alla versione 0.9.0.


-------------------------------------------------------------------------------

## 2018/11/22 (1)

- [`lib_messaggi.i`][lib_messaggi_libreria] &#x27f6; v0.8.3
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.8.5

### Messaggi dei verbi

#### Rinomina attributi

Rinominati i seguenti attributi per i messaggi di risposta dei verbi:

|        Vecchio ID        |     Nuovo ID    |               Testo               |
|--------------------------|-----------------|-----------------------------------|
| `non_servirebbe_a_nulla` | `azione_futile` | `"Farlo non servirebbe a nulla."` |

#### Azioni insensate

Tutte le occorrenze dei seguenti attributi sono stati rimpiazzate con `azione_insensata` ("Questo non ha alcun senso."):

|        Attributo EN       |            Testo             |
|---------------------------|------------------------------|
| `check_cont_not_in_obj`   | `"That doesn't make sense."` |

Gli attributi originali inglesi sono stati eliminati.

##### Usare un oggetto su se stesso

Anche le occorrenze dei seguenti attributi sono stati rimpiazzate con `azione_insensata`:

|        Attributo EN       |                         Testo                          |
|---------------------------|--------------------------------------------------------|
| `check_obj_not_obj2_at`   | `"It doesn't make sense to $v something at itself."`   |
| `check_obj_not_obj2_from` | `"It doesn't make sense to $v something from itself."` |
| `check_obj_not_obj2_in`   | `"It doesn't make sense to $v something into itself."` |
| `check_obj_not_obj2_on`   | `"It doesn't make sense to $v something onto itself."` |
| `check_obj_not_obj2_put`  | `"That doesn't make sense."`                           |
| `check_obj_not_obj2_to`   | `"It doesn't make sense to $v something to itself."`   |
| `check_obj_not_obj2_with` | `"It doesn't make sense to $v something with itself."` |

Gli attributi originali inglesi sono stati eliminati.

La libreria originale inglese utilizzava questi messaggi nei verbi con parametri multipli, quando il giocatore tenta di usare un oggetto su se stesso.

In italiano non è possibile utilizzare dei modelli di risposta altrettanto flessibili, soprattutto per l'impossibilità a utilizzare `$v` nelle risposte (a noi serve l'infinito del verbo). Per evitare macchinose complicazioni, tutti questi messaggi sono stati rimpiazzati con l'attributo `azione_insensata`, già presente nella libreria.

Il contesto dell'errore è sufficientemente chiaro da non richiedere ulteriori spiegazioni, perciò il messaggio "Questo non ha alcun senso." dovrebbe bastare. Quindi, per ora utilizzerò questa soluzione, se poi mi viene in mente una soluzione migliore la implementerò.

> __NOTA__ — In teoria, potrebbero presentarsi casi in cui l'errore è dovuto all'uso di sinonimi implementati come escamotage per creare l'illusione di due oggetti diversi nel gioco, ma in simili casi un messaggio di risposta che utilizzi `$+1` e `$+2` creerebbe solo più confusione dato che Alan mostrerebbe per entrambi il nome principale dell'oggetto e non il sinonimo digitato dal giocatore. 

#### Azioni Futili

Tutte le occorrenze dei seguenti attributi sono stati rimpiazzate con `azione_futile` ("Farlo non servirebbe a nulla."):

|        Attributo EN       |            Testo             |
|---------------------------|------------------------------|
| `check_obj2_not_hero2`    | `"That would be futile."`    |
| `check_obj2_not_in_hero2` | `"That would be futile."`    |

Gli attributi originali inglesi sono stati eliminati.


<!---------------------------------------------------------------------------->

## 2018/11/20

- [`lib_classi.i`][lib_classi] &#x27f6; v0.8.1
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.8.1
- [`lib_messaggi.i`][lib_messaggi_libreria] &#x27f6; v0.8.2
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.8.4
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.8.1
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.8.1


Correggi maiuscole nei titoli.

### Documentazione messaggi

Aggiungi note riguardo l'uso del simbolo speciale `$v` nei messaggi di risposta dei verbi, e i relativi problemi riguardo la formazione del verbo infinito.

Inizia a documentare le abbreviazioni e convenzioni adottate negli identificativi degli attributi stringa dei messaggi.

### Rinomina messaggi dei verbi

Rinominati in `ogg?_inadatto_*` tutti gli attributi per i messaggi dei verbi che avevano il nome `ogg?_illegale_*`.

|          Vecchio ID         |           Nuovo ID          |
|-----------------------------|-----------------------------|
| `ogg1_illegale_DA_sg`/`pl`  | `ogg1_inadatto_DA_sg`/`pl`  |
| `ogg1_illegale_A_sg`/`pl`   | `ogg1_inadatto_A_sg`/`pl`   |
| `ogg2_illegale_A_sg`/`pl`   | `ogg2_inadatto_A_sg`/`pl`   |
| `ogg1_illegale_IN_sg`/`pl`  | `ogg1_inadatto_IN_sg`/`pl`  |
| `ogg2_illegale_IN_sg`/`pl`  | `ogg2_inadatto_IN_sg`/`pl`  |
| `ogg1_illegale_SU_sg`/`pl`  | `ogg1_inadatto_SU_sg`/`pl`  |
| `ogg1_illegale_CON_sg`/`pl` | `ogg1_inadatto_CON_sg`/`pl` |
| `ogg2_illegale_CON_sg`/`pl` | `ogg2_inadatto_CON_sg`/`pl` |



<!---------------------------------------------------------------------------->

## 2018/11/16

- [`lib_messaggi.i`][lib_messaggi_libreria] &#x27f6; v0.8.1
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.8.2

### Documentazione verbi

Aggiungi commenti Doxter per documentare "Descrizioni Brevi e Lunghe" e menziona l'attuale baco della libreria che ne impedisce il corretto funzionamento.

Inizia a documentare il modulo dei messaggi.

<!---------------------------------------------------------------------------->


## 2018/11/15

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.8.2

### Documentazione verbi

Aggiungi commenti Doxter per documentare i verbi preposti al controllo della trascrizione della partita.

-------------------------------------------------------------------------------

## 2018/11/13 (2)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.8.1

### Pulizia documentazione verbi

Questo commit mette un po' d'ordine nella documentazione dei verbi:

- Organizza meglio il gruppo dei "Verbi di Domande".

### Documenta il baco della "è"

- Documenta il baco della `è` grave nelle sintassi.

Inoltre, i verbi di domande che coinvolgono la "è" sono stati modificati: prima tutte le `è` erano stato sostituite da `é`; ora i verbi sono definiti usando la `è` grave come sintassi primaria, e la `é` acuta è utilizzata per creare sintassi alternative che raggirino il baco. Questo fa sì che quando il baco verrà risolto sarà possibile rimuovere le sintassi alternative e preservare quelle primarie.

- Crea test per i verbi di domande e il baco `è`.

È stato aggiunto file di test apposito per testare il baco della `è` e il funzionamento delle sintassi alternative che ripiegano sulla `é`:

- [`../test/casa_verbi-domande.a3sol`](../test/casa_verbi-domande.a3sol)
- [`../test/casa_verbi-domande.a3log`](../test/casa_verbi-domande.a3log)

Grazie alle trascrizioni dei test, sarà possibile rilevare automaticamente eventuali modifiche del comportamento di Alan quando, in futuro, verrà risolto il baco.

<!---------------------------------------------------------------------------->

## 2018/11/13 (1)

- [`libreria.i`][libreria] &#x27f6; v0.8.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.8.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.8.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.8.0
- [`lib_messaggi.i`][lib_messaggi_libreria] &#x27f6; v0.8.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.8.0
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.8.0

### Passa alla v0.8.0: Tutti i verbi tradotti

Con questo commit tutti i verbi della libreria ed i corrispettivi attributi di restrizione sono stati tradotti in italiano.

Tutti i moduli della libreria passano alla versione 0.8.0.

### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

|  English  |  Italian   |
|-----------|------------|
| `shake`   | `agitare`  |
| `squeeze` | `spremere` |
| `rub`     | `sfregare` |


### Verb: `shake`

Translated verb `agita`:

    agita (ogg)

with synonyms:

    scuoti = agita


### Verb: `squeeze`

Translated verb `spremi`:

    spremi (ogg)

with synonyms:

    strizza = spremi


### Verb: `clean`

Translated verb `pulisci`:

    pulisci (ogg)

with synonyms:

    strofina, lucida = pulisci


### Verb: `rub`

Translated verb `sfrega`:

    sfrega (ogg)

with synonyms:

    massaggia = sfrega


<!---------------------------------------------------------------------------->

## 2018/11/12 (6)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.27
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.41

### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

| English |   Italian    |
|---------|--------------|
| `climb` | `scavalcare` |


### Verb: `climb`

Translated verb `scavalca`:

    scavalca (ogg)

with no synonyms.


<!---------------------------------------------------------------------------->

## 2018/11/12 (5)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.26
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.40


### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

|  English   |    Italian    |
|------------|---------------|
| `pry`      | `forzare`     |
| `pry_with` | `forzare_con` |


### Verbs: `pry` and `pry_with`

Translated verbs `forza` and `forza_con`:

    forza (ogg)
    forza (ogg) con (strum)

with no synonyms.



<!---------------------------------------------------------------------------->


## 2018/11/12 (4)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.25
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.39


### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

|  English   |    Italian     |
|------------|----------------|
| `stand_on` | `salire_su`    |
| `climb_on` | `arrampicarsi` |



### Verb: `stand_on`

Translated verb `sali_su`:

    sali su (superficie)
    mettiti su (superficie)

with no synonyms.


### Verb: `climb_on`

Translated verb `arrampicati`:

    arrampicati su (superficie)

with no synonyms.


<!---------------------------------------------------------------------------->

## 2018/11/12 (3)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.24
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.38


### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

| English |         Italian         |
|---------|-------------------------|
| `about` | `mostrare_istruzioni`   |
| `hint`  | `mostrare_suggerimenti` |


### Meta Verb: `'about'`

Translated verb `istruzioni`:

    istruzioni

with synonyms:

    help, info = istruzioni


### Meta Verb: `hint`

Translated verb `suggerimento`:

    suggerimento

with no synonyms.

with synonyms:

    hint, aiutino = suggerimento

> __NOTA__ — Devo ancora decidere se "aiuto" debba essere associato a `istruzioni` o a `suggerimento`. Storicamente, "aiuto" nelle AT italiane è stato quasi sempre associato a "istruzioni"; ma tradurre "hint" non è facile.
> 
> Sia "suggerimento" che "aiutino" non mi convincono molto, e "aiuto" suonerebbe meglio (salvo quanto detto sopra). Il punto è che la libreria non offre un sistema di "hint", quindi potrei considerare o di rimuovere del tutto "hint" o trovare soluzioni alternative.

<!---------------------------------------------------------------------------->

## 2018/11/12 (2)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.23
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.37


### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

| English  |    Italian    |
|----------|---------------|
| `search` | `ispezionare` |


### Verb: `search`

Translated verb `ispeziona`, "__ispeziona__" (_search_):

    ispeziona (ogg)

with synonyms:

    perquisisci = ispeziona

### Fix Verb `ascolta` (was `listen`)

In verb `ascolta`'s `DOES`, change `IF ogg AT hero` into `IF hero AT ogg` in order for the verb to work when hero is in a nested location (eg. in a hole) and to work with room/site objects (which are not AT hero's location because they're in a wrapping location, but on the other hand the hero is AT their location).

Before this fix, trying to listen to the sky or ceiling would produce an empty string, as well as when trying to listen to something from a nested location.


<!---------------------------------------------------------------------------->

## 2018/11/12 (1)

- [`lib_messaggi.i`][lib_messaggi] &#x27f6; v0.7.13
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.36

### Verb Responses

Subtitute all occurences of `check_obj2_not_hero1` with `azione_insensata` and delete original.


### Verb: `'show'`

Translated verb `mostra`, "__mostra__" (_show_):

    mostra (ogg) a (png)

with no synonyms.


<!---------------------------------------------------------------------------->

## 2018/11/11 (2)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.22
- [`lib_messaggi.i`][lib_messaggi] &#x27f6; v0.7.12
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.35


### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

| English |   Italian   |
|---------|-------------|
| `lift`  | `sollevare` |


Translated verb responses attributes:

|        Attribute EN        |          Attribute IT         |                 Text                |
|----------------------------|-------------------------------|-------------------------------------|
| `check_obj_weight_sg`/`pl` | `ogg1_troppo_pesante_sg`/`pl` | `"$+1 [è/sono] troppo pesant[e/i]"` |

Delete original English attributes for all occurences have been substituted.


### Verbs: `knock` and `knock_error`

Translated verbs `bussa` and `bussa_errore`, "__bussa a__" (_knock on_):

    bussa
    bussa a (ogg)

with no synonyms.


### Verb: `lift`

Translated verb `solleva`, "__solleva__" (_lift_):

    solleva (ogg)

with synonyms:

    alza = solleva


### Verb: `follow`

Translated verb `segui` (_follow_):

    segui (png)!

with no synonyms.


<!---------------------------------------------------------------------------->

## 2018/11/11 (1)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.21
- [`lib_messaggi.i`][lib_messaggi] &#x27f6; v0.7.11
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.34

### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

|     English     |      Italian       |
|-----------------|--------------------|
| `fire`          | `sparare`          |
| `fire_at`       | `sparare_a`        |

Deleted `mia_AT` attributes for verb restrictions:

|  Attribute   |
|--------------|
| `shoot`      |
| `shoot_with` |

### Group of Verbs: `fire*`

Translated verbs of the `fire*` group, and added an extra one:

|     English     |     Italian      |              syntax              |
|-----------------|------------------|----------------------------------|
| `fire`          | `spara`          | `spara con (arma)`               |
|                 | `spara_errore`   | `spara`                          |
| `fire_at`       | `spara_a`        | `spara con (arma) a (bersaglio)` |
| `fire_at_error` | `spara_a_errore` | `spara a (bersaglio)`            |


    spara con (arma)
    spara a (bersaglio) con (arma)
    spara con (arma) a (bersaglio)

... plus the syntaxes of `spara_errore` and `spara_a_errore`:

    spara
    spara a (bersaglio)

with no synonyms.

> __NOTA__ — La libreria originale offriva sia i verbi "fire" che "shoot". "Fire" serviva per sparare solo con armi da fuoco (`IS fireable`) mentre "shoot" poteva essere usato con qualsiasi arma (incluse quelle da fuoco).
> 
> Poiché in italiano non abbiamo verbi che colgano questa distinzione, ho preservato solo i verbi del gruppo `fire*`, tradotti come "spara" — i quali richiedono che l'arma sia `sparabile` (a prescindere se sia un'arma da fuoco o di qualche altro tipo.)
> 
> L'attributo `sparabile` va inteso come un'`arma` in grado di espellere un qualche tipo di proiettile.


### Delete `shoot*` Verbs

We'll keep only the `fire*` verbs for shooting with `fireable` weapons since in Italian we don't have two separate verbs to handle both cases of "shoot" and "fire":

|      Verb     |
|---------------|
| `shoot`       |
| `shoot_with`  |
| `shoot_error` |

### Verb Responses

Translated verb responses attributes:

|         Attribute EN         |        Attribute IT       |                        Text                        |
|------------------------------|---------------------------|----------------------------------------------------|
| `check_count_weapon_in_hero` | `non_hai_armi_da_fuoco`   | `"Non stai portando nessun'arma da fuoco con te."` |
| `illegal_parameter_at`       | `ogg2_illegale_A_sg`/`pl` | `"$+2 non [è/sono] qualcosa a cui poter"`          |
| `check_obj_not_hero2`        | `no_autolesionismo`       | `"L'autolesionismo non è contemplato."`            |

Delete original English attributes for all occurences have been substituted.

New verb responses attributes (created for Italian library, no English counterpart):

|             Attribute              |                    Text                   |
|------------------------------------|-------------------------------------------|
| `ogg2_non_arma_adatta_per_sg`/`pl` | `"$+2 non [è/sono] un'arma adatta per"`   |
| `ogg1_non_arma_da_fuoco_sg`/`pl`   | `"$+1 non [è/sono] un'arma da fuoco."`    |
| `no_suicidio`                      | `"Il suicidio non è un'opzione."`         |
| `ogg1_illegale_A_sg`/`pl`          | `"$+1 non [è/sono] qualcosa a cui poter"` |


<!---------------------------------------------------------------------------->

## 2018/11/10 (5)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.20
- [`lib_messaggi.i`][lib_messaggi] &#x27f6; v0.7.10
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.33

### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

| English  | Italian  |
|----------|----------|
| `'exit'` | `uscire` |


### Verbs: `enter` and `'exit'`

Translated verbs of the `enter*` and `exit*` groups:

|    English    |  Italian   |
|---------------|------------|
| `enter`       | `entra_in` |
| `enter_error` | `entra`    |
| `'exit'`      | `esci_da`  |
| `exit_error`  | `esci`     |


    entra
    entra 'in' (ogg)
    esci
    esci da (ogg)

with no synonyms.

### Verb Responses

New verb responses attributes (created for Italian library, no English counterpart):

|       Attribute       |                  Text                 |
|-----------------------|---------------------------------------|
| `specificare_DA_cosa` | `"Devi specificare da cosa vorresti"` |
| `specificare_IN_cosa` | `"Devi specificare in cosa vorresti"` |
| `xxx`/`pl` | `xxx` |

<!---------------------------------------------------------------------------->


## 2018/11/10 (4)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.19
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.32

### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

| English | Italian  |
|---------|----------|
| `turn`  | `girare` |


### Verb: `turn`

Translated verb `gira`, "__gira__" (_turn_):

    gira (ogg)

with no synonyms.

> __NOTA__ — Qui ci vorrebbe una sintassi alternativa (o un sinonimo) per "ruota". Ma devo prima verificare che non vada a confliggere con un potenziale oggetto "ruota".

<!---------------------------------------------------------------------------->

## 2018/11/10 (3)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.31

### Verb: `shout`

Translated verb `grida`, "__grida__" (_shout_):

    grida

with synonyms:

    strilla, urla = grida


<!---------------------------------------------------------------------------->

## 2018/11/10 (2)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.18
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.30

### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

| English |    Italian    |
|---------|---------------|
| `catch` | `acchiappare` |

### Verb: `catch`

Translated verb `acchiappa`, "__acchiappa__" (_catch_):

    acchiappa (ogg)

with no synonyms.


-------------------------------------------------------------------------------

## 2018/11/10 (1)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.29

### Doxterize Verbs Groups

Organizza i Verbi di Gioco in gruppi di appartenenza correlati:

- Leggere e Scrivere:
    + `leggi`
    + `scrivi`
- Bruciare:
    + `brucia`
    + `brucia_con`
- Usare:
    + `usa`
    + `usa_con`
- Pensare:
    + `pensa`
    + `pensa_a`

<!---------------------------------------------------------------------------->

## 2018/11/09 (8)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.28

Raccogli nel gruppo "Verbi Sfusi" tutti i verbi tradotti che non sono ancora stati raggruppati.

<!---------------------------------------------------------------------------->

## 2018/11/09 (7)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.17
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.27

### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

| English |  Italian   |
|---------|------------|
| `kick`  | `calciare` |

### Verb: `kick`

Translated verb `calcia`, "__calcia__" (_kick_):

    calcia (bersaglio)

with no synonyms.

### Doxterize

Organizza i Verbi di Gioco in gruppi di appartenenza correlati:

- Attaccare e Simili:
    + `attacca`
    + `attacca_con`
    + `calcia`
    + `uccidi`
    + `uccidi_con`


<!---------------------------------------------------------------------------->


## 2018/11/09 (6)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.26

### Group of Verbs: `push*`

Translated verbs of the `push*` group:

|   English   |   Italian    |
|-------------|--------------|
| `push_with` | `spingi`     |
| `push_with` | `spingi_con` |


    spingi (ogg)
    spingi (ogg) con (strum)

with no synonyms.

<!---------------------------------------------------------------------------->

## 2018/11/09 (5)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.25

### Group of Verbs: `dive*` and `swim*`

Translated verbs of the diving and swimming group:

|  English  |   Italian    |
|-----------|--------------|
| `swim`    | `nuota`      |
| `swim_in` | `nuota_in`   |
| `dive`    | `tuffati`    |
| `dive_in` | `tuffati_in` |



    nuota
    nuota in (liq)
    tuffati
    tuffati in (liq)

with no synonyms.


<!---------------------------------------------------------------------------->

## 2018/11/09 (4)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.16
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.24

### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

| English |   Italian   |
|---------|-------------|
| `tear`  | `strappare` |


### Verb: `tear`

Translated verb `strappa`, "__strappa__" (_tear_):

    strappa (ogg)

with no synonyms.


<!---------------------------------------------------------------------------->


## 2018/11/09 (3)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.15
- [`lib_messaggi.i`][lib_messaggi] &#x27f6; v0.7.9
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.23

### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

|  English   |      Italian      |
|------------|-------------------|
| `throw`    | `lanciare`        |
| `throw_at` | `lanciare_contro` |
| `throw_in` | `lanciare_in`     |
| `throw_to` | `lanciare_a`      |


### Group of Verbs: `throw*`

Translated verbs of the `throw*` group:

|  English   |     Italian     |
|------------|-----------------|
| `throw`    | `lancia`        |
| `throw_at` | `lancia_contro` |
| `throw_in` | `lancia_in`     |
| `throw_to` | `lancia_a`      |


    lancia (proiettile)
    lancia (proiettile) a (ricevente)
    lancia (proiettile) contro (bersaglio)
    lancia (proiettile) 'in' (cont)

with no synonyms.

> __NOTA__ — Questi verbi richiedono sintassi alternative e/o sinonimi (p.es. "scaglia"), ma vanno studiati bene e me ne occuperò in seguito.

<!---------------------------------------------------------------------------->

## 2018/11/09 (2)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.14
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.22

### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

|  English   |    Italian     |
|------------|----------------|
| `stand`    | `alzarsi`      |
| `get_off`  | `scendere_da`  |
| `lie_down` | `sdraiarsi`    |
| `lie_in`   | `sdraiarsi_in` |
| `lie_on`   | `sdraiarsi_su` |


Deleted `mia_AT` attributes for verb restrictions:

| Attribute |
|-----------|
| `get_up`  |


### Verb: `stand`

Translated verb `alzati`, "__alzati__" (_stand [up]_):

    alzati

with no synonyms.


### Delete Verb: `get_up`

The `get_up` verb isn't required in Italian for `alzati` (`stand`) covers both getting up from a sitting position as well as standing up after lying down; so it would be redundant to keep them both.


### Verb: `get_off`

Translated verb `scendi_da`, "__scendi da__" (_get off_):

    scendi da (superficie)

with no synonyms.

### Verbs `lie_*`

Translated verbs from the group `lie_*`:

|  English   |    Italian    |
|------------|---------------|
| `lie_down` | `sdraiati`    |
| `lie_in`   | `sdraiati_in` |
| `lie_on`   | `sdraiati_su` |


    sdraiati
    sdraiati in (cont)
    sdraiati su (superficie)

with synonyms:

    coricati = sdraiati


<!---------------------------------------------------------------------------->

## 2018/11/09 (1)

- [`lib_messaggi.i`][lib_messaggi] &#x27f6; v0.7.8
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.21

### Verbs: `jump`, `jump_in` and `jump_on`

Translated verbs `salta`, `salta_in` and `salta_su`:

    salta
    salta in (cont)
    salta su (superficie)

with no synonyms.

### Verb Responses

Translated verb responses attributes:

|         Attribute EN         |        Attribute IT       |               Text              |
|------------------------------|---------------------------|---------------------------------|
| `check_hero_not_sitting1`    | `impossibile_da_seduto`   | `"Non puoi farlo da seduto."`   |
| `check_hero_not_lying_down1` | `impossibile_da_sdraiato` | `"Non puoi farlo da sdraiato."` |

Original attributes deleted since all occurences have been substituted with Italian attribute.


New verb responses attributes (created for Italian library, no English counterpart):

|         Attribute          |                    Text                    |
|----------------------------|--------------------------------------------|
| `ogg1_illegale_IN_sg`/`pl` | `"$+1 non [è/sono] qualcosa in cui poter"` |





<!---------------------------------------------------------------------------->


## 2018/11/08

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.20

#### Fix Verb Responses

The following verbs (shared `VERB` body) where giving the wrong `CHECK` response:

- `metti_contro`
- `metti_dietro`
- `metti_sotto`
- `metti_vicino`

for they were using the same message for the first parameter when the problem was with the second parameter (`bulk`):

```alan
      AND bulk IS raggiungibile AND bulk IS NOT distante
        ELSE
          IF bulk IS NOT raggiungibile
            THEN
              IF bulk IS NOT plurale
                THEN SAY mia_AT:ogg1_non_raggiungibile_sg. -- SHOULD BE 'ogg2'!
                ELSE SAY mia_AT:ogg1_non_raggiungibile_pl. -- SHOULD BE 'ogg2'!
              END IF.
          ELSIF bulk IS distante
            THEN
              IF bulk IS NOT plurale
                THEN SAY mia_AT:ogg1_distante_sg.           -- SHOULD BE 'ogg2'!
                ELSE SAY mia_AT:ogg1_distante_pl.           -- SHOULD BE 'ogg2'!
```

Now fixed to use `ogg2_distante_sg`/`pl` with `bulk IS NOT raggiungibile`/`IS distante` errors .

<!---------------------------------------------------------------------------->

## 2018/11/03 (3)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.13
- [`lib_messaggi.i`][lib_messaggi] &#x27f6; v0.7.7
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.19


### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

|    English     |     Italian      |
|----------------|------------------|
| `put`          | `mettere`        |
| `put_against`  | `mettere_contro` |
| `put_behind`   | `mettere_dietro` |
| ~~`put_down`~~ | _eliminated_     |
| `put_in`       | `mettere_in`     |
| `put_near`     | `mettere_vicino` |
| `put_on`       | `mettere_su`     |
| `put_under`    | `mettere_sotto`  |

> __NOTE__ — the `put_down` attribute was removed because it's useless (the verb `drop` deals with 'putting down', which relies on the `drop` attribute for restricting the verb).

### Verbs `put*`

Translated verbs `metti*`,  of the `put*` group:

    metti (ogg)
    metti (ogg) contro (bulk)
    metti (ogg) dietro (bulk)
    metti (ogg) in (cont)
    metti (ogg) sotto (bulk)
    metti (ogg) su (superficie)
    metti (ogg) vicino a (bulk)

with no synonyms currently.


> __NOTA__ — Questi verbi sono ancora molto grezzi, anche perché sono presenti in vari moduli e classi e ci sono parecchi messaggi da tradurre.
> 
> Inoltre, sembrano esserci vari bachi da risolvere.
> 
> Devo valutare se implementare `sopra` come sinonimo di `su`, per evitare di dover creare sintassi multiple per quei verbi che lo utilizzano. E anche `accanto = vicino`?
> 
> Parecchi di questi verbi potrebbero accogliere altre sintassi ("posa", "appoggia", ecc.), ma trattandosi di un lavoro lungo lo rimando a dopo.


### Verb Responses

New verb responses attributes (created for Italian library, no English counterpart):

|         Attribute          |                    Text                    |
|----------------------------|--------------------------------------------|
| `non_fattibile`            | `"Non è una cosa fattibile."`              |
| `specificare_DOVE`         | `"Devi specificare dove vorresti"`         |
| `ogg2_illegale_IN_sg`/`pl` | `"$+2 non [è/sono] qualcosa in cui poter"` |


### Doxterize

Organizza i Verbi di Gioco in gruppi di appartenenza correlati:

- Mettere:
    + `metti`
    + `metti_contro`
    + `metti_dietro`
    + `metti_in`
    + `metti_sotto`
    + `metti_su`
    + `metti_vicino`


<!---------------------------------------------------------------------------->


## 2018/11/03 (2)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.7.4
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.12
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.7.2
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.18


### Code Cleanup

General code cleanup.

- Change all `SAY xxx OF yyy.` to short form `SAY yyy:xxx.`.

### Doxterize

Organizza i Verbi di Gioco in gruppi di appartenenza correlati:

- Guardare ed Esaminare:
    + `esamina`
    + `guarda`
    + `guarda_attraverso`
    + `guarda_dietro`
    + `guarda_fuori_da`
    + `guarda_in`
    + `guarda_sotto`
    + `guarda_su`
- Commerciare:
    + `compra`
    + `vendi`
- Rompere ed Aggiustare:
    + `ripara`
    + `rompi`
    + `rompi_con`
- Dare e Prendere:
    + `dai_a`
    + `lascia`
    + `prendi`
    + `prendi_da`
- Vestirsi e Svestirsi:
    + `indossa`
    + `togliti`
    + `spogliati`



<!---------------------------------------------------------------------------->


## 2018/11/03 (1)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.11
- [`lib_messaggi.i`][lib_messaggi] &#x27f6; v0.7.6
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.17


### Verb: `bite`

Translated verb `mordi`, "__mordi__" (_bite_):

    mordi (ogg)

with no synonyms.

### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

| English |  Italian  |
|---------|-----------|
| `bite`  | `mordere` |


### Verb Responses

New verb responses attributes (created for Italian library, no English counterpart):

|    Attribute    |                    Text                   |
|-----------------|-------------------------------------------|
| `nessun_sapore` | `"non senti nessun sapore particolare.".` |


<!---------------------------------------------------------------------------->

## 2018/11/02 (2)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.7.3
- [`lib_messaggi.i`][lib_messaggi] &#x27f6; v0.7.5
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.16

### Doxterize Classes

Inizia a organizzare l'auto-documentazione di `lib_classi.i`.

### Verbs: `empty*` and `pour*`

Translated the verbs of the group `empty*` and `pour*`:


|  English   |   Italian   |
|------------|-------------|
| `empty`    | `svuota`    |
| `empty_in` | `svuota_in` |
| `empty_on` | `svuota_su` |
| `pour`     | `versa`     |
| `pour_in`  | `versa_in`  |
| `pour_on`  | `versa_su`  |

With solid contents:

    (svuota|versa) (ogg)
    (svuota|versa) (ogg) in (cont)
    (svuota|versa) (ogg) su (superficie)

with no synonyms.

There are still quite a few untranslated verb responses attributes, especially in the verbs definitions in `lib_classi.i`; also the tests don't yet cover all possible cases.

A bug surfaced with the use of `put_in` in relation to these verbs, due to how it's implemented on `liquid` class — it always changes the liquid's associated `recipiente`, even if `put_in` failed (which is the default behaviour). For more info, see:

- https://github.com/AnssiR66/AlanStdLib/issues/39

### Verb Responses

Translated verb responses attributes:

|      Attribute EN      |      Attribute IT     |           Text          |
|------------------------|-----------------------|-------------------------|
| `check_obj_takeable`   | `ogg1_non_posseduto`  | `"Non possiedi $+1.".`  |
| `check_obj2_takeable1` | `ogg2_non_posseduto`  | `"Non possiedi $+2.".`  |
| `check_obj2_takeable2` | `ogg2_non_ottenibile` | `"Non puoi avere $+2."` |

Original attributes deleted since all occurence have been replaced.

New verb responses attributes (created for Italian library, no English counterpart):

|          Attribute          |                       Text                      |
|-----------------------------|-------------------------------------------------|
| `ogg1_vuoto_sg`/`pl`        | `"ci provi, ma $+1 [era/erano] vuot$$"`         |
| `svuotare_solo_contenitori` | `"Solo i contenitori possono essere svuotati."` |



<!---------------------------------------------------------------------------->

## 2018/11/02 (1)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.15


### Verb: `taste`

Translated verb `assaggia`, "__assaggia__" (_taste_):

    assaggia (ogg)

with synonyms:

    lecca = assaggia


<!---------------------------------------------------------------------------->


## 2018/11/01

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.10
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.14
- [`lib_classi.i`][lib_classi] &#x27f6; v0.7.2
- [`lib_messaggi.i`][lib_messaggi] &#x27f6; v0.7.4


### Verb: `sip`

Translated verb `sorseggia`, "__sorseggia__" (_sip_):

    sorseggia (liq)

with no synonyms.


### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

| English |    Italian    |
|---------|---------------|
| `sip`   | `sorseggiare` |


### Verb Responses

Translated verb responses attributes:

|        Attribute EN       |         Attribute IT         |          Text          |
|---------------------------|------------------------------|------------------------|
| `implicit_taking_message` | `riferisci_prendi_implicito` | `(prima prendi $+1)$n` |

All occurences of `implicit_taking_message` have been replaced and the original English attribute was deleted.

This commit also translates all implicit taking messages inside verb bodies (ie, that couldn't rely on verb response attributes).

### Doxterize Verbs

Organizza i Verbi di Gioco in gruppi di appartenenza correlati:

- Mangiare e Bere:
    + `bevi`
    + `mangia`

### Tweak Lib Classes

- Add some TODO annotations to `lib_classi.i`.
- Translations and mall improvements here and there.


<!---------------------------------------------------------------------------->

## 2018/10/31 (2)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.9
- [`lib_classi.i`][lib_classi] &#x27f6; v0.7.1
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.13

### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

| English |  Italian   |
|---------|------------|
| `smell` | `annusare` |

Also, I've suppressed the `smell0` restriction attribute (used by verb `smell0`) because the `smell` attribute can be used by both `smell` and `smell0` verbs.

### Verbs: `smell0` and `smell`

Translated verbs `annusa0` and `annusa`, "__annusa__" (_smell_):

    (annusa|odora)
    (annusa|odora) (odore)

with synonyms:

    odora = annusa

The verb was also transalted in `lib_classi.i`, where it's implemented on the class `suono` to report that sounds can't be smelled.

<!---------------------------------------------------------------------------->


## 2018/10/31 (1)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.12

### Doxterize Verbs

This commit focuses on improving documentation of the verbs module:

- Begin grouping related game verbs under same heading.

Organizza i Verbi di Gioco in gruppi di appartenenza correlati:

- Accensione e Spegnimento:
    + `accendi`
    + `spegni`
- Apertura e Chiusura:
    + `apri`
    + `apri_con`
    + `blocca`
    + `blocca_con`
    + `chiudi`
    + `chiudi_con`
- Azioni Sensoriali:
    + `ascolta0`
    + `ascolta`
    + `tocca`
    + `tocca_con`
- Conversare:
    + `chiedi`
    + `chiedi_errore`
    + `domanda`
    + `dì`
    + `dì_a`
    + `parla`
    + `parla_a`
    + `racconta`
    + `rispondi`


<!---------------------------------------------------------------------------->


## 2018/10/25

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.11

### Make `inventario` Not META

With an afterthought, the verb `inventario` (_inventory_) is now no longer a `META VERB`.

### Doxterize Verbs

This commit focuses on improving documentation of the verbs module:

- Begin grouping related meta verbs under same heading.

Organizza i Meta Verbi di Partita in gruppi di appartenenza correlati:

- Salvataggio e Caricamento:
    + `carica_partita`
    + `salva_partita`
- Trascrizione:
    + `trascrizione`
    + `trascrizione_on`
    + `trascrizione_off`
- Punteggio e Notifiche:
    + `vedi_punteggio`
    + `notifica`
    + `notifica_on`
    + `notifica_off`
- Descrizioni Brevi e Lunghe:
    + `modalità_breve`
    + `modalità_lunga`
- Meta Verbi Vari:
    + `abbandona_partita`
    + `ricomincia_partita`
    + `ringraziamenti`


<!---------------------------------------------------------------------------->

## 2018/10/24

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.8
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.10

### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

|  English  |      Italian       |
|-----------|--------------------|
| `'score'` | `vedere_punteggio` |

### Verb: `'score'`

Translated verb `vedi_punteggio`, "__punteggio__" (_score_):

    punteggio

with no synonyms.

<!---------------------------------------------------------------------------->

## 2018/10/22 (2)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.7
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.9

### `script*` Verbs

Translated verbs:

|   Verb EN    |      Verb IT       |
|--------------|--------------------|
| `'script`    | `trascrizione`     |
| `script_on`  | `trascrizione_on`  |
| `script_off` | `trascrizione_off` |


    trascrizione
    trascrizione (off|disattivata)
    trascrizione (on|attivata)

with no synonyms.

### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

|   English    |      Italian      |
|--------------|-------------------|
| `'script'`   | `trascrivere`     |
| `script_on`  | `trascrivere_on`  |
| `script_off` | `trascrivere_off` |

<!---------------------------------------------------------------------------->

## 2018/10/22 (1)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.6
- [`lib_messaggi.i`][lib_messaggi] &#x27f6; v0.7.3
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.8

### Rename Restriction Attributes

Renamed `mia_AT` attributes for verb restrictions:

|   Old ID  |      New ID     |
|-----------|-----------------|
| `dire_no` | `rispondere_No` |
| `dire_sì` | `rispondere_Sì` |

### Rename Verbs

Renamed verbs:

|   Old ID  |     New ID    |
|-----------|---------------|
| `dici_No` | `rispondi_No` |
| `dici_Sì` | `rispondi_Sì` |


<!---------------------------------------------------------------------------->

## 2018/10/21 (3)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.5
- [`lib_messaggi.i`][lib_messaggi] &#x27f6; v0.7.2
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.7

### `notify*` Verbs

Translated verbs:

|   Verb EN    |    Verb IT     |
|--------------|----------------|
| `notify`     | `notifica`     |
| `notify_on`  | `notifica_on`  |
| `notify_off` | `notifica_off` |


    notifica
    notifica (off|disattivata)
    notifica (on|attivata)

with no synonyms.

### Verb Responses

New verb responses attributes (created for Italian library, no English counterpart):

|       Attribute        |                      Text                     |
|------------------------|-----------------------------------------------|
| `notifica_attivata`    | `"Notifica del punteggio attivata. [...]"`    |
| `notifica_disattivata` | `"Notifica del punteggio disattivata. [...]"` |




### Library Attributes for Notify

Translated library attributes:

|      English       |      Italian       |        Class         |
|--------------------|--------------------|----------------------|
| `notify_turned_on` | `notifiche_attive` | `blocco_definizioni` |
| `seen_notify`      | `visto_notifica`   | `blocco_definizioni` |
| `oldscore`         | `ultimo_punteggio` | `blocco_definizioni` |

### Score Event

|    Event EN   |        Italian        |
|---------------|-----------------------|
| `check_score` | `controlla_punteggio` |


<!---------------------------------------------------------------------------->

## 2018/10/21 (2)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.4
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.6

### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

|   English    |     Italian      |
|--------------|------------------|
| `'notify'`   | `notificare`     |
| `notify_on`  | `notificare_on`  |
| `notify_off` | `notificare_off` |

### Fix VERB END IDs

Some verbs didn't have their ID mentioned at `VERB END`; added them to improve code readability.

<!---------------------------------------------------------------------------->

## 2018/10/21 (1)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.5

### Fix META VERBs

The following out-of-game verbs where not set as `META`:

- `ringraziamenti`
- `'about'`
- `hint`
- `notify`
- `notify_on`
- `notify_off`
- `'score'`
- `'script'`
- `script_on`
- `script_off`

<!---------------------------------------------------------------------------->

## 2018/10/19 (2)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.3
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.4

### Verb: `verbose`

Translated verb `modalità lunga`, "__modalità_lunga__" (_verbose_):

    modalità lunga
    verbose

with no synonyms.


### Verb: `brief` (buggy)

Translated verb `modalità breve`, "__modalità_breve__" (_brief_):

    modalità (breve|corta)
    brief

with no synonyms.

> __BUG NOTE__ — The `VISITS` statement seems to be broken, so the "brief" verb isn't working as it should.



### Verb: `credits`

Translated verb `ringraziamenti`, "__ringraziamenti__" (_credits_):

    (ringraziamenti|autore|copyright|credits)

with no synonyms.


### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

|  English  |     Italian      |
|-----------|------------------|
| `credits` | `ringraziamenti` |


<!---------------------------------------------------------------------------->

## 2018/10/19 (1)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.2
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.3

### Verb: `scratch`

Translated verb `gratta`, "__gratta__" (_scratch_):

    gratta (ogg)

with no synonyms.


### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

|  English  |  Italian   |
|-----------|------------|
| `scratch` | `grattare` |


### Verb Responses

Translated verb responses attributes:

|      Attribute EN      |         Attribute IT         |              Text             |
|------------------------|------------------------------|-------------------------------|
| `check_obj_inanimate1` | `ogg1_png_non_apprezzerebbe` | `"non credo che $+1 gradirebbe."` |


Deleted the following English responses, since they're no longer used by any verbs:

- `check_obj_inanimate1`
- `check_obj_not_hero3`


<!---------------------------------------------------------------------------->

## 2018/10/18

- [`lib_messaggi.i`][lib_messaggi] &#x27f6; v0.7.1
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.2

### Translate Responses for "Look" Verbs

This commits start to translate verb responses for the "look" verbs (`guarda*`).

### Verb Responses

New verb responses attributes (created for Italian library, no English counterpart):

|         Attribute          |                    Text                    |
|----------------------------|--------------------------------------------|
| `impossibile_guardare`     | `"Non è possibile guardare"`               |
| `ogg1_illegale_DA_sg`/`pl` | `"$+1 non [è/sono] qualcosa da cui poter"` |


<!---------------------------------------------------------------------------->

## 2018/10/17

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.1
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.7.1
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.1

### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

|    English     |        Italian        |
|----------------|-----------------------|
| `'look'`       | `guardare`            |
| `look_behind`  | `guardare_dietro`     |
| `look_in`      | `guardare_in`         |
| `look_out_of`  | `guardare_fuori_da`   |
| `look_through` | `guardare_attraverso` |
| `look_under`   | `guardare_sotto`      |
| `look_up`      | `guardare_su`         |

### Translate "Look" Verbs

|    Verb En     |       Verb IT       |
|----------------|---------------------|
| `'look'`       | `guarda`            |
| `look_behind`  | `guarda_dietro`     |
| `look_in`      | `guarda_in`         |
| `look_out_of`  | `guarda_fuori_da`   |
| `look_through` | `guarda_attraverso` |
| `look_under`   | `guarda_sotto`      |
| `look_up`      | `guarda_su`         |



#### Verb: `'look'`

Translated verb `guarda`, "__guarda__" (_'look'_):

    guarda

with synonyms:

    l = 'guarda'


#### Verb: `look behind`

Translated verb `guarda_dietro`, "__guarda dietro__" (*look_behind*):

    guarda dietro (bulk)


#### Verb: `look in`

Translated verb `guarda_in`, "__guarda in__" (*look_in*):

    guarda 'in' (cont)


#### Verb: `look out of`

Translated verb `guarda_fuori_da`, "__guarda fuori da__" (*look_out_of*):

    guarda fuori da (ogg)


#### Verb: `look through`

Translated verb `guarda_attraverso`, "__guarda attraverso__" (*look_through*):

    guarda attraverso (bulk)

#### Verb: `look under`

Translated verb `guarda_sotto`, "__guarda sotto__" (*look_under*):

    guarda sotto (bulk)


#### Verb: `look up`

Translated verb `guarda_su`, "__guarda su__" (*look_up*):

    guarda su


### Delete `sotto` Synonym

The `sotto = giù` synonym was removed due to conflicts with "guarda sotto".


<!---------------------------------------------------------------------------->


## 2018/10/15 (3)

- [`libreria.i`][libreria] &#x27f6; v0.7.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.7.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.7.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.7.0
- [`lib_messaggi.i`][lib_messaggi] &#x27f6; v0.7.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.7.0
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.7.0


### Move Messages Attributes to `lib_messaggi.i`

All string attributes of `mia_AT` regarding library messages output (verb responses, etc.) are now moved over from `lib_definizioni.i` to `lib_messaggi.i`.

Here's a comparison of the two modules size in line numbers, before and after this change:

|              | `lib_definizioni.i` | `lib_messaggi.i` |
|--------------|---------------------|------------------|
| lines before |                2163 |              254 |
| lines after  |                1448 |             1002 |


Clearly, this introduces some balance in their source length.

This should improve maintainance of the library:

1. All messages and verb responses strings are now in a single module, together with Alan runtime messages, making it easier to work on text output without distractions.
2. This will reduce considerably the size of `lib_definizioni.i`, which was growin bigger an bigger due to Italian grammar added code, and to the language being more verbose than English. This will make more manageable working on the module's source code.
3. On the other hand, `lib_messaggi.i` was quite small in size, and after moving all the library messages in it the modules' sizes are more balanced.
4. Now editing verbs is easier because the verbs' bodies, restricted actions code, and verb respose attributes are in different files, which can be all kept open in the editor, no longer requiring to move up and down the source of `lib_definizioni.i` to alternate between verb restriction and response message attributes.
5. Most end users will probably want to tweak the predefined library messages, and now they won't need to use the `_mygame_import.i` file anymore, as all the messages are in one library module.

For more info, see the discussion at [Issue #25] on [AlanStdLib].

### Bump Up Lib to v0.7.0

These changes bump up all library files version to 0.7.0.

<!---------------------------------------------------------------------------->


## 2018/10/15 (2)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.6.3

### Verb: `consult`

Translated verb `consulta`, "__consulta__" (_consult_):

    consulta (fonte) riguardo (argomento)!
    guarda (argomento) in (fonte)
    cerca (argomento) in (fonte)
    ricerca (argomento) in (fonte)

with synonyms:

    circa = riguardo


<!---------------------------------------------------------------------------->


## 2018/10/15 (1)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.6.2
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.6.4
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.6.1
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.6.1

### Doxterize `lib_luoghi.i` and `lib_supplemento.i`

This commit adds [Doxter] documentation to `lib_luoghi.i` and `lib_supplemento.i`.

Also updates Doxter documentation and organization of other modules.


<!---------------------------------------------------------------------------->

## 2018/10/14 (3)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.6.1
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.6.2

### Doxterize `lib_classi.i`

This commit adds [Doxter] documentation to `lib_classi.i`.

Also update Doxter organization of `lib_verbi.i`.


<!---------------------------------------------------------------------------->

## 2018/10/14 (2)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.6.3
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.6.1

### Banner Translation

This commit ultimates the translation to Italian of the Banner; it also updates the mentioned Alan version to Beta06.

The banner is now documentated via Doxter in `lib_definizioni.i`.

### Verb Restriction Attributes

Merged `mia_AT` attributes for verb restrictions:

|    Old ID    | Merged With ID |
|--------------|----------------|
| `ascoltare0` | `ascoltare`    |

This simplifies verbs' restrictions management (as it was already done with other verbs previously), since these attributes relate to variations of the same verb (i.e. `ascolta0` and `ascolta`) the same restriction should apply to all variations.


<!---------------------------------------------------------------------------->


## 2018/10/14 (2)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.6.2

### Doxterize `lib_definizioni.i`

This commit adds [Doxter] documentation to `lib_definizioni.i`.


<!---------------------------------------------------------------------------->


## 2018/10/14 (1)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.6.1

### Optimize Restricted Actions

This commit optimizes the code that handles restricted actions, following the changes proposed in [Issue #6] and [PR #23] of the upstream repository.

Whereas the original code used `IF`/`ELSIF` blocks that set every restriction attribute according to `restricted_level`, at every turn, the new optimized code only changes attributes if a change in restriction level is detected. Also, the new approach reduces redundancy in source code by apllying restrictions progressively, in a layered manner: all restriction attributes are first set to `CAN`, and then a series of `IF >=` checks apply the restrictions of each level by disabling only those actions that pertain to a given level. 

- Add `previous_restricted_level` attribute to track changes in restriction
level.
- Optimize `EVENT check_restriction`:
    + If `restricted_level` is same as `previous_restricted_level` don't do
    antying, otherwise:
        * Apply restriction levels in layers:
            - Level 0 is always applied (all verbs set to `CAN`)
            - Levels 1-4 only disable the verbs which they affect, each level being conditionally applied with a `>=` conditional check.

Although this aproach ultimately adds some Run-Time redundancy of attributes changes — i.e. by first setting all attributes to `CAN` and then disabling them if restrictions are present — it still optimizes execution since now no changes at all are carried out if `restricted_level` hasn't changed since last turn. 

Run-Time redundancy, even in its worst-case scenario (i.e. restriction level 4), where every attribute gets set twice, is still negligible in terms of execution impact (these are just boolean operations). 

In terms of library maintainance, these changes reduce drastically the size of the source code and eliminate redundancy of attributes therein, ultimately reducing chances of introducing errors when modifying the source code. Also, the new system introduces a clear separation of which restrictions are introduced by each level, making the code more readable too.

### Tweak Level 2 Restrictions

Move restriction of verbs  `parlare` (`talk`) and `parlare_con` (`talk_to`) in restrictions level 2. Although these belong to communication verbs, for some reasons they were not being restricted at Level 2 in the original code, but only in levels 3-4. (See [Issue #24])

<!---------------------------------------------------------------------------->


## 2018/10/13

- [`libreria.i`][libreria] &#x27f6; v0.6.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.6.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.6.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.6.0
- [`lib_messaggi.i`][lib_messaggi] &#x27f6; v0.6.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.6.0
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.6.0

### Add Doxter for Documentation Generator

Introduce [Doxter] in the workflow, a tool to generate documentation from comments in source files. The new system will extract an AsciiDoc documentation file from each library module, and then convert it to HTML.

All documents have been adapted to the new system to avoid conflicts with Doxter markers (all comments delimiters starting as `-->` had to be changed into `---->` or `--`). All sources bump up to v0.6.0.

Extraction of documentation is handled via a batch script:

- [`BUILD_DOCS.bat`][BUILD_DOCS]

Currently, only `lib_verbi.i` produces Doxter documentation (other modules still need adaptation work); so the only AsciiDoc extracted file right now is:

- [`lib_verbi.asciidoc`][lib_verbi adoc]  (Italian)

The AsciiDoc file is then converted to HTML:

- [`lib_verbi.html`][lib_verbi html]  (Italian — [Live HTML Preview][lib_verbi html live])

More info on Doxter's workflow and current state is available in:

- [`ANNOTAZIONI_DOXTER.adoc`][ANNOTAZIONI_DOXTER]  (Italian)


<!---------------------------------------------------------------------------->


## 2018/10/09

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.5.7
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.5.7

### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

| English |   Italian    |
|---------|--------------|
| `tell`  | `raccontare` |

### Verb: `Tell`

Translated verb `racconta`, "__racconta__" (_tell_):

    racconta a (png) di (argomento)!
    parla a (png) di (argomento)!
    parla con (png) di (argomento)!
    informa (png) di (argomento)!
    informa (png) su (argomento)!
    dì a (png) di (argomento)!

with no synonyms.


<!---------------------------------------------------------------------------->


## 2018/08/27 (3)


- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.5.6
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.5.6

### New Recurrent Verb Responses Attributes

New verb responses attributes (created for Italian library, no English counterpart). 

These are verb response messagges which appear as String statements more than once in variations of the same verb, so I'm converting them to `mia_AT` verb response attributes to avoide redundant strings — This makes it easier to maintain the strings when tweaking them, optimizes slightly memory consumption, but most of all simplifies user customization of the responses.

|            Attribute            |                         Text                         |                                 Verbs                                 |
|---------------------------------|------------------------------------------------------|-----------------------------------------------------------------------|
| `la_violenza_non_è_la_risposta` | `La violenza non è la giusta risposta`               | `attacca`, `attacca_con`, `rompi`, `kick`, `fire_at`, `fire_at_error` |
| `per_chiedere_qlco_USA`         | `Per chiedere qualcosa a qualcuno usa CHIEDI [...].` | `chiedi_errore`                                                       |
| `per_parlare_con_USA`           | `Per parlare a qualcuno, usa DOMANDA A [...].`       | `parla`, `parla_con`                                                  |
| `per_scrivere_USA`              | `Per scrivere su qualcosa, usa SCRIVI [...].`               | `scrivi_errore1`/`2`/`3`                                              |


<!---------------------------------------------------------------------------->

## 2018/08/27 (2)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.5.5
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.5.5

### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

|  English  |    Italian    |
|-----------|---------------|
| `talk`    | `parlare`     |
| `talk_to` | `parlare_con` |

### Verb Responses

New verb responses attributes (created for Italian library, no English counterpart):

|          Attribute          |                   Text                   |
|-----------------------------|------------------------------------------|
| `ogg1_illegale_CON_sg`/`pl` | `$+1 non [è/sono] qualcosa con cui puoi` |


### Verbs: `talk` and `talk_to`

Translated verbs `parla` and `parla_con`, "__parla__":

    parla
    parla con (png)
    parla a (png)

with no synonyms.



<!---------------------------------------------------------------------------->


## 2018/08/27 (1)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.5.4
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.5.4

### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

| English |   Italian   |
|---------|-------------|
| `ask`   | `domandare` |


### Verb: `ask`

Translated verb `domanda`, "__domanda__" (_ask_):

    domanda a (png) di (argomento)!
    domanda a (png) riguardo (argomento)!
    chiedi a (png) di (argomento)!
    chiedi a (png) riguardo (argomento)!

... with inverted order syntaxes:

    domanda di (argomento)! a (png)
    chiedi di (argomento)! a (png)

with synonyms:

    circa = riguardo

> __NOTA__ — Allo stato attuale domande come "_Chiedi a Gino l'ora_" o "_Domanda informazioni a maria_" non possono essere gestite tramite il verbo `domanda` poiché questi esige che `<argomento>` sia sempre preceduto da `di/riguardo/circa`. Questo affinché non vi siano conflitti tra la sintassi di `chiedi` e `domanda` (dato anche quest'ultimo contempla l'uso di "_chiedi_") — laddove il primo è inteso come "chiedi per ottenere", mentre il secondo come "chiedi per sapere".
> 
> Esistono come vari metodi per implementare domande come queste, e saranno discussi nella documentazione. Allo stato attuale, tutta la parte della libreria che riguarda i dialoghi deve ancora essere testata. Una volta tradotti tutti i verbi di dialogo, sarà possibile collaudare i dialoghi e valutare se servono aggiustamenti alla libreria, e se i verbi di base sono in grado di gestire tutti i casi richiesti.

<!---------------------------------------------------------------------------->


## 2018/08/24

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.5.3
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.5.3

### Fix Verb `chiedi` (`ask_for`)

This commit fixes the verb `chiedi` (was `ask_for`) which required to temporarily make an `ACTOR` compliant in order to extract an object from it, but it didn't restore the original state of compliance, thus resulting in this verb always transforming an actor into a compliant actor.

This fix introduces a temporary attribute on `mia_AT` (`temp_condiscendente`) which is then used in verb `chiedi` to store the current compliance state of the actor before changing it, and then to restore its compliance to the original state.

For a full discussion of the problem, see [Issue #18] on [Alan StdLib upstream repository].

<!---------------------------------------------------------------------------->


## 2018/08/22 (3)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.5.2
- [`lib_classi.i`][lib_classi] &#x27f6; v0.5.2
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.5.2

### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

|  English  |  Italian   |
|-----------|------------|
| `ask_for` | `chiedere` |


### Verb: `ask_for`

Translated verb `chiedi`, "__chiedi__" (_ask for_):

    chiedi a (png) (ogg)
    chiedi (ogg) a (png)

with no synonyms.

Most of the verb messages still remain untranslated.

### Fix Actors Initialization (Again)

Again, changed the order of some code blocks within the `ACTOR`s' initialization, because the library behavior was breaking up. I've created a new `ADD TO EVERY ACTOR` block, and separated the initialization part into the new block.

Now it seems to be all fixed (and `ACTOR`s' attributes are inizialized correctly), but the code still needs some cleaning up, and the superfluos new `ADD TO` should be removed soon.


<!---------------------------------------------------------------------------->



## 2018/08/22 (2)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.5.1

### Fix Actors Initialization

Changed the order of some code blocks within the `ACTOR`s' initialization, because some actors Italian grammar attributes where not being set properly according to `articolo`.

<!---------------------------------------------------------------------------->


## 2018/08/22 (1)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.5.1
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.5.1

### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

| English  | Italian  |
|----------|----------|
| `'say'`  | `dire`   |
| `say_to` | `dire_a` |


### Verb: `say`

Translated verb `dì`, "__dì__" (_say_):

    di "(argomento)"

with no synonyms.

### Verb: `say_to`

Translated verb `dì_a`, "__dì a__" (_say_to_):

    di "(argomento)" a (png)
    di a (png) "(argomento)"

with no synonyms.


<!---------------------------------------------------------------------------->


## 2018/08/18 (2)

- [`libreria.i`][libreria] &#x27f6; v0.5.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.5.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.5.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.5.0
- [`lib_messaggi.i`][lib_messaggi] &#x27f6; v0.5.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.5.0
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.5.0

### Update to Alan 3 Beta 6

Updated to [Alan SDK 3.0beta6]  (2018/08/10):


    FEATURE: There was no way to print $500, as that was interpreted as a symbol
    BUGFIX:  There was no way to create synonym for 'the'.
    BUGFIX:  Compiler did not adhere to "Option Debug." in the source
    BUGFIX:  You could say "Container Taking " without warnings or errors even
             if the class was not allowed in container (actors and locations).
    BUGFIX:  Description Checks was not respected when auto-listing instances at
             a location.
    BUGFIX:  Improved error handling for syntax errors in names, which previously
             could cause a System Error.

All library files bumped up to v0.5.0.

### Fix Noise Words as Synomyms of `'the'`

Since Alan SDK 3 Beta 6 fixed the issue that didn't allow to create NOISE WORD as synonyms of `go`, I've changed `lib_supplemento.i` to use `'the'` as reference NOISE WORD, and removed mentioning of the original problem.



-------------------------------------------------------------------------------


# Alan 3.0beta5

## 2018/08/18 (1)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.4.18

### Group Together Verbs That Are Questions/Statements

I've added a third verbs group to keep together all verbs that are either questions or direct statement:

- `chi_è`
- `chi_sono_io`
- `cosa_è`
- `cosa_sono_io`
- `dici_No`
- `dici_Sì`
- `dove_è`
- `dove_mi_trovo`

These verbs are now grouped together after the playing commands, for they constitute a category of commands of their own because they don't follow the usual pattern of imparting a command to the hero — instead, they are direct statements or questions from the hero himself ("yes", "who am I?", etc.).

<!---------------------------------------------------------------------------->

## 2018/08/16 (2)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.4.12

### Fix Actors Initialization and Description

This commit translated the text presenting actors when locations are described. It also fixes the initialization code by swapping order of some code blocks, placing the code that handles grammar-attributes initialization (setting gender and number based on the provided `articolo` attribute) before the part that initializes `DESCRIPTION` (which relies on `plurale` being already initialized).

Here are some examples of how named and unamed `ACTOR`s and `PERSONA`s are presented in the text ouput:

```
C'è un poliziotto qui. C'è un leone qui. C'è uno scimpanzé qui. Ci sono delle
galline qui. C'è una strega qui. C'è un'arpia qui. Ci sono dei gemelli siamesi
qui. Ci sono degli sciamani qui. Ci sono delle fate qui. Mario è qui. Maria è
qui. Romeo e Giuglietta sono qui. Thelma e Louise sono qui.
```


<!---------------------------------------------------------------------------->


## 2018/08/16 (1)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.4.14
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.4.17

### Verb Responses

New verb responses attributes (created for Italian library, no English counterpart):

|     Attribute      |             Text             |
|--------------------|------------------------------|
| `azione_insensata` | `Questo non ha alcun senso.` |

> __NOTE__ — The `azione_insensata` response will be used to replace various original English messages, depending on the context, due to linguistic differences.

### Corretto Risposte Per `indossa` e `togliti`

I verbi `indossa` e `togliti` ora producono un messaggio diverso quando rivolti al protagonista:

```
> indossa l'assistente
L'assistente non è qualcosa che puoi indossare.

> indossa me
Questo non ha alcun senso.

> togliti me
Questo non ha alcun senso.
```



<!---------------------------------------------------------------------------->


## 2018/08/11

- [`lib_classi.i`][lib_classi] &#x27f6; v0.4.11
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.4.13
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.4.16

### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

| English  |        Italian        |
|----------|-----------------------|
| `remove` | `togliersi_indumento` |


### Verb Responses

Translated verb responses attributes:

|     Attribute EN    |  Attribute IT |            Text            |
|---------------------|---------------|----------------------------|
| `check_obj_in_worn` | `non_indossi` | `Non stai indossando $+1.` |


### Verb: `remove`

Translated verb `togliti`, "__togliti__" (_remove_):

    togliti (ogg)
    levati (ogg)
    sfilati (ogg)

with no synonyms.


<!---------------------------------------------------------------------------->


## 2018/08/09

- [`lib_classi.i`][lib_classi] &#x27f6; v0.4.10
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.4.12
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.4.15

### Verb Responses

Translated verb responses attributes:

|       Attribute EN       |         Attribute IT         |               Text              |
|--------------------------|------------------------------|---------------------------------|
| `hero_worn_header`       | `header_abbigliamento`       | `stai indossando`               |
| `hero_worn_else`         | `header_abbigliamento_else`  | `non stai indossando niente.`   |
| `check_obj_not_in_worn1` | `indossi_già`                | `Stai già indossando $+1.`      |
| `check_obj_not_in_worn3` | `indumento_andrebbe_rimosso` | `Prima dovresti toglierti $+1.` |

### Verb: `wear`

Translated verb `indossa`, "__indossa__" (_wear_):

    indossa (ogg)
    mettiti (ogg)

with no synonyms.


<!---------------------------------------------------------------------------->

## 2018/08/08

- [`lib_classi.i`][lib_classi] &#x27f6; v0.4.9

### Deleted `present_actor` Attribute

I've deleted the `present_actor` attribute (on `ACTOR` in `lib_classi.i`), which wasn't being referenced anywhere in the library. Anssi confirmed that it was a leftover experimental attribute. (See [Issue #14])

### Translated Actors Inventory Messages

This commit translates to Italian the `HEADER` and `EXTRACT` messages on `ACTOR` and `PERSONA`.

> __NOTE__ — The same `HEADER` and `EXTRACT` code on `ACTOR` is duplicated on `PERSONA` (except the parts that check if current actor is the `hero`, since it will ever only be of `ACTOR` type). This seems redundant, as the code on `ACTOR` is also inherited by `PERSONA`, and I had to translate both blocks in order to attain identical Italian messages.
> 
> I'm evaluating if it might be OK to remove that redundant code on `PERSONA`. The pros of keeping it is that it would ensure that the library specific `PERSONA` class will always behave as expected, even if the author changes the `ACTOR` class `HEADER`; but chances are that isn't likely to happen. I can't think of any cons, except having to remember to change messages on both classes to keep them consistent. The duplicate code doesn't really had much overhead, it's more an issue of having some duplicate code that does the exact same thing of the code in its parent class.

<!---------------------------------------------------------------------------->


## 2018/08/07

- [`lib_classi.i`][lib_classi] &#x27f6; v0.4.8

Some code cleanup: repositioning of code blocks, translated documentation comments, etc.



<!---------------------------------------------------------------------------->


## 2018/08/06 (2)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.4.7
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.4.11

This commit changes the way ACTORS are initialized in order to handle correctly named actors. To achive this, initializazion of Italian attributes (gender, number, articles, ecc.) is no longer carried out inside the `ADD TO EVERY THING` block, but on a separate block targetting only `OBJECT`, so that it won't affect some user defined attributes on ACTORs. Then `EVERY ACTOR` is initialized separately, with a code that is very similar to the one used for `OBJECT`s initialization, except that it takes into account the `named` attribute (now `nome_proprio`). The rest of the explanations are in Italian, for practical purposes dealing with the language's grammar.

### Inizializzazione di `OBJECT` anziché `THING`

La parte del codice che si occupa dell'inizializzazione degli attributi grammaticali (genere, numero, vocale, articolo determinativo e indetrminativo, e preposizioni) è stato tolto dal blocco `ADD TO EVERY THING` e spostato in un nuovo blocco `ADD TO EVERY OBJECT`.

Questo per via del fatto che l'inizializzazione sulla classe `THING` andava a sovrascrivere eventuali attributi definiti dall'utente sugli attori (poiché `THING` è la classe genitore comune a `OBJECT` ed `ACTOR`, e quindi ha la precedenza gerarchica nell'ordine di esecuzione delle inizializzazioni). Per esempio, se l'utente definiva un attore come plurale, questo attributo andava perso poiché l'inizializzazione di `THING` ripiegava sui valori predefiniti (articolo "`il`") per settare genere e numero in base all'articolo.

Questa separazione delle inizializzazioni rende più semplice e pulita la gestione delle istanze di queste due classi distinte.

### Inizializzazione di `ACTOR`

Ora è stato implmentato sulla classe `ACTOR` un codice di inizializzazione _ad hoc_, che gestisce separatamente gli attori con nome proprio. Quanto agli attori senza nome proprio, il codice è lo stesso usato su `OBJECT` (in questo caso, si tratta di sostantivi a tutti gli effetti).

In presenza di attori con `nome_proprio`, l'inizializzazione:

1. Determina la stringa di `vocale` in base a genere e numero.
2. Setta tutte le stringhe degli attributi `prep_*` con preposizioni semplici.
3. Setta `DEFINITE`/`INDEFINITE ARTICLE` con stringhe vuote.

Inoltre:

- Alla classe `femmina` è stato aggiunto l'attributo predefinito `IS femminile` (se no l'inizializzazione per attori con nome proprio femminili falliva, dato che veniva eseguita prima l'inizializzazione su `ACTOR` e `PERSONA`, e solo in seguito su `femmina`, causando una modifica dell'attributo di genere da parte del codice di inizializzazione delle classi genitore).

### Note Sugli Attori Con Nome Proprio

Gli attori possono avere un nome proprio nel gioco, oppure no. Se non lo hanno, saranno trattati dalla libreria alla stregua di qualsiasi altro oggetto (si tratta di sostantivi). Se invece hanno un nome proprio, allora la libreria dovrà inizializzare tali oggetti diversamente, come indicato sopra. Qui darò un breve sunto delle ragioni e modalità di queste differenze.

#### Attori Plurali

L'uso di attori plurali nelle AT è abbastanza comune quando si vuol rappresentare un gruppo o collettivo di attori tramite sostantivi come "la giuria", "gli operai" e via dicendo. In questo caso, essi vengono trattati dalla libreria come qualsiasi altro oggetto.

Può però capitare che si vogliano creare attori plurali con nome proprio (`HAS nome_proprio`). Questo avviene quando si vuole implementare più personaggi tramite un'unica entità attore. Ad esempio, "Romeo e Giuglietta" possono essere un singolo `ACTOR` plurale (più specificamente, un'instanza di `maschio` con attributo `IS plurale`); al giocatore verrà fatto credere di star interagendo con due personaggi poiché questa entità riconoscerà sia "Romeo" che "Giuglietta" come riferimenti ad essa, ma si tratta di un solo attore all'interno dell'avventura.

Nel caso di attori multipli con nome proprio, il genere verrà stabilito secondo le regole grammaticali italiane dell'accordo:

- se tutti i personaggi sono femminili, l'entità sarà `IS femminile`.
- se anche solo uno dei personaggi è maschile, l'entità sarà `IS NOT femminile`.

La libreria deve assicurarsi di gestire in maniera adeguata gli attributi grammaticali per gli attori con nome proprio, sia plurali che non. Dal lato dell'autore, questi dovrà solo utilizzare le sottoclassi di `persona` (`maschio` o `femmina`) e settare l'attributo `IS plurale`:

```alan
THE Romeo_Giulietta IsA maschio AT salotto.
  HAS nome_proprio.
  IS plurale.
  NAME 'Romeo e Giuglietta'.
  NAME Romeo.
  NAME Giuglietta.
END THE.

THE Thelma_Louise IsA femmina AT salotto.
  HAS nome_proprio.
  IS plurale.
  NAME 'Thelma e Louise'.
  NAME Thelma.
  NAME Louise.
END THE.
```

> __NOTA__ — Potrei creare due ulteriori sottoclassi di `persona` a tal scopo: `maschi` e `femmine`, ossia le varianti plurali dei già esistenti `maschio` e `femmina`.

#### Attori e `vocale`

Il punto __1__ menzionato sopra, serve ad assicurarsi (come avviene per gli oggetti e attori senza nome proprio) che la `vocale` di riferimento per l'accordo dei sostantivi sia gestita correttamente. 

Esempi (`"arrabbiat$$" SAY vocale OF THIS.`):

- "Marco ora è arrabbiato"
- "Gina ora è arrabbiata"
- "Romeo e Giulietta ora sono arrabbiati"
- "Thelma e Luise ora sono arrabbiate"

#### Preposizioni Semplici

Il punto __2__ menzionato sopra, serve ad assicurarsi che negli attori con nome proprio gli attributi del gruppo `prep_*` contengano le preposizioni semplici anziché quelle articolate. Questo è necessario affinché i messaggi della libreria vengano mostrati correttamente.

Esempi (`"Hai dato $+2" SAY prep_A OF THIS. "."`):

- "Hai dato il libro a Marco."
- "Hai dato il libro a Gina."
- "Hai dato il libro a Romeo e Giulietta."
- "Hai dato il libro a Thelma e Luise."

(anziché "al Marco", "alla Gina", "ai Romeo e Giuglietta" e "alle Thelma e Luise", come avveniva prima di questo commit.)

#### Articoli

In merito al punto __3__ dell'elenco inizializzazione di cui sopra:

Per gli attori con nome proprio, sia `DEFINITE ARTICLE` che `INDEFINITE ARTICLE` vengono settati a stringhe vuote. Questo affinché la libreria mostri correttamente i messaggi.

Esempi con art. determinativo (`"Non puoi $v $+1!"`):

- "Non puoi mangiare Marco!"
- "Non puoi mangiare Gina!"
- "Non puoi mangiare Romeo e Giulietta!"
- "Non puoi mangiare Thelma e Luise!"

(anziché "il Marco", "la Gina", "i Romeo e Giuglietta" e "le Themla e Luise".)

Esempi con art. indeterminativo (`"Qui puoi vedere $01."`):

- "Qui puoi vedere Marco"
- "Qui puoi vedere Gina"
- "Qui puoi vedere Romeo e Giulietta"
- "Qui puoi vedere Thelma e Luise"

(anziché "un Marco", "una Gina", "dei Romeo e Giuglietta" e "delle Themla e Luise".)

<!---------------------------------------------------------------------------->


## 2018/08/06 (1)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.4.6
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.4.14


### Library Attributes

Translated library attributes related to ACTORs:

|   English    |      Italian       |  Class  |              Type             |
|--------------|--------------------|---------|-------------------------------|
| `compliant`  | `condiscendente`   | `ACTOR` | boolean                       |
| `following`  | `seguendo`         | `ACTOR` | boolean                       |
| IS `named`   | HAS `nome_proprio` | `ACTOR` | boolean                       |
| IS `wearing` | HAS `indossati`    | `ACTOR` | set of `clothing`/`indumento` |


> __NOTE__ — There is still one untranslated ACTORs attribute left: `present_actor`; but this attribute doesn't appear anywhere in the library code except at its definition! (see [Issue #14])




<!---------------------------------------------------------------------------->


## 2018/08/02 (3)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.4.10
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.4.13

### Verb Responses

New verb responses attributes (created for Italian library, no English counterpart):

|      Attribute       |                Text                |
|----------------------|------------------------------------|
| `specificare_A_cosa` | `Devi specificare a cosa vorresti` |


### Verbs: `tie` and `tie_to`

Translated verbs `lega` and `lega_a`, "__lega__":

    lega (ogg)
    lega (ogg) a (bersaglio)

with no synonyms.

> __NOTA 1__ — In _Infit_, il verbo `lega` riconosce i seguenti sinonimi: `fissa`, `congiungi`, `unisci`, `allaccia`, `annoda`, `attacca`. Però alcuni di essi vengono usati nella forma `lega (ogg) con (ogg)`, e potrebbero quindi non essere pertinenti in questo contesto. Devo riflettere se usare alcuni di questi sinonimi o se lasciare la libertà di scelta all'autore.

<!-- sep -->

> __NOTA 2__ — Attualmente, se si cerca di legare un oggetto ad un attore con nome proprio, il verbo `lega_a` produce una preposizione articolata anziché semplice:
> 
> ```
> > lega pera a gustavo
> (taking la pera first)
> Non è possibile legare la pera al Gustavo.
> ```
> 
> Il problema non è nel verbo né nel messaggio, ma nell'inizializzazione "italiana" delle istanze di `THING`; questo verbo ha solo portato a galla il problema. Si tratta di risolvere la questione a monte, includendo nell'inizializzazione dei controlli: se l'istanza inizializzanda è un `ACTOR` con nome proprio (`IS named`) allora gli attributi `prep_*` dovrebbero essere preposizioni semplici, senza articolo.


<!---------------------------------------------------------------------------->

## 2018/08/02 (2)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.4.12

Fix English "Verbs List" in source comments.



<!---------------------------------------------------------------------------->


## 2018/08/02 (1)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.4.5
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.4.1
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.4.11


### Verbs: `kill` and `kill_with`

Translated verbs `uccidi` and `uccidi_con`, "__uccidi__":

    uccidi (vittima)
    uccidi (vittima) con (arma)

with synonyms:

    ammazza

### Verbs: `touch` and `touch_with`

Translated verbs `tocca` and `tocca_con`, "__tocca__":

    tocca (ogg)
    tocca (ogg) con (strum)

with synonyms:

    accarezza, carezza = tocca


### Code Cleanup

This commit tweaks the library source to increase code readability during work:

- Add the verb ID after `END VERB`, in all verbs.
- Add spacing around `mia_AT` attributes in SAY statements.



<!---------------------------------------------------------------------------->


## 2018/08/01 (4)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.4.9
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.4.10

### Verb Responses

New verb responses attributes (created for Italian library, no English counterpart):

|        Attribute         |               Text              |
|--------------------------|---------------------------------|
| `non_servirebbe_a_nulla` | `Farlo non servirebbe a nulla.` |

Used in the following verbs:  `bacia`, `tira`, `clean`, `rub`, `scratch`.

### Verb: `sing`

Translated verb `canta`, "__canta__" (_sing_):

    canta

with no synonyms.

### Verb: `kiss`

Translated verb `bacia`, "__bacia__" (_kiss_):

    bacia (ogg)


with synonyms:

    abbraccia

> __NOTA__ — Le risposte per questo verbo rispecchieranno il verbo usato (bacia/abbraccia), poiché usa la formula `"$vre."` nei messaggi, sfruttando il fatto che entrambi "bacia" e "abbraccia" finiscono con la "a" e si può ottenere l'infinito aggiungendovi "re"! 
> 
> L'unico problema è che se l'autore dovesse aggiungere sinonimi che terminano diversamente i messaggi sarebbero compromessi. Ma dire che per questo verbo non sono da prevedersi ulteriori sinonimi (in caso contrario, dovrà modificare il codice del verbo).

### Verb: `pull`

Translated verb `tira`, "__tira__" (_pull_):

    tira (ogg)

with no synonyms.

> __NOTA__ — In Inform 6 Italian, `trascina` è sinonimo di `tira`. Io per ora non l'ho implementato poiché i due significati non si sovrappongono del tutto.


<!---------------------------------------------------------------------------->


## 2018/08/01 (3)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.4.9


### Verbs: `attack` and `attack_with`

Translated verbs `attacca` and `attacca_con`, "__attacca__":

    attacca (bersaglio)
    attacca (bersaglio) con (arma)

with synonyms:

    combatti, picchia = attacca.


> __NOTA__ — Inform 6 Italian (_Infit_) riconosce i seguenti sinomini di `attacca`: `rompi`, `colpisci`, `combatti`, `uccidi`, `tortura`, `lotta`, `sfonda`, `ammazza` e `picchia`. 
> 
> In Alan StdLib, `uccidi` e `ammazza` rientrano nei verbi `kill` e `kill_with`; mentre `rompi` e `sfonda` rientrano in `break` e `break_with` (qui tradotti con `rompi` e `rompi_con`).
> 
> Resterebbero quindi ancora `colpisci`, `tortura` e `lotta` che non ho messo tra i sononimi di `attacca`; devo valutare se implementarli o meno:
> 
>  - `tortura` mi sembra esuli dal contesto,
>  - `lotta` richiederebbe la sintassi `lotta con` e sarebbe valido solo per gli attori, non per gli oggetti,
>  - `colpisci` sembra un buon candidato come sinonimo, a meno che non rientri in qualche altro verbo della libreria di Alan.


<!---------------------------------------------------------------------------->

## 2018/08/01 (2)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.4.8
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.4.8

This commit translates the following verbs:

- `cut` and `cut_with`
- `dance`
- `dig`

### Verb Restriction Attributes

Renamed `mia_AT` attributes for verb restrictions:

|   Old ID  |   New ID  |
|-----------|-----------|
| `danzare` | `ballare` |

### Verb Responses

New verb responses attributes (created for Italian library, no English counterpart):

|       Attribute        |                 Text                 |
|------------------------|--------------------------------------|
| `non_senti_bisogno_di` | `Al momento non senti il bisogno di` |


### Verbs: `cut` and `cut_with`

Translated verbs `taglia` and `taglia_con`, "__taglia (ogg)__" and  "__taglia (ogg) con (strumento)__":

    taglia (ogg)
    taglia (ogg) con (strum)

with no synonyms.

> __NOTA__ — Inform 6 Italian (_Infit_) riconosce i seguenti sinomini di `taglia`: `affetta`, `sfronda`, `sfoltisci`, `spacca`, `strappa`. Invece in Inform 7 Italian ho trovato solo `taglia`. Devo valutare se implementare alcuni di quei sinonimi oppure lasciare all'autore la libertà di definirli da sé.

### Verb: `dance`

Translated verb `balla`, "__balla__" (_dance_):

    balla

with synonyms:

    danza


### Verb: `dig`

Translated verb `scava`, "__scava__" (_dig_):

    scava (ogg)

with no synonyms.

> __NOTA__ — Questo verbo si limita a rispondere "`Qui non c'è nulla da scavare.`", a prescindere dal suo oggetto. Inoltre, non è presente una versione per il verbo senza parametri (es, `scava0`) per intercettarne l'uso da parte del giocatore senza specifiche dell'oggetto. Probabilmente è stato volutamente definito in maniera vaga poiché le sue possibili implementazioni possono variare da avventura ad avventura — p.es., implementare il verbo su un luogo, o richiedere che lo si usi specificando uno strumento, ecc.
> 
> La mia unica perplessità è la risposta "`Qui non c'è nulla da scavare.`", che potrebbe invece inteferire quando nel luogo vi sono altri oggetti che potrebbero effettivamente essere scavati.
> 
> Inoltre, la risposta originale inglese era: "`There is nothing suitable to dig here.`", che potrebbe anche voler dire "Non c'è nulla CON CUI scavare qui." — ma questa risposta potrebbe confondere ulteriormente, facendo pensare al giocatore che se avesse lo strumento giusto il verbo sortirebbe qualche effetto, mentre in realtà è solo un verbo "segna posto" nella libreria.
> 
> Devo riflettere meglio sul messaggio, sulle implicazioni e portata del verbo in vari contesti d'uso, e se posso migliorarlo apportandovi modifiche.


<!---------------------------------------------------------------------------->

## 2018/08/01 (1)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.4.7
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.4.7

### Verb Restriction Attributes

Translated `mia_AT` attributes for verb restrictions:

|  English  |   Italian    |
|-----------|--------------|
| `listen0` | `ascoltare0` |
| `listen`  | `ascoltare`  |


### Verb: `drive`

Translated verb `guida`, "__guida__" (_drive_):

    guida (veicolo)

with no synonyms.

### Verbs: `listen0` and `listen`

Translated verbs `ascolta0` and `ascolta`, "__ascolta__" and "__ascolta (ogg)__":

    ascolta
    ascolta (ogg)!

with no synonyms.


<!---------------------------------------------------------------------------->


## 2018/07/31 (2)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.4.6

### Verb: `free`

Translated verb `libera`, "__libera__" (_free_):

    libera (ogg)

with synonyms:

    rilascia


### Verb: `think`

Translated verb `pensa`, "__pensa__" (_think_):

    (pensa|pondera|rifletti|medita)


with synonyms:

    medita = rifletti.


### Verb: `think_about`

Translated verb `pensa_a`, "__pensa a__" (_think about_):

    pensa a (argomento)
    (rifletti|medita) su (argomento)
    pondera (argomento)

with synonyms:

    medita = rifletti.



<!---------------------------------------------------------------------------->



## 2018/07/31 (1)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.4.4
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.4.6
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.4.5

### Verb Restriction Attributes

Renamed `mia_AT` attributes for verb restrictions:

|     Old      |    New     |
|--------------|------------|
| `aggiustare` | `riparare` |


### Verb Responses

Translated verb responses attributes:

|        Attribute EN        |       Attribute IT       |                   Text                  |
|----------------------------|--------------------------|-----------------------------------------|
| `check_obj_not_broken`     | `non_succede_nulla`      | `Fatto, ma non succede nulla.`          |
| `check_obj_broken_sg`/`pl` | `ogg1_non_rotto_sg`/`pl` | `$+1 non necessita[no] di riparazioni.` |

Now all occurences of those messages have been replaced by its Italian traslation.

### Verb: `fix`

Translated verb `ripara`, "__ripara__" (_fix_):

    ripara (ogg)

with synonyms:

    aggiusta

<!---------------------------------------------------------------------------->


## 2018/07/29 (2)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.4.5

### Remove Verb Restriction Attributes

Removed `mia_AT` attributes for verb restrictions:

|     English      |  Italian  |
|------------------|-----------|
| ~~`switch_on`~~  | _removed_ |
| ~~`switch_off`~~ | _removed_ |


<!---------------------------------------------------------------------------->

## 2018/07/29 (1)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.4.4
- [`lib_classi.i`][lib_classi] &#x27f6; v0.4.3
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.4.4

This commit translates and adapts to Italian the group of verbs and attributes that deal with switching on/of devices and lightsources. Because it required complex structural changes due to the differences in the two languages, all the explanations will be in Italian only!

### Accendere/Spegnere Dispositivi e Fonti di Luce

Queste modifiche interessano i verbi e gli attributi che si occupano di accendere e spegnere dispositivi e fonti di luce (naturali e non). Le differenze tra le due lingue nell'uso dei verbi interessati mi ha costretto ad apportare modifiche significative alle parti della libreria che li gestiscono.

Esporrò sia le modifiche che le ragioni di tali modifiche.

### Il Nocciolo del Problema

La libreria distingue tra dispositivi e fonti di luce naturali o artificiali (`NOT naturale`) tramite le classi `dispositivo` e `fonte_di_luce`, sulle quali sono implementati i vari verbi in maniera differente tra loro.

Il nocciolo del problema riguarda il fatto che in inglese sono presenti più verbi per indicare l'azione di accendere/spegnere gli uni o gli altri di quesi diversi tipi di oggetti, mentre in italiano i verbi accendere/spegnere sono tranquillamente applicabili sia agli uni che agli altri:

- "accendi/spegni la candela" (`fonte_di_luce` naturale)
- "accendi/spegni la lampadina" (`fonte_di_luce` non naturale)
- "accendi/spegni il frullatore" (`dispostivo`)

Questo ha comportato l'abolizione di alcuni verbi inglesi della libreria e il rinominare alcuni verbi che erano specifici per le fonti di luce naturali. In altre parole, ho dovuto semplificare queta parte della libreria.

Questa tabella indica lo stato dei verbi originali e quelli attuali, dopo la loro traduzione, riadattazione e rimozione dei verbi superflui:

|          Classe          |   Verbo EN    |   Verbo IT  |
|--------------------------|--------------|-------------|
| `dispostivo`             | `switch`     | _eliminato_ |
| `fonte_di_luce`          | `switch`     | _eliminato_ |
| `dispostivo`             | `turn_on`    | `accendi`   |
| `dispostivo`             | `turn_off`   | `spegni`    |
| `fonte_di_luce` naturale | `turn_on`    | _eliminato_ |
| `fonte_di_luce` naturale | `turn_off`   | _eliminato_ |
| `fonte_di_luce`          | `light`      | `accendi`   |
| `fonte_di_luce`          | `extinguish` | `spegni`    |

... e, per quanto riguarda le versioni generiche di questi verbi, implementate su ogni oggetto per intercettarne gli usi impropri, queste sono le modifiche:

|   Verbo EN   |   Verbo IT  |
|--------------|-------------|
| `switch`     | _eliminato_ |
| `turn_on`    | `accendere` |
| `turn_off`   | `spegnere`  |
| `light`      | _eliminato_ |
| `extinguish` | _eliminato_ |

Ovviamente, questa serie di riadattamenti ha richiesto varie modifiche al codice di SYNTAX e VERB della libreria originale.

Praticamente, poiché in Italiano i verbi accendi/spegni funzioneranno sia per i dispositivi che le fonti di luci (naturali o meno), ho abolito i verbi specifici per l'accensione/spegnimento di sole luci naturali (`turn_on`/`off`) e rinominato i restanti su entrambe le classi come `accendi`/`spegni` — stesse sintassi, corpi di verbi eseguiti diversi, determinati dalla classe dai cui eredita l'istanza che il giocatore tenta di accendere/spegnere!

Quanto al verbo `switch`, che in inglese serviva a passare da uno stato all'altro (acceso/spento), esso non trova equivalenti in italiano e l'ho perciò eliminato.

In teoria, avrei potuto preservare `extinguish` e tradurlo con `estingui` ("estingui la candela/il fuoco"), e magari `light` tradurlo cone `dai fuoco a`, ma queste sintassi non sono versatali come gli equivalenti inglesi e in italiano non sarebbero altrettanto applicabili a tutte le fonti di luce naturale. Siccome l'aspettativa naturale è che il giocatore usi "accendi/spegni" in questi frangenti, ho preferito elimiare questi verbi e lasciare che sia l'autore a implementarli se proprio gli servono.

### Abolizione dell'Attributo `naturale`

In virtù delle modifiche sopramenzionate, l'attributo `naturale` per le fonti di luce viene meno al suo scopo: esso veniva impiegato in quei verbi inglesi che dovevano interagire solo con fonti di luce artificiali (`switch`). Siccome ora usiamo solo i verbi accendi/spegni per tutti i tipi di luci e per i dispostivi, la distinzione diventa superlua. Inoltre, nel codice della libreria non si fa più riferimento a questo attributo.

In teoria, poteva essere utile all'utente finale in certi contesti, ma questi potrà implementare tale attributo da sé; mentre ritengo invece che non dovrebbero essere presenti nella libreria attributi non utilizzati da essa.

### Rilfessioni sull'Attributo `illuminato`

Sempre in virtù dei suddetti cambiamenti, avevo valutato di abbandonare l'attributo `illuminato` (nella classe `fonte_di_luce`) in favore di `acceso` (attributo già presente su ogni `THING`), proprio come accade con i dispositivi. 

Le argomentazioni a favore di tale scelta sarebbero che quest'ultimo è più rappresentativo dei verbi utilizzati per cambiare tale stato (`illuminato` non è granché azzeccato) ed è preferibile avere un solo identificativo da ricordare.

Le argomentazioni a sfavore di tale scelta sono che l'attributo non crea particolari complicazioni e potrebbe benissimo essere lasciato così com'è.

Però ho poi considerato la possibilità che si vogliano creare oggetti che possano essere sia accesi/spenti che illuminati/non-illuminati. Per esempio, un dispositivo elettrico o meccanico che abbia anche (ma non solo) l'opzione di emettere luce. Un'automobile potrebbe essere accesa (motore acceso) ma il suo abitacolo non-illuminato. In tali contesti, l'uso di un solo attributo al posto degli attuali due complicherebbe la creazione di tali oggetti.

Per prudenza, ho preferito lasciare questo attributo così com'è, e prendermi del tempo per valutare più a fondo se rimpiazzarlo con `acceso` possa portare dei reali benefici (oltre a quelli menzionati sopra). Ho comunque provato a operare tale sostituzione ai fini dei test, e non mi sono imbattuto in problematiche tecniche, quindi la sostituzione è fattibile.

### Verb Restriction Attributes

Questa serie di modifiche riguarda anche gli attributi per le restrizioni verbali della `mia_AT`: gli attributi che facevano riferimento a verbi rimossi sono stati anch'essi rimossi, gli altri tradotti.

|   English    |   Italian   |
|--------------|-------------|
| `switch`     | _eliminato_ |
| `turn_on`    | `accendere` |
| `turn_off`   | `spegnere`  |
| `light`      | _eliminato_ |
| `extinguish` | _eliminato_ |


### Testo dei Verbi

Ho tradotto in italiano il testo prodotto dai verbi sopramenzionati, e anche quello del verbo `esamina` su `dispositivo` e `fonte_di_luce` — ma non ho tradotto ancora tutti i messaggi di risposta che usano attributi `mia_AT`!

<!---------------------------------------------------------------------------->



## 2018/07/28 (3)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.4.3
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.4.3

### Verb Responses

- Removed all occurences of `illegal_parameter_on_sg`/`pl` and replaced them with Italian message instead.



<!---------------------------------------------------------------------------->



## 2018/07/28 (2)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.4.2
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.4.2

### Verb Responses

Translated verb responses attributes:

|        Attribute EN        |          Attribute IT          |                Text               |
|----------------------------|--------------------------------|-----------------------------------|
| `ogg1_illegale_SU_sg`/`pl` | `illegal_parameter_on_sg`/`pl` | `$+1 non è qualcosa su cui poter` |


> __NOTE__ — The original EN `illegal_parameter_on_sg`/`pl` can't be delete because the `turn_on` verb still uses it because the Italian message above doesn't match with its expected response, and I'll have to use another _ad hoc_ message.


<!-- 
| `xxx`/`pl`   | `xxx`/`pl`   | `xxx` |
 -->

### Verb Restriction Attributes

Translated `my_game` attributes for verb restrictions:

| English  |   Italian    |
|----------|--------------|
| `sit`    | `sedersi`    |
| `sit_on` | `sedersi_su` |


### Verbs: `sit` and `sit_on`

Translated verbs `siediti` and `siediti_su`, "__siediti__":

    siediti
    siediti su (superficie)


with synonyms:

    siedi = 'siediti'



<!---------------------------------------------------------------------------->



## 2018/07/28 (1)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.4.1
- [`lib_classi.i`][lib_classi] &#x27f6; v0.4.2
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.4.1

### Verb Restriction Attributes

Translated `my_game` attributes for verb restrictions:

|    English    |     Italian     |
|---------------|-----------------|
| `answer`      | `rispondere`    |
| `attack`      | `attaccare`     |
| `attack_with` | `attaccare_con` |
| `fill`        | `riempire`      |
| `fill_with`   | `riempire_con`  |
| `fix`         | `aggiustare`    |
| `tie`         | `legare`        |
| `tie_to`      | `legare_a`      |
| `touch`       | `toccare`       |
| `touch_with`  | `toccare_con`   |


### Verb: `answer`

Translated verb `rispondi` (_answer_):

    rispondi (argomento)

with no synonyms.

Where `argomento` is a string.

### Verbs: `fill` and `fill_with`

Translated verbs `riempi` and `riempi_con` (_fill_ and _fill with_):

    riempi (cont)
    riempi (cont) con (sostanza)

with no synonyms (for now).



<!---------------------------------------------------------------------------->


## 2018/07/27 (7)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.4.1

Translated some more commented documentation of the Library classes.



<!---------------------------------------------------------------------------->


## 2018/07/27 (6)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.4.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.4.0

This is a major update introducing new global features to the Italian library. Therefore, all library files are bumped up to version `0.4.0`, even those whose code wasn't changed to introduce the new feature:

- [`libreria.i`][libreria] &#x27f6; v0.4.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.4.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.4.0
- [`lib_messaggi.i`][lib_messaggi] &#x27f6; v0.4.0
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.4.0

### New THING Attribute `vocale` for Adjectives Conjucation

#### Italian Adjectives Refresher

In Italian an adjective must agree in gender and number with the noun it refers to. In practical terms, this affects the last vowel of the adjective, the common conjucation rule being:

|               | singular | plural |
|---------------|----------|--------|
| __masculine__ | `o`      | `i`    |
| __feminine__  | `a`      | `e`    |

Some examples:

| masculine sing. | masculine plur. | feminine sing. | feminine plur. | (English meaning) |
|-----------------|-----------------|----------------|----------------|-------------------|
| bello           | belli           | bella          | belle          | _beautiful_       |
| caro            | cari            | cara           | care           | _dear_            |
| alto            | alti            | alta           | alte           | _tall_            |
| corto           | corti           | corta          | corte          | _short_           |

Some adjectives follow a different conjucation form, depending on their ending form ("-co", -cio", "-e", and others). Some examples:



| masculine sing. | masculine plur. | feminine sing. | feminine plur. | (English meaning) |
|-----------------|-----------------|----------------|----------------|-------------------|
| ricco           | ricchi          | ricca          | ricche         | _rich_            |
| cieco           | ciechi          | cieca          | cieche         | _blind_           |
| triste          | tristi          | triste         | tristi         | _sad_             |
| felice          | felici          | felice         | felici         | _happy_           |
| marcio          | marci           | marcia         | marce          | _rotten_          |
| conscio         | consci          | conscia        | consce         | _conscious_       |

These type of adjectives are not covered by the new feature presented in this commit.

#### Adjectives and The Library

Currently, when a VERB has to print out an adjective refering to a parameter, it requires to check its gender and number to decide which vowel to end the adjective with.

Here is a real example of such checks, taken from the "`lib_verbi.i`" module:

```alan
"bloccat$$"
IF ogg IS NOT femminile
  THEN
    IF ogg IS NOT plurale
      THEN "o." -- GNA = msi
      ELSE "i." -- GNA = mpi
    END IF.
  ELSE
    IF ogg IS NOT plurale
      THEN "a." -- GNA = fsi
      ELSE "e." -- GNA = fpi
    END IF.
END IF.
```

Of course, similar conditional block can handle any form of adjectives (including the exceptions mentioned above) because when coding the verb we already know the adjective at hand that needs to be printed, and can handle conditional checks accordingly.

But the "o/i/a/e" conjucation is the most common one, so this features focus on that in particular and aims at reducing in size verb definitions and getting rid of nested conditional blocks like the one presented above.

#### The `vocale` Attribute

As a solution, I've introduced on every `THING` the new attribute `vocale`, which is a string containing the vowel that should be used to conjucate adjectives refering to it. This way, any adjective that follows the common "o/i/a/e" conjucation can simply append blindly to itself the string of the instance's `vocale` attribute.

Thanks to the new system, the code show above was now replaced by this single line of code:

```alan
"bloccat$$" SAY ogg:vocale. "$$."
```

... or, if one doesn't want to use the `:` shorthand:

```alan
"bloccat$$" SAY vocale OF ogg. "$$."
```


This is a considerable gain in terms of code verbosity, not only for the library internal verb definitions but also for end users who can benefit from the `vocale` attribute in their own adventure code!

While having another attribute added to every `THING` in the game might add some memory bloat, it's still worth it because it reduces the code size of VERBs. I don't think that having an extra single-char string on every `THING` instance in the game is going to affect drastically any adventure, even very large ones. Weighing the pros and cons of this features vs the old system, there is no doubt that it makes the library code not only slimmer but also more readable and easier to maintain; plus, it's going to make life much easier for authors who need to implement custom verbs and messages in their adventures.

Theorically, having dropped nested branching code blocks in favour of retriving a string attribute should be faster in terms of execution (branching can affect negatively the CPU cache and consume more registers), but I seriously doubt that this could lead to any noticeable perfomance gains — modern PCs are so powerful that running Text Adventures (even truly huge ones) is a trivial task for the CPU, and memory has become so cheap today that the whole adventure will surely fit entirely into the RAM of any computer, even a NetBook.

##### Auto-Initialization Behind the Scenes

The contents of `vocale` are auto-magically handled by the library behind the scenes at initialization time — the `articolo` attribute provided by the adventure author is referenced to establish the required vowel. This is handled within the library code that already deals with initialization of gender, number and definite/indefinite articles on every instance. 

So this new feature doesn't add any burden on the authors' side since it doesn't require additional attributes to be declared on instances.

Adjectives which follow different conjucation rules will simply ignore `vocale` and use a conditional gender/number block as usual.


<!---------------------------------------------------------------------------->


## 2018/07/27 (5)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.3.18
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.3.21

Just small comments adjustments and source cleanup.

<!---------------------------------------------------------------------------->



## 2018/07/27 (4)


- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.3.17
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.3.20

### Translated Verb Responses + Attributes

|        EN Attribute        |       IT Attribute      |           Text          |
|----------------------------|-------------------------|-------------------------|
| `illegal_parameter_go`     | `destinazione_invalida` | `Non puoi andare lì.`   |
| `check_obj_not_hero4`      | `sei_già_qui`           | `Ti trovi già qui!`     |
| `check_obj_not_at_hero_sg` | `ogg1_già_qui_sg`       | `$+1 è proprio qui.`    |
| `check_obj_not_at_hero_pl` | `ogg1_già_qui_pl`       | `$+1 sono proprio qui.` |


### Verb: `find`

Translated verb `trova`, (_find_):

    trova (ogg)

with no synonyms.


<!---------------------------------------------------------------------------->


## 2018/07/27 (3)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.3.16

Small fixes and cleanup; also fixes an English verb response (`check_act_near_hero`) that accidentally contained a side comment in its string (due to multiline string lacking closing quotes).

<!---------------------------------------------------------------------------->


## 2018/07/27 (2)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.3.15
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.3.19

### Translated Verb Responses + Attributes

|     EN Attribute     |     IT Attribute    |
|----------------------|---------------------|
| `check_obj_in_hero`  | `non_possiedi_ogg1` |
| `check_obj2_in_hero` | `non_possiedi_ogg2` |

Now the original English attributes are no longer needed and have been removed from source!

### Italian Responses For Illegal Obj2 With

Implemented Italian translation of `check_obj2_suitable_with_sg`/`pl` to all verbs (even not translated ones).


|          EN Attribute         |      IT Attribute      |
|-------------------------------|------------------------|
| `check_obj2_suitable_with_sg` | `ogg2_illegale_CON_sg` |
| `check_obj2_suitable_with_pl` | `ogg2_illegale_CON_pl` |

Now the English attributes are no longer required in the library for all occurence have been replaced by their italian translation!


> __NOTA__ — Con `ogg2_illegale_CON_sg`/`pl` abbiamo tradotto sia`illegal_parameter2_with_sg`/`pl` che `check_obj2_suitable_with_sg`/`pl`. Nel nostro sistema italiano, non distinguiamo tra messaggi causati dai controlli della SYNTAX o del corpo del verbo. Inoltre, i due gruppi di messaggi originali producevano lo stesso output.
> 
> Credo che l'idea base della libreria originale di voler separare tra messaggi uguali elicitati da parti diverse del verbo consistesse nell'agevolare l'utente finale a poter personalizzare uno o l'altro indipendentemente tra loro. A mio avviso, questo problema non sussiste nella libreria italiana, per varie ragioni. Ad ogni modo, se dovesse mai risultare utile introdurre tale separazione sarà possibile farlo più avanti. Al momento è più facile lavorare senza troppi duplicati.

<!---------------------------------------------------------------------------->


## 2018/07/27 (1)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.3.14
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.3.18

### Italian Responses For Illegal Obj2 With

Implemented Italian translation of `illegal_parameter2_with_sg`/`pl` to all verbs (even not translated ones).


|         EN Attribute         |      IT Attribute      |
|------------------------------|------------------------|
| `illegal_parameter2_with_sg` | `ogg2_illegale_CON_sg` |
| `illegal_parameter2_with_pl` | `ogg2_illegale_CON_pl` |

Now the original `illegal_parameter2_with_sg`/`pl` is no longer needed and was commented out!

<!---------------------------------------------------------------------------->


## 2018/07/26 (10)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.3.6
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.3.13
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.3.17

### Verb Response Attributes Renaming

Some small tweaks in naming convention (reasons why explained in Italian).

### Renamed Verb Responses

Rename ``imp_ogg_chiuso_*` to `imp_ogg1_chiuso_*`:

|        Before        |       Renamed        |
|----------------------|----------------------|
| `imp_ogg_chiuso_sgm` | `imp_ogg1_chiuso_ms` |
| `imp_ogg_chiuso_plm` | `imp_ogg1_chiuso_mp` |
| `imp_ogg_chiuso_sgf` | `imp_ogg1_chiuso_fs` |
| `imp_ogg_chiuso_plf` | `imp_ogg1_chiuso_fp` |

> __MOTIVAZIONE__ — Negli attributi per le risposte dei verbi, `ogg1` e `ogg2` vengono adottati laddove la stringa del messaggio è diversa per il primo ed il secondo parametro (per via dell'uso di `$1` e `$2`, rispettamente).
> 
> In quegli attributi in cui il messaggio è adatto a qualsiasi parametro, si userà semplicemente `ogg`.
> 
> Si noti inoltre come nella rinomina degli attributi qui sopra si siano accorciati i suffissi. D'ora in poi si adotterà la seguente convenzione:
> 
> - `sg`/`pl`: per i messaggi disponibili in un'unica versione singolare e plurale per entrambi i generi,
> - `ms`/`mp`/`fs`/`fp`: per quei messaggi disponibili in versione maschile-singolare, maschile-plurale, femminile-singolare e femminile-plurale, poiché richiedono un preciso accordo di genere e numero.
> 
> La versione precedente (a tre lettere) era poco intuitiva, mentre i suffissi di due lettere sono più immediati — inoltre, il contesto in cui appaiono non lascia dubbio circa il loro significato ed utilizzo.

#### Changed Suffixes

Quindi, in base a quanto appena detto, tutti i suffissi degli attributi messaggi tradotti vengono rinominati secondo tale schema:

|           | neutro | maschile | femminile |
|-----------|--------|----------|-----------|
| singolare | `_sg`  | `_ms`    | `_fs`     |
| plurale   | `_pl`  | `_mp`    | `_fp`     |

#### Other Responses Renames

Some other translated response-attributes:

|            Before            |        Renamed         |
|------------------------------|------------------------|
| `parametro2_illegale_CON_sg` | `ogg2_illegale_CON_sg` |
| `parametro2_illegale_CON_pl` | `ogg2_illegale_CON_pl` |

> Come già detto, ci limiteremo a usare `ogg` o `ogg1`/`ogg2`, perché sono più brevi e rendono l'idea.

|            Before            |     Renamed      |
|------------------------------|------------------|
| `check_locazione_illuminata` | `imp_luogo_buio` |

> __MOTIVAZIONE__ — Il sistema adottato dalla libreria originale, che usa `check_` per distinguere tra i messaggi invocati duranti un verb check da quelli del corpo del verbo, poco si addice al sistema adottato dalla libreria italiana (poiché la limitazione linguistica a poter usare `$v`, come si fa con l'inglese, ne vanifica lo scopo). Cercheremo quindi di adottare un sistema di nomi degli attributi che sia indicativo della natura del messagio, anziché del controllo effettuato.
> 
> Ho usato qui (come anche in altri attributi) un prefisso `imp_` per indicare un problema che impedisce il compimento dell'azione. Probabilmente verrà successivamente cambiato poiché non mi soddisfa del tutto, ma per ora lo utilizzerò per accomunare certi tipi di messaggi.

<!-- 
| `xxx`                        | `xxx`   |
 -->

<!---------------------------------------------------------------------------->


## 2018/07/26 (9)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.3.12
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.3.16

### Translate Verb Responses for Closed Obj2 Blocking the Action

Translated and substituted the following verb responses attributes:

|     Attribute EN     |         Attribute IT         |                      Text                     |
|----------------------|------------------------------|-----------------------------------------------|
| `check_obj2_open_sg` | `imp_ogg2_chiuso_sgm`/`_sgf` | `Non puoi farlo perché $+2 è chiuso"`/`a.`    |
| `check_obj2_open_pl` | `imp_ogg2_chiuso_plm`/`_plf` | `Non puoi farlo perché $+2 sono chiusi.`/`e.` |

Similar to changes in previous commit. Code changed:

```alan
      AND cont IS aperto
        ELSE
          IF cont IS NOT plurale --> "You can't, since $+1 [is/are] closed."
            THEN SAY check_obj2_open_sg OF mia_AT.
            ELSE SAY check_obj2_open_pl OF mia_AT.
          END IF.

```

... to:

```alan
AND cont IS aperto
  ELSE
    IF cont IS NOT femminile
      THEN
        IF cont IS NOT plurale
          THEN SAY imp_ogg2_chiuso_sgm OF mia_AT.
          ELSE SAY imp_ogg2_chiuso_plm OF mia_AT.
        END IF.
      ELSE
        IF cont IS NOT plurale
          THEN SAY imp_ogg2_chiuso_sgf OF mia_AT.
          ELSE SAY imp_ogg2_chiuso_plf OF mia_AT.
        END IF.
    END IF.
```



<!---------------------------------------------------------------------------->


## 2018/07/26 (8)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.3.11
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.3.15

### Translate Verb Responses for Closed Obj1 Blocking the Action

Translated and substituted the following verb responses attributes:

|     Attribute EN     |         Attribute IT        |                      Text                     |
|----------------------|-----------------------------|-----------------------------------------------|
| `check_obj_open2_sg` | `imp_ogg_chiuso_sgm`/`_sgf` | `Non puoi farlo perché $+1 è chiuso"`/`a.`    |
| `check_obj_open2_pl` | `imp_ogg_chiuso_plm`/`_plf` | `Non puoi farlo perché $+1 sono chiusi.`/`e.` |

Similar to changes in previous commit. Code changed:

```alan
    AND ogg IS aperto
      ELSE
        IF ogg IS NOT plurale
          THEN SAY check_obj_open2_sg OF mia_AT.
          ELSE SAY check_obj_open2_pl OF mia_AT.
        END IF.

```

... to:

```alan
AND ogg IS aperto
  ELSE
    IF ogg IS NOT femminile
      THEN
        IF ogg IS NOT plurale
          THEN SAY imp_ogg_chiuso_sgm OF mia_AT.
          ELSE SAY imp_ogg_chiuso_plm OF mia_AT.
        END IF.
      ELSE
        IF ogg IS NOT plurale
          THEN SAY imp_ogg_chiuso_sgf OF mia_AT.
          ELSE SAY imp_ogg_chiuso_plf OF mia_AT.
        END IF.
    END IF.
```


<!---------------------------------------------------------------------------->


## 2018/07/26 (7)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.3.10
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.3.14

### Translate Verb Responses for Already Unlocked Objects

Translated and substituted the following verb responses attributes:

|      Attribute EN     |          Attribute IT          |              Text              |
|-----------------------|--------------------------------|--------------------------------|
| `check_obj_locked_sg` | `ogg_già_sbloccato_sgm`/`_sgf` | `$+1 è già sbloccato.`/`a.`    |
| `check_obj_locked_pl` | `ogg_già_sbloccato_plm`/`_plf` | `$+1 sono già sbloccati.`/`e.` |

Similar to changes in previous commit. Code changed:

```alan
    AND ogg IS bloccato
          ELSE
        IF ogg IS NOT plurale
          THEN SAY check_obj_locked_sg OF mia_AT.
          ELSE SAY check_obj_locked_pl OF mia_AT.
        END IF.
```

... to:

```alan
AND ogg IS bloccato
  ELSE
    IF ogg IS NOT femminile
      THEN
        IF ogg IS NOT plurale
          THEN SAY ogg_già_sbloccato_sgm OF mia_AT.
          ELSE SAY ogg_già_sbloccato_plm OF mia_AT.
        END IF.
      ELSE
        IF ogg IS NOT plurale
          THEN SAY ogg_già_sbloccato_sgf OF mia_AT.
          ELSE SAY ogg_già_sbloccato_plf OF mia_AT.
        END IF.
    END IF.
```


<!---------------------------------------------------------------------------->


## 2018/07/26 (6)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.3.9
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.3.13

### Translate Verb Responses for Already Locked Objects

Translated and substituted the following verb responses attributes:

|        Attribute EN       |          Attribute IT         |              Text             |
|---------------------------|-------------------------------|-------------------------------|
| `check_obj_not_locked_sg` | `ogg_già_bloccato_sgm`/`_sgf` | `$+1 è già bloccato.`/`a.`    |
| `check_obj_not_locked_pl` | `ogg_già_bloccato_plm`/`_plf` | `$+1 sono già bloccati.`/`e.` |

Similar to changes in previous commit. Code changed:

```alan
    AND ogg IS NOT bloccato
          ELSE
        IF ogg IS NOT plurale -- @TODO:                                         TRANSLATE!
          THEN SAY check_obj_not_locked_sg OF mia_AT.
          ELSE SAY check_obj_not_locked_pl OF mia_AT.
      END IF.

```

... to:

```alan
AND ogg IS NOT bloccato
  ELSE
    IF ogg IS NOT femminile
      THEN
        IF ogg IS NOT plurale
          THEN SAY ogg_già_bloccato_sgm OF mia_AT.
          ELSE SAY ogg_già_bloccato_plm OF mia_AT.
        END IF.
      ELSE
        IF ogg IS NOT plurale
          THEN SAY ogg_già_bloccato_sgf OF mia_AT.
          ELSE SAY ogg_già_bloccato_plf OF mia_AT.
        END IF.
    END IF.
```


<!---------------------------------------------------------------------------->


## 2018/07/26 (5)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.3.8
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.3.12

### Translate Verb Responses for Already Close Objects

Translated and substituted the following verb responses attributes:

|     Attribute EN     |         Attribute IT        |             Text            |
|----------------------|-----------------------------|-----------------------------|
| `check_obj_open1_sg` | `ogg_già_chiuso_sgm`/`_sgf` | `$+1 è già chiuso.`/`a.`    |
| `check_obj_open1_pl` | `ogg_già_chiuso_plm`/`_plf` | `$+1 sono già chiusi.`/`e.` |

Similar to changes in previous commit. Code changed:

```alan
    AND ogg IS aperto
      ELSE
        IF ogg IS NOT plurale
          THEN SAY check_obj_open1_sg OF mia_AT.
          ELSE SAY check_obj_open1_pl OF mia_AT.
        END IF.
```

... to:

```alan
AND ogg IS aperto
  ELSE
    IF ogg IS NOT femminile
      THEN
        IF ogg IS NOT plurale
          THEN SAY ogg_già_chiuso_sgm OF mia_AT.
          ELSE SAY ogg_già_chiuso_plm OF mia_AT.
        END IF.
      ELSE
        IF ogg IS NOT plurale
          THEN SAY ogg_già_chiuso_sgf OF mia_AT.
          ELSE SAY ogg_già_chiuso_plf OF mia_AT.
        END IF.
    END IF.
```



<!---------------------------------------------------------------------------->


## 2018/07/26 (4)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.3.7
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.3.11

### Translate Verb Responses for Already Open Objects

Translated and substituted the following verb responses attributes:

|       Attribute EN      |         Attribute IT        |             Text            |
|-------------------------|-----------------------------|-----------------------------|
| `check_obj_not_open_sg` | `ogg_già_aperto_sgm`/`_sgf` | `$+1 è già aperto.`/`a.`    |
| `check_obj_not_open_pl` | `ogg_già_aperto_plm`/`_plf` | `$+1 sono già aperti.`/`e.` |

Italian requires distinguishing also between feminine and mascunline here, so there are actually four variants of the message insted of just two (sing. and plur.). This also means that the code was changed from:

```alan
AND ogg IS NOT aperto
  ELSE
    IF ogg IS NOT plurale
      THEN SAY check_obj_not_open_sg OF mia_AT.
      ELSE SAY check_obj_not_open_pl OF mia_AT.
    END IF.
```

... to:

```alan
AND ogg IS NOT aperto
  ELSE
    IF ogg IS NOT femminile
      THEN
        IF ogg IS NOT plurale
          THEN SAY ogg_già_aperto_sgm OF mia_AT.
          ELSE SAY ogg_già_aperto_plm OF mia_AT.
        END IF.
      ELSE
        IF ogg IS NOT plurale
          THEN SAY ogg_già_aperto_sgf OF mia_AT.
          ELSE SAY ogg_già_aperto_plf OF mia_AT.
        END IF.
    END IF.
```


<!---------------------------------------------------------------------------->


## 2018/07/26 (3)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.3.5
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.3.6
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.3.10

### Translate Verb Responses for Distant Params

Translated and substituted the following verb responses attributes:

|         Attribute EN        |    Attribute IT    |             Text            |
|-----------------------------|--------------------|-----------------------------|
| `check_obj_not_distant_sg`  | `ogg1_distante_sg` | `$+1 è troppo distante.`    |
| `check_obj_not_distant_pl`  | `ogg1_distante_pl` | `$+1 sono troppo distanti.` |
| `check_obj2_not_distant_sg` | `ogg2_distante_sg` | `$+2 è troppo distante.`    |
| `check_obj2_not_distant_pl` | `ogg2_distante_pl` | `$+2 sono troppo distanti.` |



<!---------------------------------------------------------------------------->


## 2018/07/26 (2)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.3.9

### Implement Italian Verb Responses

#### Param 1 Illegal or Unsuitable

Change almost all occurences of `illegal_parameter_sg`/`pl` and `check_obj_suitable_sg`/`pl` with `ogg1_inadatto_sg`/`pl` (the two English responses map to a single Italian response).

These changes affect also verbs which haven't been translated yet, as long as the Italian response will apply to it once translated (which is usually the case).

Now there are only very few verbs left which still use the English responses: these are verbs for which the `ogg1_inadatto_sg`/`pl` response doesn't quite fit in Italian due to semantic differences, or verbs for which I still haven't worked out the Italian equivalent verb.

Therefore, I can't yet delete the `illegal_parameter_sg`/`pl` and `check_obj_suitable_sg`/`pl` English attributes from the "`lib_definizioni.i`" module because a small number of verbs still rely on them.



<!---------------------------------------------------------------------------->



## 2018/07/26 (1)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.3.8

### Polish and Fix Translated Verbs 

This commit cleans up the verbs so far translated:

- Annotate untranslated responses
- Fix some incorrect parameters references (error in original Lib code)
- Apply available Italian responses (attributes) to some translated verbs whose code still references the English response.

### Verb Parameters Fixes

This commit also fixes some erroneus parameters references in the original library code (See my [PR #12 on StdLib])

This is the lis of verbs that had wrong parameters referencing in their checks, and which are now fixed:

|      verb     | wrong param | fixed param |
|---------------|-------------|-------------|
| `apri_con`    | `ogg`       | `strum`     |
| `blocca_con`  | `ogg`       | `chiave`    |
| `brucia_con`  | `ogg`       | `strum`     |
| `chiudi_con`  | `ogg`       | `strum`     |
| `cut_with`    | `ogg`       | `strum`     |
| `dai_a`       | `ogg`       | `ricevente` |
| `empty_in`    | `ogg`       | `cont`      |
| `prendi_da`   | `ogg`       | `detentore` |
| `pry_with`    | `ogg`       | `strum`     |
| `push_with`   | `ogg`       | `strum`     |
| `rompi_con`   | `ogg`       | `strum`     |
| `sblocca_con` | `ogg`       | `chiave`    |
| `touch_with`  | `ogg`       | `strum`     |




<!---------------------------------------------------------------------------->


## 2018/07/25 (8)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.3.6
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.3.7


### Verb Restriction Attributes

Translated `my_game` attributes for verb restrictions:

| English |  Italian  |
|---------|-----------|
| `yes`   | `dire_sì` |
| `'no'`  | `dire_no` |


### Verbs: `yes` and `no`

Translated verbs `dici_Sì` and `dici_No`, "__sì__" and "__no__":

    sì
    no

with no synonyms.

> __NOTA__ — Ho scelto di dare il suffisso `dire_*` all'attributo `mia_AT` (ex `my_game`) e `dici_*` all'ID del verbo (seguito da lettera maiuscola) per consentire di tenere vicini (in orderine Alfa/Asciibetico) questi due attributi/verbi correlati.
> 
> Inoltre, ritengo siano forme più chiare rispetto agli originali `yes` e `no`, poiché i suffissi forniscono un contesto più chiaro a questi due "verbi" anomali (che verbi proprio non sono).
> 
> L'utilità di questi due "verbi" è per poter implementare alla bisogna l'intercettazione di risposte "Sì/No" dal giocatore a domande postegli dal gioco (es. "_Vuoi ...?_").

<!---------------------------------------------------------------------------->


## 2018/07/25 (7)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.3.6

Reorder translated verbs alphabetically.

<!---------------------------------------------------------------------------->



## 2018/07/25 (6)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.3.4
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.3.5


### Verb Restriction Attributes

Translated `my_game` attributes for verb restrictions:

|   English   |    Italian    |
|-------------|---------------|
| `'play'`    | `suonare`     |
| `play_with` | `giocare_con` |

### Verb: `play`

Translated verb `suona`, (_play_):

    suona (ogg)

with no synonyms.

### Verb: `play_with`

Translated verb `gioca_con`, (_play with_):

    gioca con (ogg)

with no synonyms.



<!---------------------------------------------------------------------------->



## 2018/07/25 (5)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.3.3
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.3.4


### Verb Restriction Attributes

Translated `my_game` attributes for verb restrictions:

|    English    |    Italian    |
|---------------|---------------|
| `dive`        | `tuffarsi`    |
| `dive_in`     | `tuffarsi_in` |
| `drive`       | `guidare`     |
| `'empty'`     | `svuotare`    |
| `empty_in`    | `svuotare_in` |
| `empty_on`    | `svuotare_su` |
| `knock`       | `bussare`     |
| `sing`        | `cantare`     |
| `think`       | `pensare`     |
| `think_about` | `pensare_a`   |


<!---------------------------------------------------------------------------->



## 2018/07/25 (4)

- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.3.3

Translate commented documentation in the library sources.

<!---------------------------------------------------------------------------->



## 2018/07/25 (3)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.3.4
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.3.2
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.3.2
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.3.3


### Library Instances

Translated library instances:

|  English  |    Italian     |       Class        |
|-----------|----------------|--------------------|
| `my_game` | `mia_AT`       | `DEFINITION_BLOCK` |
| `banner`  | `intestazione` | `LOCATION`         |


### Library Classes

Translated CLASSes:

|      Class EN      |       Class IT       |    Type    |
|--------------------|----------------------|------------|
| `DEFINITION_BLOCK` | `blocco_definizioni` | `LOCATION` |



<!---------------------------------------------------------------------------->


## 2018/07/25 (2)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.3.3
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.3.2

### Library Classes

Translated CLASSes:

|      Class EN      |        Class IT        |    Type   |
|--------------------|------------------------|-----------|
| `LISTED_CONTAINER` | `contenitore_elencato` | `OBJECT`  |
| `SUPPORTER`        | `supporto`             | `OBJECT`  |
| `female`           | `femmina`              | `persona` |
| `male`             | `maschio`              | `persona` |


<!---------------------------------------------------------------------------->


## 2018/07/25 (1)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.3.2


### Clothing Attributes

Translated library attributes:

|   English    |   Italian    |   Type  |
|--------------|--------------|---------|
| `sex`        | `genere`     | numeric |
| `botcover`   | `val_gambe`  | numeric |
| `feetcover`  | `val_piedi`  | numeric |
| `handscover` | `val_mani`   | numeric |
| `headcover`  | `val_testa`  | numeric |
| `topcover`   | `val_tronco` | numeric |



<!---------------------------------------------------------------------------->


## 2018/07/24 (5)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.3.1
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.3.1
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.3.1
- [`lib_messaggi.i`][lib_messaggi] &#x27f6; v0.3.1
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.3.1

This commit covers the translation of many library identifiers.

### Library Attributes

Translated library attributes:

|    English    |   Italian    |           Class            |
|---------------|--------------|----------------------------|
| `described`   | `descritto`  | `LOCATION`                 |
| `visited`     | `visitato`   | `LOCATION`                 |
| `lit`         | `illuminato` | `LOCATION` + `lightsource` |
| `ground_desc` | `desc_suolo` | `site` » `luogo_esterno`   |


### Library Classes

Translated CLASSes:

|    Class EN   |         Class IT        |                   Type                  |
|---------------|-------------------------|-----------------------------------------|
| `site`        | `luogo_esterno`         | `LOCATION`                              |
| `site_object` | `oggetto_luogo_esterno` | `OBJECT`                                |
| `ground`      | `suolo`                 | `site_object` » `oggetto_luogo_esterno` |
| `nowhere`     | `limbo`                 | `LOCATION`                              |
| `lightsource` | `fonte_di_luce`         | `OBJECT`                                |
| `clothing`    | `indumento`             | `OBJECT`                                |

### Library Instances

| Instance EN |   Instance IT   |  Class   |
|-------------|-----------------|----------|
| `worn`      | `abbigliamento` | `ENTITY` |


<!---------------------------------------------------------------------------->



## 2018/07/24 (4)

- [`libreria.i`][libreria] &#x27f6; v0.3.0
- [`lib_classi.i`][lib_classi] &#x27f6; v0.3.0
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.3.0
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.3.0
- [`lib_messaggi.i`][lib_messaggi] &#x27f6; v0.3.0
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.3.0
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.3.0


All run-time built-in messages are now translated.

Housekeeping:

- General code clean-up.
- Add commented section headings.
- Change all occurences of `ISA` to `IsA`.
- Bump up all library files version to `v0.3.0`.

<!---------------------------------------------------------------------------->



## 2018/07/24 (3)

- [`lib_messaggi.i`][lib_messaggi_runtime] &#x27f6; v0.2.4

### Input Response Messages

Translate more Input Response Messages (still a few left).

<!---------------------------------------------------------------------------->



## 2018/07/24 (2)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.41

Just some code cleanup.

<!---------------------------------------------------------------------------->


## 2018/07/24 (1)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.37
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.40

Translated `my_game` attributes for verb restrictions:

|    English     |          Italian          |
|----------------|---------------------------|
| `'what_am_i'`  | `domandare_cosa_sono_io`  |
| `'what_is'`    | `domandare_cosa_è`        |
| `'where_am_i'` | `domandare_dove_mi_trovo` |
| `'where_is'`   | `domandare_dove_è`        |
| `'who_am_i'`   | `domandare_chi_sono_io`   |
| `'who_is'`     | `domandare_chi_è`         |

### Who/Where Verbs

This commit translates the group of `who/where_*` verbs:

|   EN Verb    |     IT Verb     | Affected by `è` Bug? |
|--------------|-----------------|----------------------|
| `who_is`     | `chi_è`         | YES                  |
| `who_am_i`   | `chi_sono_io`   |                      |
| `what_is`    | `cosa_è`        | YES                  |
| `what_am_i`  | `cosa_sono_io`  |                      |
| `where_is`   | `dove_è`        | YES                  |
| `where_am_i` | `dove_mi_trovo` |                      |


> __THE `è` ALAN BUG__ — Translation of these verbs unveiled a subtle bug in Alan: The `è` character doesn't work in `SYNTAX` and `SYNONYM` statements! All other Italian accented letters work fine (`é`, `à`, `ì`, `ò`, `ù`); also, the `è` works fine in instances names and is parsed correctly.
> 
> Therefore, as a workaround in three of these verbs I had to use `é` instead of `è`, which is grammatically incorrect but will have to do until the bug is fixed in Alan!
> 
> For more info, see my bug report:
> 
> - https://groups.yahoo.com/neo/groups/alan-if/conversations/messages/3472

<!---------------------------------------------------------------------------->



## 2018/07/23 (5)


- [`lib_classi.i`][lib_classi] &#x27f6; v0.2.17
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.39

A few code optimizations:

- remove unneeded `SAY` statements when just a string was sufficient.

## 2018/07/23 (4)


- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.36
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.38


Translated `my_game` attributes for verb restrictions:

|  English   |   Italian   |
|------------|-------------|
| `'use'`    | `usare`     |
| `use_with` | `usare_con` |


### Verb: `use`

Translated verb `usa`, (_use_):

    usa (ogg)

with no synonyms.



### Verb: `use_with`

Translated verb `usa_con`, "__usa con__" (_use_with_):

    usa (ogg) con (strum)

with no synonyms.



<!---------------------------------------------------------------------------->



## 2018/07/23 (2)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.2.16
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.37

### Verb: `drop`

Translated verb `lascia`, (_drop_):

    lascia (ogg)*
    abbandona (ogg)*
    metti giù (ogg)*
    posa (ogg)*

with no synonyms.



<!---------------------------------------------------------------------------->


## 2018/07/23 (1)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.2.15
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.35
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.36

Translated `my_game` attributes for verb restrictions:

|    English    |     Italian     |
|---------------|-----------------|
| `lock`        | `bloccare`      |
| `lock_with`   | `bloccare_con`  |
| `unlock`      | `sbloccare`     |
| `unlock_with` | `sbloccare_con` |


Translate verbs:

|    Verb EN    |    Verb IT    | Synonyms |
|---------------|---------------|----------|
| `open`        | `apri`        |          |
| `open_with`   | `apri_con`    |          |
| `close`       | `chiudi`      |          |
| `close_with`  | `chiudi_con`  |          |
| `lock`        | `blocca`      | serra    |
| `lock_with`   | `blocca_con`  | serra    |
| `unlock`      | `sblocca`     |          |
| `unlock_with` | `sblocca_con` |          |



<!---------------------------------------------------------------------------->


## 2018/07/22 (7)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.2.14
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.35

### Tweaked `LISTED_CONTAINER`

In the original library code, the `LISTED_CONTAINER` class defined verb bodies for `open` and `close` in order to ensure that when a `LISTED_CONTAINER` was opened it would become `NOT OPAQUE`, and when closed `OPAQUE`.

The problem with the default behavior was that it didn't check if the `open` verb body on the instance actualy succeeded — for example, if the `LISTED_CONTAINER` was implemented as being `locked` and `lockable`, attempts to open it without being in possesion of its `matching_key` would fail on the instance VERB, yet the library would always make it `NOT OPAQUE` and `LIST` it's contents.

Also, the library didn't define some other verbs which might open or close a container: `open_with`, `lock`, `close_with` and `lock_with`.

Therefore, this commit tweaks the code and implements also the other open/close/lock verbs, and before changing its opaqueness all verbs now always test the `open` attribute to check if the opening/closing action actually succeeded.

### Small Fixes

In `lib_classi.i` some `examine` verb definitions hadn't been translated to `esamina`, and they weren't acting as expected (with `LISTED_CONTAINER`s). Now fixed.

<!---------------------------------------------------------------------------->


## 2018/07/22 (6)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.34

Translate documentation comments in library sources.


<!---------------------------------------------------------------------------->


## 2018/07/22 (5)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.33
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.34

Translated library attributes:

| English | Italian |  Class  |
|---------|---------|---------|
| `ex`    | `xDesc` | `THING` |



<!---------------------------------------------------------------------------->


## 2018/07/22 (4)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.33


### Verb: `sell`

Translated verb `vendi`, (_sell_):

    vendi (merce)

with no synonyms.



<!---------------------------------------------------------------------------->


## 2018/07/22 (3)


- [`lib_classi.i`][lib_classi] &#x27f6; v0.2.13
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.2.5
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.32


### Translate Verb Parameters

This commit italianizes verbs parameters:


|   English    |   Italian    |       Annotazioni        |
|--------------|--------------|--------------------------|
| `obj`        | `ogg`        | oggetto                  |
| `act`        | `png`        | personaggio non giocante |
| `food`       | `cibo`       |                          |
| `instr`      | `strum`      | strumento                |
| `recipient`  | `ricevente`  |                          |
| `key`        | `chiave`     |                          |
| `app`        | `disp`       | dispositivo              |
| `odour`      | `odore`      |                          |
| `vehicle`    | `veicolo`    |                          |
| `holder`     | `detentore`  |                          |
| `topic`      | `argomento`  |                          |
| `target`     | `bersaglio`  |                          |
| `surface`    | `superficie` |                          |
| `item`       | `merce`      | (compravendita)          |
| `source`     | `fonte`      | (consultazione)          |
| `substance`  | `sostanza`   | (riempi con)             |
| `weapon`     | `arma`       |                          |
| `projectile` | `proiettile` | (lancia)                 |
| `victim`     | `vittima`    |                          |


> __NOTA__ — l'unico parametro non ancora tradotto è `bulk` (nei verbi come: guarda/metti dietro/sopra/sotto (bulk)). Non riesco a tradurlo. Il termine qui indica una "massa", un corpo che occupa uno spazio significativo e che (implicitamente) è un ostacolo per operazioni come vedere sopra, sotto, dietro di esso.
> 
> La soluzione più ovvia sarebbere usare "oggetto", ma non va bene perché la convenzione nella libreria è che `ogg` sia riservato a certi parametri con un contesto specifico (e `bulk` non rientra tra loro).
> 
> Tra i termini presi in considerazione: _massa_, _mole_, _ostacolo_, _corpo_ — ma seppure rendevano l'idea, nessuno di questi è adatto.


<!---------------------------------------------------------------------------->


## 2018/07/22 (2)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.31

### Changed Behaviour of `examine`

In the original library, when the verb `examine` was used with readable objects it behaved just like `read`.

I wanted to change this because in some circumstances you'd like an object to both examinable and readable. For example, an ancient book: you'd like provide to the player a detailed description of the book when he examines it ("_It's an old leather bound book covered in esoteric symbols and secured by a golden seal._"), which increases the curiosity towards its contents, which can then be accessed by reading it.

At other times, you might just want both `examine` and `read` to act the same. For example, a small note, a sticky-post, for which the description is not relevant to the game atmosphere.

So, I've opted for a solution that allows to preserve the old behavior and also introduce the possibility of examining a readable object.

Now the `examine` verb was changed so that when obj is a readable object:

- If the object's `ex` string is not empty, _examine it_ and print the contents `ex`
- If its `ex` is empty, and it's a readable object with a non empty `text`, then _read it_ instead.
- If both `ex` and `text` of a readable obj are null strings, just print the usual "_You notice nothing unusual about (the obj)._"

With the new system, to old library behavior is preserved for readable objects which have text only in their `text` attribute. If the author also adds text to `ex`, then it means that he wants the object to be separately examined and read, and the new behavior prevails.

<!---------------------------------------------------------------------------->


## 2018/07/22 (1)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.32
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.30


Translated `my_game` attributes for verb restrictions:

| English |  Italian   |
|---------|------------|
| `write` | `scrivere` |


### Verb: `write`

Translated verb `scrivi`, (_write_):

    scrivi "testo" (su|in) (obj)

with no synonyms.




<!---------------------------------------------------------------------------->


## 2018/07/21 (5)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.29


### Verb: `examine`

Translated verb `esamina` (_examine_):

    esamina (obj)
    guarda (obj)

with synonyms:

    esamina = descrivi, osserva, X


### Verb: `read`

Translated verb `leggi` (_read_):

    leggi (obj)

with no synonyms.



<!---------------------------------------------------------------------------->


## 2018/07/21 (4)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.2.12

Added Italian translation of classes descriptions at beginning of file. I'm now working toward a full Italian documentation of the library modules via comments, by translating the original English comments as well as adding my own.

<!---------------------------------------------------------------------------->



## 2018/07/21 (3)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.2.11
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.31
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.28


Translated library attributes:

|    English     |      Italian      |      Class       |
|----------------|-------------------|------------------|
| `otherside`    | `altro_lato`      | `DOOR` » `PORTA` |
| `matching_key` | `chiave_abbinata` | `THING`          |



<!---------------------------------------------------------------------------->


## 2018/07/21 (2)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.2.10
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.30
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.27


Translated library attributes:

|     English     |     Italian     |     Class     |
|-----------------|-----------------|---------------|
| `fireable` (IS) | `sparare` (CAN) | `THING`       |
| `lockable`      | `bloccabile`    | `THING`       |
| `locked`        | `bloccato`      | `THING`       |
| `natural`       | `naturale`      | `lightsource` |
| `open`          | `aperto`        | `THING`       |



Translated CLASSes:

| Class EN | Class IT | Child OF |
|----------|----------|----------|
| `weapon` | `arma`   | `OBJECT` |




<!---------------------------------------------------------------------------->


## 2018/07/21 (1)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.2.9
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.29
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.2.4
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.26


Translated library attributes:

|   English   |   Italian    |   Class    |
|-------------|--------------|------------|
| `allowed`   | `consentiti` | `THING`    |
| `movable`   | `spostabile` | `THING`    |
| `nested`    | `annidati`   | `LOCATION` |
| `scenery`   | `scenario`   | `THING`    |
| `takeable`  | `prendibile` | `THING`    |
| `talk`      | `parlare`    | `THING`    |
| `text`      | `testo`      | `THING`    |
| `writeable` | `scrivibile` | `THING`    |

Translated CLASSes:

| Class EN |  Class IT | Child OF |
|----------|-----------|----------|
| `liquid` | `liquido` | `OBJECT` |




<!---------------------------------------------------------------------------->



## 2018/07/20 (3)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.2.8
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.28
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.2.3
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.25


### Library Locations

This commit deals with the translation of some classes, instances and attributes of Library LOCATIONS.


#### Rooms

|       EN       |        IT        |   Synonyms   |             Type            |
|----------------|------------------|--------------|-----------------------------|
| `ceiling`      | `soffitto`       |              | `room_object`               |
| `ceiling_desc` | `desc_soffitto`  |              | `ROOM` attribute (_string_) |
| `floor`        | `pavimento`      |              | `room_object`               |
| `floor_desc`   | `desc_pavimento` |              | `ROOM` attribute (_string_) |
| `room`         | `stanza`         |              | `LOCATION`                  |
| `room_object`  | `oggetto_stanza` |              | `OBJECT`                    |
| `wall`         | `pareti`         | parete, muro | `room_object`               |
| `walls_desc`   | `desc_pareti`    |              | `ROOM` attribute (_string_) |


#### Sites

|     EN     |      IT      | Synonyms |             Type            |
|------------|--------------|----------|-----------------------------|
| `sky`      | `cielo`      |          | `site_object`               |
| `sky_desc` | `desc_cielo` |          | `SITE` attribute (_string_) |


> __NOTE 1__ — I haven't yet decided how to translate `site`, therefore quite a few site-related identifiers are still left untranslated.


#### Other Locations ...

|        EN       |      IT      |    Type    |
|-----------------|--------------|------------|
| `dark_location` | `luogo_buio` | `LOCATION` |
| `indoor`        | `interno`    | `LOCATION` |
| `outdoor`       | `esterno`    | `LOCATION` |

> __NOTE 2__ — I haven't yet decided how to translate the `nowhere` location.

<!-- TODO:
| `nowhere`       | `xxx`     | `LOCATION`    |
-->



<!---------------------------------------------------------------------------->



## 2018/07/20 (2)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.2.7
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.27
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.24

### Null Objects

Translate all `null_*` objects:

|      Obj EN     |         Obj IT        |
|-----------------|-----------------------|
| `null_clothing` | `indumento_fittizio`  |
| `null_door`     | `porta_fittizia`      |
| `null_key`      | `chiave_fittizia`     |
| `null_object`   | `oggetto_fittizio`    |
| `null_vessel`   | `recipiente_fittizio` |



<!---------------------------------------------------------------------------->


## 2018/07/20 (1)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.26

### Make `banner` an Instance of `LOCATION`

I've changed the library to make `banner` an instance of `LOCATION` instead of `DEFINITION_BLOCK` — since `DEFINITION_BLOCK` is a _huge_ class, I'd rather avoid having two of them (there's already `my_game`)!

For the full story behing this change, see __[Issue #8]__ on Alan StdLib upstream repository.

Tests seem to confirm that it works just as fine, and the compiled adventure is 20Kb smaller. Debuggin confirms that the tweaked `banner` instance has a much smaller footprint.




<!---------------------------------------------------------------------------->



## 2018/07/19 (5)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.25
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.23

Just some code cleanup, comments translation and house keeping.


<!---------------------------------------------------------------------------->


## 2018/07/19 (4)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.24

### Banner Attributes

This commit translates into Italian the Banner attributes for the `Start` section:

|  English   |    Italian    |       Class        |
|------------|---------------|--------------------|
| `title`    | `titolo`      | `DEFINITION_BLOCK` |
| `subtitle` | `sottotitolo` | `DEFINITION_BLOCK` |
| `author`   | `autore`      | `DEFINITION_BLOCK` |
| `year`     | `anno`        | `DEFINITION_BLOCK` |
| `version`  | `versione`    | `DEFINITION_BLOCK` |




<!---------------------------------------------------------------------------->



## 2018/07/19 (3)

- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.2.2

### Add Remaining Preposizioni Articolate Synonyms

Previously, only synonyms for preposition based on `a` and `da` were covered.

This commit completes all prepositions by adding `SYNONYMS` deifinitions for `di`, `in` and `su` based prepositions:

```alan
--==============================================================================
-- "DI" + Articolo
--==============================================================================
SYNONYMS
  del, dello, della, 'dell''', dei, degli, delle = di.
--==============================================================================
-- "IN" + Articolo
--==============================================================================
SYNONYMS
  nel, nello, nella, 'nell''', nei, negli, nelle = 'in'.
--==============================================================================
-- "SU" + Articolo
--==============================================================================
SYNONYMS
  sul, sullo, sulla, 'sull''', sui, sugli, sulle = su.
```

There is no need to implements synonyms for the _preposizioni articolate_ based on `con` and `per` as these have a non-merged form too (and the merged form is rarely used nowadays).


> __NOTE 1__ — Currently no verbs requiring these prepositions have been translated, so these changes won't have an immediate impact on the library.

<!-- sep -->

> __NOTE 2__ — Currently, compiling a game that uses the library will cuase the compiler to issue a warning:
> 
> ```
> 321 W : Synonym target word 'di' not defined.
> ```
> 
> ... this will go away when a `VERB SYNTAX` involving the `di` preposition will be translated/implemented!

<!-- sep -->

> __NOTE 3__ — The articulated prepositions that are synonyms of `SU` should be checked thoroughly to see if they could cause conflicts with the `su` direction. 

<!-- sep -->

> __NOTE 4__ — The articulated prepositions that are synonyms of `IN` should be checked thoroughly to see if they could cause conflicts with the current use of `IN` by the English library, which defines:
> 
> ``` alan
> SYNONYMS  into, inside = 'in'.
> ```
> 
> (it shouldn't, since they have the same meaning both languages).



<!---------------------------------------------------------------------------->


## 2018/07/19 (2)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.23
- [`lib_supplemento.i`][lib_supplemento] &#x27f6; v0.2.1

Just some code house-keeping and cleaning up.


<!---------------------------------------------------------------------------->


## 2018/07/19 (1)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.2.6
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.22
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.22


Translated library attributes:

| English  | Italian  |  Class  |
|----------|----------|---------|
| `'on'`   | `acceso` | `THING` |
| `weight` | `peso`   | `THING` |

Translated `CLASS`es:

| Class EN |    Class IT   |
|----------|---------------|
| `device` | `dispositivo` |
| `door`   | `porta`       |
| `person` | `persona`     |
| `sound`  | `suono`       |
| `window` | `finestra`    |


<!---------------------------------------------------------------------------->


## 2018/07/18 (4)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.2.5
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.21
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.2.2
- [`lib_messaggi.i`][lib_messaggi] &#x27f6; v0.2.2
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.21

Translated library attributes:

|   English    |     Italian     |   Class    |
|--------------|-----------------|------------|
| `broken`     | `rotto`         | `THING`    |
| `distant`    | `distante`      | `THING`    |
| `donned`     | `indossato`     | `clothing` |
| `examinable` | `esaminabile`   | `THING`    |
| `inanimate`  | `inanimato`     | `THING`    |
| `openable`   | `apribile`      | `THING`    |
| `reachable`  | `raggiungibile` | `THING`    |
| `readable`   | `leggibile`     | `THING`    |
| `vessel`     | `recipiente`    | `liquid`   |
| `wearable`   | `indossabile`   | `THING`    |


<!---------------------------------------------------------------------------->


## 2018/07/18 (3)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.2.4
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.20
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.20


### Verb Responses Attributes

With this commit I begin to put some order in verb response messages by translating attributes names and/or messages into Italian.

> __NOTE 1__ — Many of the current message attributes names are temporary, and in the future I'll try to work out a custom naming convention that better suits the needs of the Italian library. 
> 
> As for now, I'm just trying to ensure that all translated verbs will use Italian attributes names and text output, and that I can start to comment out the original English attributes once they have been globally replaced by their Italian equivalent.


#### Translated verb responses attributes:

|        Attribute EN       |         Attribute IT         |
|---------------------------|------------------------------|
| `check_current_loc_lit`   | `check_locazione_illuminata` |
| `check_obj_reachable_sg`  | `ogg1_non_raggiungibile_sg`  |
| `check_obj_reachable_pl`  | `ogg1_non_raggiungibile_pl`  |
| `check_obj2_reachable_sg` | `ogg2_non_raggiungibile_sg`  |
| `check_obj2_reachable_pl` | `ogg2_non_raggiungibile_pl`  |


> __NOTE 2__ — The new Italian naming convention for message attributes will always use `ogg1` in place of `obj` (or in any reference to first parameter of verb, like the old `parametro`) and `ogg2` for `obj2`, because these are shorter and easier to remember.

<!-- sep -->

> __NOTE 3__ — I'm not quite happy with `check_locazione_illuminata` because I'd like attributes names to indicate the nature of the message rather than the context of the failed conditional check (whether in a `SYNTAX` or `CHECK` block). The latter approach is better because some messages are shared by both syntax constructs (see below, how reduntant message was replaced).
> 
> But for now this name will do, until I work out a better naming convention for messages. Also, it seems that this is the only message regarding location checks, so it's not a big deal actually. But I'd like its name to be more intuitive in the future.


#### Renamed verb responses attributes:

|       Attribute EN      |    Attribute IT    |
|-------------------------|--------------------|
| `parametro_illegale_sg` | `ogg1_inadatto_sg` |
| `parametro_illegale_pl` | `ogg1_inadatto_pl` |
| `check_obj_idoneo_sg`   | `ogg1_inadatto_sg` |
| `check_obj_idoneo_pl`   | `ogg1_inadatto_pl` |


> __NOTE 4__ — `check_obj_idoneo_sg`/`pl` has been removed and replaced by `ogg1_inadatto_sg`/`pl` because they were producing the same message and were redundant. Also, `illegale` has been replaced with `inadatto`, which seems more accurate in the context.


<!---------------------------------------------------------------------------->


## 2018/07/18 (2)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.19
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.19


### Verb: `drink`

Translated verb `bevi`, (_drink_):

    bevi (liq)

with no synonyms.


<!---------------------------------------------------------------------------->


## 2018/07/18 (1)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.18
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.18

Minor tweaks and code cleanup.


<!---------------------------------------------------------------------------->


## 2018/07/17 (5)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.17 (_sic_!)
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.17


Translated verb response attributes:

|      Attribute EN     |    Attribute IT   |
|-----------------------|-------------------|
| `restricted_response` | `azione_bloccata` |


<!---------------------------------------------------------------------------->


## 2018/07/17 (4)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.2.3
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.12
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.16


Translated `THING` attributes:

|   English   | Italian |
|-------------|---------|
| `edible`    | `commestibile`   |
| `drinkable` | `potabile`   |


### Verb: `eat`

Translated verb `mangia`, (_eat_):

    mangia (cibo)

with no synonyms.


<!---------------------------------------------------------------------------->


## 2018/07/17 (3)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.15


### Meta Verbs

The following verbs have been declared as `META VERB`s:

- `abbandona_partita`
- `carica_partita`
- `ricomincia_partita`
- `salva_partita`
- `inventario`


> __NOTE 1__ — Currently Alan 3.0beta5 has a bug that prevents `META VERB`s from not ticking a turn. The bug was fixed and `META VERB`s will work as expected on the upcoming Beta relase.

<!-- sep -->

> __NOTE 2__ — Although `inventory` is an in-game command, it has been declared as a `META VERB` because it's more aking to a "mental action", rather than a physical and time-consuming action (we can see taking inventory as internal process of the hero recalling his carried and worn belongings, happening in the blink of an eye).
> 
> Some adventures might present time-critical situations (eg, the player dies in three turns if he/she doesn't solve a problem); under such circumstances it would be unfair (and frustrating) if taking the inventory were to consume a precious turn.
> 
> Furthermore, taking the inventory is not even an `UNDO`able action (it doesn't change any game state, so undoing it would achieve nothing), which (IMO) strengthen the argument that it should be considered as a META ACTION.


<!---------------------------------------------------------------------------->


## 2018/07/17 (2)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.2.2
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.14

Translated ACTOR attributes:

|   English    |  Italian   |
|--------------|------------|
| `sitting`    | `seduto`   |
| `lying_down` | `sdraiato` |


<!---------------------------------------------------------------------------->


## 2018/07/17 (1)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.11
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.13

Translated `my_game` attributes for verb restrictions:

|     English     |    Italian     |
|-----------------|----------------|
| `climb_through` | `attraversare` |


### Verb: `climb_through`

Translated verb `attraversa`, "__attraversa (obj)__" (_climb through_, but also _cross_):

    attraversa (obj)

with no synonyms.


<!---------------------------------------------------------------------------->


## 2018/07/03 (3)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.10
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.12


Translated `my_game` attributes for verb restrictions:

| English |  Italian   |
|---------|------------|
| `go_to` | `andare_a` |


### Verb: `go_to`

Translated verb `vai_a`, "__vai a__" (_go to_):

    vai (a|al|alla|allo|ai|alle|agli) (dest)
    (a|al|alla|allo|ai|alle|agli) (dest)

with no synonyms.

> __NOTE 1__ — Because `go` command is hard-coded into Alan's (English) as a NOISE WORD, this verb defines `vai` as a synonym of `go` 
> 
>     vai = go
> 
> In fact, the syntax doesn't refer to `go` at all:
> 
> ```alan
> SYNTAX vai_a = 'a' (dest)!
>   WHERE dest ISA THING
>     ELSE SAY illegal_parameter_go OF my_game.
> 
> SYNONYMS vai = go.
> ```
> 
> And the use of `go` in the command is optional, and the following commands are equal:
> 
>     vai alla bancarella
>     alla bancarella
> 
> ... because the parser will translate `vai` to `go` and then ignore it as NOISE. So the actual verb syntax is really just `(a|al|alla|allo|ai|alle|agli) (dest)`.

<!-- sep -->

> __NOTE 2__ — For this verb, `(dest)` must be a `THING`, not a direction! The Alan parser already understands natively the `go (direction)` SYNTAX, where `(direction)` (once stripped of the `go` noise) simply refers to an `EXIT` at the location. Therefore, this verb doesn't apply to exits/directions, but to actual game THINGS (OBJECTs and ACTORs).
> 
> This verb can refer to THINGS which are not present at the location, or present but distant or unreachable, and produce a meaningful response accordingly.


<!---------------------------------------------------------------------------->


## 2018/07/03 (2)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.11


### Verb: `buy`

Translated verb `compra`, (_buy_):

    compra (item)

with synonyms:

    acquista


<!---------------------------------------------------------------------------->


## 2018/07/03 (1)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.10

Now translated verbs are placed before untranslated verbs in the source code, and divided in two separate groups, each one presenting its verbs in alphabetical order:

- gameplay meta commands (like "save", "score", etc.)
- adventure commands (ie, directed to the hero and story world)


<!---------------------------------------------------------------------------->


## 2018/07/02

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.9
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.9


### Verb: `burn`/`burn_with`

Translated verbs `brucia` e `brucia_con` (_burn_/_burn with_):

    brucia (obj)
    brucia (obj) con (instr)

with no synonyms.


### `my_game` Verb Messages

This commit also separates the translate messages from the originals in English in the source code, making it easy to work on the Italian messages.


#### Translated Messages

A few messages have been translated into Italian (both attribute name and string):

|           English            |           Italian            |
|------------------------------|------------------------------|
| `illegal_parameter_sg`       | `parametro_illegale_sg`      |
| `illegal_parameter_pl`       | `parametro_illegale_pl`      |
| `illegal_parameter2_with_sg` | `parametro2_illegale_CON_sg` |
| `illegal_parameter2_with_pl` | `parametro2_illegale_CON_pl` |


#### New Messages for Missing Parameters

Since many verbs which require additional parameters are also defined in their parameterless version (eg, `burn` and `burn_with`) to allow catching it's use and inform the player about the need to specify another parameter, I've added a new section in `lib_definizioni.i` for holding the common shared strings of these messages.

Currently, the `specificare_CON_cosa` attribute of `my_game` was added to handle messages where the verb requires an object to carry out the action _with_ (Italian: "con"). 

```alan
  -- messaggi per verbi che richiedono ulteriori parametri:
  ---------------------------------------------------------

  HAS specificare_CON_cosa "Devi specificare con cosa vorresti".
```

... the string meaning is "_You must specify with what you'd like to_", which will be followed by the verb and the target object (eg "_burn the XXX with_"). Here is how it's being implemented for the `burn` verb:

```alan
ADD TO EVERY OBJECT
  VERB brucia
    CHECK my_game CAN bruciare
      ELSE SAY restricted_response OF my_game.
    AND obj IS examinable
      ELSE
        IF obj IS NOT plurale
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY check_obj_idoneo_sg OF my_game. "bruciare."
          ELSE SAY check_obj_idoneo_pl OF my_game. "bruciare."
        END IF.
    AND CURRENT LOCATION IS lit
      ELSE SAY check_current_loc_lit OF my_game.
    DOES
      SAY specificare_CON_cosa OF my_game. "bruciare" SAY THE obj. "."
   -- "You must state what you want to burn" SAY THE obj. "with."
  END VERB.
END ADD TO.
```

... since, unlike `burn_with`, the verb `burn` will never accomplish anything besides informing of the need of a "with object" parameter.


<!---------------------------------------------------------------------------->


## 2018/06/29

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.8
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.8

Translated `my_game` attributes for verb restrictions:

|  English  |     Italian      |
|-----------|------------------|
| `brief`   | `modalità_breve` |
| `verbose` | `modalità_lunga` |

Translated verb responses:

|    Verb   |                                                     Italian                                                      |
|-----------|------------------------------------------------------------------------------------------------------------------|
| `verbose` | "Il gioco è ora in modalità _lunga_, le descrizioni dei luoghi saranno mostrate sempre (anche se già visitati)." |
| `brief`   | "Il gioco è ora in modalità _breve_, le descrizioni dei luoghi già visitati non saranno più mostrate."           |


<!---------------------------------------------------------------------------->


## 2018/06/24 (3)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.7
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.7

Translated `my_game` attributes for verb restrictions:

|  English  |   Italian    |
|-----------|--------------|
| `clean`   | `pulire`     |
| `find`    | `trovare`    |
| `kiss`    | `baciare`    |
| `shout`   | `gridare`    |
| `'show'`  | `mostrare`   |
| `swim`    | `nuotare`    |
| `swim_in` | `nuotare_in` |
| `taste`   | `assaggiare` |
| `wear`    | `indossare`  |


<!---------------------------------------------------------------------------->


## 2018/06/24 (2)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.6
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.6

Translated `my_game` attributes for verb restrictions:

|   English   |    Italian     |
|-------------|----------------|
| `buy`       | `comprare`     |
| `consult`   | `consultare`   |
| `cut`       | `tagliare`     |
| `cut_with`  | `tagliare_con` |
| `drop`      | `lasciare`     |
| `enter`     | `entrare`      |
| `examine`   | `esaminare`    |
| `follow`    | `seguire`      |
| `free`      | `liberare`     |
| `jump`      | `saltare`      |
| `jump_in`   | `saltare_in`   |
| `jump_on`   | `saltare_su`   |
| `pour`      | `versare`      |
| `pour_in`   | `versare_in`   |
| `pour_on`   | `versare_su`   |
| `pull`      | `tirare`       |
| `push`      | `spingere`     |
| `push_with` | `spingere_con` |
| `read`      | `leggere`      |
| `sell`      | `vendere`      |


<!---------------------------------------------------------------------------->


## 2018/06/24 (1)

- [`lib_classi.i`][lib_classi] &#x27f6; v0.2.1
- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.5
- [`lib_luoghi.i`][lib_luoghi] &#x27f6; v0.2.1
- [`lib_messaggi.i`][lib_messaggi] &#x27f6; v0.2.1
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.5


### Translate StdLib's `plural`

Now the library's `plural` attribute has been translated into Italian: `plurale`.


<!---------------------------------------------------------------------------->


## 2018/06/23 (2)

- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.4

Cleanup code comments and add some notes.

A few verb responses translated on the fly:

|      Verb     |                       English                        |                     Italian                      |
|---------------|------------------------------------------------------|--------------------------------------------------|
| `attack`      | "Resorting to brute force is not the solution here." | "La violenza non è la giusta risposta a questo." |
| `attack_with` | "Resorting to brute force is not the solution here." | "La violenza non è la giusta risposta a questo." |
| `kick`        | "Resorting to brute force is not the solution here." | "La violenza non è la giusta risposta a questo." |
| `ask`         | "There is no reply."                                 | "Nessuna risposta."                              |
| `clean`       | "Nothing would be achieved by that."                 | "Farlo non servirebbe a nulla."                  |
| `kiss`        | "Nothing would be achieved by that."                 | "Farlo non servirebbe a nulla."                  |
| `rub`         | "Nothing would be achieved by that."                 | "Farlo non servirebbe a nulla."                  |
| `scratch`     | "Nothing would be achieved by that."                 | "Farlo non servirebbe a nulla."                  |


<!---------------------------------------------------------------------------->


## 2018/06/23 (1)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.4
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.3


Translated `my_game` attributes for verb restrictions:

|  English  | Italian  |
|-----------|----------|
| `'again'` | `rifare` |


### Verb `again`

Translated verb `again`, "__rifai__" (_again_):

    rifai
    ancora

with no synonyms.

with synonyms:

    g = rifai

Produces the message:  "[Il comando ANCORA non è supportato in questo gioco. In alternativa, prova ad usare i tasti 'su' e 'giù' per navigare tra i comandi precedenti.]"

> __NOTA (IT)__ — Il verbo base è `rifai` e il suo corrispondente attributo `my_game` è `rifare`, ma il messaggio predefinito menziona "Il comando ANCORA...". La ragione per questo è che in genere gli attributi di restrizione verbi sono in forma infinita, è quindi ho optato per usare `rifai` anziché `ancora` (che ho invece implementato come sintassi alternativa) di modo da poter usare l'attributo `rifare`:
> 
> ```alan
> CHECK my_game CAN rifare
> ```
> 
> Però il giocatore medio si aspetterà che il comando classico sia `ancora`, perciò nel messaggio ho preferito riferirmi ad esso.
> 
> Inoltre, ho preferito non definire `ancora` come sinonimo poiché poteva compromettere la creazione di un'àncora nel gioco (che sicuramente andrebbe compresa anche senza accento) dato che l'uso di un sinonimo avrebbe sempre convertito l'input del giocatore `ancora` in `rifai` e quindi impedito l'uso di un oggetto con nome `ancora` nel gioco.


<!---------------------------------------------------------------------------->


## 2018/06/16 (3)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.3
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.2

Translated `my_game` attributes for verb restrictions:

| English |   Italian   |
|---------|-------------|
| `wait`  | `aspettare` |
| `sleep` | `dormire`   |


### Verb: `wait`

Translated verb `aspetta`, "__aspetta__" (_wait_):

    aspetta

with synonyms:

    z, attendi = aspetta

Outputs message: "`Il tempo passa.`"


### Verb: `sleep`

Translated verb `dormi`, "__dormi__" (_sleep_):

    dormi

with synonyms:

    riposa = dormi

Outputs message: "`Non è il momento di riposare.`"

<!---------------------------------------------------------------------------->

## 2018/06/16 (2)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.2

Some code clean up and translation of library comments.

Part of the `banner` translated to Italian.

<!---------------------------------------------------------------------------->

## 2018/06/16 (1)

- [`lib_definizioni.i`][lib_definizioni] &#x27f6; v0.2.1
- [`lib_verbi.i`][lib_verbi] &#x27f6; v0.2.1

Changed default response message for verbs that don't pass a check for objects (English:  `check_obj_suitable_sg`/`_pl`.

Whereas before the approach was to have a dedicated message per verb (because of the need to use the infinitive form in Italian, which is not covered by `$v`), now the message will be without the verb, which will be supplied by the `CHECK` code itself instead.

Before we had `check_obj_idoneo_prendere_sg` for the verb _prendi_ (take), yelding "`$+1 non è qualcosa che puoi prendere.`" (and it's plural counterpart, ending in `_pl`). Now all verbs share the same common (truncated) message:

```alan
HAS check_obj_idoneo_sg "$+1 non è qualcosa che puoi".
HAS check_obj_idoneo_pl "$+1 non sono qualcosa che puoi".
```

... where the `CHECK` code completes the message by adding the infinitive of the verb being checked:

```alan
  VERB prendi
    CHECK [...]
    AND obj IS examinable
      ELSE
        IF obj IS NOT plural
          --  "$+1 non [è/sono] qualcosa che puoi"
          THEN SAY check_obj_idoneo_sg OF my_game. "prendere."
          ELSE SAY check_obj_idoneo_pl OF my_game. "prendere."
        END IF.
```

... which will produce as a result "`<the obj> non [è/sono] qualcosa che puoi prendere.`" And so on with all the other verbs.


### Translate `check_obj_suitable_XX` Messages

The `check_obj_idoneo_sg`/`_pl` Italian message has beem implemented for the following verbs (some of which have not been translated yet, apart from this message):

- `attack` — translated as: "attaccare"
- `attack_with` — translated as: "attaccare"
- `bite` — translated as: "mordere"
- `burn` — translated as: "bruciare"
- `burn_with` — translated as: "bruciare"
- `buy` — translated as: "comprare"
- `catch` — translated as: "catturare" (maybe should be "afferrare"?)
- `clean` — translated as: "pulire"
- `close` — translated as: "chiudere"
- `close_with` — translated as: "chiudere"
- `consult` — translated as: "consultare"
- `cut` — translated as: "tagliare"
- `cut_with` — translated as: "tagliare"
- `drink` — translated as: "bere"
- `drive` — translated as: "guidare"
- `eat` — translated as: "mangiare"
- `extinguish` — translated as: "estinguere" (fuoco)
- `fill` — translated as: "riempire"
- `free` — translated as: "liberare"
- `kill` — translated as: "uccidere"
- `kiss` — translated as: "baciare"
- `lift` — translated as: "sollevare" (maybe should be "alzare"?)
- `lock` — translated as: "bloccare"
- `lock_with` — translated as: "bloccare"
- `open` — translated as: "aprire"
- `open_with` — translated as: "aprire"
- `prendi` — EN verb: _take_
- `prendi_da` — EN verb: _take from_
- `read` — translated as: "leggere"
- `rompi` — EN verb: _break_
- `rompi_con` — EN verb: _break with_
- `rub` — translated as: "strofinare" (need to check this!)
- `sell` — translated as: "vendere"
- `sip` — translated as: "sorseggia"
- `taste` — translated as: "assaggiare"
- `tear` — translated as: "strappare"
- `throw` — translated as: "lanciare"
- `throw_at` — translated as: "lanciare"
- `throw_in` — translated as: "lanciare"
- `throw_to` — translated as: "lanciare"
- `tie` — translated as: "legare"
- `tie_to` — translated as: "legare"
- `touch` — translated as: "toccare"
- `touch_with` — translated as: "toccare"
- `unlock_with` — translated as: "sbloccare"


... which covers most of the occurence of the original `check_obj_suitable_XX` English message — so handling of this message is now mostly done with. Some of the above translated message might require tweaking later on, but they are a good start.

But some occurences were left out because they apply to verbs which in Italian would require a special construct in the response message, relying on prepositions (possibly, they will need a custom message not relying on `my_game` attributes), or just because I couldn't yet decide how to translate them (even vaguely). Namely, the occurences of `check_obj_suitable_XX` in the following verbs were not substituted:

- `climb`
- `climb_through`
- `fire` (weapon)
- `fire_at` (weapon)
- `kick` (probaly should be "prendere a calci", but the Italian syntax for this verb is going to be complex)
- `light`
- `pry`
- `pry_with`
- `scratch`
- `shake`
- `shoot`
- `shoot_with`
- `squeeze`
- `turn`

<!---------------------------------------------------------------------------->

## 2018/06/11

> This is another major feature change: all library files are bumped up to `v0.2.0` to mark the adoption of new library file names.


### Library Files Renamed to Italian

All library files are renamed to Italian filenames:

|    ORIGINAL NAME    |                NEW NAME                |
|---------------------|----------------------------------------|
| `library.i`         | [`libreria.i`][libreria]               |
| `lib_classes.i`     | [`lib_classi.i`][lib_classi]           |
| `lib_definitions.i` | [`lib_definizioni.i`][lib_definizioni] |
| `lib_locations.i`   | [`lib_luoghi.i`][lib_luoghi]           |
| `lib_messages.i`    | [`lib_messaggi.i`][lib_messaggi]       |
| `lib_verbs.i`       | [`lib_verbi.i`][lib_verbi]             |
| `lib_supplement.i`  | [`lib_supplemento.i`][lib_supplemento] |

From now on I'll start to italianize the library by translating also comments and internal library IDs.

<!---------------------------------------------------------------------------->

## 2018/06/10

> This is a major feature change: all library files are bumped up to `v0.1.0` to mark the adoption of the new system.

This commit introduces a new article-based system for handling gender, number, articles and "preposizioni articolate" (prepositions that merge with the definite article).


### The New `articolo` Attribute

Now every THING has a new `articolo` string attribute, which the author must set to the definite article of the instance's noun (default to "`il`", masculine singular). At initialization time, the library will take care of setting the correct values of gender, number, DEFINITE/INDEFINITE ARTICLE and prepositions, based on the string of `articolo`.

So, now the author only needs to write:

```alan
THE mela IsA object AT kitchen.
  HAS articolo "la".
END THE mela.
```

... and the library will deduce and set that the instance is feminine and singular. The same goes for all other Italian articles, with the exeception of "`l'`", because it could refer to either a masculine or feminine noun; with this article the author needs to manually specify the gender if the noun is feminine:

```alan
THE arancia IsA object AT kitchen.
  HAS articolo "l'".
  IS femminile. --> Without it, the StdLib will assume it's masculine!
  NAME arancia.
  NAME 'l''arancia'.
END THE.
```


### Preposizioni Articolate

> __NOTE__ — In Italian, prepositions merge with the definite article directly following them, according to fixed and predictable rules. (for more info, see this [article on Italian prepositions])

[article on Italian prepositions]: https://ciaoitaliablog.wordpress.com/classes/italian-preposition-with-definite-article/

Now the library adds to EVERY THING the following new string attributes:

```alan
                        --      <prep> + <art> = preposizione articolata
                        ---------------|-------|------------------------
  HAS prep_DI "del".    -- (of)   "di" + "il"  = "del"
  HAS prep_A  "al".     -- (to)    "a" + "il"  = "al"
  HAS prep_DA "dal".    -- (from) "da" + "il"  = "dal"
  HAS prep_IN "nel".    -- (in)   "in" + "il"  = "nel"
  HAS prep_SU "sul".    -- (on)   "su" + "il"  = "sul"
```

These are used in SAY statements to retrive the correct _preposition_ + _definite article_ form to use in reference to an instance. Example from `put_on` verb (`put (obj) on (surface)`) response:

```alan
"Posi" SAY THE obj. SAY prep_SU of surface. SAY surface. "."
```

... which will produce messages like:

```
Posi la mela sul tavolo.
Posi la mela sulla dispensa.
Posi la mela sulle lenzuola.
Posi la mela sui carboni.
```

At initialization time, the library sets the preposition attributes' strings of every instance according to the string of its `articolo`.

This new system simplifies the authors' task of writing adventures, for now they only need to worry about specifying the article of an instance and let the library handle the rest. It also makes referencing a noun's preposition in messages a simple task, as there is no need to use conditional statements.

The only possible downside is the memory overhead, because now every THING (objects and actors) has six extra string attributes; but [as Greg has pointed out]:

> I really don't think you need to worry about memory usage here. This might add perhaps 20 bytes to every object. If your game has 1000 objects, that's only 20K bytes, which is likely insignificant compared to the text of a game that size.

It's more likely that conditional statements to determine which preposition to use inside library message will have added more overhead than the current solution. 

Ultimately, this solution was adopted after careful consideration of various approaches to the problem, and weighing the pros and cons of each one of them. The adopted solution is a good compromise in terms of library maintainance and authors' usability of the library.

[as Greg has pointed out]: https://groups.yahoo.com/neo/groups/alan-if/conversations/messages/3456

<!---------------------------------------------------------------------------->

## 2018/06/02

- [`lib_classes.i`][lib_classes] &#x27f6; v0.0.2

Translated some response messages for containers and supporters.

<!---------------------------------------------------------------------------->

## 2018/05/31:2

- [`lib_messages.i`][lib_messaggi_runtime] &#x27f6; v0.0.4

Translated RUN-TIME MESSAGES:

|        Message        |               Italian Translation               |
|-----------------------|-------------------------------------------------|
| `AFTER_BUT`           | Devi specificare almeno un oggetto dopo '`$1`'. |
| `BUT_ALL`             | Puoi usare '`$1`' solo DOPO '`$2`'.             |
| `MULTIPLE`            | Non puoi usare più di un oggetto con '`$v`'.    |
| `NO_SUCH`             | Qui non puoi vedere nulla del genere.           |
| `NOT_MUCH`            | Così non resta nulla per il verbo '`$v`'!       |
| `NOUN`                | Devi specificare un sostantivo.                 |
| `UNKNOWN_WORD`        | Non conosco la parola '`$1`'.                   |
| `WHAT`                | Non ho capito la frase.                         |
| `WHAT_WORD`           | Non mi è chiaro cosa intendi con '`$1`'.        |
| `WHICH_START`         | Non mi è chiaro se intendi dire `$+1`           |
| `WHICH_COMMA`         | , `$+1`                                         |
| `WHICH_OR`            | o `$+1`.                                        |
| `WHICH_PRONOUN_START` | Non mi è chiaro se con '`$1`'                   |
| `WHICH_PRONOUN_FIRST` | intendi dire `$+1`                              |
| `CANT0`               | Non lo puoi fare.                               |
| `SEE_START`           | Puoi vedere `$01`                               |
| `SEE_COMMA`           | ", `$01`                                        |
| `SEE_AND`             | "e `$01`                                        |
| `SEE_END`             | "qui.                                           |

<!---------------------------------------------------------------------------->

## 2018/05/31:1

- [`lib_definitions.i`][lib_definitions] &#x27f6; v0.0.10
- [`lib_messages.i`][lib_messages] &#x27f6; v0.0.3
- [`lib_verbs.i`][lib_verbs] &#x27f6; v0.0.10


Translated `my_game` attributes for verb restrictions:

|   English   |        Italian         |
|-------------|------------------------|
| `'restore'` | `caricare_partita`     |
| `'restart'` | `ricominciare_partita` |
| `'quit'`    | `abbandonare_partita`  |

Translated RUN-TIME MESSAGES:

|     Message      |                                    Italian Translation                                    |
|------------------|-------------------------------------------------------------------------------------------|
| `REALLY`         | Sei sicuro (premi INVIO per confermare)?                                                  |
| `QUIT_ACTION`    | Cosa vuoi fare: RESTART, RESTORE, QUIT o UNDO?                                            |
| `NOT_A_SAVEFILE` | Caricamento fallito, il file indicato non è una partita salvata.                          |
| `RESTORE_FROM`   | Inserisci il nome del file                                                                |
| `SAVE_MISSING`   | Caricamento fallito, impossibile aprire il file richiesto.                                |
| `SAVE_NAME`      | Caricamento fallito, il file indicato non è una partita salvata di questa avventura.      |
| `SAVE_VERSION`   | Caricamento fallito, il file indicato è stato creato con una versione di Alan differente. |


### Verb: `restore`

Translated verb `carica_partita`, "__carica__" (_restore_):

    carica [partita]
    restore

with no synonyms.


### Verb: `restart`

Translated verb `ricomincia_partita`, "__carica__" (_save_):

    ricomincia [partita]
    restart

with no synonyms.


### Verb: `quit`

Translated verb `abbandona_partita`, "__abbandona__" (_quit_):

    abbandona [partita]
    quit

with synonyms:

    q = 'quit'


> __NOTE__ — I had to leave the English syntaxes `restore`, `restart` and `quit` because after the `QUIT_ACTION` Run-Time message ("Do you want to RESTART, RESTORE, QUIT or UNDO? ") the allowed responses are hardcoded into Alan and can't be translated (even through the `QUIT_ACTION` message can).

<!---------------------------------------------------------------------------->

## 2018/05/28

Code cleanup:

- [`lib_verbs.i`][lib_verbs] &#x27f6; v0.0.9

Add __Italian Verbs Table__: translated verbs are now added to a new verbs table, which will eventually replace the original English table.

<!---------------------------------------------------------------------------->

## 2018/05/27

- [`lib_definitions.i`][lib_definitions] &#x27f6; v0.0.9
- [`lib_verbs.i`][lib_verbs] &#x27f6; v0.0.8
- [`lib_messages.i`][lib_messages] &#x27f6; v0.0.2

Translated `my_game` attributes for verb restrictions:

| English  |      Italian      |
|----------|-------------------|
| `'save'` | `salvare_partita` |


### Verb: `save`

Translated verb "__salva__" (_save_):

    salva [partita]

with no synonyms.

Translated RUN-TIME MESSAGES:

|     Message      |                     Italian Translation                      |
|------------------|--------------------------------------------------------------|
| `SAVE_FAILED`    | Salvataggio della partita fallito.                           |
| `SAVE_OVERWRITE` | Esiste già un file con questo nome. Vuoi sovrascriverlo? (y) |
| `SAVE_WHERE`     | Inserisci il nome del file                                   |

> __NOTE__ — some of the above run-time messages can only be seen when using ARun.

<!---------------------------------------------------------------------------->

## 2018/05/22 (3)

- [`lib_definitions.i`][lib_definitions] &#x27f6; v0.0.8
- [`lib_verbs.i`][lib_verbs] &#x27f6; v0.0.7


### Verb: `pray`

Translated verb "__pregare__" (_pray_):

    prega

Only produces the response "`Sembra che le tue preghiere non siano state esaudite.`" (taken from Inofrm 6 _Infit_).


### Verb: `break`

Translated verb "__rompi__" (_break_):

    rompi (obj)

with synonyms: `distruggi`, `spacca`, `sfonda`.

Only produces the response "`La violenza non è la giusta risposta a questo.`" (taken from Inofrm 6 _Infit_).


### Verb: `break_with`

Translated verb "__rompi con__" (_break_with):

    rompi (obj) con (instr)

Same synonyms of __rompi__ apply here.

Only produces the response "`Tentare di rompere <THE obj> con <THE instr> non risolverebbe nulla.`".


### Verb Restriction Attributes

Translated `my_game` attributes for verb restrictions:

|   English    |   Italian   |
|--------------|-------------|
| `break`      | `rompere`     |
| `break_with` | `rompere_con` |
| `pray`       | `pregare`   |

<!---------------------------------------------------------------------------->

## 2018/05/22 (2)

- [`lib_definitions.i`][lib_definitions] &#x27f6; v0.0.7
- [`lib_verbs.i`][lib_verbs] &#x27f6; v0.0.6


### Verb Restriction Attributes

Translated `my_game` attributes for verb restrictions:

|   English    |    Italian     |
|--------------|----------------|
| `brun`       | `bruciare`     |
| `brun_with`  | `bruciare_con` |
| `close`      | `chiudere`     |
| `close_with` | `chiudere_con` |
| `dance`      | `danzare`      |
| `dig`        | `scavare`      |
| `drink`      | `bere`         |
| `eat`        | `mangiare`     |
| `kill`       | `uccidere`     |
| `kill_with`  | `uccidere_con` |
| `open`       | `aprire`       |
| `open_with`  | `aprire_con`   |

<!---------------------------------------------------------------------------->

## 2018/05/22 (1)

- [`lib_definitions.i`][lib_definitions] &#x27f6; v0.0.6
- [`lib_verbs.i`][lib_verbs] &#x27f6; v0.0.5


### Verb: `undress`

Translated verb "__spogliati__" (_undress_):

    [spogliati|svestiti]

Its default responses translation might need some polishing. The commented code example on how to implement the undressing action also needs to be polished.

<!---------------------------------------------------------------------------->

## 2018/05/19

- [`lib_classes.i`][lib_classes] &#x27f6; v0.0.4
- [`lib_definitions.i`][lib_definitions] &#x27f6; v0.0.5
- [`lib_supplement.i`][lib_supplement] &#x27f6; v0.0.3
- [`lib_verbs.i`][lib_verbs] &#x27f6; v0.0.4

Translate verb "__dai__" (_give_), and "__prendi da__" (_take from_).


### Verb: `take`

Now the status of the translated verbs is more polished:

Verb `prendi` (_take_):

    [prendi|afferra|raccogli|trasporta] (obj)


### Verb: `take_from`

Verb `prendi_da` (_take from_):

    [prendi|rimuovi|togli] (obj) da (holder)


### Verb: `give`

Verb `dai_a` (_give_):

    [dai|porgi|offri] (obj) a (recipient)

Now [`lib_supplement.i`][lib_supplement] implements all the required synonyms for prepositions "da" and "a".

> __NOTE__ — To prevent conflicts betwen "__dai__" (da + i) and "__dai__" (verb), the preposition "`dai`" is not declared as synonym of "`da`", and an extra syntax is declared on the verb in order to cover it:
> 
> ```alan
>   prendi_da = prendi  (obj)  'dai' (holder).
>   prendi_da = rimuovi (obj)* 'da'  (holder).
>   prendi_da = rimuovi (obj)* 'dai' (holder).
>   prendi_da = togli   (obj)  'da'  (holder).
>   prendi_da = togli   (obj)  'dai' (holder).
> ``` 

<!---------------------------------------------------------------------------->

## 2018/05/15

- [`lib_classes.i`][lib_classes] &#x27f6; v0.0.3 — added comments about predefined articles in ACTORS and some comment draft code on how these might be implemented in Italian (the topic needs to be further investigated before apllying changes).
- [`lib_definitions.i`][lib_definitions] &#x27f6; v0.0.4 — __PREDEFINED ARTICLES__ of THINGS implemented in Italian.
- [`../tests/`][tests] folder — added Alan source and script files to test articles implementation:
    + [`../tests/articoli.alan`](../tests/articoli.alan)
    + [`../tests/articoli.bat`](../tests/articoli.bat)
    + [`../tests/articoli.log`](../tests/articoli.log)
    + [`../tests/articoli.script`](../tests/articoli.script)


This commit translates to Italian the predefined articles (determinate and indeterminate) that are assigned to all children of `THING`, according to number and _genre_ — genre (which wasn't handled in the original Library, due to things being of neuter genre in English) is determined via the `femminile` attribute that was added to the Italian library.

These are the default articles added at initialization time:

| G | N | DET | INDET |
|---|---|-----|-------|
| M | S | il  | un    |
| M | P | i   | dei   |
| F | S | la  | una   |
| F | P | le  | delle |

These defaults will work with many nouns, but not all. For nouns requiring different articles, end users will have to specify them manually:

```alan
--------------------------------------------------------------------------------
-- Example: "zaino" (backpack) -> Masc. Sing.              (uno zaino, lo zaino)
--------------------------------------------------------------------------------
THE zaino IsA object AT salotto.
  DEFINITE ARTICLE   "lo"
  INDEFINITE ARTICLE "uno"
END THE zaino.

```

... and so on. The possible combinations of nouns and articles are too numerous to implement them via subclasses or special attributes. Also, the grammar rules that govern which article forms should be uesed for a noun can be rather obscure for some edge cases, and forcing the end user to remember them would add a useless burden on his side. It's simpler and more practical to let him/her just override the defaults as needed, handing full control to the author as to which articles should be used.

As for nouns requiring articles with apostrophe, they will need an extra `NAME` aliasing because the parser sees the article and the noun as a single word:

```alan
--------------------------------------------------------------------------------
-- Example: "arco" (bow) -> Masc. Sing.                        (un arco, l'arco)
--------------------------------------------------------------------------------
THE arco IsA object AT salotto.
  NAME arco        --> Base name must be redefined.
  NAME 'l''arco'   --> Don't forget escaping the quote ('').

  DEFINITE ARTICLE   "l'$$" --> Special char `$$` keeps article and noun together.
  -- no need to redefine the indefinite article (the default "un" is fine in this case).
END THE arco.
```

See test file [`../tests/articoli.alan`](../tests/articoli.alan) for more examples on how to use articles.

> __NOTE__ — this commit didn't change the way the library predefines articles for ACTORS; that part of the code was left untouched as it needs to be further looked into before changing it.

<!---------------------------------------------------------------------------->

## 2018/05/12 (2)

- [`lib_supplement.i`][lib_supplement] — __DEFINITE ARTICLES__ are now defined as __NOISE WORDS__ and ignored by the parser in player's input. This means that it's no longer required to add multiple `NAME`s to instances to include the noun preceded by its article as a synonym of the instance.

Before:

```alan
THE palla IsA object AT 'Sala Collaudo Verbi'
  NAME palla
  NAME la palla
  IS femminile.
  INDEFINITE ARTICLE "una"
  DEFINITE ARTICLE "la"
END THE palla.
```

... now, just:

```alan
THE palla IsA object AT 'Sala Collaudo Verbi'
  IS femminile.
  INDEFINITE ARTICLE "una"
  DEFINITE ARTICLE "la"
END THE palla.
```

As for articles with apostrophe (eg: "l'altare" — _the altar_), these can't be handled as noise words synonyms because the parser sees them as a single token. So, for objects that take the article `l'`, the old NAME trick has to be used even now:

```alan
THE orzo IsA object AT piazza.
  NAME orzo.
  NAME 'l''orzo'.
  INDEFINITE ARTICLE "dell'$$"
  DEFINITE ARTICLE "l'$$"
END THE orzo.
```

The above changes had some side effects which required me to also change the English library in various places:

- verb `i` (+ `inventory`, `inv`) » `inventario` (+ `inv`)
- attribute `i` of `my_game` (`CAN i`, etc.) » `CAN inventariare.` (etc.)
- Syntaxes `what_am_i`, `where_am_i` and `who_am_i`, where their `i` conflicted with the newly defined NOISE WORD `i` synonym:
    + `SYNTAX what_am_i = 'what' am i.` » `what_am_i = cosa sono.`
    + `SYNTAX where_am_i = 'where' am i.` » `where_am_i = dove mi trovo.` (+ `dove sono`)
    + `SYNTAX who_am_i = who am i.` » `chi sono.`

... since these changes were prematurely forced on me, I've implemented them without giving them much through, but just to end the conflicts which prevented compiling the library. So, they might need to be looked into more carefully at some point.

<!---------------------------------------------------------------------------->

## 2018/05/12 (1)

- New [`lib_supplement.i`][lib_supplement] — this supplement to the Standard Library deals with implementing Italian synonyms for the Predefined Player Words. It's kept separate because it will be removed from the Library once Italian language gets natively supported in Alan:
    + Predefined Player Words synonyms:
        * `e`, `poi` = `'and'`
        * `tutto`, `tutti`, `tutte` = `all`
        * `tranne`, `eccetto`, `escluso`, `esclusa`, `esclusi`, `escluse` = `except`
- [`lib_locations.i`][lib_locations]:
    + remove `e` as synonym of `est` (now conflicts with `e` = `'and'`)
- [`library.i`][library]: added `IMPORT 'lib_supplement.i'.`
- New `VERBI_IT.md` doc to resume current state of verbs translated to Italian.
- Added to [`../tests/`][tests] folder Alan source and script files to test Player Words implementation.

<!---------------------------------------------------------------------------->

## 2018/05/01

- All library files have now been set to `v0.0.1` to allow tracking changes consistently.
- [`lib_locations.i`][lib_locations]:
    + Translated all stdLib directions and their shorthand synonims.
- [`lib_messages.i`][lib_messages]:
    + Translated the `NO_WAY` message (Alan native message)


### Directions

| direction |      aliases      | short |  English  | short |
|-----------|-------------------|-------|-----------|-------|
| nord      |                   | n     | north     | n     |
| sud       |                   | s     | south     | s     |
| est       |                   |       | east      | e     |
| ovest     |                   | o     | west      | w     |
| nordest   |                   | ne    | northeast | ne    |
| sudest    |                   | se    | southeast | se    |
| nordovest |                   | nov   | northwest | nw    |
| sudovest  |                   | so    | southwest | sw    |
| su        | sopra, alto       |       | up        | u     |
| giù       | giu, sotto, basso | b     | down      | d     |
| dentro    |                   |       | 'in'      |       |
| fuori     |                   |       | out       |       |

> __NOTE 1__ — Couldn't create synonym "`no`" for "`nordovest`" because of conflict with `NO` keyword. Trying to use `'no'` produced error:
> 
> ```
> 333 E : The word 'no' is defined to be both a synonym and another word
>         class.
> 1 error(s).
> ```

<!-- separator -->

> __NOTE 2__ — Add to remove synonym "`e`" for "`est`" due to conflict with `e` now being a synonym for `'and'` (Player Word).

<!-- separator -->

> __NOTE 3__ — Inform 6 Italian also implements "a" synonym for "alto", but I've left it out right now in case it might conflict with "a" as in "dai a/_give to_".


### Movement Messages

|   messg   |              translation               |
|-----------|----------------------------------------|
| `NO_WAY:` | "Non puoi andare in quella direzione." |

> __NOTE 1__ — "Non puoi andare in quella direzione." was taken from i6 translation; i7 uses "Non puoi andare da quella parte." instead.


<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

<!-- File del Progetto -->

[VESTIARIO]: ./VESTIARIO.md "Vedi documento"
[VESTIARIO_DEV]: ./VESTIARIO_DEV.md "Vedi documento"
[VESTIARIO_PROBLEMI]: ./VESTIARIO_PROBLEMI.md "Vedi documento"

<!-- Cartelle del Progetto -->

[tests]: ../test/
[test]:  ../test/

<!-- Moduli della Libreria --------------------------------------------------->

[libreria]:              ./libreria.i
[lib_classi]:            ./lib_classi.i
[lib_classi_vestiario]:  ./lib_classi_vestiario.i
[lib_definizioni]:       ./lib_definizioni.i
[lib_italian]:           ./lib_italian.i
[lib_luoghi]:            ./lib_luoghi.i
[lib_messaggi_libreria]: ./lib_messaggi_libreria.i
[lib_messaggi_runtime]:  ./lib_messaggi_runtime.i
[lib_verbi]:             ./lib_verbi.i

<!-- vecchi nomi di moduli rinominati -->

[lib_grammatica]:        ./lib_italian.i
[lib_messaggi]:          ./lib_messaggi_libreria.i
[lib_supplemento]:       ./lib_italian.i


<!-- OLD LIBRARY FILENAMES 1 -->

[library]:         ./libreria.i
[lib_classes]:     ./lib_classi.i
[lib_definitions]: ./lib_definizioni.i
[lib_locations]:   ./lib_luoghi.i
[lib_messages]:    ./lib_messaggi.i
[lib_verbs]:       ./lib_verbi.i
[lib_supplement]:  ./lib_supplemento.i

<!-- OLD LIBRARY FILENAMES 2 -->



<!-- Documentazione Libreria  ------------------------------------------------>

[Doxter]: https://git.io/doxter "Visit Doxter website"

[BUILD_DOCS]: ./BUILD_DOCS.bat
[ANNOTAZIONI_DOXTER]: ./ANNOTAZIONI_DOXTER.adoc


[lib_verbi adoc]: ./lib_verbi.asciidoc
[lib_verbi html]: ./lib_verbi.html
[lib_verbi html live]: https://tajmone.github.io/Alan3-Italian/lib_verbi.html "Anteprima HTML sul sito Alan Italian"


<!-- External Links ---------------------------------------------------------->

[Alan StdLib upstream repository]: https://github.com/AnssiR66/AlanStdLib

[AlanStdLib]: https://github.com/AnssiR66/AlanStdLib

[Alan SDK 3.0beta6]: https://www.alanif.se/download-alan-v3/development-kits/development-kits-3-0beta6

<!-- StdLib Issues & PRs ----------------------------------------------------->

[Issue #6]: https://github.com/AnssiR66/AlanStdLib/issues/6 "View Issue on AlanStdLib repository"
[Issue #8]: https://github.com/AnssiR66/AlanStdLib/issues/8" View Issue on AlanStdLib repository"
[Issue #14]: https://github.com/AnssiR66/AlanStdLib/issues/14" View Issue on AlanStdLib repository"
[Issue #18]: https://github.com/AnssiR66/AlanStdLib/issues/18" View Issue on AlanStdLib repository"
[Issue #24]: https://github.com/AnssiR66/AlanStdLib/issues/24" View Issue on AlanStdLib repository"
[Issue #25]: https://github.com/AnssiR66/AlanStdLib/issues/25" View Issue on AlanStdLib repository"

[PR #12 on StdLib]: https://github.com/AnssiR66/AlanStdLib/pull/12 "View Pull Request on AlanStdLib repository"
[PR #23]: https://github.com/AnssiR66/AlanStdLib/pull/23 "View Pull Request on AlanStdLib repository"

<!-- Alan Commits ------------------------------------------------------------>

[repository di Alan]: https://bitbucket.org/alanif/alan "Visita il repository di Alan su Bitbucket"

[1bfc8f7]: https://bitbucket.org/alanif/alan/commits/1bfc8f7 "Vedi i dettagli del commit nel repository di Alan su Bitbucket"

[ad2c7de]: https://bitbucket.org/alanif/alan/commits/ad2c7de "Vedi i dettagli del commit nel repository di Alan su Bitbucket"

[054581b]: https://bitbucket.org/alanif/alan/commits/054581b "Vedi i dettagli del commit nel repository di Alan su Bitbucket"


<!-- Developer Snapshot di Alan ---------------------------------------------->

[developer snaphshot]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots "Vai alla pagina delle Developer Snapshots sul sito di Alan"
[3.0beta6-1852]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots/build1852 "Vai alla pagina di download della snapshot Alan 3.0beta6 build 1852"
[3.0beta6-1855]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots/build1855 "Vai alla pagina di download della snapshot Alan 3.0beta6 build 1855"
[3.0beta6-1862]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots/build1862 "Vai alla pagina di download della snapshot Alan 3.0beta6 build 1862"
[3.0beta6-1866]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots/build1866 "Vai alla pagina di download della snapshot Alan 3.0beta6 build 1866"
[3.0beta6-1870]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots/build1870 "Vai alla pagina di download della snapshot Alan 3.0beta6 build 1870"
[3.0beta6-1878]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots/build1878 "Vai alla pagina di download della snapshot Alan 3.0beta6 build 1878"
[3.0beta6-1880]: https://www.alanif.se/download-alan-v3/development-snapshots/development-snapshots/build1880 "Vai alla pagina di download della snapshot Alan 3.0beta6 build 1880"

<!-- eof -->

