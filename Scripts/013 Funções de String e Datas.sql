SELECT LTRIM('           W/E') AS R;

SELECT RTRIM('W/E              ') AS R;

select TRIM('     OLÁ      ') AS T;

SELECT CONCAT('Olá', ' ', 'tudo bem','?') AS RESULT;

SELECT UPPER('olá, tudo bem?') AS R;

SELECT SUBSTRING('OLÁ, TUDO BEM?', 6,4) AS R;

SELECT NOME, CONCAT(ENDERECO_1,' ', ENDERECO_2,' ', BAIRRO,' ', CIDADE,' ', ESTADO) as RESULTADO FROM tabela_de_clientes;

SELECT DAY(CURRENT_TIMESTAMP());

SELECT MONTHNAME(CURRENT_TIMESTAMP());

SELECT DATEDIFF(CURRENT_TIMESTAMP(), '2022-02-27') as RESULTADO;

SELECT DATEDIFF(CURRENT_TIMESTAMP(), '1994-10-08') as RESULTADO;

SELECT CURRENT_TIMESTAMP() AS DIA_HOJE,
DATE_SUB(current_timestamp(), INTERVAL 5 DAY) AS RESULT;

SELECT DISTINCT DATA_VENDA FROM notas_fiscais;

SELECT DISTINCT DATA_VENDA,
DAYNAME(DATA_VENDA) AS DIA, MONTHNAME(DATA_VENDA) AS MES, YEAR(DATA_VENDA) AS ANO FROM notas_fiscais;

SELECT DAYNAME(A.DATA_VENDA) AS DIA_SEMANA, SUM(B.PRECO * B.QUANTIDADE) AS SOMA FROM notas_fiscais A
INNER JOIN itens_notas_fiscais B ON A.NUMERO = B.NUMERO GROUP BY DIA_SEMANA ORDER BY DIA_SEMANA DESC;


SELECT NOME, TIMESTAMPDIFF (YEAR, DATA_DE_NASCIMENTO, CURDATE()) AS IDADE FROM tabela_de_clientes;

SELECT TIMESTAMPDIFF (YEAR, '1994-10-08', CURDATE()) AS AGE;

select nome, 
year(current_date()) - year(data_de_nascimento) as Idade, 
(extract(month from (data_de_nascimento))) - (extract(month from (current_date()))) as Meses_para_aniversario ,
case
    when ((extract(month from (data_de_nascimento))) - (extract(month from (current_date())))) <= 0 then 'So ano que vem'
    else 'envie promoção'
end as 'promo'
from tabela_de_clientes;


SELECT IDADE AS IDADE_CADASTRO, NOME, TIMESTAMPDIFF (YEAR, DATA_DE_NASCIMENTO, CURDATE()) AS    IDADE_ATUALIZADA
FROM  tabela_de_clientes;

SELECT WEEK('2022-12-10');