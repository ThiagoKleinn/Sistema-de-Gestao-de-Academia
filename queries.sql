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

SELECT formadepagamento, COUNT(*) AS quantidade
FROM pagamento
GROUP BY formadepagamento;

CREATE VIEW vw_faturamento_academia AS
SELECT SUM(valor) AS faturamento_total
FROM pagamento;

CREATE VIEW vw_faturamento_academia AS
SELECT SUM(valor) AS faturamento_total
FROM pagamento;

CREATE VIEW vw_alunos_plano_anual AS
SELECT a.nomecliente
FROM matriculas m
JOIN alunos a ON m.idaluno = a.idaluno
JOIN planos p ON m.idplano = p.idplano
WHERE p.duracao = 12;

SELECT p.nomeplano, SUM(valor) AS faturamento_total
FROM pagamento pg
JOIN matriculas m ON pg.idmatricula = m.idmatricula
JOIN planos p ON m.idplano = p.idplano
GROUP BY p.nomeplano;

CREATE VIEW vw_relatorio AS
SELECT a.nomecliente, p.nomeplano, TO_CHAR(datainicio, 'YYYY-MM-DD') AS datainicio, TO_CHAR(datafim, 'YYYY-MM-DD') AS datafim
FROM alunos a
JOIN matriculas m ON a.idaluno = m.idaluno
JOIN planos p ON m.idplano = p.idplano;

SELECT a.nomecliente AS alunos_sem_personal
FROM matriculas m
JOIN alunos a ON M.idaluno = a.idaluno
LEFT JOIN funcionarios f ON m.idpersonal = f.idfuncionario
WHERE m.idpersonal IS NULL
