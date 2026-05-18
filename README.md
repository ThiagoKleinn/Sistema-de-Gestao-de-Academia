# Sistema de Banco de Dados para Academia

Este projeto modela um banco de dados relacional para gerenciar uma academia.

Tecnologias utilizadas
- SQL
- Modelagem Relacional
- Power BI (Dashboard de Visualização)

Funcionalidades
- Cadastro de alunos
- Cadastro de planos
- Registro de pagamentos
- Associação de alunos a personal trainers
- Consultas de faturamento
- Estatísticas de alunos por plano

## Como executar o projeto

1. Criar o banco de dados
2. Executar o arquivo schema.sql
3. Executar o arquivo inserts.sql
4. Executar as consultas presentes em views.sql
4. Executar as consultas presentes em functions.sql
4. Executar as consultas presentes em queries.sql

## Estrutura do Banco de Dados

Tabelas principais:

- alunos: armazena os dados dos alunos da academia
- planos: planos disponíveis
- funcionarios: funcionários da academia
- matriculas: associação entre alunos e planos
- pagamento: registros de pagamentos realizados

## Modelo relacional

<img width="1536" height="1024" alt="diagrama-banco (1)" src="https://github.com/user-attachments/assets/1555380f-e32d-4655-8c24-380f59d788ff" />

## Dashboard Power BI

O projeto conta com um dashboard interativo desenvolvido no Power BI, conectado diretamente ao banco de dados da academia, com os seguintes painéis:

* **Visão Geral** – total de alunos ativos, receita mensal e ocupação das turmas
* **Alunos** – evolução de matrículas, churn e perfil dos alunos (idade, plano, tempo de casa)
* **Financeiro** – receita por plano, inadimplência e comparativo mensal
* **Turmas & Professores** – ocupação por modalidade, horários de pico e desempenho por instrutor

> **Pré-requisito:** Power BI Desktop instalado. Abra o arquivo `dashboard/academia.pbix` e atualize a string de conexão com suas credenciais.

<img width="1314" height="746" alt="Screenshot_43" src="https://github.com/user-attachments/assets/ead42ec7-5d98-4927-8505-0a21e2286c5d" />
