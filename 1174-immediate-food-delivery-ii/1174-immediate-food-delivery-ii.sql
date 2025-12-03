-- Write your PostgreSQL query statement below
with temp as (
select customer_id,order_date,customer_pref_delivery_date,
row_number() over(partition by customer_id order by order_date,delivery_id) as rn
from delivery)
select 
round(100.0*sum(case when order_date = customer_pref_delivery_date then 1 else 0 end)/count(customer_id),2) as immediate_percentage
from temp
where rn=1;
