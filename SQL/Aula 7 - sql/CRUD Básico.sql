-- Exercícios de CRUD Básico – MySQL

create database CRUDBásico;
use CRUDBásico;

-- 1️⃣ Criar tabela
-- Crie uma tabela chamada alunos com os campos:
drop table alunos;

create table alunos(
id int auto_increment primary key,
nome varchar (100),
idade int,
curso varchar (100),
data_matricula date
);

/*2️⃣ CREATE (Inserir dados)
Insira um aluno chamado Carlos, 20 anos, curso Informática.
Insira um aluno chamado Mariana, 22 anos, curso Administração.
Insira 5  alunos diferentes na tabela.
*/

INSERT INTO alunos (nome, idade, curso, data_matricula) VALUES

('Carlos', 20, 'Informática', '2026-01-26'),
('Mariana', 22, 'Administração', '2026-01-26'),
('Roberto', 12, 'Informática', '2026-01-26'),
('Jilson', 10, 'Inglês', '2026-01-26'),
('Calina', 16, 'Informática', '2026-01-26'),
('Roberta', 17, 'Português', '2026-01-26'),
('Gleison', 30, 'Comunicação', '2026-01-26');


-- 3️⃣ READ (Consultar dados)
-- Liste todos os alunos da tabela.
select * from alunos;
-- Liste apenas o nome e o curso dos alunos.
select nome, curso from alunos;
-- Liste apenas os alunos com idade maior que 21 anos.
select * from alunos
where idade > 21;
-- Liste os alunos do curso Informática.
select * from alunos
where curso = 'Informática';

-- 4️⃣ UPDATE (Atualizar dados)
-- Atualize a idade do aluno Carlos para 21 anos.
update alunos
set idade = 21
where nome = 'Carlos';
select * from alunos;
-- Atualize o curso da Mariana para Sistemas de Informação.
update alunos 
set curso = 'Sistemas de Informação'
where nome = 'Mariana';
select * from alunos;
-- Atualize todos os alunos do curso Informática para Desenvolvimento de Sistemas.
update alunos 
set curso = 'Desenvolvimento de Sistemas'
where curso = 'Informática';
select * from alunos;

-- 5️⃣ DELETE (Excluir dados)
SET SQL_SAFE_UPDATES =0;
-- Delete o aluno chamado Carlos.
delete from alunos 
where nome = 'Carlos';
select * from alunos;
-- Delete os alunos com idade menor que 18.
delete from alunos
where idade < 18;
select * from alunos;
-- Delete todos os alunos da tabela.
delete from alunos;
select * from alunos;
