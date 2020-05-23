create database Manager_Customer;
use Manager_Customer;
create table Customers(
	customer_number int8 not null auto_increment primary key,
    fullname varchar(255) not null,
    address varchar(255) not null,
    email varchar(255) not null,
    phone varchar(10) not null
);

create table Accounts(
	account_number int not null auto_increment,
    account_type varchar(40) not null,
    date_open date,
    balance double,
    constraint  Accounts_pk Primary key (account_number)
);

create table Transactions(
	tran_number int not null auto_increment,
    account_number int,
    date_transactions date,
    amount double,
    descriptions varchar(255),
    constraint transactions_pk Primary key(tran_number)
);

--use manager_nhanvien;
--insert into nhanvien_info value (1, 'tuan1', 'HN1');
--insert into nhanvien_info value (2, 'tuan2', 'HN1');
--insert into nhanvien_info value (3, 'tuan3', 'HN1');
--insert into nhanvien_info value (4, 'tuan4', 'HN1');

--select *from nhanvien_info;
--select *from nhanvien_info where id = 1;
--select *from nhanvien_info where nameNV = 'tuan4';
--select *from nhanvien_info where address = 'HN1';
--select *from nhanvien_info where id > 2;

--update nhanvien_info set address = 'thai binh' where id < 2;
--select *from nhanvien_info where  id < 2;
--
--delete from nhanvien_info where id = 4;
--select  *from  nhanvien_info;
--
--select *from nhanvien_info where nameNV like 'tuan1';
----sort----------------------------------------
--select *from nhanvien_info order by id asc;
--select *from nhanvien_info order by id desc;
--
--insert into phong_ban value ('phong ke hoach');
--insert into phong_ban value ('phong ke tai chinh');
--select *from  nhanvien_info;
--select *from  nhanvien_info;
--select *from phong_ban;
--
--insert  into  luong value (100000);
--insert  into  luong value (100000.15);
--select  *from  luong where luongNV = 100000;
