Exercícios SQL - Tabela PEDIDOS
1. Listar os livros com preço entre R$ 50 e R$ 80.
-- Utilize BETWEEN
select 
2. Mostrar todos os pedidos realizados na cidade de São Paulo.
-- Utilize WHERE

3. Exibir os livros do gênero Fantasia com preço superior a R$ 60.
-- Utilize WHERE e AND

4. Mostrar os pedidos realizados entre os dias 05/03/2026 e 12/03/2026.
-- Utilize BETWEEN para datas

5. Listar os clientes que compraram mais de 2 livros em um único pedido.
-- Utilize WHERE

6. Exibir a quantidade total de livros vendidos por cliente.
-- Utilize GROUP BY e SUM

7. Mostrar apenas os clientes que compraram mais de 5 livros no total.
-- Utilize GROUP BY e HAVING

8. Calcular a média de preço dos livros por gênero.
-- Utilize GROUP BY e AVG

9. Mostrar apenas os gêneros cuja média de preço seja maior que R$ 60.
-- Utilize GROUP BY e HAVING

10. Exibir o faturamento total por cidade.
-- Utilize SUM(QUANTIDADE * PRECO)

11. Mostrar apenas as cidades cujo faturamento ultrapasse R$ 500.
-- Utilize GROUP BY e HAVING

12. Contar quantos pedidos foram realizados por gênero.
-- Utilize COUNT e GROUP BY

13. Mostrar apenas os gêneros com mais de 3 pedidos registrados.
-- Utilize HAVING

14. Exibir o maior preço de livro de cada gênero.
-- Utilize MAX e GROUP BY

15. Mostrar os clientes cujo gasto total esteja entre R$ 400 e R$ 600.
-- Utilize SUM, GROUP BY e HAVING com BETWEEN

Desafio Extra
16. Exibir:
 Cliente
 Quantidade total comprada
 Valor total gasto
Mostrando apenas clientes que:
 Compraram mais de 5 livros;
 Gastaram mais de R$ 450;
Ordene do maior gasto para o menor.