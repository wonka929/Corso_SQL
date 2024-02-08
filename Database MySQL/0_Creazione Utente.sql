-- Per creare un utente su MySQL, puoi utilizzare l'istruzione SQL CREATE USER. Ecco un esempio di come farlo:

CREATE USER 'nome_utente'@'indirizzo_IP_o_nome_host' IDENTIFIED BY 'password';

/* nome_utente: il nome dell'utente che stai creando.
   indirizzo_IP_o_nome_host: l'indirizzo IP o il nome host del client da cui l'utente può connettersi al server MySQL. Puoi usare '%' per indicare qualsiasi indirizzo IP o host.
   password: la password associata all'utente.
*/

-- Ad esempio, se desideri creare un utente chiamato "utente_esempio" con password "mia_password" che può connettersi da qualsiasi host, puoi usare:

CREATE USER 'utente_esempio'@'%' IDENTIFIED BY 'mia_password';
