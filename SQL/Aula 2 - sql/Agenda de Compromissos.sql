-- 4. Agenda de Compromissos
-- Crie a tabela compromissos com os campos: id, descricao, data, local.
-- Insira 3 compromissos.
-- Atualize o local do compromisso com ID 1 para "Sala 3"
-- e exclua o compromisso com ID 2.
-- Liste os compromissos restantes.

create database agenda;
use agenda;

-- tabela
create table compromissos (
id int auto_increment primary key,
descrição varchar (300),
data date,
local varchar (100)
);

-- 3 compromissos
insert into compromissos (descrição, data, local) values

('Reunião de equipe', '2026-03-10', 'Sala 1'),
('Apresentação do projeto', '2026-03-12', 'Auditório'),
('Treinamento interno', '2026-03-15', 'Sala 2');

-- ID 1 para Sala 3
update compromissos
set local = 'Sala 3'
where id = 1;

-- Exclua ID 2
delete from compromissos
where id = 2;

select * from compromissos;