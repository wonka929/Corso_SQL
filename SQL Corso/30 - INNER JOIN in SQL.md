
1.  Concetto di Join nelle Query SQL
2.  Sintassi dell’Inner Join
3.  Esempi di Utilizzo dell’Inner Join
4.  Vantaggi dell’Inner Join
5.  Inner Join con 3 o più Tabelle
6.  Sintassi dell’Inner Join con 3 o più Tabelle
7.  Esempio di Inner Join con 3 Tabelle
8.  Conclusioni

L’operazione di join è fondamentale nelle query [[SQL]] per combinare dati da più tabelle basandosi su una condizione comune. L’inner join è uno dei tipi di join più comuni e viene utilizzato per recuperare solo le righe corrispondenti tra due tabelle. In questa lezione, esploreremo l’inner join, ne illustreremo l’utilizzo, forniremo esempi pratici e spiegheremo il suo significato all’interno delle query SQL.

Concetto di Join nelle Query SQL
--------------------------------

Un join in SQL consente di combinare dati da due o più tabelle sulla base di una condizione specificata. Ciò consente di ottenere un set di risultati che comprende colonne da tabelle diverse. Gli inner join recuperano solo le righe che corrispondono tra le tabelle coinvolte.

Sintassi dell’Inner Join
------------------------

La sintassi dell’inner join è la seguente:

```
SELECT colonne
FROM tabella1
INNER JOIN tabella2
ON tabella1.colonna_comune = tabella2.colonna_comune;
```


Esempi di Utilizzo dell’Inner Join
----------------------------------

**Esempio 1: Inner Join tra Due Tabelle**

```
SELECT ordini.id_ordine, clienti.nome, ordini.data_ordine
FROM ordini
INNER JOIN clienti
ON ordini.id_cliente = clienti.id_cliente;
```


**Esempio 2: Utilizzo di Alias nelle Tabelle Coinvolte**

```
SELECT o.id_ordine, c.nome, o.data_ordine
FROM ordini AS o
INNER JOIN clienti AS c
ON o.id_cliente = c.id_cliente;
```


**Esempio 3: Inner Join con Condizione di Data**

```
SELECT p.nome_prodotto, o.data_ordine
FROM prodotti AS p
INNER JOIN ordini AS o
ON p.id_prodotto = o.id_prodotto
WHERE o.data_ordine BETWEEN '2023-01-01' AND '2023-03-31';
```


Vantaggi dell’Inner Join
------------------------

*   Combinazione dei Dati: L’inner join consente di combinare dati da tabelle diverse in base a una condizione comune.
*   Riduzione dei Dati: Vengono restituite solo le righe corrispondenti tra le tabelle coinvolte.
*   Query Efficaci: Gli inner join aiutano a scrivere query efficienti che estraggono solo i dati necessari.

Inner Join con 3 o più Tabelle
------------------------------

L’inner join con 3 o più tabelle consente di combinare dati da più fonti, generando un set di risultati basato su condizioni comuni tra le tabelle coinvolte.

Sintassi dell’Inner Join con 3 o più Tabelle
--------------------------------------------

La sintassi dell’inner join con 3 o più tabelle è la seguente:

```
SELECT colonne
FROM tabella1
INNER JOIN tabella2
ON tabella1.colonna_comune = tabella2.colonna_comune
INNER JOIN tabella3
ON tabella2.colonna_comune = tabella3.colonna_comune;
```


Esempio di Inner Join con 3 Tabelle
-----------------------------------

**Esempio: Inner Join tra Ordini, Clienti e Dettagli Ordine**

```
SELECT o.id_ordine, c.nome, d.prezzo_unitario
FROM ordini AS o
INNER JOIN clienti AS c
ON o.id_cliente = c.id_cliente
INNER JOIN dettagli_ordini AS d
ON o.id_ordine = d.id_ordine;
```


Conclusioni
-----------

L’inner join è uno strumento essenziale per combinare e correlare dati provenienti da tabelle diverse all’interno delle query SQL. Utilizzando l’inner join in modo appropriato, è possibile ottenere risultati accurati e rilevanti che forniscono una visione dettagliata delle relazioni tra le tabelle nel database.