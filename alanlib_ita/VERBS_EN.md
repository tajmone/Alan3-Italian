# ALAN Standard Library v2.1 Verbs

The following table was built from the verbs list found in the commented section at the beginning of "[`lib_verbs.i`][lib_verbs]". Kept here for quick reference.

[lib_verbs]: ./lib_verbs.i



|         VERB        |                        SYNONYMS                        |               SYNTAX              | ARITY |   OBJ    |
|---------------------|--------------------------------------------------------|-----------------------------------|-------|----------|
| `about`             | (+ **help**, **info**)                                 | about                             |     0 | &#x2718; |
| `again`             | (+ **g**)                                              | again                             |     0 | &#x2718; |
| `answer`            | (+ **reply**)                                          | answer (topic)                    |     1 | &#x2718; |
| `ask`               | (+ **enquire**, **inquire**, **interrogate**)          | ask (act) about (topic)           |     2 | &#x2718; |
| `ask_for`           |                                                        | ask (act) for (obj)               |     2 | &#x2705; |
| `attack`            | (+ **beat**, **fight**, **hit**, **punch**)            | attack (target)                   |     1 | &#x2718; |
| `attack_with`       |                                                        | attack (target) with (weapon)     |     2 | &#x2718; |
| `bite`              | (+ **chew**)                                           | bite (obj)                        |     1 | &#x2705; |
| `break`             | (+ **destroy**)                                        | break (obj)                       |     1 | &#x2705; |
| `break_with`        |                                                        | break (obj) with (instr)          |     2 | &#x2705; |
| `brief`             |                                                        | brief                             |     0 | &#x2718; |
| `burn`              |                                                        | burn (obj)                        |     1 | &#x2705; |
| `burn_with`         |                                                        | burn (obj) with (instr)           |     2 | &#x2705; |
| `buy`               | (+ **purchase**)                                       | buy (item)                        |     1 | &#x2718; |
| `catch`             |                                                        | catch (obj)                       |     1 | &#x2705; |
| `clean`             | (+ **polish**, **wipe**)                               | clean (obj)                       |     1 | &#x2705; |
| `climb`             |                                                        | climb (obj)                       |     1 | &#x2705; |
| `climb_on`          |                                                        | climb on (surface)                |     1 | &#x2718; |
| `climb_through`     |                                                        | climb through (obj)               |     1 | &#x2705; |
| `close`             | (+ **shut**)                                           | close (obj)                       |     1 | &#x2705; |
| `close_with`        |                                                        | close (obj) with (instr)          |     2 | &#x2705; |
| `consult`           |                                                        | consult (source) about (topic)    |     2 | &#x2718; |
| `credits`           | (+ **acknowledgments**, **author**, **copyright**)     | credits                           |     0 | &#x2718; |
| `cut`               |                                                        | cut (obj)                         |     1 | &#x2705; |
| `cut_with`          |                                                        | cut (obj) with (instr)            |     2 | &#x2705; |
| `dance`             |                                                        | dance                             |     0 | &#x2718; |
| `dig`               |                                                        | dig (obj)                         |     1 | &#x2705; |
| `dive`              |                                                        | dive                              |     0 | &#x2718; |
| `dive_in`           |                                                        | dive in (liq)                     |     1 | &#x2718; |
| `drink`             |                                                        | drink (liq)                       |     1 | &#x2718; |
| `drive`             |                                                        | drive (vehicle)                   |     1 | &#x2718; |
| `drop`              | (+ **discard**, **dump**, **reject**)                  | drop (obj)                        |     1 | &#x2705; |
| `eat`               |                                                        | eat (food)                        |     1 | &#x2718; |
| `empty`             |                                                        | empty (obj)                       |     1 | &#x2705; |
| `empty_in`          |                                                        | empty (obj) in (cont)             |     2 | &#x2705; |
| `empty_on`          |                                                        | empty (obj) on (surface)          |     2 | &#x2705; |
| `enter`             |                                                        | enter (obj)                       |     1 | &#x2705; |
| `examine`           | (+ **check**, **inspect**, **observe**, **x**)         | examine (obj)                     |     1 | &#x2705; |
| `exit`              |                                                        | exit (obj)                        |     1 | &#x2705; |
| `extinguish`        | (+ **put out**, **quench**)                            | extinguish (obj)                  |     1 | &#x2705; |
| `fill`              |                                                        | fill (cont)                       |     1 | &#x2718; |
| `fill_with`         |                                                        | fill (cont) with (substance)      |     2 | &#x2718; |
| `find`              | (+ **locate**)                                         | find (obj)                        |     1 | &#x2705; |
| `fire`              |                                                        | fire (weapon)                     |     1 | &#x2718; |
| `fire_at`           |                                                        | fire (weapon) at (target)         |     2 | &#x2718; |
| `fix`               | (+ **mend**, **repair**)                               | fix (obj)                         |     1 | &#x2705; |
| `follow`            |                                                        | follow (act)                      |     1 | &#x2718; |
| `free`              | (+ **release**)                                        | free (obj)                        |     1 | &#x2705; |
| `get_up`            |                                                        | get up                            |     0 | &#x2718; |
| `get_off`           |                                                        | get off (obj)                     |     1 | &#x2705; |
| `give`              |                                                        | give (obj) to (recipient)         |     2 | &#x2705; |
| `go_to`             |                                                        | go to (dest)                      |     1 | &#x2718; |
| `hint`              | (+ **hints**)                                          | hint                              |     0 | &#x2718; |
| `i`                 | (+ **inv**, **inventory**)                             | inventory                         |     0 | &#x2718; |
| `jump`              |                                                        | jump                              |     0 | &#x2718; |
| `jump_in`           |                                                        | jump in (cont)                    |     1 | &#x2718; |
| `jump_on`           |                                                        | jump on (surface)                 |     1 | &#x2718; |
| `kick`              |                                                        | kick (target)                     |     1 | &#x2718; |
| `kill`              | (+ **murder**)                                         | kill (victim)                     |     1 | &#x2718; |
| `kill_with`         |                                                        | kill (victim) with (weapon)       |     2 | &#x2718; |
| `kiss`              | (+ **hug**, **embrace**)                               | kiss (obj)                        |     1 | &#x2705; |
| `knock`       (on)  |                                                        | knock on (obj)                    |     1 | &#x2705; |
| `lie_down`          |                                                        | lie down                          |     0 | &#x2718; |
| `lie_in`            |                                                        | lie in (cont)                     |     1 | &#x2718; |
| `lie_on`            |                                                        | lie on (surface)                  |     1 | &#x2718; |
| `lift`              |                                                        | lift (obj)                        |     1 | &#x2705; |
| `light`             | (+ **lit**)                                            | light (obj)                       |     1 | &#x2705; |
| `listen0`           |                                                        | listen                            |     0 | &#x2718; |
| `listen`            |                                                        | listen to (obj)                   |     1 | &#x2705; |
| `lock`              |                                                        | lock (obj)                        |     1 | &#x2705; |
| `lock_with`         |                                                        | lock (obj) with (key)             |     2 | &#x2705; |
| `look`              | (+ **gaze**, **peek**)                                 | look                              |     0 | &#x2718; |
| `look_at`           |                                                        | look at (obj)                     |     1 | &#x2705; |
| `look_behind`       |                                                        | look behind (bulk)                |     1 | &#x2718; |
| `look_in`           |                                                        | look in (cont)                    |     1 | &#x2718; |
| `look_out_of`       |                                                        | look out of (obj)                 |     1 | &#x2705; |
| `look_through`      |                                                        | look through (bulk)               |     1 | &#x2718; |
| `look_under`        |                                                        | look under (bulk)                 |     1 | &#x2718; |
| `look_up`           |                                                        | look up                           |     0 | &#x2718; |
| `no`                |                                                        | no                                |     0 | &#x2718; |
| `notify`  (on, off) |                                                        | notify. notify on. notify off     |     0 | &#x2718; |
| `open`              |                                                        | open (obj)                        |     1 | &#x2705; |
| `open_with`         |                                                        | open (obj) with (instr)           |     2 | &#x2705; |
| `play`              |                                                        | play (obj)                        |     1 | &#x2705; |
| `play_with`         |                                                        | play with (obj)                   |     1 | &#x2705; |
| `pour`              | (= defined at the verb `empty`)                        | pour (obj)                        |     1 | &#x2705; |
| `pour_in`           | (= defined at the verb `emtpy_in`)                     | pour (obj) in (cont)              |     2 | &#x2705; |
| `pour_on`           | (= defined at the verb `empty_on`)                     | pour (obj) on (surface)           |     2 | &#x2705; |
| `pray`              |                                                        | pray                              |     0 | &#x2718; |
| `pry`               |                                                        | pry (obj)                         |     1 | &#x2705; |
| `pry_with`          |                                                        | pry (obj) with (instr)            |     2 | &#x2705; |
| `pull`              |                                                        | pull (obj)                        |     1 | &#x2705; |
| `push`              |                                                        | push (obj)                        |     1 | &#x2705; |
| `push_with`         |                                                        | push (obj) with (instr)           |     2 | &#x2705; |
| `put`               | (+ **lay**, **place**)                                 | put (obj)                         |     1 | &#x2705; |
| `put_against`       |                                                        | put (obj) against (bulk))         |     2 | &#x2705; |
| `put_behind`        |                                                        | put (obj) behind (bulk)           |     2 | &#x2705; |
| `put_down`          | (= defined at the verb `drop`)                         | put down (obj)                    |     1 | &#x2705; |
| `put_in`            | (+ **insert**)                                         | put (obj) in (cont)               |     2 | &#x2705; |
| `put_near`          |                                                        | put (obj) near (bulk)             |     2 | &#x2705; |
| `put_on`            |                                                        | put (obj) on (surface)            |     2 | &#x2705; |
| `put_under`         |                                                        | put (obj) under (bulk)            |     2 | &#x2705; |
| `quit`              | (+ **q**)                                              | quit                              |     0 | &#x2718; |
| `read`              |                                                        | read (obj)                        |     1 | &#x2705; |
| `remove`            |                                                        | remove (obj)                      |     1 | &#x2705; |
| `restart`           |                                                        | restart                           |     0 | &#x2718; |
| `restore`           |                                                        | restore                           |     0 | &#x2718; |
| `rub`               |                                                        | rub (obj)                         |     1 | &#x2705; |
| `save`              |                                                        | save                              |     0 | &#x2718; |
| `say`               |                                                        | say (topic)                       |     1 | &#x2718; |
| `say_to`            |                                                        | say (topic) to (act)              |     2 | &#x2718; |
| `score`             |                                                        | score                             |     0 | &#x2718; |
| `scratch`           |                                                        | scratch (obj)                     |     1 | &#x2705; |
| `script`            |                                                        | script. script on. script off.    |     0 | &#x2718; |
| `search`            |                                                        | search (obj)                      |     1 | &#x2705; |
| `sell`              |                                                        | sell (item)                       |     1 | &#x2718; |
| `shake`             |                                                        | shake (obj)                       |     1 | &#x2705; |
| `shoot` (at)        |                                                        | shoot at (target)                 |     1 | &#x2718; |
| `shoot_with`        |                                                        | shoot (target) with (weapon)      |     2 | &#x2718; |
| `shout`             | (+ **scream**, **yell**)                               | shout                             |     0 | &#x2718; |
| `show`              | (+ **reveal**)                                         | show (obj) to (act)               |     2 | &#x2705; |
| `sing`              |                                                        | sing                              |     0 | &#x2718; |
| `sip`               |                                                        | sip (liq)                         |     1 | &#x2718; |
| `sit`   (down)      |                                                        | sit.  sit down.                   |     0 | &#x2718; |
| `sit_on`            |                                                        | sit on (surface)                  |     1 | &#x2718; |
| `sleep`             | (+ **rest**)                                           | sleep                             |     0 | &#x2718; |
| `smell0`            |                                                        | smell                             |     0 | &#x2718; |
| `smell`             |                                                        | smell (odour)                     |     1 | &#x2718; |
| `squeeze`           |                                                        | squeeze (obj)                     |     1 | &#x2705; |
| `stand` (up)        |                                                        | stand.  stand up.                 |     0 | &#x2718; |
| `stand_on`          |                                                        | stand on (surface)                |     1 | &#x2718; |
| `swim`              |                                                        | swim                              |     0 | &#x2718; |
| `swim_in`           |                                                        | swim in (liq)                     |     1 | &#x2718; |
| `switch`            |                                                        | switch (obj)                      |     1 | &#x2705; |
| `switch_on`         | (defined at the verb `turn_on`)                        | switch on (app)                   |     1 | &#x2718; |
| `switch_off`        | (defined at the verb `turn_off`)                       | switch off (app)                  |     1 | &#x2718; |
| `take`              | (+ **carry**, **get**, **grab**, **hold**, **obtain**) | take (obj)                        |     1 | &#x2705; |
| `take_from`         | (+ **remove from**)                                    | take (obj) from (holder)          |     2 | &#x2705; |
| `talk`              |                                                        | talk                              |     0 | &#x2718; |
| `talk_to`           | (+ **speak**)                                          | talk to (act)                     |     1 | &#x2718; |
| `taste`             | (+ **lick**)                                           | taste (obj)                       |     1 | &#x2705; |
| `tear`              | (+ **rip**)                                            | tear (obj)                        |     1 | &#x2705; |
| `tell`              | (+ **enlighten**, **inform**)                          | tell (act) about (topic)          |     2 | &#x2718; |
| `think`             |                                                        | think                             |     0 | &#x2718; |
| `think_about`       |                                                        | think about (topic)               |     1 | &#x2718; |
| `throw`             |                                                        | throw (projectile)                |     1 | &#x2718; |
| `throw_at`          |                                                        | throw (projectile) at (target)    |     2 | &#x2718; |
| `throw_in`          |                                                        | throw (projectile) in (cont)      |     2 | &#x2718; |
| `throw_to`          |                                                        | throw (projectile) to (recipient) |     2 | &#x2718; |
| `tie`               |                                                        | tie (obj)                         |     1 | &#x2705; |
| `tie_to`            |                                                        | tie (obj) to (target)             |     2 | &#x2705; |
| `touch`             | (+ **feel**)                                           | touch (obj)                       |     1 | &#x2705; |
| `turn`              | (+ **rotate**)                                         | turn (obj)                        |     1 | &#x2705; |
| `turn_on`           |                                                        | turn on (app)                     |     1 | &#x2718; |
| `turn_off`          |                                                        | turn off (app)                    |     1 | &#x2718; |
| `undress`           |                                                        | undress                           |     0 | &#x2718; |
| `unlock`            |                                                        | unlock (obj)                      |     1 | &#x2705; |
| `unlock_with`       |                                                        | unlock (obj) with (key)           |     2 | &#x2705; |
| `use`               |                                                        | use (obj)                         |     1 | &#x2705; |
| `use_with`          |                                                        | use (obj) with (instr)            |     2 | &#x2705; |
| `verbose`           |                                                        | verbose                           |     0 | &#x2718; |
| `wait`              | (+ **z**)                                              | wait                              |     0 | &#x2718; |
| `wear`              |                                                        | wear (obj)                        |     1 | &#x2705; |
| `what_am_i`         |                                                        | what am I                         |     0 | &#x2718; |
| `what_is`           |                                                        | what is (obj)                     |     1 | &#x2705; |
| `where_am_i`        |                                                        | where am I                        |     0 | &#x2718; |
| `where_is`          |                                                        | where is (obj)                    |     1 | &#x2705; |
| `who_am_i`          |                                                        | who am I                          |     0 | &#x2718; |
| `who_is`            |                                                        | who is (act)                      |     1 | &#x2718; |
| `write`             |                                                        | write (txt) on (obj)              |     2 | &#x2705; |
| `yes`               |                                                        | yes                               |     0 | &#x2718; |
