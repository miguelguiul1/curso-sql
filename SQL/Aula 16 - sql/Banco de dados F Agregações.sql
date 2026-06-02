create database loja;
use loja;

CREATE TABLE vendas (
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    produto VARCHAR(100),
    categoria VARCHAR(100),
    vendedor VARCHAR(100),
    quantidade INT,
    valor DECIMAL(10,2),
    data_venda DATE
);
INSERT INTO vendas 
(produto, categoria, vendedor, quantidade, valor, data_venda)
VALUES
('Notebook Dell', 'Informática', 'Carlos', 2, 4500.00, '2026-05-01'),
('Mouse Gamer', 'Informática', 'Ana', 5, 250.00, '2026-05-02'),
('Teclado Mecânico', 'Informática', 'Carlos', 3, 350.00, '2026-05-03'),
('Cadeira Office', 'Móveis', 'Fernanda', 1, 1200.00, '2026-05-04'),
('Celular Samsung', 'Eletrônicos', 'Lucas', 2, 3200.00, '2026-05-05'),
('Monitor LG', 'Informática', 'Ana', 4, 900.00, '2026-05-06'),
('Impressora HP', 'Informática', 'Carlos', 2, 800.00, '2026-05-07'),
('Mesa Escritório', 'Móveis', 'Fernanda', 1, 950.00, '2026-05-08'),
('Headset Gamer', 'Informática', 'Lucas', 6, 400.00, '2026-05-09'),
('Smart TV', 'Eletrônicos', 'Ana', 1, 3800.00, '2026-05-10');

-- 1. Soma total dos valores vendidos
select sum(valor) 
as toal_vendas 
from vendas;
 
-- 2. Média de valor dos produtos
select avg(valor) 
as média  
from vendas;

-- 3. Maior valor de venda
select max(valor) 
as maior_valor 
from vendas;

-- 4. Menor valor de venda
select min(valor) 
as menor_valor 
from vendas;

-- 5. Quantidade de registros
select count(*) 
as total_registros 
from vendas;

-- 6. Quantidade total de produtos vendidos
select sum(quantidade) 
as produtos_vendidos 
from vendas;

-- 7. Média de quantidade vendida
select avg(quantidade) 
as média_quantidade 
from vendas;

-- 8. Total vendido por vendedor
select vendedor, sum(valor) 
as total_vendido 
from vendas 
group by vendedor;

-- 9. Quantidade de vendas por vendedor
select vendedor, count(*)
as total_quantidade 
from vendas 
group by vendedor;

-- 10. Maior valor vendido por vendedor
select vendedor, max(valor) 
as maior_valor 
from vendas 
group by vendedor;

-- 11. Menor valor por categoria
select categoria, min(valor) 
as menor_valor 
from vendas 
group by categoria;

-- 12. Média de preços por categoria
select categoria, round (avg(valor), 2) 
as médias_preço 
from vendas 
group by categoria;

-- 13. Total de produtos vendidos por categoria
select categoria, sum(quantidade) 
as total_vendidos 
from vendas 
group by categoria;

-- 14. Quantidade de produtos diferentes *****
select count( distinct produto) 
as quantidade_produtos_diferentes 
from vendas;

-- 15. Total arrecadado em Informática
select sum(valor)
from vendas
where categoria = "Informática";

-- 16. Total vendido maior que 3000
select sum(valor)
from vendas
where valor > 3000;

-- 17. Média de vendas por vendedor
select vendedor, round (avg(valor), 1) 
as média_vendas_vendedor 
from vendas 
group by vendedor;

-- 18. Soma das quantidades por vendedor
select vendedor, sum(quantidade) 
as quantidade_por_vendedor 
from vendas 
group by vendedor;

-- 19. Categoria com maior total de vendas ****
select categoria, sum(valor)
as maior_número_de_vendas
from vendas
group by categoria 
order by maior_número_de_vendas desc
limit 1;

-- 20. Vendedor com maior número de vendas ****
select vendedor,count(quantidade) 
as maior_número_de_vendas 
from vendas 
group by vendedor 
order by maior_número_de_vendas desc 
limit 1; 