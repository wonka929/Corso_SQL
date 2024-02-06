
1.  Gli Operatori di Confronto Disponibili
2.  Sintassi Generale
3.  Esempi Pratici
4.  Operatori Logici con Operatori di Confronto
5.  Conclusioni

Nel mondo delle query [[SQL]], gli operatori di confronto sono strumenti chiave per creare condizioni nella clausola WHERE. Questi operatori consentono di stabilire relazioni tra valori e condizioni per filtrare i dati desiderati. In questa lezione, esploreremo in dettaglio gli operatori di confronto, comprenderemo come utilizzarli nella clausola WHERE e forniremo numerosi esempi per illustrare le loro applicazioni.

Gli Operatori di Confronto Disponibili
--------------------------------------

Gli operatori di confronto consentono di confrontare valori all’interno delle condizioni della clausola WHERE. Ecco alcuni degli operatori di confronto più comuni:

*   `=`: Uguale a
*   `!=` o `<>`: Diverso da
*   `<`: Minore di
*   `>`: Maggiore di
*   `<=`: Minore o uguale a
*   `>=`: Maggiore o uguale a

Sintassi Generale
-----------------

La sintassi generale per l’utilizzo degli operatori di confronto nella clausola WHERE è la seguente:

```
SELECT * FROM nome_tabella WHERE colonna operatore valore;
```


Dove “operatore” è uno degli operatori di confronto elencati sopra.

Esempi Pratici
--------------

_Esempio 1: Recupero di Dipendenti con Età Maggiore di 30 anni_

```
SELECT nome, cognome, eta FROM dipendenti WHERE eta > 30;
```


_Esempio 2: Recupero di Prodotti con Prezzo Inferiore a 50_

```
SELECT nome_prodotto, prezzo FROM prodotti WHERE prezzo < 50;
```


_Esempio 3: Recupero di Ordini Effettuati nel 2022_

```
SELECT id_ordine, data_ordine FROM ordini WHERE YEAR(data_ordine) = 2022;
```


_Esempio 4: Recupero di Clienti con Nome “Maria”_

```
SELECT nome, cognome FROM clienti WHERE nome = 'Maria';
```


Operatori Logici con Operatori di Confronto
-------------------------------------------

Gli operatori di confronto possono essere combinati con operatori logici come AND, OR e NOT per creare condizioni più complesse:

_Esempio: Recupero di Dipendenti con Età tra 25 e 40 anni_

```
SELECT nome, cognome, eta FROM dipendenti WHERE eta >= 25 AND eta <= 40;
```


Conclusioni
-----------

Gli operatori di confronto sono fondamentali per filtrare dati nelle query SQL. La loro comprensione consente di creare condizioni specifiche per recuperare dati pertinenti da una tabella. Imparare a utilizzare correttamente gli operatori di confronto è cruciale per padroneggiare la creazione di query SQL precise ed efficaci.