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
 - ![Data model antes do ELT](https://github.com/ClaudioBarreira97/case_data_analytics_postgresql_pbi/blob/main/printable-postgresql-sample-database-diagram.pdf)
 - ![Data model após ETL](https://github.com/ClaudioBarreira97/case_data_analytics_postgresql_pbi/blob/main/Modelo_de_dados_apos_ETL.png)

### Conectando o BD ao Power BI
- Apos concluir o etl, conectados nossa fonte de dados (BD_postgre) ao Power BI para começar a elaboração dos relatórios

### Análise dos dados atraves do Power BI
1. ![Análise dos principais kpi's](https://github.com/ClaudioBarreira97/case_data_analytics_postgresql_pbi/blob/main/dvdrental_painel_1_pbix.png)
2. ![Análise dos clientes](https://github.com/ClaudioBarreira97/case_data_analytics_postgresql_pbi/blob/main/dvdrental_painel_2_pbix.png)
3. ![Análise dos resultados por País](https://github.com/ClaudioBarreira97/case_data_analytics_postgresql_pbi/blob/main/dvdrental_painel_3_pbix.png)
4. ![Árvore de análises](https://github.com/ClaudioBarreira97/case_data_analytics_postgresql_pbi/blob/main/dvdrental_painel_4_pbix.png)

### Conclusão final
- *Podemos retirar insigths sobre o negocio que nos trazem uma visão clara dos resultados por periodo, seja em meses, dias ou anos, quais são os principais clientes, quais categorias de filmes mais trazem retorno para o negocio, e uma analise completa por Países trazendo aonde estão os melhores clientes, quais paises utilizam mais do serviço e categoria por país; Trazendo assim um direcionamento para as Equipes de Marketing, para direcionamento das campanhas, e Comercial, entendendo aonde estão em quem são os melhores clientes, quais categorias e regiões que mais vendemos o serviço.
