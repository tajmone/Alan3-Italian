# Cartella Temporanea Test

Questa cartella è adibita allo sviluppo in locale di nuovi test, al fine di velocizzarne i tempi di sviluppo eseguendoli isolatamente dagli altri test.

Inoltre, le avventure (e relativi script) di questa cartella sono ignorati da Git e non verranno inclusi nel repository. Questo consente di lavorare ai nuovi test senza dover creare branch apposite.

Quando i nuovi test sono pronti per l'inclusione nel progetto, spostarli in una delle altre cartelle della test suite.

I test di questa cartella sono della tipologia "Molte avventure, uno o più test su ciascuna".

Per eseguire i test, usare lo script:

- [`TESTA_CARTELLA.bat`](./TESTA_CARTELLA.bat)


> __NOTA__ — Quest cartella non viene processata dallo script `../TESTA_TUTTO.bat`, ma solo tramite lo script `TESTA_CARTELLA.bat` presente in questa cartella.

<!-- EOF -->
