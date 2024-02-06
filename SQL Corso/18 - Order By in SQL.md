
1.  Cos’è ORDER BY?
2.  Sintassi di ORDER BY
3.  Esempi Pratici
4.  Ordinare per Più Colonne
5.  Conclusioni

Nell’ambito delle query [[SQL]], la clausola ORDER BY è uno strumento essenziale per ordinare i risultati in base a una o più colonne. Questa clausola consente di presentare i dati in un ordine specifico, rendendo più semplice l’analisi e la visualizzazione dei risultati. In questa lezione, esploreremo dettagliatamente la clausola ORDER BY, mostreremo come utilizzarla nelle query SQL e forniremo esempi concreti per illustrarne l’applicazione.

Cos’è ORDER BY?
---------------

La clausola ORDER BY viene utilizzata per ordinare i risultati di una query SQL in base ai valori di una o più colonne. Questo è particolarmente utile quando si desidera visualizzare i dati in un ordine specifico, come crescente o decrescente, in base a un attributo.

Sintassi di ORDER BY
--------------------

La sintassi di base della clausola ORDER BY è la seguente:

```
SELECT * FROM nome_tabella ORDER BY colonna1 [ASC | DESC];
```


Dove “colonna1” è il nome della colonna per cui si desidera ordinare. L’opzione `[ASC | DESC]` specifica l’ordine ascendente (`ASC`) o discendente (`DESC`).

Esempi Pratici
--------------

_Esempio 1: Ordinare Prodotti per Prezzo Crescente_

```
SELECT nome_prodotto, prezzo FROM prodotti ORDER BY prezzo ASC;
```


_Esempio 2: Ordinare Dipendenti per Età Decrescente_

```
SELECT nome, cognome, eta FROM dipendenti ORDER BY eta DESC;
```


Ordinare per Più Colonne
------------------------

È possibile ordinare i risultati per più colonne specificando più criteri nell’ordine desiderato:

_Esempio: Ordinare Dipendenti per Cognome Crescente e poi per Nome Crescente_

```
SELECT nome, cognome FROM dipendenti ORDER BY cognome ASC, nome ASC;
```


Conclusioni
-----------

La clausola ORDER BY è uno strumento potente per organizzare i risultati delle query SQL in un ordine specifico. La sua applicazione consente di presentare i dati in modo più significativo e coerente, semplificando l’analisi e l’interpretazione. Imparare a utilizzare correttamente la clausola ORDER BY è fondamentale per padroneggiare la creazione di query SQL ben strutturate e facilmente comprensibili.