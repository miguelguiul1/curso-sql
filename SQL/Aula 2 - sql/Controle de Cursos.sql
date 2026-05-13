-- 3. Controle de Cursos
-- Crie a tabela cursos com os campos: id, nome, duracao, professor.
-- Insira 5 cursos.
-- Atualize o professor do curso com ID 4 para "Carlos Silva"
-- e exclua o curso com ID 2.
-- Liste todos os cursos.

create database controle;
use controle;

-- tabela
create table cursos (
id int auto_increment primary key,
nome varchar (100) NOT NULL,
duração varchar (100),
professor varchar (100)
);

-- 5 cursos
insert into cursos (nome, duração, professor) values

('Informática Básica', '3 meses', 'João Mendes'),
('Banco de Dados', '4 meses', 'Ana Souza'),
('Programação Java', '6 meses', 'Marcos Lima'),
('Desenvolvimento Web', '5 meses', 'Fernanda Alves'),
('Redes de Computadores', '4 meses', 'Paulo Henrique');

-- professor do ID 4 para "Carlos Silva"
update cursos
set professor = 'Carlos Silva'
where id = 4;

-- exclua o curso com ID 2

delete from cursos
where id = 2;

select * from cursos;