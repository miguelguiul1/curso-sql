create database empresa;
use empresa;

CREATE TABLE produtos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    estoque INT NOT NULL
);

INSERT INTO produtos (nome, preco, categoria, estoque) VALUES
('Notebook Dell', 3500.10, 'Eletrônicos', 15),
('Smartphone Samsung', 2200.00, 'Eletrônicos', 25),
('Cadeira Gamer', 800.26, 'Móveis', 8),
('Mesa Escritório', 450.45, 'Móveis', 12),
('Monitor LG', 1200.00, 'Eletrônicos', 18),
('Teclado Mecânico', 350.00, 'Eletrônicos', 30),
('Sofá 3 Lugares', 2500.00, 'Móveis', 5),
('Mouse Gamer', 150.15, 'Eletrônicos', 40),
('Armário', 900.30, 'Móveis', 10),
('Impressora HP', 700.00, 'Eletrônicos', 7);

-- 🔹 Produtos

select * from produtos;

-- Selecione todos os registros com preço entre 300 e 1000.

select * from produtos
where preco between 300 and 1000;

-- Selecione todos os registros da categoria Eletrônicos com estoque entre 10 e 25.

select * from produtos
where categoria = 'Eletrônicos' and estoque between 10 and 25;

-- Selecione todos os registros com preço entre 200 e 500 OU estoque maior que 15.

select * from produtos
where preco between 200 and 500 or estoque > 15;

-- Selecione todos os registros que NÃO são da categoria Móveis.

select * from produtos
where categoria != 'Móveis';

-- Selecione todos os registros com preço menor que 500 E estoque maior que 5.

select * from produtos
where preco < 500 and estoque > 5;

-- Selecione todos os registros com preço entre 800 e 2500 E categoria Eletrônicos.

select * from produtos
where preco between 800 and 2500 and categoria = 'Eletrônicos';

-- Selecione todos os registros com estoque entre 5 e 15 OU preço menor que 400.

select * from produtos
where estoque between 5 and 15 or preco < 400;

-- Selecione todos os registros com preço entre 100 e 1000 E que NÃO sejam da categoria Móveis.

select * from produtos
where preco between 100 and 1000 and categoria != 'Móveis';

-- Selecione todos os registros com estoque entre 10 e 30 E preço maior que 300.

select * from produtos
where estoque between 10 and 30 and preco > 300;

-- Selecione todos os registros com preço entre 200 e 800 OU estoque menor que 10.

select * from produtos
where preco between 200 and 800 or estoque < 10;
