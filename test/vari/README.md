# Test "Vari" della Libreria Italiana

    /test/vari/

Questa cartella contiene avventure su ciascuna delle quali vengono eseguiti uno o più test (solitamente, uno).


-----

**Table of Contents**

<!-- MarkdownTOC autolink="true" bracket="round" autoanchor="false" lowercase="only_ascii" uri_encoding="true" levels="1,2,3" -->

- [Script di esecuzione](#script-di-esecuzione)
- [Organizzazione dei test](#organizzazione-dei-test)
    - [Convenzioni Nomi File](#convenzioni-nomi-file)

<!-- /MarkdownTOC -->

-----

# Script di esecuzione

Per eseguire tutti i test in questa directory, eseguire lo script batch nella cartella superiore:

- [`../TESTA_TUTTO.bat`][TESTA_TUTTO]

# Organizzazione dei test

L'approccio ai test in questa cartella consente di associare a ciascuna avventura sorgente uno o più test.

## Convenzioni Nomi File

Per ogni avventura avente nome "`<nomefile>.alan`", lo script batch di automazione compilerà l'avventura in "`<nomefile>.a3c`", e poi cercherà tutti i file `*.a3sol` che iniziano per `<nomefile>`, secondo il pattern `<nomefile>*.a3sol`. Grazie a questo sistema è possibile eseguire script di test diversi sulla medesima avventura. Esempio:

- "`attori.alan`" -> "`attori.a3c`":
    -  "`attori.a3sol`" -> "`attori.a3log`"
    -  "`attori_avanzato.a3sol`" -> "`attori_avanzato.a3log`"

Ne consegue che non bisogna creare avventure il cui nome costituisca la parte iniziale di un'altra avventura (es "`attori.alan`" e "`attori_due.alan`)" poiché gli script di comandi della seconda verrebbero eseguiti anche per la prima dato che rientrerebbero nel pattern `attori*.a3sol`.

<!-----------------------------------------------------------------------------
                               REFERENCE LINKS                                
------------------------------------------------------------------------------>

<!-- File di Progetto -->

[TESTA_TUTTO]: ../TESTA_TUTTO.bat


<!-- EOF -->