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

insert into customers value (1, 'tuan1', '091', 'hanoi1');
insert into customers value (2, 'tuan2', '092', 'hanoi2');
insert into customers value (3, 'tuan3', '093', 'hanoi3');
insert into customers value (4, 'tuan4', '094', 'hanoi4');
insert into customers value (5, 'tuan5', '095', 'hanoi5');
insert into customers value (6, 'tuan6', '096', 'hanoi6');

--command delete-------------------------------
delete from orders where note = 'aaaa';
-- command update------------------------------
update orders set `orderId` = 4;
update orders set `orderId` = 1 where `customerId` = 10;
update orders set `orderId` = 2 where `customerId` = 20;
update orders set `orderId` = 3 where `customerId` = 30;
update orders set `orderId` = 5 where `customerId` = 50;
update orders set `orderId` = 6 where `customerId` = 60;
-- command select-------------------------------
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




