create database loja;
use loja;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT
);

CREATE TABLE produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    preço DECIMAL(10,2)
);

CREATE TABLE funcionarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    salário DECIMAL(10,2)
);

-- INSERT clientes
INSERT INTO clientes (nome, idade) VALUES
('João Silva', 25),
('Maria Souza', 30),
('Carlos Lima', 22),
('Ana Costa', 28);

-- INSERT produtos
INSERT INTO produtos (nome, preço) VALUES
('Notebook', 3500.00),
('Mouse', 80.50),
('Teclado', 150.00),
('Monitor', 900.00);

-- INSERT funcionarios
INSERT INTO funcionarios (nome, salário) VALUES
('Pedro Santos', 2000.00),
('Lucas Oliveira', 2500.00),
('Fernanda Alves', 3000.00),
('Juliana Rocha', 2800.00);

select  count(salario) from funcionarios;
select  sum(salario) from funcionarios AS Soma_salarios;

Select max(salario) from funcionarios As Maior_salario;
Select min(salario) from funcionarios As Menor_salario;




-- 1. Crie uma variável @nome e atribua seu nome. Exiba o valor.
set @nome = 'Miguel Ananias Alves';
select @nome as Nome;

-- 2. Crie uma variável @idade com valor 20 e exiba.
set @idade = 20;
select @idade as Idade;

-- 3. Crie uma variável @numero e mostre o dobro.
set @numero = 10;
select @numero * 2 as Dobro;

-- 4. Crie duas variáveis @a e @b e mostre a soma.
set @a = 10;
set @b = 15;
select @a + @b as Soma;

-- 5. Crie duas variáveis e mostre a subtração.
set @a = 10;
set @b = 15;
select @a - @b as Subtração;

-- 6. Crie duas variáveis e mostre a multiplicação.
set @a = 10;
set @b = 15;
select @a * @b as Multiplicação;

-- 7. Crie duas variáveis e mostre a divisão.
set @a = 10;
set @b = 15;
select @a / @b as Divisão;

-- 8. Atribua valor 100 a uma variável usando SELECT.
select @valor := 100 as Valor;

-- 9. Atribua o resultado de 10 + 5 a uma variável.
select @resultado := 10 + 5 as ResultadoSoma;

-- 10. Atribua o resultado de uma multiplicação a uma variável.
select @resultado := 10 * 5 as ResultadoMultiplicação;

-- 11. Armazene o maior preço da tabela produtos em uma variável.
select @Maior := MAX(preço) from produtos as MaiorPreço;

-- 12. Armazene o menor preço da tabela produtos.
select @Menor := MIN(preço) from produtos as MenosPreço;

-- 13. Armazene a média de preços dos produtos.
select @Media := AVG(preço) from produtos as MédiaProdutos;

-- 14. Armazene o total de produtos cadastrados.
select @QuantidadeDeProdutos := count(id) from produtos;

-- 15. Armazene o maior salário da tabela funcionarios.
select @Maior := MAX(salário) from funcionarios;

-- 16. Armazene o menor salário da tabela funcionarios.
select @Menor := MIN(salário) from funcionarios;

-- 17. Armazene a média salarial dos funcionarios.
select @Media := AVG(salário) from funcionarios;

-- 18. Crie uma variável com valor 100 e mostre produtos com preço maior.
select @Valor := 100;
select preço from produtos
where preço > @valor;

-- 19. Crie uma variável com valor 2000 e mostre funcionarios com salário maior.
select @valor := 2000;
select * from funcionarios
where salário > @valor;

-- 20. Crie uma variável com ID e busque um cliente.
set @id = 1;
select * from clientes
where id = @id;

-- 21. Crie uma variável com nome e filtre produtos.
set @nome = 'Miguel';
select * from produtos
where nome = @nome;

-- 22. Crie uma variável @desconto e aplique desconto nos produtos.
set @descontos = 0.10; -- 10% de desconto
select *, round(preço - (preço * @descontos),2) as Desconto from produtos;

-- 23. Crie uma variável @aumento e aplique nos salários.
set @aumento = 0.10; -- 10% de aumento
select *, round (salário + (salário * @aumento),2) as Aumento from funcionarios;

-- 24. Use variável para somar com uma coluna.
set @valor = 70;
select *, preço + @valor from produtos;

-- 25. Use variável para multiplicar uma coluna.
set @valor = 70;
select *, preço * @valor from produtos;

-- 26. Use IF com variável para mostrar "Alto" se valor > 100.
set @valor = 100;
select *, if (@valor > 100, 'Alto', 'Baixo') as SalárioAltoOUBaixo from produtos;

-- 27. Use IF para verificar se número é par ou ímpar.
set @numero = 30;
set @numero = 31;
select if (@numero % 2 = 0, 'Par', 'Ímpar') as PARouÍMPAR;

-- 28. Use IF para mostrar "Aprovado" se nota >= 6.
set @nota = 10;
set @nota = 0;
select if (@nota >= 6, 'Aprovado', 'Reprovado');

-- 29. Crie uma variável acumuladora para somar preços.
set @soma = 10;
select *, @soma := @soma + preço from produtos;