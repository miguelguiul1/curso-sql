CREATE DATABASE Loja;
USE loja;

CREATE TABLE vendas (
    id INT PRIMARY KEY,
    produto VARCHAR(50),
    categoria VARCHAR(50),
    preco DECIMAL(10,2),
    quantidade INT,
    data_venda DATE
);

INSERT INTO vendas (id, produto, categoria, preco, quantidade, data_venda) VALUES
(1, 'Camiseta', 'Roupas', 49.90, 3, '2024-01-10'),
(2, 'Calça', 'Roupas', 120.00, 2, '2024-01-15'),
(3, 'Tênis', 'Calçados', 250.00, 1, '2024-01-20'),
(4, 'Boné', 'Acessórios', 35.00, 5, '2024-02-05'),
(5, 'Jaqueta', 'Roupas', 200.00, 1, '2024-02-10'),
(6, 'Meia', 'Roupas', 15.00, 10, '2024-02-18'),
(7, 'Tênis', 'Calçados', 260.00, 2, '2024-03-01'),
(8, 'Camiseta', 'Roupas', 55.00, 4, '2024-03-10'),
(9, 'Boné', 'Acessórios', 40.00, 3, '2024-03-15'),
(10, 'Calça', 'Roupas', 130.00, 1, '2024-03-20'),
(11, 'Meia', 'Roupas', 18.00, 8, '2024-04-02'),
(12, 'Jaqueta', 'Roupas', 210.00, 2, '2024-04-08'),
(13, 'Tênis', 'Calçados', 270.00, 1, '2024-04-12'),
(14, 'Boné', 'Acessórios', 38.00, 6, '2024-04-18'),
(15, 'Camiseta', 'Roupas', 60.00, 5, '2024-04-22');

-- 1. Me mostre todos os produtos com a inicial M
select produto from vendas
where produto like 'M%';
-- 2. Me mostre as 5 primeiras categorias

-- 3. Me mostre os 5 primeiros produtos

-- 4. Qual o produto mais caro?
select produto, preco from vendas
where preco = (select max(preco) from vendas);

-- 5. Qual o produto mais barato?
select produto, preco from vendas
where preco = (select min(preco) from vendas);

-- 6. Me mostre toda a tabela 
select * from vendas;

-- 7. Me mostre todas as categorias
select categoria from vendas;

-- 8. Me mostre todas os preços
select preco from vendas;

-- 9. Me mostre todas as datas 
select data_venda from vendas;

-- 10. Me mostre o nome a quantidade de todos os produtos
select produto, quantidade from vendas;

-- 11. Me mostre os produtos menor que 100
select produto, preco from vendas
where preco < 100;

-- 12. Me mostre os produtos maior que 100
select produto, preco from vendas
where preco > 100;

-- 13. Produtos com letra C inicial
select produto from vendas
where produto like 'C%';

-- 14. Me mostre do id 1 ao 10
select * from vendas
where id between 1 and 10;

-- 15. Me mostre do mais barato ao mais caro
select * from vendas
order by preco asc;

-- 16. Me mostre do mais caro ao mais barato
select * from vendas
order by preco desc;

-- 17. Me mostre os produtos entre 20 a 200 reais
select produto, preco from vendas
where preco between 20 and 200;

-- 18. Me mostre os produtos que foram criados em maio
select * from vendas
where month(data_venda) = 5;

-- 19. Qual o produto id 7?
select * from vendas
where id = 7;

-- 20. Produtos que foram vendidos antes de maio
select * from vendas
where month(data_venda) < 5;
