## criando a tabela customer_serving a partir das tabelas customer,address, city e country
create table customer_serving as
WITH temp_city AS (
  SELECT 
	c.*, 
	co.country
  FROM city c
  	JOIN country co ON c.country_id = co.country_id
)
SELECT 
c.customer_id, 
CONCAT(c.first_name, ' ', c.last_name) AS full_name,
c.email, 
a.phone, 
a.address, 
a.district, 
tc.city, 
tc.country
FROM customer c
	JOIN address a ON c.address_id = a.address_id
	JOIN temp_city tc ON a.city_id = tc.city_id;

## criando a tabela film_serving a partir das tabelas : film, category, film_category 
CREATE TABLE film_serving AS 
WITH temp_category AS (
  SELECT 
    fc.film_id,
    ca.name AS category
  FROM film_category fc
  JOIN category ca ON fc.category_id = ca.category_id
	)
	
SELECT  
	i.inventory_id,
	f.film_id,
	f.title,
	tc.category,
	l.name AS language,
	f.description,
	f.replacement_cost,
	f.rental_duration,
	f.rental_rate,
	i.store_id,
	i.last_update as last_update_inventory
FROM film f
	JOIN temp_category tc ON f.film_id = tc.film_id
		JOIN language l ON f.language_id = l.language_id
		join inventory i on f.film_id = i.film_id
	order by 1

## criando tabela rental_serving a partir das tabelas rental, payment 
CREATE TABLE rental_serving as
select 
	r.rental_id,
	r.inventory_id,
	r.rental_date,
	r.customer_id,
	r.return_date,
	r.staff_id,
	p.amount,
	p.payment_date,
	r.last_update as last_uptade_rental
	
from rental r
	join payment p on r.rental_id = p.rental_id

## criando a tabela staff_serving a partir das tabelas staff e store
create table staff_serving as
select
	s.staff_id,
	concat(s.first_name, ' ',s.last_name) as staff_name,
	s.email,
	s.active,
	s.username,
	s.password,
	s.last_update as last_update_staff,
	s.picture,
	st.store_id,
	st.manager_staff_id
from staff s
	join store st on s.store_id = st.store_id

## definindo as chaves primarias PK nas tabelas dimensão

-- Adicionar chave primária na tabela film_serving
ALTER TABLE film_serving
ADD PRIMARY KEY (inventory_id);

-- Adicionar chave primária na tabela customer_serving
ALTER TABLE customer_serving
ADD PRIMARY KEY (customer_id);

-- Adicionar chave primária na tabela staff_serving
ALTER TABLE staff_serving
ADD PRIMARY KEY (staff_id);


## definindo as chaves estrangeiras (FK) na tabela rental_serving
--Adicionar fk na rental da pk film
ALTER TABLE rental_serving
ADD CONSTRAINT fk_film_rental
FOREIGN KEY (inventory_id) REFERENCES film_serving (inventory_id);

--adicionar fk na rental da pk staff
ALTER TABLE rental_serving
ADD CONSTRAINT fk_staff_rental
FOREIGN KEY (staff_id) REFERENCES staff_serving (staff_id);

--adicionar fk na rental da pk customer
ALTER TABLE rental_serving
ADD CONSTRAINT fk_customer_rental
FOREIGN KEY (customer_id) REFERENCES  customer_serving (customer_id);
