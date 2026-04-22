CREATE VIEW vw_alunos_plano_anual AS
SELECT a.nomecliente
FROM matriculas m
JOIN alunos a ON m.idaluno = a.idaluno
JOIN planos p ON m.idplano = p.idplano
WHERE p.duracao = 12;

SELECT * FROM vw_alunos_plano_anual;

CREATE VIEW vw_faturamento_por_plano AS
SELECT COALESCE(SUM(valor),0) AS faturamento_total, p.nomeplano
FROM pagamento pg
JOIN matriculas m ON pg.idmatricula = m.idmatricula
JOIN planos p ON m.idplano = p.idplano
GROUP BY p.nomeplano;

SELECT * FROM vw_faturamento_por_plano;

CREATE VIEW vw_relatorio_matriculas AS
SELECT a.nomecliente, p.nomeplano, TO_CHAR(DATAINICIO, 'YYYY-MM-DD') AS DATAINICIO, TO_CHAR(DATAFIM, 'YYYY-MM-DD') AS DATAFIM
FROM alunos a
JOIN matriculas m ON a.idaluno = m.idaluno
JOIN planos p ON m.idplano = p.idplano;

SELECT * FROM vw_relatorio_matriculas;

CREATE VIEW vw_alunos_sem_personal AS
SELECT a.nomecliente AS alunos_sem_personal
FROM matriculas m
JOIN alunos a ON m.idaluno = a.idaluno
LEFT JOIN funcionarios f ON m.idpersonal = f.idfuncionario
WHERE m.idpersonal IS NULL;

SELECT * FROM vw_alunos_sem_personal;

CREATE VIEW vw_alunos_ativos AS
SELECT a.nomecliente, m.idmatricula
FROM matriculas m
JOIN alunos a ON m.idaluno = a.idaluno
WHERE m.datafim >= CURRENT_DATE OR m.datafim IS NULL;

SELECT * FROM vw_alunos_ativos;

CREATE VIEW vw_alunos_inativos AS
SELECT a.nomecliente, m.idmatricula
FROM matriculas m
JOIN alunos a ON m.idaluno = a.idaluno
WHERE m.datafim < CURRENT_DATE;

SELECT * FROM vw_alunos_inativos;
