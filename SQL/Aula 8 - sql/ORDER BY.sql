CREATE DATABASE empresa;
USE empresa;

-- ==============================
-- 🔹 TABELA FUNCIONÁRIOS
-- ==============================

CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    salario DECIMAL(10,2),
    departamento VARCHAR(50),
    data_contratacao DATE
);

INSERT INTO funcionarios (nome, idade, salario, departamento, data_contratacao) VALUES
('Carlos Silva', 30, 3500.00, 'TI', '2020-05-10'),
('Ana Souza', 25, 2800.00, 'RH', '2021-03-15'),
('João Pedro', 40, 5000.00, 'Financeiro', '2018-07-20'),
('Mariana Lima', 35, 4200.00, 'TI', '2019-11-01'),
('Bruno Rocha', 28, 3100.00, 'Marketing', '2022-01-12'),
('Fernanda Alves', 32, 2900.00, 'RH', '2020-09-25'),
('Rafael Gomes', 45, 6000.00, 'Diretoria', '2015-06-30'),
('Juliana Martins', 27, 2700.00, 'Financeiro', '2023-02-10'),
('Patrícia Dias', 38, 4800.00, 'TI', '2017-08-14'),
('Eduardo Nunes', 29, 3200.00, 'Marketing', '2021-12-05');

-- ==============================
-- 🔹 TABELA PRODUTOS
-- ==============================

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    estoque INT,
    categoria VARCHAR(50)
);

INSERT INTO produtos (nome, preco, estoque, categoria) VALUES
('Notebook', 3500.00, 15, 'Eletrônicos'),
('Mouse', 50.00, 100, 'Acessórios'),
('Teclado', 120.00, 50, 'Acessórios'),
('Monitor', 900.00, 20, 'Eletrônicos'),
('Cadeira Gamer', 1500.00, 8, 'Móveis'),
('Mesa Escritório', 700.00, 12, 'Móveis'),
('Headset', 250.00, 30, 'Acessórios'),
('Celular', 2500.00, 25, 'Eletrônicos'),
('Impressora', 800.00, 10, 'Eletrônicos'),
('Webcam', 200.00, 18, 'Acessórios');

-- ==============================
-- 🔥 EXERCÍCIOS (20)
-- ==============================

-- 1. Liste todos os funcionários ordenados pelo nome.
SELECT * FROM funcionarios
order by nome;

-- 2. Liste todos os funcionários ordenados pela idade em ordem crescente.
SELECT * FROM funcionarios
order by idade asc;

-- 3. Liste todos os funcionários ordenados pela idade em ordem decrescente.
SELECT * FROM funcionarios
order by idade desc;

-- 4. Liste os produtos ordenados pelo preço do menor para o maior.
SELECT * FROM produtos
order by preco asc;

-- 5. Liste os produtos ordenados pelo preço do maior para o menor.
SELECT * FROM produtos
order by preco desc;

-- 6. Mostre nome e salário dos funcionários ordenados pelo salário.
SELECT nome, salario FROM funcionarios
order by salario;

-- 7. Mostre todos os funcionários ordenados pela data de contratação.
SELECT * FROM funcionarios
order by data_contratacao;

-- 8. Liste os produtos ordenados pelo nome.
SELECT * FROM produtos
order by nome;

-- 9. Liste os produtos ordenados primeiro pela categoria e depois pelo preço.
SELECT * FROM produtos
ORDER BY categoria, preco;

-- 10. Liste os funcionários ordenados pelo departamento.
SELECT * FROM funcionarios
order by departamento;

-- 11. Liste os funcionários do departamento TI ordenados pelo salário.
SELECT * FROM funcionarios
where departamento = 'TI' order by salario;

-- 12. Liste os produtos com estoque maior que 10 ordenados pelo preço.
SELECT * FROM produtos
where estoque > 10 order by preco;

-- 13. Liste os funcionários ordenados primeiro pelo departamento e depois pelo nome.
SELECT * FROM funcionarios
order by departamento, nome;

-- 14. Liste os funcionários ordenados pela idade do maior para o menor.
SELECT * FROM funcionarios
order by idade desc;

-- 15. Liste os produtos ordenados pelo estoque do maior para o menor.
SELECT * FROM produtos
order by estoque desc;

-- 16. Liste nome e preço dos produtos ordenados pelo preço.
SELECT nome, preco FROM produtos
order by preco;
-- 17. Liste os funcionários com salário maior que 3000 ordenados pelo salário.
SELECT * FROM funcionarios
where salario > 3000 order by salario;

-- 18. Liste os produtos ordenados primeiro pela categoria e depois pelo nome.
SELECT * FROM produtos
order by categoria, nome;

-- 19. Liste os funcionários ordenados pela data de contratação do mais recente para o mais antigo.
SELECT * FROM funcionarios
order by data_contratacao desc;

-- 20. Liste os produtos ordenados pelo preço e depois pelo nome.
SELECT * FROM produtos
order by preco, nome;