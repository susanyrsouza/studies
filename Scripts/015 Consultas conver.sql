SELECT CURRENT_TIMESTAMP() AS RESULT;

SELECT CONCAT('O dia de hoje é: ', CURRENT_TIMESTAMP()) AS RESULT;

SELECT CONCAT('O dia de hoje é: ',
DATE_FORMAT(CURRENT_TIMESTAMP(),'%d/%c/%Y, %W.')) AS RESULT;

SELECT CONCAT('O cliente', A.NOME, 'faturou',
(SELECT round(SUM(B.QUANTIDADE * B.PRECO),2) FROM tabela_de_clientes A, itens_notas_fiscais B, notas_fiscais C), 'no ano de 2016.')
WHERE YEAR(C.DATA_VENDA) = 2016
GROUP BY A.NOME;


SELECT CONCAT(
'O cliente', tc.NOME, 'faturou', ROUND(SUM(inf.QUANTIDADE * inf.PRECO),2), 'no ano de', YEAR(nf.DATA_VENDA)) AS FRASE
FROM notas_fiscais NF
INNER JOIN tabela_de_clientes TC ON nf.CPF = tc.CPF
INNER JOIN itens_notas_fiscais INF ON nf.NUMERO = inf.NUMERO
where year(nf.DATA_VENDA) = 2016
GROUP BY nf.CPF, YEAR(nf.DATA_VENDA)
ORDER BY NF.CPF;

