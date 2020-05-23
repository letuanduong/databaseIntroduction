drop database Manager;
create database Manager;
use Manager;

create table orders(
	orderID int,
    CustomerID INT,
    orderDate date
);

create table customers(
	CustomerId int,
    CustomerName varchar(40),
    ContactName varchar(40),
    Country varchar(40)
);

use manager;
alter table orders add test22 varchar(255);
insert into  orders value (13000, 5, '1956-11-1', 'test');

alter table orders drop column test222;
alter table orders drop column test22;

select *from orders;


SELECT Orders.orderID, customers.customerName, orders.orderDate
from orderscustomers
inner join customers on orders.customerId = customers.customerId;

DELIMITER $$
CREATE PROCEDURE procedureName()
BEGIN
   SELECT *  FROM products;
END $$
DELIMITER ;