
1.  Introduzione ad INSERT INTO
2.  Sintassi per l’Inserimento di Dati
3.  Inserimento dei Dati in Specifiche Colonne
4.  Inserimento di Più Righe
5.  Inserimento di Tutte le Colonne con Valori
6.  Conclusioni

Nel contesto dei database [[SQL]], l’operazione di inserimento dei dati è fondamentale per aggiungere nuove informazioni alle tabelle. La clausola `INSERT INTO` è utilizzata per eseguire questa operazione, consentendo di inserire nuovi record all’interno di una tabella. In questa lezione, esploreremo dettagliatamente la clausola `INSERT INTO`, mostreremo come utilizzarla per inserire dati nelle tabelle e forniremo esempi pratici per illustrare le sue applicazioni.

La clausola `INSERT INTO` è un componente chiave nelle operazioni di inserimento dei dati all’interno di un database. Questa clausola consente di aggiungere nuove righe a una tabella, fornendo valori specifici per ciascuna colonna o inserendo i risultati di una query selezionata.

Sintassi per l’Inserimento di Dati
----------------------------------

La sintassi di base per l’utilizzo della clausola `INSERT INTO` è la seguente:

```
INSERT INTO nome_tabella (colonna1, colonna2, ...) VALUES (valore1, valore2, ...);
```


Qui, “nome\_tabella” rappresenta il nome della tabella in cui si desidera inserire i dati, mentre “colonna1, colonna2, …” sono le colonne specifiche in cui si vogliono inserire i valori. I valori corrispondenti alle colonne vengono forniti tramite “valore1, valore2, …“.

Inserimento dei Dati in Specifiche Colonne
------------------------------------------

È possibile specificare le colonne in cui si desidera inserire i dati, evitando di fornire valori per tutte le colonne della tabella:

```
INSERT INTO dipendenti (nome, cognome) VALUES ('Marco', 'Rossi');
```


Inserimento di Più Righe
------------------------

La clausola `INSERT INTO` permette anche di inserire più righe in un singolo comando, fornendo più set di valori separati da virgola:

```
INSERT INTO clienti (nome, cognome) VALUES ('Laura', 'Bianchi'), ('Anna', 'Verdi'), ('Luca', 'Giallo');
```


Inserimento di Tutte le Colonne con Valori
------------------------------------------

Se si desidera inserire valori in tutte le colonne di una tabella, è possibile farlo senza specificare esplicitamente le colonne:

```
INSERT INTO prodotti VALUES (101, 'Smartphone', 'Elettronica', 499.99);
```


Conclusioni
-----------

La clausola `INSERT INTO` è uno strumento fondamentale per aggiungere nuovi dati alle tabelle di un database. Sia che si debbano inserire valori specifici per determinate colonne o inserire dati in blocco, questa clausola offre flessibilità e potenza nell’aggiunta di informazioni. Imparare a utilizzare correttamente la clausola `INSERT INTO` è essenziale per padroneggiare le operazioni di inserimento nei database.