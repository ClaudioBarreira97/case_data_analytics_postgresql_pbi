Definindo as chaves primarias PK nas tabelas dimensão

-- Adicionar chave primária na tabela film_serving
alter table film_serving
add primary key (inventory_id)

-- Adicionar chave primária na tabela customer_serving
alter table customer_serving
add primary key (customer_id)

-- Adicionar chave primária na tabela staff_serving
alter table staff_serving
add primary key (staff_id)
