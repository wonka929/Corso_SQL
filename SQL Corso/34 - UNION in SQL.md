
1.  Concetto di Operatore UNION
2.  Sintassi
3.  Esempi di Utilizzo
4.  Vantaggi dell’Operatore UNION
5.  Conclusioni

In [[SQL]], l’operatore UNION è uno strumento potente che consente di combinare i risultati di più query in un unico set di risultati. Questa operazione è utile quando si desidera ottenere dati da più tabelle o query correlate. In questa lezione, esploreremo l’utilizzo dell’operatore UNION, forniremo esempi pratici e spiegheremo come applicare questa operazione nelle query SQL.

Concetto di Operatore UNION
---------------------------

L’operatore UNION viene utilizzato per combinare i risultati di due o più query in un unico set di risultati. Le query devono avere lo stesso numero di colonne e le colonne devono avere tipi di dati compatibili.

Sintassi
--------

La sintassi dell’operatore UNION è la seguente:

```
SELECT colonne
FROM tabella1
UNION
SELECT colonne
FROM tabella2;
```


Esempi di Utilizzo
------------------

**Esempio 1: Combinare i Risultati di Due Query**

```
SELECT nome
FROM clienti
UNION
SELECT nome
FROM fornitori;
```


**Esempio 2: Utilizzo dell’Operatore UNION con Alias**

```
SELECT nome AS entità
FROM clienti
UNION
SELECT nome AS entità
FROM fornitori;
```


Vantaggi dell’Operatore UNION
-----------------------------

*   Combinazione dei Risultati: L’operatore UNION consente di ottenere un unico set di risultati combinando i dati da più fonti.
*   Semplificazione delle Query: È possibile ottenere informazioni da diverse tabelle o query correlati senza dover eseguire query separate.

Conclusioni
-----------

L’operatore UNION è uno strumento efficace per combinare e semplificare l’ottenimento di dati da più tabelle o query correlate. Utilizzando l’operatore UNION, è possibile ottenere un set di risultati completo e correlato senza dover scrivere query complesse o ripetitive. Questa operazione è particolarmente utile quando si desidera ottenere una vista consolidata di dati provenienti da diverse fonti o tabelle.