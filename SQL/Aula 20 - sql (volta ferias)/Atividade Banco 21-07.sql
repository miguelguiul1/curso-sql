-- CREATE (Inserção de dados)

CREATE DATABASE loja;
USE loja;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    email VARCHAR(100),
    cidade VARCHAR(100),
    data_cadastro DATE
);

INSERT INTO clientes (nome, email, cidade, data_cadastro)
VALUES
('Ana Souza', 'ana.souza@email.com', 'São Paulo', '2026-01-15'),
('Bruno Lima', 'bruno.lima@email.com', 'Campinas', '2026-02-10'),
('Carla Mendes', 'carla.mendes@email.com', 'Santos', '2026-03-05'),
('Diego Alves', 'diego.alves@email.com', 'Guarulhos', '2026-04-22'),
('Elisa Rocha', 'elisa.rocha@email.com', 'Osasco', '2026-05-18');

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    produto VARCHAR(50),
    preco DECIMAL(10,2),
    estoque INT
);

INSERT INTO produtos (produto, preco, estoque)
VALUES
('Mouse Gamer', 89.90, 15),
('Teclado Mecânico', 249.90, 8),
('Headset', 179.90, 12),
('Monitor 24"', 899.90, 5),
('Mousepad Grande', 49.90, 20);

INSERT INTO clientes (nome, email, cidade, data_cadastro)
VALUES
('Fernando Costa', 'fernando@email.com', 'Sorocaba', '2026-07-21'),
('Gabriela Martins', 'gabriela@email.com', 'Sorocaba', '2026-07-21');

ALTER TABLE clientes
ADD telefone VARCHAR(20);

UPDATE clientes
SET telefone = '(11) 99999-1111'
WHERE id = 1;

UPDATE clientes
SET telefone = '(11) 99999-2222'
WHERE id = 2;

UPDATE clientes
SET telefone = '(11) 99999-3333'
WHERE id = 3;

UPDATE clientes
SET telefone = '(11) 99999-4444'
WHERE id = 4;

UPDATE clientes
SET telefone = '(11) 99999-5555'
WHERE id = 5;

UPDATE clientes
SET telefone = '(11) 99999-6666'
WHERE id = 6;

UPDATE clientes
SET telefone = '(11) 99999-7777'
WHERE id = 7;

-- READ (Consulta de dados)

-- Liste todos os clientes cadastrados, ordenados por nome em ordem alfabética.
select * from clientes
order by nome asc; 
-- Liste todos os produtos cadastrados, ordenados do mais caro para o mais barato.
select * from produtos
order by preco desc;
-- Liste os produtos com preço maior que R$ 50,00.
select * from produtos
where preco > 50;
-- Liste os clientes cadastrados depois de uma data específica (use WHERE com data_cadastro).
select * from clientes
where data_cadastro > '2026-04-01';
-- Conte quantos clientes existem de cada cidade (use GROUP BY).
select COUNT(*) as QuantidadeCliente, cidade from clientes
group by cidade;
-- Encontre o produto mais caro e o mais barato da tabela produtos (use MAX() e MIN()).
select MAX(preco) as ProdutoMaisCaro, MIN(preco) as ProdutoMaisBarato from produtos;
-- Liste os produtos com estoque abaixo de 10 unidades.
select * from produtos
where estoque < 10;

-- UPDATE (Atualização de dados)

-- Atualize o preço de um produto específico, aumentando-o em 10%.
update produtos
set preco = preco * 1.10
where id = 3;
-- Corrija o e-mail de um cliente específico.
update clientes
set email = 'Cleber.Junior@gmail.com'
where id = 5;
-- Atualize a cidade de um cliente específico.
update clientes
set cidade = 'Palmas'
where id = 7;

-- DELETE (Exclusão de dados)

-- Exclua um produto específico pelo seu id.
delete from produtos
where id = 4;

