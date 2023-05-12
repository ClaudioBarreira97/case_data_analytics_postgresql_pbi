---Definindo as chaves estrangeiras (FK) na tabela fato rental_serving

---Adicionar fk na rental da pk film
alter table rental_serving
add constraint fk_film_rental
foreign key (inventory_id) references film_serving (inventory_id)

---adicionar fk na rental da pk staff
alter table rental_serving
add constraint fk_staff_rental
foreign key (staff_id) references staff_serving (staff_id)

---adicionar fk na rental da pk customer
alter table rental_serving
add constraint fk_customer_rental
foreign key (customer_id) references  customer_serving (customer_id)
