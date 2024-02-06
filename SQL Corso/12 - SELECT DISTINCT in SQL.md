
1.  Cos’è SELECT DISTINCT?
2.  Sintassi SELECT DISTINCT
3.  Recupero di Valori Distinti
4.  Conclusioni

Il comando SELECT DISTINCT è un’ulteriore estensione del comando SELECT nel mondo di [[SQL]]. Questa istruzione consente di recuperare valori unici da una colonna specifica in una tabella. In questa lezione, esploreremo il comando SELECT DISTINCT, comprenderne la sintassi di base e come utilizzarlo per ottenere valori distinti da una colonna.

Cos’è SELECT DISTINCT?
----------------------

Il comando SELECT DISTINCT è utilizzato per estrarre valori unici da una colonna specifica all’interno di una tabella. Questo comando aiuta a ottenere una lista di valori distinti, eliminando eventuali duplicati.

Sintassi SELECT DISTINCT
------------------------

La sintassi di base del comando SELECT DISTINCT è la seguente:

```
SELECT DISTINCT nome_colonna FROM nome_tabella;
```


Questa istruzione recupera i valori unici dalla colonna specificata nella tabella specificata.

Recupero di Valori Distinti
---------------------------

Per ottenere valori unici da una colonna, possiamo utilizzare il comando SELECT DISTINCT seguito dal nome della colonna:

```
SELECT DISTINCT cognome FROM dipendenti;
```


Questa istruzione restituirà tutti i valori distinti presenti nella colonna “cognome” della tabella “dipendenti”.

Conclusioni
-----------

Il comando SELECT DISTINCT è uno strumento utile per estrarre valori unici da una colonna in una tabella. Questo aiuta a semplificare e focalizzare l’analisi dei dati, eliminando i valori duplicati. Imparare a utilizzare il comando SELECT DISTINCT è fondamentale per lavorare efficacemente con dati unici all’interno di un database SQL.