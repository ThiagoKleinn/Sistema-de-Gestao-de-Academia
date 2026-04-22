SELECT a.nomecliente, p.nomeplano, p.valorplano
FROM matriculas m
JOIN alunos a ON m.idaluno = a.idaluno
JOIN planos p ON m.idplano = p.idplano;

SELECT a.nomecliente, f.nomefuncionario AS personal_trainer
FROM matriculas m
JOIN alunos a ON m.idaluno = a.idaluno
LEFT JOIN funcionarios f ON m.idpersonal = f.idfuncionario;

SELECT SUM(valor) AS faturamento_total
FROM pagamento;

SELECT a.nomecliente, pg.datapagamento, pg.valor, pg.formadepagamento
FROM pagamento pg
JOIN matriculas m ON pg.idmatricula = m.idmatricula
JOIN alunos a ON m.idaluno = a.idaluno;

SELECT f.nomefuncionario, COUNT(m.idaluno) AS quantidade_alunos
FROM funcionarios f
JOIN matriculas m ON f.idfuncionario = m.idpersonal
GROUP BY f.nomefuncionario
ORDER BY quantidade_alunos DESC;

SELECT p.nomeplano, COUNT(m.idaluno) AS quantidade_alunos
FROM planos p
JOIN matriculas m ON p.idplano = m.idplano
GROUP BY p.nomeplano;

SELECT pg.formadepagamento, COUNT(*) AS quantidade
FROM pagamento pg
GROUP BY pg.formadepagamento;
