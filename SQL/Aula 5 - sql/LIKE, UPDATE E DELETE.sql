create database liked;
use liked;

create table dados (
id int auto_increment primary key,
nome varchar(100),
email varchar (100),
cidade varchar (100),
telefone varchar(100),
profissão varchar (100)
);

INSERT INTO dados (nome, email, cidade, telefone, profissão)
VALUES

('Miguel', 'hdfhjhdfjhdhf@gmail.com', 'São Paulo', '11928374723', 'TI'),
('Ana Silva', 'ana.silva@gmail.com', 'Santos', '998877665', 'Engenheira'),
('Carlos Eduardo', 'carlos@hotmail.com', 'Rio de Janeiro', '987654321', 'Programador Junior'),
('Roberto Carlos', 'roberto@yahoo.com', 'Salvador', '912345600', 'Analista Junior'),
('Joao Pedro', 'joao@gmail.com', 'São José', '923456700', 'Programador'),
('Aline Souza', 'aline@outlook.com', 'Rio Branco', '934567800', 'Engenheira de Software'),
('Marcos Silva', 'marcos@hotmail.com', 'Curitiba', '945678900', 'Programador Senior'),
('Paulo', 'paulo@gmail.com', 'São Paulo', '956789000', 'Estudante'),
('Caio Melo', 'caio@yahoo.com', 'Sao Luis', '967890100', 'Designer'),
('Silvia Rocha', 'silvia@gmail.com', 'Rio Claro', '978901200', 'Engenheira Junior');

SET SQL_SAFE_UPDATES = 0;
-- Exercícios
-- Buscar todos os clientes cujo nome começa com a letra "A".
select * from dados
where nome like 'A%';
-- Buscar clientes cujo nome termina com a letra "o".
select * from dados
where nome like '%o';
-- Buscar clientes que tenham "Silva" em qualquer parte do nome.
select * from dados
where nome like '%Silva%';
-- Buscar clientes cujo email seja do Gmail.
select * from dados
where email like '%gmail%';
-- Buscar clientes cujo email termine com "@hotmail.com".
select * from dados
where email like '%@hotmail.com';
-- Buscar clientes que moram em cidades que começam com "S".
select * from dados
where cidade like 'S%';
-- Buscar clientes cuja cidade contenha a palavra "Rio".
select * from dados
where cidade like '%Rio%';
-- Buscar clientes cuja profissão contenha "Eng".
select * from dados
where  profissão like '%Eng%';
-- Buscar clientes cujo nome tenha exatamente 5 letras.
select * from dados
where nome like '_____';
-- Buscar clientes cujo nome tenha "a" como segunda letra.
select * from dados
where nome like '_a%';
-- Atualizar a profissão para "Desenvolvedor" para todos que possuem profissão parecida com "Programador".
UPDATE dados
SET profissão = REPLACE(profissão, 'Programador', 'Desenvolvedor')
where profissão like '%Programador%';
select profissão from dados;
-- Atualizar o email para "@outlook.com" para todos que possuem "@hotmail.com".
select email from dados;
update dados
set email = replace(email, '@hotmail.com', '@outlook.com')
where email like '%@hotmail.com%';
-- Atualizar a cidade para "São Paulo - SP" para clientes cuja cidade comece com "São".
select cidade from dados;
update dados
set cidade = 'São Paulo - SP'
where cidade like 'São%';
-- Atualizar o telefone para começar com "11" para clientes cujo telefone comece com "9".
select telefone from dados;
update dados
set telefone = concat('11', telefone)
where telefone like '9%';
-- Excluir clientes cujo email seja do Yahoo.
select email from dados;
delete from dados
where email like '%@yahoo%';
-- Excluir clientes cujo nome contenha "Carlos".
select nome from dados;
delete from dados
where nome like '%Carlos%';
-- Excluir clientes cuja profissão termine com "Junior".
select profissão from dados;
delete from dados
where profissão like '%Junior';
-- Buscar clientes cujo telefone termine com "00".
select telefone from dados
where telefone like '%00';
-- Buscar clientes cujo nome possua exatamente 4 caracteres antes de um espaço.
select nome from dados
where nome like '____ %';
-- Buscar clientes cujo email tenha a letra "a" antes do símbolo "@".
select email from dados
where email like '%a@%';

SELECT * FROM dados;