show databases;
use angelica;

create table users(
	id int primary key auto_increment,
    first_name varchar(25) not null,
    last_name varchar(25) not null,
    email varchar(25) unique not null,
    phone varchar(14) not null,
    dni int unsigned unique not null
);

describe users;

insert into users (first_name, last_name, email, phone, dni) values ('angelica','agudelo','angelica@gmail.com','3165695488','1023698547');
insert into users (first_name, last_name, email, phone, dni) values ('julieth','bautista','julieth@gmail.com','3165696598','1023693216');

select * from users;
alter table users add column birthdate date not null
default('1970-01-15') after last_name; 

alter table users add column address varchar(40);
alter table users add column user_account int;
alter table users add column average float;
alter table users add column user_schedule 
enum('mañana', 'tarde', 'noche') default ('mañana');
alter table users add column salary double;

select * from users where id=(2);
select * from users; 

update users set address="sena giron", user_account= 2696521 where id = 2;

describe users;
delete from users where id=2;