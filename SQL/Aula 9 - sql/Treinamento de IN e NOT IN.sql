-- ==============================
-- 🏗️ CRIAÇÃO DAS TABELAS
-- ==============================
create database lojas;
use lojas;
drop table clientes;
CREATE TABLE clientes (
    id INT PRIMARY KEY,
    nome VARCHAR(100),
    idade INT,
    cidade VARCHAR(100)
);

CREATE TABLE pedidos (
    id INT PRIMARY KEY,
    cliente_id INT,
    produto VARCHAR(100),
    valor DECIMAL(10,2),
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

-- ==============================
-- 📥 INSERT CLIENTES
-- ==============================

INSERT INTO clientes (id, nome, idade, cidade) VALUES
(1, 'Ana Silva', 22, 'São Paulo'),
(2, 'Carlos Souza', 25, 'Curitiba'),
(3, 'Marcos Lima', 28, 'Rio de Janeiro'),
(4, 'Juliana Alves', 30, 'Belo Horizonte'),
(5, 'Fernanda Rocha', 35, 'São Paulo'),
(6, 'Roberto Dias', 40, 'Curitiba'),
(7, 'Patrícia Gomes', 28, 'Rio de Janeiro'),
(8, 'Eduardo Martins', 30, 'São Paulo'),
(9, 'Camila Fernandes', 25, 'Belo Horizonte'),
(10, 'Bruno Costa', 22, 'Curitiba'),
(11, 'Ana', 42, 'Curitiba'),
(12, 'Carlos', 32, 'Curitiba');
-- ==============================
-- 📥 INSERT PEDIDOS
-- ==============================

INSERT INTO pedidos (id, cliente_id, produto, valor) VALUES
(1, 1, 'Notebook', 3500.00),
(2, 1, 'Mouse', 80.00),
(3, 2, 'Teclado', 120.00),
(4, 2, 'Monitor', 900.00),
(5, 3, 'Mesa', 500.00),
(6, 3, 'Cadeira', 700.00),
(7, 4, 'Notebook', 4000.00),
(8, 4, 'Mouse', 80.00),
(9, 5, 'Monitor', 900.00),
(10, 5, 'Teclado', 120.00),
(11, 6, 'Mesa', 500.00),
(12, 6, 'Notebook', 3500.00),
(13, 7, 'Mouse', 80.00),
(14, 8, 'Cadeira', 700.00),
(15, 9, 'Notebook', 3500.00),
(16, 10, 'Monitor', 900.00);

-- ==============================
-- 🔥 EXERCÍCIOS (32)
-- ==============================

-- ==============================
-- NÍVEL 1 – BÁSICO (1–10)
-- ==============================

-- 1. Liste todos os clientes que moram em São Paulo ou Curitiba
SELECT * FROM clientes
where cidade = 'São Paulo' or cidade = 'Curitiba';
-- 2. Liste os clientes que têm idade 22 ou 25
SELECT * FROM clientes
where idade = 22 or idade = 25;
-- 3. Liste todos os pedidos dos produtos Notebook ou Mouse
SELECT * FROM pedidos
where produto = 'Notebook' or produto = 'Mouse';
-- 4. Liste os pedidos com valores 80 ou 120
SELECT * FROM pedidos
where valor = 80 or valor = 120;
-- 5. Liste apenas os nomes dos clientes Ana e Carlos
SELECT nome FROM clientes
where nome in ( 'Ana', 'Carlos');
-- 6. Liste clientes que moram em Rio de Janeiro ou Belo Horizonte
SELECT * FROM clientes
where cidade in ('Rio de Janeiro', 'Belo Horizonte');
-- 7. Liste todos os pedidos feitos pelos clientes 1 e 2
SELECT * FROM pedidos
where cliente_id in (1, 2);
-- 8. Liste os produtos que são Mesa ou Cadeira
SELECT produto FROM pedidos
where produto in ('Mesa', 'Cadeira');
-- 9. Liste clientes com idade 28, 30 ou 35
SELECT * FROM clientes
where idade in (28, 30, 35);
-- 10. Liste pedidos com valor 500 ou 700
SELECT * FROM pedidos
where valor in (500, 700);

-- ==============================
-- NÍVEL 2 – INTERMEDIÁRIO (11–20)
-- ==============================

-- 11. Liste clientes que NÃO moram em São Paulo ou Curitiba
SELECT * FROM clientes
where cidade not in ('São Paulo', 'Curitiba');
-- 12. Liste pedidos que NÃO são dos produtos Mouse ou Teclado
SELECT * FROM pedidos
where produto not in ('Mouse', 'Teclado');
-- 13. Liste clientes que NÃO se chamam Ana ou Marcos
SELECT * FROM clientes
where nome not in ('Ana', 'Marcos');
-- 14. Liste pedidos feitos pelos clientes 3, 4 e 5
SELECT * FROM pedidos
where cliente_id in (3, 4, 5);
-- 15. Liste clientes que NÃO têm idade 22 ou 25
SELECT * FROM clientes
where idade not in (22, 25);
-- 16. Liste os produtos e valores dos pedidos com valor 900 ou 3500
SELECT produto, valor FROM pedidos
where valor in (900, 3500);
-- 17. Liste nome e cidade dos clientes que moram em São Paulo ou Belo Horizonte
SELECT nome, cidade FROM clientes
where cidade in ('São Paulo', 'Belo Horizonte');
-- 18. Liste pedidos que NÃO foram feitos pelos clientes 1 e 2
SELECT * FROM pedidos
where cliente_id not in (1, 2);
-- 19. Liste clientes que têm idade 25, 28 ou 30 e moram em São Paulo ou Rio de Janeiro
SELECT * FROM clientes
where idade in (25, 28, 30) and cidade in ('São Paulo', 'Rio de Janeiro');
-- 20. Liste pedidos com valor 80, 120 ou 500 e produtos Mouse, Teclado ou Mesa
SELECT * FROM pedidos
where valor in (80, 120, 500) and produto in ('Mouse', 'Teclado', 'Mesa');
-- ==============================
-- NÍVEL 3 – AVANÇADO (21–30)
-- ==============================

-- 21. Liste clientes que moram em São Paulo ou Curitiba, mas não têm idade 22
SELECT * FROM clientes
where cidade in ('São Paulo', 'Curitiba') and idade not in (22);
-- 22. Liste pedidos feitos pelos clientes 1, 3 e 5, mas com valor diferente de 80
SELECT * FROM pedidos
where cliente_id in (1, 3, 5) and valor not in (80);
-- 23. Liste nomes dos clientes que são Ana, Juliana ou Fernanda e têm idade 25, 28 ou 35
SELECT nome FROM clientes
where nome in ('Ana', 'Juliana', 'Fernanda') and idade in (25, 28, 35);
-- 24. Liste pedidos dos produtos Notebook ou Monitor com valores 900, 3500 ou 4000
SELECT * FROM pedidos
where produto in ('Notebook', 'Monitor') and valor in (900, 3500, 4000);
-- 25. Liste clientes que não moram no Rio de Janeiro e têm idade 30, 35 ou 40
SELECT * FROM clientes
where cidade not in  ('Rio de Janeiro') and idade in (30, 35, 40);
-- 26. Liste pedidos que não são do produto Mesa e têm valor 500, 700 ou 900
SELECT * FROM pedidos
where produto not in ('Mesa') and valor in (500, 700, 900);
-- 27. Liste clientes chamados Roberto ou Carlos que moram em Curitiba ou Rio de Janeiro
SELECT * FROM clientes
where nome in ('Roberto', 'Carlos') and cidade in ('Curitiba', 'Rio de Janeiro');
-- 28. Liste pedidos feitos pelos clientes 2, 4 ou 6 e com produtos Mouse, Notebook ou Mesa
SELECT * FROM pedidos
where cliente_id in (2, 4, 6) and produto in ('Mouse', 'Notebook', 'Mesa');
-- 29. Liste clientes com idade 22, 25 ou 28, mas que não moram em Belo Horizonte
SELECT * FROM clientes
where idade in (22, 25, 28) and cidade not in ('Belo Horizonte');
-- 30. Liste pedidos com valor diferente de 120 feitos pelos clientes 1, 2, 3 ou 4
SELECT * FROM pedidos
where valor not in (120) and cliente_id in (1,2,3,4);

-- ==============================
-- 🧠 DESAFIO EXTRA (31–32)
-- ==============================

-- 31. Liste clientes que moram em São Paulo, Curitiba ou Rio de Janeiro e têm idade 25, 28 ou 30, mas não se chamam Ana
SELECT * FROM clientes
where cidade in ('São Paulo', 'Curitiba', 'Rio de Janeiro') and idade in (25, 28, 30) and nome not in ('Ana');
-- 32. Liste pedidos com produtos Notebook, Monitor ou Mesa, com valor 500, 900 ou 3500, mas que não sejam do cliente 1
SELECT * FROM pedidos
where produto in ('Notebook', 'Monitor', 'Mesa') and valor in (500, 900, 3500) and cliente_id not in (1);