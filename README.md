## 🎯 Objetivo do Projeto
Este repositório contém os scripts SQL (DDL e DML) necessários para criar e manipular o banco de dados relacional do **Sistema de Controle Operacional "VidaPet"**. O projeto integra os conhecimentos de modelagem lógica (normalização, integridade referencial) com a prática da linguagem SQL, conforme os requisitos da Experiência Prática 2.

---

## 🛠️ Tecnologias e Ferramentas

* **SGBD:** MySQL (Os scripts DDL/DML são compatíveis com a sintaxe padrão SQL e devem funcionar com pequenas adaptações em PostgreSQL, SQL Server, etc.).
* **Ferramenta Utilizada:** MySQL Workbench / PGAdmin
* **Linguagem:** SQL (DDL e DML)

---

## 📂 Estrutura do Repositório

O repositório está organizado nos seguintes arquivos SQL:

| Arquivo | Descrição |
| :--- | :--- |
| `schema.sql` | Contém os comandos **DDL** (`CREATE TABLE`) para construir todas as tabelas do modelo lógico, definindo chaves primárias e estrangeiras. |
| `insert_data.sql` | Contém os comandos **DML** (`INSERT`) para popular todas as tabelas do sistema com dados iniciais de exemplo. |
| `queries.sql` | Contém **5 consultas avançadas** (`SELECT`) que demonstram a manipulação e recuperação de dados usando `JOIN`, `WHERE`, `ORDER BY`, e funções de agregação. |
| `manipulation.sql` | Contém comandos **DML** (`UPDATE` e `DELETE`) com condições, essenciais para a manutenção da integridade dos dados. |
| `README.md` | Este arquivo, contendo a documentação e instruções de execução. |

---

## 🚀 Guia de Execução

Siga os passos abaixo para recriar e testar o banco de dados localmente:

### 1. Preparação do Ambiente
1.  Abra seu cliente SGBD (Workbench, PGAdmin, etc.).
2.  Crie um novo esquema (ou banco de dados) chamado `VidaPet_DB`.

### 2. Criação da Estrutura (DDL)
1.  Abra o arquivo `schema.sql`.
2.  Execute todo o script. Isso criará as 6 tabelas (`TUTOR`, `VETERINARIO`, `ANIMAL`, `AGENDAMENTO`, `ATENDIMENTO`, `USUARIO_SISTEMA`) e definirá todas as chaves estrangeiras e restrições de integridade.

### 3. Povoamento dos Dados (DML)
1.  Abra o arquivo `insert_data.sql`.
2.  Execute todo o script. Isso adicionará dados de exemplo nas tabelas, preparando o ambiente para consultas.

### 4. Testes e Consultas
1.  Abra o arquivo `queries.sql`.
2.  Execute cada consulta (`SELECT`) individualmente para validar a recuperação de dados e o funcionamento dos `JOINs`.

### 5. Manipulação de Dados (DML Avançado)
1.  Abra o arquivo `manipulation.sql`.
2.  Execute os comandos `UPDATE` e `DELETE` para simular a manutenção do sistema e verificar se as regras de integridade referencial (FKs) estão funcionando corretamente.

---

## 🔑 Principais Regras de Integridade e Normalização

O modelo lógico implementado está em **3ª Forma Normal (3FN)** e garante:

* **Integridade de Entidade:** Todas as tabelas possuem uma Chave Primária (`PK`).
* **Integridade Referencial:** Os relacionamentos são mantidos por Chaves Estrangeiras (`FK`), garantindo que não existam registros órfãos (exemplo: um `ANIMAL` deve sempre ter um `TUTOR` válido).
* **Relacionamento 1:1:** O vínculo entre `AGENDAMENTO` e `ATENDIMENTO` é implementado pela FK `ID_Agendamento` na tabela `ATENDIMENTO`, que possui a restrição **UNIQUE**, forçando a regra 1:1.

---
