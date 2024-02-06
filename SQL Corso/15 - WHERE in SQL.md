
1.  Cos’è la Clausola WHERE?
2.  Perché Usare la WHERE?
3.  Sintassi di WHERE
4.  Esempi Pratici WHERE
5.  Operatori Logici con WHERE
6.  Conclusioni

La clausola WHERE è uno strumento fondamentale nell’ambito delle query [[SQL]]. Questa clausola consente di filtrare i dati all’interno di una tabella in base a condizioni specifiche. In questa lezione, esploreremo cos’è la clausola WHERE, perché è utilizzata, come utilizzarla e forniremo numerosi esempi pratici.

Cos’è la Clausola WHERE?
------------------------

La clausola WHERE è utilizzata per filtrare i risultati di una query SQL in base a determinate condizioni. Questa clausola consente di recuperare solo le righe che soddisfano i criteri specificati.

Perché Usare la WHERE?
----------------------

La clausola WHERE è fondamentale quando si desidera ottenere dati specifici da una tabella che soddisfano condizioni particolari. Essa consente di restringere l’insieme di risultati in modo che siano rilevanti per l’analisi o l’elaborazione.

Sintassi di WHERE
-----------------

La sintassi di base della clausola WHERE è la seguente:

```
SELECT * FROM nome_tabella WHERE condizione;
```


Dove “condizione” è un’espressione che deve essere valutata come vera per ogni riga che si desidera recuperare.

Esempi Pratici WHERE
--------------------

_Esempio 1: Recupero di Dipendenti con Età Maggiore di 30 anni_

```
SELECT nome, cognome, eta FROM dipendenti WHERE eta > 30;
```


_Esempio 2: Recupero di Prodotti con Prezzo Inferiore a 50_

```
SELECT nome_prodotto, prezzo FROM prodotti WHERE prezzo < 50;
```


_Esempio 3: Recupero di Clienti con Nome “Maria”_

```
SELECT nome, cognome FROM clienti WHERE nome = 'Maria';
```


_Esempio 4: Recupero di Ordini Effettuati nel 2022_

```
SELECT id_ordine, data_ordine FROM ordini WHERE YEAR(data_ordine) = 2022;
```


Operatori Logici con WHERE
--------------------------

La clausola WHERE può essere utilizzata con operatori logici come AND, OR e NOT per combinare condizioni multiple:

_Esempio: Recupero di Dipendenti con Età tra 25 e 40 anni_

```
SELECT nome, cognome, eta FROM dipendenti WHERE eta >= 25 AND eta <= 40;
```


Conclusioni
-----------

La clausola WHERE è uno strumento potente per filtrare dati in SQL. La sua applicazione consente di recuperare solo i dati che sono rilevanti per uno specifico scopo o analisi. Imparare a utilizzare la clausola WHERE è essenziale per padroneggiare l’arte di creare query SQL mirate e pertinenti.