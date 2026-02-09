-- Write your PostgreSQL query statement below
with ranked as(
select
player_id,
event_date,
min(event_date) over(partition by player_id) as first_login
from Activity
)
select
round(
count(distinct player_id)::numeric /
(select count(distinct player_id) from Activity),2) as fraction
from ranked
where event_date = first_login + interval '1 day';
