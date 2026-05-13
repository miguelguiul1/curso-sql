-- 5. Lista de Animais de Estimação
-- Crie a tabela animais com os campos: id, nome, especie, dono.
-- Insira 4 animais.
-- Atualize o dono do animal com ID 3 para "Maria"
-- e exclua todos os animais da espécie "Gato".
-- Liste os animais restantes.

create database estimação;
use estimação;

-- tabela
create table animais (
id int auto_increment primary key,
nome varchar (100) NOT NULL,
espécie varchar (100) NOT NULL,
dono varchar (100)
);

-- 4 animais
insert into animais (nome, espécie, dono) values

('Rex', 'Cachorro', 'Miguel'),
('Mimi', 'Gato', 'Ana'),
('Thor', 'Cachorro', 'Carlos'),
('Luna', 'Gato', 'Fernanda');

-- dono do id 3 para maria
update animais
set dono = 'Maria'
where id = 3;

-- exclua espécie gato
delete from animais
where espécie = 'Gato';

select * from animais;