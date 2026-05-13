-- 2. Gerenciamento de Fornecedores
-- Crie a tabela fornecedores com os campos: id, nome, telefone, categoria.
-- Insira 4 fornecedores.
-- Atualize o telefone do fornecedor com ID 3 e
-- exclua todos os fornecedores da categoria "Alimentos".
-- Liste os fornecedores restantes.

create database gerenciamento;
use gerenciamento;

-- tabela

create table fornecedores(
id int auto_increment primary key,
nome varchar (100),
telefone varchar (20),
categoria varchar (100)
);

-- 4 fornecedores

insert into fornecedores (nome, telefone, categoria) values

('Fornecedor A', '11999990001', 'Alimentos'),
('Fornecedor B', '11999990002', 'Eletrônicos'),
('Fornecedor C', '11999990003', 'Alimentos'),
('Fornecedor D', '11999990004', 'Limpeza');

-- atualizar id 3

update fornecedores 
set telefone = '11977776666'
where id = 3;

-- poder apagar sem id

SET SQL_SAFE_UPDATES = 0;

-- deletar categoria "Alimentos"

delete from fornecedores
where categoria = 'Alimentos';

select * from fornecedores;