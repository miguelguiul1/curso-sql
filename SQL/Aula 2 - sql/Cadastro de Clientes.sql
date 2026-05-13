-- 1. Cadastro de Clientes
-- Crie a tabela clientes com os campos: id, nome, email, cidade.
-- Insira 3 clientes.
-- Atualize a cidade do cliente com ID 2 para "São Paulo" e exclua o cliente com ID 1. Liste todos os clientes restantes.


create database cadastro;
use cadastro;

create table clientes(
id int auto_increment primary key,
nome varchar (100),
email varchar (100),
cidade varchar (100)
);

insert into clientes(nome, email, cidade)
values

('Miguel Ananias', 'miguel@email.com', 'São Paulo'),
('Ana Souza', 'ana.souza@email.com', 'Rio de Janeiro'),
('Carlos Lima', 'carlos.lima@email.com', 'Belo Horizonte');

update clientes 
set cidade = 'São Paulo' 
where id = 2;

delete from clientes 
where id = 1;

select * from clientes;