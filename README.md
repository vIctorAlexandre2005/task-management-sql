# Sistema de Gerenciamento de Tarefas – Scripts SQL

Este repositório contém todos os scripts SQL desenvolvidos para o projeto de banco de dados do sistema de gerenciamento de tarefas.  
O objetivo é demonstrar o uso de comandos DDL e DML, garantindo coerência com o Modelo Lógico revisado e as Formas Normais aplicadas (1FN, 2FN e 3FN).

---

## 📂 Estrutura do Repositório

```

/sql-scripts
│── create_tables.sql
│── insert_data.sql
│── select_queries.sql
│── update_commands.sql
│── delete_commands.sql
│── drop_tables.sql   (opcional)

````

---

## 🛠️ Tecnologias Utilizadas

- **MySQL 8.x**
- **MySQL Workbench**
- **VSCode** (para organização dos arquivos .sql)

---

## 🚀 Como Executar os Scripts no MySQL Workbench

### **1. Abrir o Script**
1. Abra o MySQL Workbench.  
2. Clique em:  
   **File → Open SQL Script…**  
3. Localize a pasta do repositório no seu computador.  
4. Selecione o arquivo `.sql` que deseja executar.

---

### **2. Selecionar o Banco / Schema**
Antes de rodar comandos, certifique-se de selecionar o schema onde quer criar as tabelas:

```sql
USE nome_do_seu_banco;
````

*(substitua pelo nome do seu banco, ex.: `multi_tenant` ou `task_manager`)*

---

### **3. Executar o Script**

Basta clicar no botão:

* **Lightning Bolt** (ícone de raio) para executar tudo,
  ou
* Selecionar apenas um trecho e usar **Ctrl + Enter**.

---

## 📥 Scripts Disponíveis

### ✔ create_tables.sql

Contém a criação das tabelas principais do projeto:

* Usuario
* Tarefa
* Categoria
* TarefaCategoria

Inclui chaves primárias, estrangeiras e restrições.

---

### ✔ insert_data.sql

Comandos `INSERT` para popular o banco com dados coerentes:

* usuários fictícios
* tarefas com prioridades/status
* categorias
* associações tarefa–categoria

---

### ✔ select_queries.sql

Contém de 2 a 5 consultas com:

* `SELECT`
* `WHERE`
* `ORDER BY`
* `JOIN` (INNER JOIN entre tarefas, usuários e categorias)
* `LIMIT`

---

### ✔ update_commands.sql

Pelo menos 3 comandos `UPDATE` como:

* atualizar status de tarefa
* alterar prioridade
* atualizar dados do usuário

---

### ✔ delete_commands.sql

Pelo menos 3 comandos `DELETE` com condições, protegidos por:

* chaves estrangeiras
* regras de integridade
* deleções não perigosas

---

## 📝 Instruções Gerais de Uso

1. Comece executando **create_tables.sql**.
2. Depois execute **insert_data.sql** para carregar dados iniciais.
3. Use os scripts de **SELECT** para visualizar os dados e testar relacionamentos.
4. Execute os scripts de **UPDATE** e **DELETE** conforme necessário.
5. Caso queira limpar o ambiente, use **drop_tables.sql** (opcional).

---

## 📌 Observações Importantes

* Os scripts seguem fielmente o Modelo Lógico revisado.
* As formas normais (1FN, 2FN e 3FN) foram aplicadas em todas as entidades.
* As operações DML respeitam as restrições de integridade referencial.
* Código totalmente compatível com MySQL 8.0+.

---

## 📎 Licença

Este projeto é livre para uso acadêmico.

---
