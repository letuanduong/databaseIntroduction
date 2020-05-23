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