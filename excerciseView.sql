create view customer_view as
select `customerName`, country, `customerId`
from customers;
--------------------------
create view order_view as
select orderId, `customerId`, `orderDate`
from orders;
drop view order_view;
create view order_view as
select `orderId`, `orderDate`, `customerId`
from orders
where `customerId` > 2;
-------------------------------
select *from order_view;
select note from orders;
select *from customer_view
---------------------------
use manager_customer;
select *from customers;
select *from orders;