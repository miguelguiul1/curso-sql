create database Livraria;
use Livraria;

-- 1. Criação da Tabela (DDL)

create table livros (
id int auto_increment primary key,
titulo varchar (100),
autor varchar (50),
ano_publicacao int,
preco decimal (10,2),
estoque int,
data_cadastro date 
);

/*2. Exercícios Práticos (CRUD)

A. CREATE (Inserção de Dados)

Insira 5 livros na tabela Livros, utilizando dados fictícios e preenchendo todos os campos, inclusive data_cadastro .
*/

INSERT INTO livros (titulo, autor, ano_publicacao, preco, estoque, data_cadastro)
VALUES

('Amo você', 'Julio', 2003, 12121212.00, 100, '2010-01-5'),
('uhuuu', 'Roberto', 2022, 13872947.00, 120, '2003-06-7'),
('é nois', 'Ana', 2010, 12309845.00, 300, '2007-12-10'),
('@.com', 'Juliana', 2025, 12093487.00, 500, '1970-11-20'),
('tudo bom', 'Cabral', 1990, 12873679.00, 600, '2025-08-30');

drop table livros;

-- B. READ (Consulta de Dados)

-- Liste todos os livros cadastrados.

select * from livros;

-- Liste os livros publicados após 2020, mostrando apenas título, autor e ano de publicação.

select titulo, autor, ano_publicacao from livros
where ano_publicacao > 2020;

-- Liste os livros com estoque menor que 10, ordenados pelo preço (do maior para o menor).

select * from livros
where estoque > 10; -- and ord(estoque 600, 0);

-- Liste os livros cadastrados em 2025, mostrando título, autor e data de cadastro.
select titulo, autor, data_cadastro from livros 
where data_cadastro like '2025%';

-- C. UPDATE (Atualização de Dados)

-- Atualize o preço do livro com id 2 para R$ 150,00.
update livros
set preco = 150
where id = 2;
select preco from livros;

-- Atualize o estoque do livro com id 3, adicionando 10 unidades ao estoque atual.
update livros
set estoque = 10
where id = 3;
select estoque from livros;

-- D. DELETE (Exclusão de Dados)

-- Exclua o livro com id 5.
delete from livros
where id = 5;
select * from livros;

-- Exclua todos os livros publicados antes de 2010.
delete from livros 
where ano_publicacao < 2010;
select * from livros;

SET SQL_SAFE_UPDATES = 0;
