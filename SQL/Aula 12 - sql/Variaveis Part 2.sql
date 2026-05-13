-- 1. Verifique se um salário é classificado como
-- "Alto", "Médio" ou "Baixo", de acordo com seu valor.
set @salario = 2000;
select if  (@salario >= 10000, 'Alto', if (@salario >= 4000, 'Médio', 'Baixo'));

-- 2. Verifique se uma pessoa é maior ou menor de idade com base na idade informada.
set @idade = 25;
select @idade, if (@idade > 18, 'Maior de idade', 'Menor de idade');

-- 3. Verifique se o preço de um produto é considerado caro ou barato.
set @preco = 30;
select if (@preco > 100, 'Caro', 'Barato');

-- 4. Classifique um número como positivo, negativo ou zero.
set @numero = -10;
select if (@numero > 0, 'Positivo', if (@numero < 0, 'Negativo', 'Zero'));

-- 5. Calcule o salário com bônus, aplicando uma porcentagem diferente dependendo do valor do salário.
set @salario = 7000;
select if (@salario >= 10000, @salario * 1.10, if (@salario >= 4000, @salario * 1.20, @salario * 1.30)) as Bônus; 

-- 6. Verifique se um cliente pode realizar uma compra com base na idade e no saldo disponível.
set @idade = 18;
set @saldo = 110;
set @preco = 70;
select if (@idade >= 13 and @saldo >= @preco, 'Pode Comprar', 'Não Pode Comprar');

-- 7. Verifique se um produto está em promoção com base no preço.
set @preco = 15000;
set @produto = 10000;
select if (@produto < @preco, 'Com Promoção', 'Sem Promoção');

-- 8. Classifique uma nota em categorias (A, B, C ou D) de acordo com seu valor.
set @nota = 8;
select if (@nota >= 9, 'A', if (@nota >= 7, 'B', if (@nota >= 5, 'C', 'D')));

-- 9. Verifique se um número é múltiplo de 5.
set @numero = 29;
select if (@numero % 5 = 0, 'É múltiplo de 5', 'Não é múltiplo de 5');

-- 10. Compare dois valores e identifique qual é o maior.
set @a = 10;
set @b = 30;
select if (@a > @b, ' a Maior', ' b Maior');