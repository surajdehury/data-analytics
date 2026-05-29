create table Customer(
	customer_id INT PRIMARY KEY,
	customer_name VARCHAR(50) NOT NULL,
	phone_no BIGINT,
	address VARCHAR(100)
);

create table Order_header(
	order_id INT PRIMARY KEY,
	order_date DATE NOT NULL,
	customer_id INT,
	foreign key(customer_id) references Customer(customer_id)
);

 alter table Customer
 add column regn_date DATE;
 
 alter table Order_header
 add column order_status VARCHAR(20);
 
Create table example(id INT); 
drop table example;

insert into Customer values(0001,'Suman',9876543210,'Gandhinagar,Bangalore','2023-01-01');
insert into Customer (customer_name,customer_id,phone_no)values('Surya',0002,9888843210);

update Customer
set regn_date='2023-02-01'
where customer_id=0002;

use sqlda;
delete from Customer
where customer_id=0002;

rollback;