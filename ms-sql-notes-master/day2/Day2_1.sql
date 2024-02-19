Use Northwind
select employeeid, lastname, firstname, title
from Employees

select distinct title from employees

select firstname +' '+ lastname as Name from employees

SELECT companyname                        -- select with matching values
FROM CUSTOMERS 
WHERE companyname LIKE '%Restaurante'

SELECT productid, productname, supplierid, unitpriceFROM  PRODUCTS   
WHERE (productname LIKE 'T%' OR productid = 46)   AND  (unitprice > 16.00) 


SELECT companyname, country
FROM SUPPLIERS WHERE country IN ('Japan', 'Italy')

SELECT companyname, fax
FROM SUPPLIERS WHERE fax IS NULL

SELECT  firstname AS First, lastname AS Last,
employeeid AS [Employee ID:] FROM EMPLOYEES


USE Northwind

SELECT top 5 with ties orderid, productid, quantity
 FROM [ORDER DETAILS] 
 ORDER BY quantity desc

 select * from employees
 where len(firstname)=5


