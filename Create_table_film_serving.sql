---Criando a tabela film_serving a partir das tabelas film, category e film_category.
create table film_serving AS 
with temp_category AS (
  select 
    fc.film_id,
    ca.name AS category
  from film_category fc
  join category ca ON fc.category_id = ca.category_id
	)
	
select  
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
from film f
	join temp_category tc ON f.film_id = tc.film_id
	join language l ON f.language_id = l.language_id
	join inventory i on f.film_id = i.film_id
	order by 1
