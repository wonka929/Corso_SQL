/*
Per creare una tabella in SQL, utilizziamo l’istruzione CREATE TABLE . La sintassi base è la
seguente:

CREATE TABLE nome_tabella (
colonna1 tipo_dato,
colonna2 tipo_dato,
...
);
*/

CREATE TABLE clienti (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(50),
email VARCHAR(100)
);