-- 1) CRIAÇÃO DO BANCO E DA TABELA

CREATE DATABASE treino_mysql;
USE treino_mysql;

CREATE TABLE alunos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    idade INT,
    curso VARCHAR(50),
    nota DECIMAL(4,1),
    cidade VARCHAR(50)
);

-- ===============================
-- 2) INSERÇÃO DOS DADOS
-- ===============================
INSERT INTO alunos (nome, idade, curso, nota, cidade) VALUES
('Ana', 17, 'Administração', 8.5, 'São Paulo'),
('Bruno', 18, 'Informática', 6.0, 'Campinas'),
('Carlos', 19, 'Administração', 7.5, 'São Paulo'),
('Daniela', 20, 'Informática', 9.0, 'Santos'),
('Eduardo', 21, 'Administração', 5.5, 'Campinas'),
('Fernanda', 18, 'Informática', 8.0, 'São Paulo'),
('Gustavo', 22, 'Administração', 6.5, 'Sorocaba'),
('Helena', 19, 'Informática', 9.5, 'Campinas'),
('Igor', 20, 'Administração', 7.0, 'São Paulo'),
('Juliana', 17, 'Informática', 8.8, 'Santos');

-- ==================================================
-- 3) EXERCÍCIOS (ALUNO) – NÃO EXECUTAR
-- ==================================================

-- 1) Selecione todos os alunos com idade igual a 18

select * from alunos
where idade = 18;

-- 2) Selecione os alunos com nota maior que 8

select * from alunos
where nota > 8;

-- 3) Liste os alunos com nota menor que 7

select * from alunos
where nota < 7;

-- 4) Mostre os alunos do curso Administração

select * from alunos
where curso = 'Administração';

-- 5) Liste os alunos da cidade de São Paulo

select * from alunos
where cidade = 'São Paulo';

-- 6) Selecione alunos com idade maior que 20

select * from alunos
where idade > 20;

-- 7) Liste alunos com idade menor ou igual a 18

select * from alunos
where idade <= 18;

-- 8) Mostre alunos com nota maior ou igual a 7

select * from alunos
where nota >= 7;

-- 9) Liste alunos com nota diferente de 6

select * from alunos
where nota != 6;
-- where nota <> 6;

-- 10) Selecione alunos com idade maior que 18 e menor que 22

select * from alunos
where idade > 18 and idade < 22;

-- 11) Liste alunos com nota entre 7 e 9

select * from alunos
where nota between 7 and 9;

-- 12) Selecione alunos com idade entre 18 e 20

select * from alunos
where idade between 18 and 20;

-- 13) Mostre alunos que NÃO são do curso Informática

select * from alunos
where curso != 'Informática';

-- 14) Liste alunos de Campinas com nota maior que 8

select * from alunos
where cidade = 'Campinas' and nota > 8;

-- 15) Selecione alunos do curso Administração com nota menor que 7

select * from alunos
where curso = 'Administração' and nota < 7;

-- 16) Selecione os alunos que têm 19 anos

select * from alunos
where idade = 19;

-- 17) Liste os alunos com nota maior que 8.5

select * from alunos
where nota > 8.5;

-- 18) Mostre os alunos que moram na cidade de Santos

select * from alunos
where cidade = 'Santos';

-- 19) Selecione os alunos com idade diferente de 20

select * from alunos
where idade != 20;

-- 20) Liste os alunos do curso Informática com nota maior ou igual a 8

select * from alunos
where curso = 'Informática' and nota >= 8;

-- 21) Selecione alunos com idade menor que 18 ou maior que 21

select * from alunos
where idade < 18 or idade > 21;

-- 22) Mostre alunos com nota menor que 6 ou maior que 9

select * from alunos
where nota < 6 or nota > 9;

-- 23) Liste alunos que não moram em São Paulo

select * from alunos
where cidade != 'São Paulo';

-- 24) Selecione alunos do curso Administração com idade maior ou igual a 19

select * from alunos
where curso = 'Administração' and idade >= 19;

-- 25) Mostre alunos com idade entre 17 e 19 que moram em Campinas

select * from alunos
where idade between 17 and 19 and cidade = 'Campinas';