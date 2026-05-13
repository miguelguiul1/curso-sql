create database empresa;
use empresa;

CREATE TABLE funcionarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    salario DECIMAL(10,2) NOT NULL,
    departamento VARCHAR(50) NOT NULL,
    data_contratacao DATE NOT NULL,
    idade INT NOT NULL
);

INSERT INTO funcionarios (nome, salario, departamento, data_contratacao, idade) VALUES
('Carlos Silva', 4500.10, 'TI', '2019-03-15', 29),
('Mariana Souza', 3200.00, 'RH', '2020-07-10', 34),
('João Pereira', 3800.95, 'Vendas', '2021-01-20', 27),
('Fernanda Lima', 5000.55, 'TI', '2018-11-05', 31),
('Ricardo Alves', 2900.79, 'RH', '2022-05-18', 26),
('Patrícia Gomes', 4100.00, 'Vendas', '2019-09-25', 38),
('Lucas Martins', 3600.46, 'TI', '2020-02-12', 24),
('Aline Rocha', 3300.00, 'Vendas', '2021-08-30', 30),
('Bruno Costa', 2700.27, 'RH', '2019-12-01', 28),
('Juliana Mendes', 4200.81, 'TI', '2022-03-14', 33);

-- 🔹 Funcionários

select * from funcionarios;

-- Selecione todos os registros do departamento de TI.

select * from funcionarios
where departamento = 'TI';

-- Selecione todos os registros com salário maior que 4000.

select * from funcionarios
where salario > 4000;

-- Selecione todos os registros com salário entre 3000 e 4000.

select * from funcionarios
where salario between 3000 and 4000;

-- Selecione todos os registros do departamento de Vendas com salário maior que 3300.

select * from funcionarios
where departamento = 'Vendas' and salario > 3300;

-- Selecione todos os registros com idade entre 25 e 35 anos.

select * from funcionarios
where idade between 25 and 35;

-- Selecione todos os registros que NÃO pertencem ao departamento de RH.

select * from funcionarios
where departamento != 'RH';

-- Selecione todos os registros com salário menor que 3500 OU idade maior que 30.

select * from funcionarios
where salario < 3500 or idade > 30;

-- Selecione todos os registros com data de contratação entre 2019 e 2021.

select * from funcionarios
where data_contratacao between '2019-01-01' and '2021-12-31';

-- Selecione todos os registros do departamento de TI OU Vendas.

select * from funcionarios
where departamento = 'TI' or departamento = 'Vendas';

-- Selecione todos os registros com salário maior que 3800 E idade menor que 35.

select * from funcionarios
where salario > 3800 and idade < 35;
