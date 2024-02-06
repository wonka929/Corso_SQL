
1.  Concetto della Clausola HAVING
2.  Sintassi
3.  Esempi di Utilizzo
4.  Vantaggi della Clausola HAVING
5.  Conclusioni

La clausola HAVING è un componente chiave delle query [[SQL]] che viene utilizzato in combinazione con la clausola GROUP BY. Essa consente di filtrare i risultati basandosi su valori aggregati calcolati attraverso funzioni come SUM, COUNT, AVG, MAX e MIN. In sostanza, la clausola HAVING opera su gruppi di dati definiti dalla clausola GROUP BY. In questa lezione, esploreremo l’utilizzo della clausola HAVING, forniremo esempi pratici e spiegheremo come applicare questa operazione nelle query SQL.

Concetto della Clausola HAVING
------------------------------

La clausola HAVING viene utilizzata per filtrare i risultati di una query basandosi su valori aggregati. Essa opera su gruppi di dati generati dalla clausola GROUP BY e determina quali gruppi saranno inclusi nei risultati finali.

Sintassi
--------

La sintassi della clausola HAVING è la seguente:

```
SELECT colonna_gruppo, funzione_aggregazione(colonna)
FROM tabella
GROUP BY colonna_gruppo
HAVING condizione;
```


Esempi di Utilizzo
------------------

**Esempio 1: Filtrare Gruppi con Somma Superiore a una Soglia**

```
SELECT reparto, SUM(salario) AS totale_salario
FROM dipendenti
GROUP BY reparto
HAVING SUM(salario) > 50000;
```


**Esempio 2: Utilizzo della Clausola HAVING con AVG**

```
SELECT genere, AVG(età) AS media_età
FROM dipendenti
GROUP BY genere
HAVING AVG(età) < 35;
```


Vantaggi della Clausola HAVING
------------------------------

*   Filtraggio di Valori Aggregati: La clausola HAVING consente di filtrare i gruppi di dati in base ai valori aggregati calcolati.
*   Selezione di Gruppi Rilevanti: È possibile selezionare gruppi che soddisfano determinate condizioni basate su funzioni di aggregazione.

Conclusioni
-----------

La clausola HAVING è uno strumento essenziale per filtrare i risultati di query basate su valori aggregati. Utilizzando questa clausola insieme alla clausola GROUP BY, è possibile applicare condizioni ai gruppi di dati generati e selezionare gruppi rilevanti per l’analisi. La clausola HAVING è particolarmente utile quando si desidera escludere o includere gruppi di dati in base a valori aggregati specifici.