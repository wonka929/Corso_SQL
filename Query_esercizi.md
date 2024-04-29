### Esempi di query:

Selezione dei customer che non hanno effettuato ordini:

    SELECT *
    from 
    sales.customers s
    where s.customer_id not IN (select c.customer_id  from sales.orders c);

Conta il numero di customer che non hanno effettuato ordini

    SELECT count(distinct s.customer_id)
    from 
    sales.customers s
    where s.customer_id not IN (select c.customer_id  from sales.orders c);

Trova il valore totale dell'ordine:

    SELECT
        order_id,
        SUM(list_price * quantity * (1-discount)) as totale_ordine
    from
        sales.order_items oi
    group by
        oi.order_id;

Trova il valore totale del fatturato seguendo i valori degli ordini:

    SELECT SUM(t1.totale_ordine) from
    (SELECT
        SUM(list_price * quantity * (1-discount)) as totale_ordine
    from
        sales.order_items oi
    group by
        oi.order_id) as t1;

## Trova il valore di sconto medio alla vendita dei vari prodotti:

    SELECT ( 1 - totale_ordini / totale_listini )  
    FROM   (SELECT Sum(t1.totale_listini) AS totale_listini  
            FROM   (SELECT *Sum*(list_price * quantity) AS totale_listini  
                    FROM   sales.order_items oi  
                    GROUP  BY oi.order_id) AS t1) AS t3,  
           (SELECT Sum(t2.totale_ordine) AS totale_ordini  
            FROM   (SELECT Sum(list_price * quantity * ( 1 - discount )) AS  
                           totale_ordine  
                    FROM   sales.order_items oi  
                    GROUP  BY oi.order_id) AS t2) AS t4;

Crea un join tra le tabelle degli ordini e dei clienti in modo da associare l'ordine al cliente.
Seleziona solo le distinte entry.
Chiamala t1.

Nel frattempo dalla lista degli ordini ottieni gli item che fanno parte dell'ordine e somma il loro valore moltiplicandolo per la loro quantità e chiama l'output t2

Questo punto fai un join delle tabelle sull'order_id e mostra customer_id, nome, cognome, id spesa e valore della spesa per ogni id_order

    SELECT t1.customer_id, t1.first_name, t1.last_name, t1.order_id, t2.somma
    FROM (
        SELECT o.order_id, c.customer_id, c.first_name, c.last_name
        FROM sales.customers c
        JOIN sales.orders o ON c.customer_id = o.customer_id
    ) t1
    JOIN (
        SELECT order_id, SUM(quantity * list_price) AS somma
        FROM sales.order_items
        GROUP BY order_id
    ) t2 ON (t1.order_id = t2.order_id)
    ORDER BY order_id DESC
    LIMIT 10

## Fai la somma dei valori degli ordini per cliente

    SELECT f1.first_name,
           f1.last_name,
           f1.customer_id,
           Sum(f1.totale_ordine)
    FROM   (SELECT t1.first_name,
                   t1.last_name,
                   t1.customer_id,
                   t2.totale_ordine
            FROM   (SELECT o.order_id,
                           c.customer_id,
                           c.first_name,
                           c.last_name
                    FROM   sales.customers AS c
                           JOIN sales.orders AS o
                             ON c.customer_id = o.customer_id) AS t1
                   JOIN (SELECT order_id,
                                Sum(list_price * quantity * discount) AS
                                totale_ordine
                         FROM   sales.order_items oi
                         GROUP  BY oi.order_id) AS t2
                     ON ( t1.order_id = t2.order_id )) AS f1
    GROUP  BY f1.customer_id; 

### Identifica i prodotti più venduti:

    SELECT *
    FROM (
        SELECT *
        FROM production.products
    ) AS t1
    JOIN (
        SELECT product_id, SUM(quantity) AS somma
        FROM sales.order_items
        GROUP BY product_id
    ) AS t2 ON t1.product_id = t2.product_id
    ORDER BY somma DESC
    LIMIT 10;

### Calcola il totale delle vendite per ogni store:

    SELECT t2.store_id, SUM(t1.somma) AS total_sales
    FROM (
        SELECT order_id, SUM(quantity * list_price) AS somma
        FROM sales.order_items
        GROUP BY order_id
    ) AS t1
    JOIN (
        SELECT order_id, store_id
        FROM sales.orders
    ) AS t2 ON t1.order_id = t2.order_id
    GROUP BY t2.store_id;

### Trova i membri dello staff che non hanno effettuato alcun ordine:

    SELECT s.staff_id, s.first_name, s.last_name
    FROM sales.staffs s
    LEFT JOIN sales.orders o ON s.staff_id = o.staff_id
    WHERE o.order_id IS NULL;

### Identifica i prodotti che non sono mai stati venduti:

    SELECT *
    FROM production.products
    WHERE product_id NOT IN (SELECT DISTINCT product_id FROM sales.order_items);

### Calcola la media delle vendite mensili per categoria di prodotto:

    SELECT 
        YEAR(o.order_date) AS year,
        MONTH(o.order_date) AS month,
        c.category_name,
        AVG(oi.quantity * oi.list_price * (1 - oi.discount)) AS avg_monthly_sales
    FROM sales.orders o
    JOIN sales.order_items oi ON o.order_id = oi.order_id
    JOIN production.products p ON oi.product_id = p.product_id
    JOIN production.categories c ON p.category_id = c.category_id
    GROUP BY YEAR(o.order_date), MONTH(o.order_date), c.category_name;
