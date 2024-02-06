
1.  Introduzione all’Operatore LIKE
2.  Elenco delle Wildcard Disponibili
3.  Wildcard % (Percentuale)
4.  Wildcard \_ (Sottolineato)
5.  [Wildcard \[\] (Parentesi Quadre)](#wildcard--parentesi-quadre)
6.  [Wildcard \[^\] (Parentesi Quadre Negate)](#wildcard--parentesi-quadre-negate)
7.  Wildcard Combinate
8.  Conclusioni

L’operatore `LIKE` è uno strumento potente nelle query [[SQL]] che consente di effettuare ricerche di testo basate su modelli o pattern. Le wildcard, ovvero dei caratteri speciali, possono essere utilizzate con l’operatore `LIKE` per eseguire ricerche flessibili e avanzate. In questa lezione, esploreremo l’operatore `LIKE`, le wildcard disponibili e forniremo esempi pratici per illustrarne l’utilizzo.

Introduzione all’Operatore LIKE
-------------------------------

L’operatore `LIKE` è utilizzato per confrontare un valore con un pattern specificato. È particolarmente utile quando si desidera cercare valori che corrispondono a una determinata struttura o sequenza di caratteri.

Elenco delle Wildcard Disponibili
---------------------------------

Prima di procedere, vediamo un elenco delle wildcard disponibili:

*   `%` (Percentuale): Rappresenta zero o più caratteri.
*   `_` (Sottolineato): Rappresenta esattamente un carattere.
*   `[]` (Parentesi Quadre): Definisce un insieme di caratteri possibili.
*   `[^]` (Parentesi Quadre Negate): Indica un insieme di caratteri da escludere.

Wildcard `%` (Percentuale)
--------------------------

La wildcard `%` rappresenta zero o più caratteri. Può essere utilizzata per trovare valori che iniziano, finiscono o contengono una sequenza di caratteri specifica.

**Esempio:**

```
SELECT nome
FROM clienti
WHERE nome LIKE 'M%'; -- Trova i nomi che iniziano con "M"
```


Wildcard `_` (Sottolineato)
---------------------------

La wildcard `_` rappresenta esattamente un carattere. Può essere utilizzata per cercare valori in cui un carattere specifico occupa una posizione specifica.

**Esempio:**

```
SELECT username
FROM utenti
WHERE username LIKE '__smith'; -- Trova gli username che terminano con "smith" e hanno due caratteri precedenti
```


Wildcard `[]` (Parentesi Quadre)
--------------------------------

Le parentesi quadre `[ ]` possono essere utilizzate per definire un insieme di caratteri possibili in una posizione specifica.

**Esempio:**

```
SELECT parola
FROM glossario
WHERE parola LIKE '[AEIOU]%'; -- Trova le parole che iniziano con una vocale
```


Wildcard `[^]` (Parentesi Quadre Negate)
----------------------------------------

Le parentesi quadre con il simbolo `^` all’interno `[^ ]` indicano un insieme di caratteri da escludere in una posizione specifica.

**Esempio:**

```
SELECT titolo
FROM libri
WHERE titolo LIKE '[^0-9]%'; -- Trova i titoli che non iniziano con un numero
```


Wildcard Combinate
------------------

È possibile combinare le wildcard per creare ricerche più complesse e flessibili.

**Esempio:**

```
SELECT nome
FROM contatti
WHERE nome LIKE 'D%e_'; -- Trova nomi che iniziano con "D", terminano con "e" e hanno un carattere nella terza posizione
```


Conclusioni
-----------

L’utilizzo dell’operatore `LIKE` con le wildcard permette di effettuare ricerche di testo più flessibili e potenti. Comprendere come utilizzare queste wildcard in combinazione con `LIKE` è fondamentale per condurre ricerche mirate nei dati del database.