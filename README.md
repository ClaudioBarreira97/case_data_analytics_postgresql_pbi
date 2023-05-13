# Análise de dados case DVD Rental com BD PostgreSQL e Power BI
 **Apresentar um painel de BI e uma análise detalhada dos pontos mais relevantes de um negócio de locação de filmes.**

## Objetivo da análise
 * Realizar uma análise descritiva para entender os resultados do negócio alcançados no passado para mostrar indicadores que possam nortear os rumos futuros, com objetivo de objetivo aumentar a eficiência do negócio, maximizar receita, clientes e/ou minimizar custos. 

### Criando o Banco de Dados e carregando a base.
1. instalar o [PostgreSQL](https://www.postgresql.org/download/) numa maquina local.
2. Baixei data sample [DVD_rental](https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/).
3. Carreguei o arquivo [DVD Rental Sample Database](https://www.postgresqltutorial.com/wp-content/uploads/2019/05/dvdrental.zip) para o Banco.

### ETL dos Dados.
* Utilizando o Pgadmin 4 fiz o tratamento dos dados criando novas tabelas a partir das existentes e definindo seus relacionamentos para atender nossa nescessidade de analise.
  - [Create_table_customer_serving.sql](https://github.com/ClaudioBarreira97/case_blockbuster_postgresql_dbt/blob/main/Create_table_customer_serving.sql)
  - [Create_table_film_serving.sql](https://github.com/ClaudioBarreira97/case_blockbuster_postgresql_dbt/blob/main/Create_table_film_serving.sql)
  - [Create_table_rental_serving.sql](https://github.com/ClaudioBarreira97/case_blockbuster_postgresql_dbt/blob/main/Create_table_rental_serving)
  - [Create_table_staff_serving.sql](https://github.com/ClaudioBarreira97/case_blockbuster_postgresql_dbt/blob/main/Create_table_staff_serving.sql)
  - [Definindo_FK_tabela_fato.sql](https://github.com/ClaudioBarreira97/case_blockbuster_postgresql_dbt/blob/main/Definindo_FK_tabela_fato.sql)
  - [Definindo_PK_tabels_dimensao.sql](https://github.com/ClaudioBarreira97/case_blockbuster_postgresql_dbt/blob/main/Definindo_PK_tabelas_dimens%C3%A3o.sql)
 
### Conectando o BD ao Power BI
- Apos concluir o etl, conectados nossa fonte de dados (BD_postgre) ao Power BI para começar a elaboração dos relatórios
