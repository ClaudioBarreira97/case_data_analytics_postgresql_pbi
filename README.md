# Case_blockbuster_postgresql_dbt
 **Apresentar um painel de BI e uma análise detalhada dos pontos mais relevantes de um negócio de locação de filmes.**

## Perguntas de negócio
 * Quais são os 10 clientes que mais alugam filmes ?
 * Quais são os 10 clientes que alugaram um unico filme ao menos 1 vez no ano?
 * Quais generos de filmes trouxeram mais receita nos ultimos 3 meses ?
 * Quais são os 5 paises que mais trouxeram receita nos ultimos 3 meses ?

## Etapas do ETL
1. Baixei o postgresql e criei um banco de dados local em minha maquina.
2. Carreguei o arquivo [DVD Rental Sample Database](https://www.postgresqltutorial.com/wp-content/uploads/2019/05/dvdrental.zip) para o Banco
3. Fiz o tratamento dos dados criando novas tabelas apartir das existentes e definindo seus relacionamentos para atender as perguntas de negocio
  - Codigo em SQL
 

## Base de Dados
 O modelo de dados utilizado foi disponibilizado [aqui](https://www.postgresqltutorial.com/postgresql-getting-started/postgresql-sample-database/), utilizamos um banco de dados PostgreSQL local conectado ao DBT cloud para transformas os dados ja carregados.
