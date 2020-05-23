use manager;
insert into  orders value (1000, 2, '1986-11-1');
insert into  orders value (2000, 3, '1976-11-1');
insert into  orders value (3000, 4, '1966-11-1');

insert  into customers value (1, 'tuan1', '091', 'HaNoi1');
insert  into customers value (2, 'tuan2', '092', 'HaNoi2');
insert  into customers value (3, 'tuan3', '093', 'HaNoi3');
update customers set `CustomerId` = 5 where `Country` = 'Hanoi2';
delete from orders where orderID = 10;
--###############################
select *from customers;
select  *from orders;
--################################
alter table orders add test varchar(255);

alter table orders drop column tes222;
alter table orders drop column test22;
alter table orders drop column test;

insert into  orders value (13000, 5, '1956-11-1', 'test');

SELECT Orders.orderID, customers.customerName, orders.orderDate, customers.contactName, customers.country
from orders
inner join customers on orders.customerId = customers.customerId;

select  customers.customerName, orders.orderId
from customers
left join orders on customers.customerId = orders.customerId
order by customers.customerName;

--SELECT Customers.CustomerName, Orders.OrderID
--FROM Customers
--FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
--ORDER BY Customers.CustomerName;

select sum(orderId)
from orders
where orderID < 20000;

select avg (orderId)
from orders
where `orderID` < 20000;

select count(orderId)
from orders
where `orderID` < 10000;

select max(orderID)
from orders;

select min(orderId)
from orders
where `orderID`>2500;

select ucase (test)
from orders
where test is not null;

update orders set test = 'ABCDCF';

select lcase (test)
from orders
where `orderID`> 10000;

select orderId, now() as perDate from orders;
select test, length(test)
from orders;

select *from orders
order by `CustomerID` desc ;

select count(`orderID`), `CustomerID` from orders group by `CustomerID`;
select count(`orderID`), `CustomerID` from orders group by `CustomerID` having count(`orderID`) > 1;