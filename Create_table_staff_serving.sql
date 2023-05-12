---Criando a tabela staff_serving a partir das tabelas staff e store
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
