--create database manager_customer;
--use manager_customer;
--create table orders(
--    orderId int not null,
--    customerId int not null,
--    orderDate date
--);
--create table customers(
--    customerId int not null,
--    customerName varchar(255),
--    contact varchar(255),
--    note varchar(255)
--);

-- command Alter--------------------------------
ALTER table orders add note varchar(255);
ALTER table orders drop note;
--command insert--------------------------------
insert into orders value (1, 10, '1986-11-1', '1111');
insert into orders value (2, 20, '1986-11-2', '2222');
insert into orders value (3, 30, '1986-11-3', '3333');
insert into orders value (4, 40, '1986-11-4', '4444');
insert into orders value (14, 50, '1986-11-5', '5555');
insert into orders value (5, 60, '1986-11-6', '6666');
insert into orders value (7, 70, '1986-11-7', '7777');

insert into customers value (1, 'tuan1', '091', 'hanoi1');
insert into customers value (2, 'tuan2', '092', 'hanoi2');
insert into customers value (3, 'tuan3', '093', 'hanoi3');
insert into customers value (4, 'tuan4', '094', 'hanoi4');
insert into customers value (5, 'tuan5', '095', 'hanoi5');
insert into customers value (6, 'tuan6', '096', 'hanoi6');
insert into customers value (7, 'tuan7', '097', 'hanoi7');
insert into customers value (8, 'tuan8', '098', 'hanoi8');

--command delete-------------------------------
delete from orders where note = 'aaaa';
delete from orders where note = '1111';
delete from orders where note = '3333';
delete from orders where note = '5555';
delete from customers where customerId = 7;
-- command update------------------------------
update orders set `orderId` = 4;
update orders set `orderId` = 1 where `customerId` = 10;
update orders set `orderId` = 2 where `customerId` = 20;
update orders set `orderId` = 3 where `customerId` = 30;
update orders set `orderId` = 5 where `customerId` = 50;
update orders set `orderId` = 6 where `customerId` = 60;
update orders set `customerId` = 6 where `orderId` = 6;
update orders set `customerId` = 4 where `orderId` = 4;
update orders set `customerId` = 2 where `orderId` = 2;

-- command select-------------------------------
use manager_customer;
select *from orders;
select note from orders;
select *from customers;
select *from customers order by `customerId` ase;
select customerID from customers;
select *from orders where orderId >  3;
select *from orders where note like '3333';
select *from orders order by `customerId` asc ;
select *from orders order by `customerId` desc ;
select *from orders order by `orderDate` desc ;
select *from orders order by `orderDate` asc ;
select *from customers where `customerId` in (1, 2, 4);
select *from customers as c
where `customerId` between  1 and 4;
--command join----------------------------------------
select o.orderId, o.customerId, o.orderDate, c.customerName, c.note
from orders o
join customers c
on o.customerId = c.customerId;

select orders.orderId, orders.customerId, customers.customerID, customers.customerName
from orders
inner join customers
on orders.customerId = customers.customerId;


select o.`orderId`, o.note, c.`customerId`, c.`customerName`, c.contact, c.note
from orders o
left join customers c
on o.`customerId` = c.`customerId`;
union all
select o.`orderId`, o.note, c.`customerId`, c.`customerName`, c.contact, c.note
from orders o
right join customers c
on o.`customerId` = c.`customerId`;

alter table orders add cost int4;
alter table customers add country varchar(255);
alter table customers add times int1;

select cost from orders;
update orders set cost = 2000 where `customerId` = 2;
update orders set cost = 4000 where `customerId` = 4;
update orders set cost = 6000 where `customerId` = 6;
update orders set cost = 7000 where `customerId` = 70;
update customers set country = 'vietnam' where `customerId` = 1;
update customers set times = 1 where `customerId` = 1;
update customers set country = 'vietnam' where `customerId` = 2;
update customers set times = 2 where `customerId` = 2;
update customers set country = 'vietnam' where `customerId` = 3;
update customers set times = 3 where `customerId` = 3;
update customers set country = 'USA' where `customerId` = 5;
update customers set times = 5 where `customerId` = 5;
update customers set country = 'UK' where `customerId` = 6;
update customers set times = 6 where `customerId`= 6
select count(orderId) from orders where `orderId` > 2;
select sum(cost) from orders;
select avg (cost) from orders;
select min(cost) from orders;
select max(cost) from orders;
select ucase (note) from orders;
select ucase (customerName) from customers;
select lcase(note) from customers;

select count(*) from customers where `customerId` > 2;
select count (`customerId`)
from customers
group by country;

select country, count(`customerId`) as luot
from customers
group by country;

select count(times), country
from customers
where `customerId` > 3
group  by country
order by count(times) desc;

select count(times), country
from customers
where `customerId` > 2
group by country
order by count(times) desc ;

select count(times) as count_time, country
from customers
where `customerId` > 0
group by country
having count_time > 0
order by count_time asc ;

select *from orders;
select *from customers;


