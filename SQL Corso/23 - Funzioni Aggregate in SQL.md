
1.  Introduzione alle Funzioni Aggregate
2.  Vantaggi sul loro Utilizzo
3.  Elenco delle Funzioni Aggregate
4.  Funzioni Aggregate: COUNT
5.  Funzioni Aggregate: SUM
6.  Funzioni Aggregate: AVG
7.  Funzioni Aggregate: MIN
8.  Funzioni Aggregate: MAX
9.  Conclusioni

Le funzioni aggregate sono strumenti potenti all’interno delle query [[SQL]] che consentono di eseguire calcoli su gruppi di dati e di ottenere risultati aggregati, come somme, medie, massimi e minimi. Queste funzioni sono fondamentali per l’analisi e la manipolazione dei dati all’interno delle tabelle. In questa lezione, esploreremo dettagliatamente le funzioni aggregate, discuteremo perché sono utili e forniremo una panoramica completa di tutte le funzioni aggregate disponibili in SQL.

Introduzione alle Funzioni Aggregate
------------------------------------

Le funzioni aggregate consentono di elaborare un insieme di valori in modo da ottenere un risultato unico o un valore aggregato. Queste funzioni sono ampiamente utilizzate per calcolare statistiche, totali, medie e altri dati aggregati.

Vantaggi sul loro Utilizzo
--------------------------

Le funzioni aggregate offrono diversi vantaggi nell’analisi dei dati:

*   Consentono di ottenere informazioni riepilogative su gruppi di dati.
*   Semplificano il calcolo di statistiche complesse.
*   Aiutano a generare report e risultati chiari e concisi.

Elenco delle Funzioni Aggregate
-------------------------------

Ecco un elenco delle funzioni aggregate più comuni:

*   `COUNT`: Restituisce il numero di righe in un gruppo.
*   `SUM`: Calcola la somma dei valori numerici in un gruppo.
*   `AVG`: Calcola la media dei valori numerici in un gruppo.
*   `MIN`: Restituisce il valore minimo in un gruppo.
*   `MAX`: Restituisce il valore massimo in un gruppo.

Funzioni Aggregate: COUNT
-------------------------

Restituisce il numero di righe in un gruppo.

```
SELECT COUNT(*) AS numero_ordini
FROM ordini;
```


Funzioni Aggregate: SUM
-----------------------

Calcola la somma dei valori numerici in un gruppo.

```
SELECT SUM(importo) AS totale_vendite
FROM vendite;
```


Funzioni Aggregate: AVG
-----------------------

Calcola la media dei valori numerici in un gruppo.

```
SELECT AVG(voto) AS media_voti
FROM studenti;
```


Funzioni Aggregate: MIN
-----------------------

Restituisce il valore minimo in un gruppo.

```
SELECT MIN(prezzo) AS prezzo_minimo
FROM prodotti;
```


Funzioni Aggregate: MAX
-----------------------

Restituisce il valore massimo in un gruppo.

```
SELECT MAX(eta) AS eta_massima
FROM dipendenti;
```


Conclusioni
-----------

Le funzioni aggregate sono strumenti fondamentali per ottenere dati aggregati e statistiche dai dati all’interno delle tabelle. Capire come utilizzare correttamente queste funzioni è cruciale per ottenere risultati accurati e significativi nelle analisi dei dati.