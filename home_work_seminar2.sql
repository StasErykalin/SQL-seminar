-- 1
create database seminar_2
create table sales(
id int primary key auto_increment,
order_date date,
count_product int);
insert sales (order_date, count_product)
values 
("2022-01-01", 156),
("2022-01-02", 180),
("2022-01-03", 21),
("2022-01-04", 124),
("2022-01-05", 341);
-- 2
select 
id as 'id заказа',
case 
when count_product < 100 then 'Маленький заказ'
when count_product between 100 and 300 then 'Средний заказ'
when count_product > 300 then 'Большой заказ'
end as 'тип заказа'
from sales;
-- 3
create table orders (
id serial primary key,
employee_id varchar(10),
amount float,
order_status varchar(20)
);
-- 3.1
insert orders (employee_id, amount, order_status)
values ('e03', 15.00, 'OPEN'),
	   ('e01', 20.50, 'OPEN'),
       ('e05', 100.70, 'CLOSED'),
       ('e02', 22.18, 'OPEN'),
       ('e04', 9.50, 'CANCELLED');
-- 3.2
select
id, employee_id, amount, order_status,
case
when order_status = 'OPEN' then 'Order is in open state'
when order_status = 'CLOSED' then 'Order is closed'
when order_status = 'CANCELLED' then 'Order is cancalled'
end as 'full_order_status'
from orders;
    