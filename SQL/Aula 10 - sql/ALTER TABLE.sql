CREATE DATABASE boolean;
USE boolean;

-- Tabela usuarios
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    ativo BOOLEAN
);

INSERT INTO usuarios (nome, ativo) VALUES
('João', TRUE),
('Maria', FALSE);


-- Tabela clientes
CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    data_cadastro DATE
);

INSERT INTO clientes (nome, email, data_cadastro) VALUES
('João Silva', 'joao@email.com', '2024-01-10'),
('Maria Souza', 'maria@email.com', '2024-02-15');


-- 🟢 Nível básico

-- 1. Adicione uma coluna telefone na tabela clientes.
ALTER TABLE clientes
ADD COLUMN telefone VARCHAR(50);

-- 2. Adicione uma coluna cpf do tipo VARCHAR(14).
ALTER TABLE clientes
ADD COLUMN cpf VARCHAR(14);

-- 3. Remova a coluna cpf.
ALTER TABLE clientes
DROP COLUMN cpf;

-- 4. Modifique a coluna nome para permitir até 200 caracteres.
ALTER TABLE clientes
MODIFY nome VARCHAR(200);

-- 5. Renomeie a coluna email para email_principal.
ALTER TABLE clientes
RENAME COLUMN email TO email_principal;

-- 🟡 Nível intermediário

-- 6. Adicione uma coluna status na tabela clientes com valor padrão 'ativo'.
ALTER TABLE clientes
ADD COLUMN status VARCHAR(20) DEFAULT 'ativo';

-- 7. Adicione uma coluna data_nascimento do tipo DATE.
ALTER TABLE clientes
ADD COLUMN data_nascimento DATE;

-- 8. Adicione uma restrição NOT NULL na coluna nome.
ALTER TABLE clientes
MODIFY nome VARCHAR(200) NOT NULL;

-- tabela pedidos
CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cliente_id INT,
    valor DECIMAL(10,2)
);

-- Inserindo dados
INSERT INTO pedidos (cliente_id, valor) VALUES
(1, 150.50),
(2, 200.00),
(1, 75.90),
(2, 300.00);

-- 9. Remova a chave estrangeira da tabela pedidos.
alter table pedidos 
drop id;

-- 10. Adicione novamente a chave estrangeira entre pedidos.cliente_id e clientes.id.
alter table pedidos 
add id int auto_increment primary key;

-- 🔵 Nível intermediário/avançado

-- 11. Renomeie a tabela clientes para usuarios.
ALTER TABLE clientes
RENAME TO usuarioss;

-- 12. Altere o tipo da coluna valor da tabela pedidos para DECIMAL(12,2).
alter table pedidos
modify valor decimal (12,2);

-- 13. Adicione uma coluna forma_pagamento na tabela pedidos após a coluna valor.
alter table pedidos
add column forma_pagamento varchar (100) after valor;

-- 14. Adicione uma chave única (UNIQUE) na coluna email_principal.
alter table usuarioss
add constraint email_principal_unique UNIQUE (email_principal) ;

-- 15. Remova a chave primária da tabela clientes.
alter table usuarioss
drop primary key;