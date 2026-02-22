-- must first create tables for each .csv file

create table orders (
order_id int primary key,
customer_id int,
order_status int,
order_date date,
required_date date,
shipped_date date,
store_id int,
staff_id int
);

create table brands (
brand_id int primary key,
brand_name varchar(100)
);

create table categories (
category_id int primary key,
category_name varchar(100)
);

create table customers (
customer_id int primary key,
first_name varchar(100),
last_name varchar(100),
phone varchar(100),
email varchar(100),
street varchar(100),
city varchar(100),
state char(2),
zip_code varchar(10)
);

create table order_items (
order_id int,
item_id int,
product_id int,
quantity int,
list_price decimal(10,2),
discount decimal(10,2),
PRIMARY KEY (order_id, item_id)
);

create table products (
product_id int primary key,
product_name varchar(100),
brand_id int,
category_id int,
model_year int,
list_price decimal(10,2)
);

create table staffs (
staff_id int primary key,
first_name varchar(100),
last_name varchar(100),
email varchar(100),
phone varchar(100),
`active` boolean,
store_id int,
manager_id int
);

create table stocks (
store_id int,
product_id int primary key,
quantity int
);

create table stores (
store_id int primary key,
store_name varchar(100),
phone varchar(100),
email varchar(100),
street varchar(100),
city varchar(100),
state char(2),
zip_code varchar(10)
);