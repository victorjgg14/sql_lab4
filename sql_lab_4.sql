use sakila;

-- 1.

SELECT 
distinct category_id,
count(*) as numero_pelis
from sakila.film_category
group by category_id;

-- 2

SELECT 
st.store_id,
ci.city,
co.country
FROM sakila.store as st
left join sakila.address as ad
on st.address_id = ad.address_id
left join sakila.city as ci
on ad.address_id = ci.city_id
left join sakila.country as co
on ci.country_id = co.country_id;

-- 3

select *
from
store;

SELECT *
from
payment;

SELECT
SUM(AMOUNT)
FROM SAKILA.PAYMENT;

SELECT 
sum(amount)
from sakila.payment
group by staff_id;

SELECT 
sum(amount),
st.store_id
from sakila.payment
left join sakila.store as st
on st.store_id = st.manager_staff_id
group by staff_id;

select st.store_id, sum(amount)
from store as st
left join staff as sf
on st.store_id = sf.store_id
left join  payment as pay
on sf.staff_id = pay.staff_id
group by st.store_id;


-- 4

SELECT * 
FROM 
film;

SELECT * 
FROM
CATEGORY




sakila.store.manager_staff_id







