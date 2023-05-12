---Criando a tabela customer_Serving apartir da tablea customer com join nas tabelas address, city e country
create table customer_serving as
with temp_city AS (
select 
	c.*, 
	co.country
from city c
  	JOIN country co ON c.country_id = co.country_id
    )
select 
  c.customer_id, 
  concat(c.first_name, ' ', c.last_name) AS full_name,
  c.email, 
  a.phone, 
  a.address, 
  a.district, 
  tc.city, 
  tc.country
from customer c
	join address a ON c.address_id = a.address_id
	join temp_city tc ON a.city_id = tc.city_id;
