# Social Include Brasil - Banco de Dados SQL

Este repositório contém os scripts SQL desenvolvidos para a **Atividade 4** da disciplina de Banco de Dados.  
O objetivo é modelar e implementar um sistema simples de gestão de ONGs, projetos e voluntários.

---

## 📂 Estrutura dos Arquivos

- **01_create_database.sql** → Criação do banco de dados `social_include_brasil`.
- **02_create_tables.sql** → Estrutura das tabelas: `ONG`, `Projeto`, `Voluntario`, `Inscricao`.
- **03_insert_data.sql** → Inserção de dados de exemplo nas tabelas.
- **04_select_queries.sql** → Consultas para visualizar e relacionar os dados.
- **05_update.sql** → Atualizações de registros existentes.
- **06_delete.sql** → Exclusões de registros conforme regras de negócio.

---

## 🛠️ Como Executar no MySQL Workbench

1. Abra o **MySQL Workbench** e conecte-se ao servidor.  
2. Execute o script `01_create_database.sql`.  
3. Execute o script `02_create_tables.sql`.  
4. Execute o script `03_insert_data.sql`.  
5. Execute os scripts de manipulação (`04_select_queries.sql`, `05_update.sql`, `06_delete.sql`) conforme necessário.  
6. Para visualizar os resultados, use:
   ```sql
   SELECT * FROM nome_da_tabela;

ou clique com o botão direito na tabela → Select Rows.

---

📊 Estrutura das Tabelas 
ONG → informações sobre organizações não governamentais.

Projeto → projetos vinculados às ONGs.

Voluntario → dados dos voluntários.

Inscricao → inscrições de voluntários em projetos.

---

🎯 Objetivo da Atividade
Criar e manipular um banco de dados relacional.

Demonstrar operações de DDL (CREATE) e DML (INSERT, SELECT, UPDATE, DELETE).

Entregar os scripts organizados em um repositório GitHub.
