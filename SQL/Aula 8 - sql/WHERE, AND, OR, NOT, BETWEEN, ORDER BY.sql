
CREATE DATABASE escola;
USE escola;

CREATE TABLE alunos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    curso VARCHAR(50),
    nota DECIMAL(3,1),
    cidade VARCHAR(50)
);

INSERT INTO alunos (nome, idade, curso, nota, cidade) VALUES
('Carlos Silva', 20, 'Informática', 8.5, 'São Paulo'),
('Mariana Souza', 22, 'Administração', 7.2, 'Osasco'),
('João Pedro', 19, 'Logística', 6.8, 'Barueri'),
('Ana Clara', 21, 'Informática', 9.1, 'São Paulo'),
('Lucas Lima', 23, 'Administração', 5.9, 'Osasco'),
('Fernanda Alves', 18, 'Logística', 7.5, 'São Paulo'),
('Bruno Rocha', 25, 'Informática', 6.3, 'Barueri'),
('Juliana Martins', 20, 'Administração', 8.0, 'São Paulo'),
('Rafael Gomes', 17, 'Logística', 9.3, 'Osasco'),
('Patrícia Dias', 24, 'Informática', 4.8, 'Barueri'),
('Eduardo Nunes', 22, 'Administração', 7.9, 'São Paulo'),
('Camila Freitas', 19, 'Logística', 6.1, 'Osasco'),
('André Costa', 26, 'Informática', 8.7, 'São Paulo'),
('Beatriz Fernandes', 18, 'Administração', 9.0, 'Barueri'),
('Gustavo Ribeiro', 21, 'Logística', 5.5, 'Osasco');

-- ==============================
-- EXERCÍCIOS SQL (30)
-- ==============================

-- Criar tabela e fazer inserts na mesma (15 linhas)

-- ==============================
-- 🔹 BÁSICOS COM WHERE
-- ==============================

-- 1. Selecione todos os alunos.
select * from alunos;

-- 2. Mostre apenas os alunos do curso de Informática.
select * from alunos
where curso = 'Informática';

-- 3. Liste os alunos com idade maior que 20.
select * from alunos
where idade > 20;

-- 4. Mostre alunos com nota maior que 7.
select * from alunos
where nota > 7;

-- 5. Liste alunos da cidade de São Paulo.
select * from alunos
where cidade = 'São Paulo';

-- ==============================
-- 🔹 WHERE COM AND
-- ==============================

-- 6. Alunos do curso Administração com nota maior que 7.
select * from alunos
where curso = 'Administração' and nota > 7;

-- 7. Alunos com idade maior que 18 e da cidade de Osasco.
select * from alunos
where idade > 18 and cidade = 'Osasco';

-- 8. Alunos de Informática com nota menor que 7.
select * from alunos
where curso = 'Informática' and nota < 7;

-- 9. Alunos com idade maior que 20 e nota maior que 8.
select * from alunos
where idade > 20 and nota > 8;

-- 10. Alunos de Logística com idade menor que 22.
select * from alunos
where curso = 'Logística' and idade < 22;

-- ==============================
-- 🔹 WHERE COM OR
-- ==============================

-- 11. Alunos do curso Administração ou Informática.
SELECT * FROM alunos
where curso = 'Administração' or curso = 'Informática';


-- 12. Alunos com nota menor que 6 ou idade maior que 22.
SELECT * FROM alunos
where nota < 6 or idade > 22;

-- 13. Alunos de São Paulo ou Barueri.
SELECT * FROM alunos
where cidade = 'São Paulo' or cidade = 'Barueri';

-- 14. Alunos com idade menor que 18 ou nota maior que 9.
SELECT * FROM alunos
where idade < 18 or nota > 9;

-- 15. Alunos de Logística ou com nota acima de 8.
SELECT * FROM alunos
where curso = 'Logística' or nota > 8 ;

-- ==============================
-- 🔹 WHERE COM NOT
-- ==============================

-- 16. Alunos que não são de Informática.
SELECT * FROM alunos
where not curso = 'Informática';

-- 17. Alunos que não são de São Paulo.
SELECT * FROM alunos
where not cidade = 'São Paulo';

-- 18. Alunos que não têm nota maior que 7.
SELECT * FROM alunos
where not nota > 7; 

-- 19. Alunos que não estão em Administração.
SELECT * FROM alunos
where not curso = 'Administração';

-- 20. Alunos que não têm idade menor que 20.
SELECT * FROM alunos
where not idade < 20;

-- ==============================
-- 🔹 BETWEEN
-- ==============================

-- 21. Alunos com idade entre 18 e 21.
SELECT * FROM alunos
where idade between 18 and 21;

-- 22. Alunos com nota entre 7 e 9.
SELECT * FROM alunos
where nota between 7 and 9;

-- 23. Alunos com idade entre 20 e 23.
SELECT * FROM alunos
where idade between 20 and 23;

-- 24. Alunos com nota entre 5 e 8.
SELECT * FROM alunos
where nota between 5 and 8;

-- 25. Alunos com idade entre 17 e 19 e curso Informática.
SELECT * FROM alunos
where idade between 17 and 19 and curso = 'Informática';

-- ==============================
-- 🔹 ORDER BY
-- ==============================

-- 26. Liste todos os alunos ordenados por nome (A-Z).
SELECT * FROM alunos
order by nome;

-- 27. Liste alunos ordenados por idade (decrescente).
SELECT * FROM alunos
order by idade desc;

-- 28. Liste alunos ordenados por nota (maior para menor).
SELECT * FROM alunos
order by nota desc;

-- 29. Liste alunos de Administração ordenados por nota.
SELECT * FROM alunos
where curso = 'Administração' order by nota;

-- 30. Liste alunos de São Paulo ordenados por idade crescente.
SELECT * FROM alunos
where cidade = 'São Paulo' order by idade asc;
