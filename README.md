# experiencia-pratica-4
Scripts SQL da Experiência Prática 4 – Modelagem de Banco de Dados. Inclui criação das tabelas, inserção de dados, consultas, atualizações e exclusões do projeto SGEM (Sistema de Gestão Escolar Municipal).

# SGEM – Sistema de Gestão Escolar Municipal
Experiência Prática IV – SQL e Manipulação de Dados

# 📌 Sobre o projeto
Este repositório contém os scripts SQL desenvolvidos para a Experiência Prática 4 da disciplina de Modelagem de Banco de Dados.
O objetivo é implementar e manipular dados do SGEM (Sistema de Gestão Escolar Municipal), utilizando comandos DDL e DML, garantindo integridade, consistência e normalização conforme o modelo lógico previamente definido.

# 🗂 Estrutura do Repositório
01_create_tables.sql – Script responsável pela criação de todas as tabelas do banco.
02_inserts.sql – Inserts iniciais para povoar as tabelas principais com dados coerentes.
03_selects.sql – Consultas SELECT utilizando WHERE, JOIN, ORDER BY e LIMIT.
04_updates.sql – Comandos de atualização (UPDATE) com condições.
05_deletes.sql – Comandos de exclusão (DELETE) com condições.

# 🔧 Como executar os scripts
1. Abra o MySQL Workbench, DBeaver ou PGAdmin.
2. Crie o banco de dados:

CREATE DATABASE sgem;
USE sgem;

3. Execute os scripts na seguinte ordem:
• 01_create_tables.sql
• 02_inserts.sql
• 03_selects.sql
• 04_updates.sql
• 05_deletes.sql

# 🧪 Funcionalidades demonstradas
• INSERT em todas as tabelas principais
• SELECT com JOIN, WHERE, ORDER BY, LIMIT e agregações
• UPDATE com condições específicas
• DELETE respeitando integridade referencial

# 🛠 Tecnologias utilizadas
• MySQL 5.7+ / MariaDB
• MySQL Workbench 8.0
• Git e GitHub para versionamento
• Scripts SQL padronizados (DDL + DML)

# 📄 Observações
Todos os comandos foram testados previamente no MySQL Workbench.
O repositório segue boas práticas de organização e versionamento.
Os nomes das tabelas seguem padrão coerente com o modelo lógico entregue na EP3.

# 👨‍💻 Autor
Aluno: Nathalia Cristina Silva de Oliveira
Curso: Analise e Desenvolvimento de Sistemas
Instituição: Cruzeiro do Sul Virtual
Ano: 2025