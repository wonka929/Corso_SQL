-- Dopo aver creato l'utente, potresti voler assegnargli i privilegi necessari. 
-- Ad esempio, per concedere tutti i privilegi all'utente su un certo database, puoi utilizzare l'istruzione GRANT:

SHOW GRANTS for admin;
GRANT All on production.* TO 'admin';