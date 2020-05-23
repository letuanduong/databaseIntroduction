drop database connect_Java;
create database connect_Java;
use connect_Java;
create table viec(
	MS_Noidung varchar(255) unique
);

insert into viec value('abc');
insert into viec value('xyz');

create table Nguoi(
	MS_nguoi int not null,
    MS_vuviec varchar(255) unique,
    ho varchar(10),
    ten varchar(10),
    namsinh date,
    constraint nguoi_pk primary key(MS_nguoi),
    constraint FK_NGUOI foreign key(ho) references viec(MS_noidung)
);
alter table Nguoi
add constraint nguoi_fk
foreign key(MS_vuviec) references viec(MS_noidung);