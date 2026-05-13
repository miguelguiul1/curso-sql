create database loja; 
use loja;

create table produtos (
    id int primary key auto_increment,
    nome varchar(100),
    categoria varchar(50),
    marca varchar(50),
    preco decimal(10,2),
    estoque int
);

insert into produtos (nome, categoria, marca, preco, estoque) values
('Monitor LG UltraWide', 'Eletrônicos', 'LG', 1200.00, 5),
('Mouse Gamer Pro', 'Games', 'Redragon', 150.00, 12),
('Notebook Dell Inspiron', 'Informática', 'Dell', 3500.00, 4),
('Teclado Mecânico', 'Informática', 'Logitech', 450.00, 8),
('Smartphone Samsung Galaxy', 'Eletrônicos', 'Samsung', 2500.00, 3),
('TV Samsung 50 Polegadas', 'Eletrônicos', 'Samsung', 3200.00, 2),
('Geladeira LG Frost Free', 'Eletrônicos', 'LG', 4100.00, 1),
('Mouse Pad Gamer', 'Games', 'Razer', 80.00, 25),
('Notebook Gamer Pro', 'Informática', 'Dell', 5200.00, 6),
('Mesa Digitalizadora', 'Informática', 'Wacom', 900.00, 0),
('Microfone Pro', 'Games', 'HyperX', 650.00, 7),
('Monitor Samsung Pro', 'Eletrônicos', 'Samsung', 1800.00, 9),
('Notebook Lenovo IdeaPad', 'Informática', 'Lenovo', 2900.00, 10),
('Memória RAM 16GB', 'Informática', 'Kingston', 320.00, 15),
('Mouse Logitech M90', 'Informática', 'Logitech', 60.00, 2),
('Headset Gamer', 'Games', 'HyperX', 400.00, 0),
('Monitor Gamer Pro', 'Games', 'AOC', 1400.00, 4),
('Mini Caixa de Som', 'Eletrônicos', 'JBL', 200.00, 20),
('MacBook Pro', 'Informática', 'Apple', 9500.00, 3),
('Mesa Gamer', 'Games', 'XT Racer', 850.00, 11);

-- 1. Liste todos os produtos.
Select * from produtos;
-- 2. Mostre apenas o nome e o preço dos produtos.
select nome,preco from produtos;
-- 3. Liste os produtos com preço maior que 100.
select * from produtos
where preco > 100;
-- 4. Mostre os produtos com estoque menor que 10.
select * from produtos
where estoque < 19;
-- 5. Liste os produtos da categoria "Eletrônicos".
select * from produtos
where categoria = "Eletrônicos";
-- 6. Mostre os produtos da marca Samsung.
select * from produtos
where marca = 'Samsung';
-- 7. Liste os produtos com preço entre 50 e 500.
select * from produtos
where preco between 50 and 500;
-- 8. Mostre os produtos cujo estoque seja igual a 0 ou menor que 5.
select * from produtos
where estoque < 5;
-- 9. Liste os produtos da categoria "Informática" e da marca Dell.
select * from produtos
where categoria = 'Informática' and marca = 'Dell';
-- 10. Mostre os produtos que pertencem às categorias:
-- Eletrônicos
-- Informática
-- Games
select * from produtos
where categoria = 'Informática' or categoria = 'Eletrônicos' or categoria = 'Games';
-- 11. Liste os produtos cujo nome começa com a letra "M".
select * from produtos
where nome like 'M%';
-- 12. Mostre os produtos cujo nome termina com "Pro".
select * from produtos
where nome like '%Pro';
-- 13. Liste os produtos que possuem a palavra "Note" no nome.
select * from produtos
where nome like '%Note%';
-- 14. Mostre os produtos com preço maior que 1000 e estoque maior que 3.
select * from produtos
where preco > 1000 and estoque > 3;
-- 15. Liste os produtos da marca LG ou Samsung.
select * from produtos 
where marca = 'LG' or marca = 'Samsung';