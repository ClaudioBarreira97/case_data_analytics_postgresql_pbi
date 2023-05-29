# Análise de dados case DVD Rental com BD PostgreSQL e Power BI
 **Apresentar um painel de BI e uma análise detalhada dos pontos mais relevantes de um negócio de locação de filmes apartir do data sample original, criando um novo schema.**

## Objetivo da análise
 * Realizar uma análise descritiva para entender os resultados do negócio alcançados no passado para mostrar indicadores que possam nortear os rumos futuros, com objetivo de aumentar a eficiência do negócio, maximizar receita, clientes e/ou minimizar custos. 

### Criando o Banco de Dados e carregando a base. (Utilizado BD Postgresql localhost)
1. instalar [PostgreSQL](https://www.postgresql.org/download/) numa máquina local.
2. Baixar data sample [DVD_rental](https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/).
3. Carregar o arquivo [DVD Rental Sample Database](https://www.postgresqltutorial.com/wp-content/uploads/2019/05/dvdrental.zip) para o Banco.

### ETL dos Dados.
* Utilizando o Pgadmin 4 foi realziado parte do ETL dos dados criando novas tabelas a partir das existentes e definindo seus relacionamentos para atender nossa necessidade de análise.
  - [Create_table_customer_serving.sql](https://github.com/ClaudioBarreira97/case_blockbuster_postgresql_dbt/blob/main/Create_table_customer_serving.sql)
  - [Create_table_film_serving.sql](https://github.com/ClaudioBarreira97/case_blockbuster_postgresql_dbt/blob/main/Create_table_film_serving.sql)
  - [Create_table_rental_serving.sql](https://github.com/ClaudioBarreira97/case_blockbuster_postgresql_dbt/blob/main/Create_table_rental_serving)
  - [Create_table_staff_serving.sql](https://github.com/ClaudioBarreira97/case_blockbuster_postgresql_dbt/blob/main/Create_table_staff_serving.sql)
  - [Definindo_FK_tabela_fato.sql](https://github.com/ClaudioBarreira97/case_blockbuster_postgresql_dbt/blob/main/Definindo_FK_tabela_fato.sql)
  - [Definindo_PK_tabels_dimensao.sql](https://github.com/ClaudioBarreira97/case_blockbuster_postgresql_dbt/blob/main/Definindo_PK_tabelas_dimens%C3%A3o.sql)
  - Data model após ETL 
  ![Data model após ETL](https://github.com/ClaudioBarreira97/case_data_analytics_postgresql_pbi/blob/main/Modelo_de_dados_apos_ETL.png)

### Conectando o BD ao Power BI
- Após concluir o ETL, conectamos a fonte de dados (BD_postgre) ao Power BI para começar a elaboração dos relatórios.

### Análise dos dados atraves do Power BI
1. Análise dos principais kpi's 
![Análise dos principais kpi's](https://github.com/ClaudioBarreira97/case_data_analytics_postgresql_pbi/blob/main/dvdrental_painel_1_pbix.png)
2. Análise dos clientes
![Análise dos clientes](https://github.com/ClaudioBarreira97/case_data_analytics_postgresql_pbi/blob/main/dvdrental_painel_2_pbix.png)
3. Análise dos resultados por País
![Análise dos resultados por País](https://github.com/ClaudioBarreira97/case_data_analytics_postgresql_pbi/blob/main/dvdrental_painel_3_pbix.png)
4. Árvore de análises
![Árvore de análises](https://github.com/ClaudioBarreira97/case_data_analytics_postgresql_pbi/blob/main/dvdrental_painel_4_pbix.png)
5. Análise da receita
![Análise da receita](https://github.com/ClaudioBarreira97/case_data_analytics_postgresql_pbi/blob/main/dvdrental_painel_5_pbix.png)

### Conclusão final
 - A análise dos resultados por período, como meses, dias ou anos, nos permite obter insights claros sobre o desempenho do negócio ao longo do tempo. Podemos identificar os principais clientes, as categorias de filmes que geram maior retorno e realizar uma análise abrangente por países para entender onde estão os melhores clientes, quais países possuem maior utilização do serviço e qual é a categoria mais popular em cada país. Esses insights fornecem um direcionamento estratégico para as equipes de Marketing e Comercial, permitindo que eles tomem decisões informadas sobre o direcionamento das campanhas e a identificação dos melhores clientes, categorias e regiões de vendas.
- **O principal insigth** é que o custo de reposição dos itens é menor que o lucro, tornando assim o negócio sem rentabilidade ao longo do tempo se continuar com o modelo atual de locação.

### Downloads
- [Relatorio em Power BI](https://github.com/ClaudioBarreira97/case_data_analytics_postgresql_pbi/blob/main/case_dvdrental.pbix)
- [PostreSQL](https://www.postgresql.org/download/)
- [DVD Rental data model postgre](https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/)
- [ETL em SQL](https://github.com/ClaudioBarreira97/case_data_analytics_postgresql_pbi/blob/main/ETL_dvdrental_postgres.sql)
