SELECT * 
FROM planos pl;  -- TESTE DE INSERÇÕES
SELECT * 
FROM funcionarios f; -- TESTE DE INSERÇÕES
SELECT * 
FROM alunos a; -- TESTE DE INSERÇÕES
SELECT * 
FROM pagamento p; -- TESTE DE INSERÇÕES

SELECT a.nomecliente, pl.valorplano, pl.duracao
FROM alunos a JOIN planos pl
ON a.idplano = pl.idplano;

SELECT a.nomecliente, f.nomefuncionario 
FROM alunos a JOIN funcionarios f
ON a.idpersonal = f.idfuncionario;

SELECT a.nomecliente, f.nomefuncionario AS nomepersonal
FROM alunos a FULL JOIN funcionarios f
ON a.idpersonal = f.idfuncionario;

SELECT SUM (preco) AS faturamento
FROM pagamento p;

SELECT a.nomecliente, p.datapagamento, p.preco, p.formadepagamento
FROM pagamento p JOIN alunos a
ON p.cpfcliente = a.cpfcliente

SELECT f.nomefuncionario, COUNT(a.cpfcliente) AS quantidade_alunos
FROM funcionarios f JOIN alunos a
ON f.idfuncionario = a.idpersonal
GROUP BY f.nomefuncionario
ORDER BY quantidade_alunos DESC;

SELECT  pl.nomeplano, COUNT (a.cpfcliente) AS quantidade_alunos
FROM alunos a JOIN planos pl
ON a.idplano = pl.idplano
GROUP BY pl.nomeplano;

SELECT a.nomecliente, f.nomefuncionario, p.preco, p.datapagamento
FROM pagamento p
JOIN alunos a
ON p.cpfcliente = a.cpfcliente
JOIN funcionarios f
ON p.funcionariopago = f.idfuncionario;

SELECT formadepagamento, COUNT(*) 
FROM pagamento
GROUP BY formadepagamento;

SELECT a.nomecliente AS clientes_com_plano_anual
FROM alunos a JOIN planos pl
ON a.idplano = pl.idplano
WHERE duracao = 12;