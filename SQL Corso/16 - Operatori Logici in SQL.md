
1.  Gli Operatori Logici Disponibili
2.  L’Operatore AND
3.  L’Operatore OR
4.  L’Operatore NOT
5.  Uso delle Parentesi
6.  Conclusioni

Nel mondo delle query [[SQL]], gli operatori logici sono strumenti essenziali per combinare condizioni nella clausola WHERE. Questi operatori consentono di creare espressioni logiche complesse che filtrano dati in base a molteplici criteri. In questa lezione, esploreremo dettagliatamente gli operatori logici, mostreremo come usarli nella clausola WHERE e forniremo esempi pratici per illustrare le loro applicazioni.

Gli Operatori Logici Disponibili
--------------------------------

Gli operatori logici consentono di combinare condizioni in modo da ottenere risultati più specifici. Ecco alcuni degli operatori logici più comuni:

*   **`AND`:** Restituisce il risultato se tutte le condizioni sono vere.
*   **`OR`:** Restituisce il risultato se almeno una delle condizioni è vera.
*   **`NOT`:** Restituisce il risultato contrario di una condizione.

L’Operatore AND
---------------

L’operatore logico `AND` è utilizzato per combinare condizioni in modo che entrambe debbano essere vere affinché una riga venga restituita nei risultati. In altre parole, l’operatore `AND` richiede che tutte le condizioni siano soddisfatte.

**Sintassi:**

```
SELECT * FROM nome_tabella WHERE condizione1 AND condizione2;
```


**Esempio Pratico: Recupero di Dipendenti con Età tra 25 e 40 anni**

```
SELECT nome, cognome, eta FROM dipendenti WHERE eta >= 25 AND eta <= 40;
```


L’Operatore OR
--------------

L’operatore logico `OR` è utilizzato per combinare condizioni in modo che almeno una delle condizioni debba essere vera affinché una riga venga restituita nei risultati. In altre parole, l’operatore `OR` richiede che almeno una delle condizioni sia soddisfatta.

**Sintassi:**

```
SELECT * FROM nome_tabella WHERE condizione1 OR condizione2;
```


**Esempio Pratico: Recupero di Prodotti con Prezzo Inferiore a 50 o in Offerta**

```
SELECT nome_prodotto, prezzo, in_offerta FROM prodotti WHERE prezzo < 50 OR in_offerta = 1;
```


L’Operatore NOT
---------------

L’operatore logico `NOT` viene utilizzato per negare una condizione, restituendo righe che non soddisfano la condizione specificata.

**Sintassi:**

```
SELECT * FROM nome_tabella WHERE NOT condizione;
```


**Esempio Pratico: Recupero di Clienti con Nome “Maria” ma non di Cognome “Rossi”**

```
SELECT nome, cognome FROM clienti WHERE nome = 'Maria' AND NOT cognome = 'Rossi';
```


Uso delle Parentesi
-------------------

È possibile utilizzare le parentesi per creare condizioni complesse e controllare l’ordine di valutazione. Questo può essere utile quando si combinano più operatori logici.

**Sintassi:**

```
SELECT * FROM nome_tabella WHERE (condizione1 AND condizione2) OR condizione3;
```


**Esempio Pratico: Recupero di Dipendenti con Età tra 20 e 30 anni o con Età superiore a 50 anni**

```
SELECT nome, cognome, eta FROM dipendenti WHERE (eta >= 20 AND eta <= 30) OR eta > 50;
```


Conclusioni
-----------

Gli operatori logici sono strumenti essenziali per creare condizioni complesse nelle query SQL. Ogni operatore ha un ruolo specifico nell’elaborazione delle condizioni e nell’ottenimento dei risultati desiderati. Imparare a utilizzare correttamente gli operatori logici nella clausola WHERE è fondamentale per padroneggiare la creazione di query SQL avanzate e accuratamente filtrate.