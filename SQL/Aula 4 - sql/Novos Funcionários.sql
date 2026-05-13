create database empresa;
use empresa;

CREATE TABLE funcionarios_novos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    departamento VARCHAR(50) NOT NULL,
    data_contratacao DATE NOT NULL,
    idade INT NOT NULL
);

INSERT INTO funcionarios_novos (nome, salario, departamento, data_contratacao, idade) VALUES
('Ana Clara', 7200.00, 'TI', '2022-03-15', 22),
('Bruno Silva', 2800.00, 'RH', '2016-05-10', 45),
('Carlos Mendes', 4700.00, 'Financeiro', '2019-08-20', 41),
('Amanda Souza', 3900.00, 'Vendas', '2021-11-01', 33),
('Ricardo Alves', 5200.00, 'TI', '2018-02-18', 38),
('Fernanda Lima', 3100.00, 'Marketing', '2020-07-07', 29),
('André Martins', 4500.00, 'TI', '2023-01-05', 31),
('Juliana Pereira', 2600.00, 'RH', '2022-09-12', 24),
('Lucas Ferreira', 8000.00, 'Financeiro', '2015-04-30', 50),
('Patrícia Gomes', 3400.00, 'Vendas', '2022-06-22', 27),
('Eduardo Nunes', 4800.00, 'TI', '2019-12-10', 42),
('Mariana Lopes', 3000.00, 'Marketing', '2022-01-15', 21),
('Alessandro Rocha', 4400.00, 'Vendas', '2017-03-03', 39),
('Beatriz Costa', 6100.00, 'RH', '2020-10-10', 28),
('Arthur Lima', 2900.00, 'TI', '2022-08-08', 23);

-- 🔹 Funcionários – Novos Enunciados
SELECT * FROM funcionarios_novos;

-- 1️⃣ Selecione todos os funcionários com salário acima da média salarial da empresa.
SELECT * FROM funcionarios_novos
WHERE salario > (SELECT AVG(salario) FROM funcionarios_novos);

-- 2️⃣ Selecione todos os funcionários do departamento de TI contratados após 2020.
SELECT * FROM funcionarios_novos
where departamento = 'TI' and data_contratacao > '2020-12-31';

-- 3️⃣ Selecione todos os funcionários com idade maior que 40 e salário menor que 5000.
SELECT * FROM funcionarios_novos
where idade > 40 and salario < 5000;

-- 4️⃣ Selecione todos os funcionários cujo nome começa com a letra “A”.
SELECT * FROM funcionarios_novos
where nome like 'A%';

-- 5️⃣ Selecione todos os funcionários contratados antes de 2018 ou que pertençam ao departamento de RH.
SELECT * FROM funcionarios_novos
where data_contratacao < '2018-01-01' or departamento = 'RH';

-- 6️⃣ Selecione todos os funcionários com salário entre 2500 e 4500, exceto os do departamento de Vendas.
SELECT * FROM funcionarios_novos
where salario between 2500 and 4500 and departamento != 'Vendas';

-- 7️⃣ Selecione todos os funcionários que possuem mais de 30 anos e não pertencem ao departamento de TI.
SELECT * FROM funcionarios_novos
where idade > 30 and departamento != 'TI';

-- 8️⃣ Selecione todos os funcionários do departamento de Vendas com idade entre 25 e 40 anos.
SELECT * FROM funcionarios_novos
where departamento = 'Vendas' and idade between 25 and 40;

-- 9️⃣ Selecione todos os funcionários com salário maior que 6000 ou idade menor que 23.
SELECT * FROM funcionarios_novos
where salario > 6000 or idade < 23;

-- 🔟 Selecione todos os funcionários contratados no ano de 2022.
SELECT * FROM funcionarios_novos
where data_contratacao between '2022-01-01' and '2022-12-31';