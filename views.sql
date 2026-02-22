-- yearly revenue
create view yearly_revenue as
select
    year(o.order_date) as order_year,
    sum(oi.quantity * oi.list_price * (1 - oi.discount)) as revenue
from orders o
join order_items oi
    on o.order_id = oi.order_idproduct_revenue
group by year(o.order_date);


-- store revenue
create view store_revenue as
select
    o.store_id,
    sum(oi.quantity * oi.list_price * (1 - oi.discount)) as revenue
from orders o
join order_items oi
    on o.order_id = oi.order_id
group by o.store_id;

-- top products revenue
create view product_revenue as
select
    p.product_name,
    sum(oi.quantity * oi.list_price * (1 - oi.discount)) as revenue
from products p
join order_items oi
    on p.product_id = oi.product_id
group by p.product_name;
