use sakila;

-- 1.

select * 
from sakila.category;

SELECT *
FROM sakila.film_category;

SELECT *
FROM 
sakila.film_category as cat_film
left join sakila.category as cat
on cat_film.film_id = cat.category_id;

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

select *
from
payment







