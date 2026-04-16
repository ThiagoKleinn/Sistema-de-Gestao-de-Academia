-- PLANOS
INSERT INTO planos (nomeplano, valorplano, duracao)
VALUES
('Plano mensal', 90.00, 1),
('Plano trimestral', 250.00, 3),
('Plano semestral', 460.00, 6),
('Plano anual', 920.00, 12);

-- FUNCIONARIOS
INSERT INTO funcionarios (cpf, nomefuncionario, salario, cargo)
VALUES
('63254825319', 'Thiago Klein', 10000.00, 'Personal Trainer'),
('99251125362', 'Pedro Cheim', 7500.00, 'Personal Trainer'),
('43654425332', 'Guilherme Muniz', 5000.00, 'Gerente'),
('12356325323', 'Lucas Xavier', 2000.00, 'Recepcionista');

-- ALUNOS
INSERT INTO alunos (cpf, nomecliente)
VALUES
('17654716052', 'Silas Hildebrandt'),
('26662255009', 'Alexandre Costa'),
('78820052075', 'Pedro Brandt'),
('01063677068', 'Arthur Moreira'),
('55910432087', 'Davi Lopes'),
('48433296060', 'Alexis Costa');

-- MATRICULAS
INSERT INTO matriculas (idaluno, idplano, idpersonal, datainicio)
VALUES
(1, 4, 1, '2026-04-01'),
(2, 1, 1, '2026-04-02'),
(3, 2, 2, '2026-04-03'),
(4, 3, 1, '2026-04-04'),
(5, 4, 2, '2026-04-05'),
(6, 4, NULL, '2026-04-06'); -- aluno sem personal

-- PAGAMENTOS
INSERT INTO pagamento (idmatricula, valor, datapagamento, formadepagamento, funcionariopago)
VALUES
(1, 920.00, '2026-04-03', 'Cartão de crédito', 4),
(2, 90.00, '2026-04-04', 'Cartão de crédito', 4),
(3, 250.00, '2026-04-05', 'Pix', 4),
(4, 460.00, '2026-04-06', 'Dinheiro', 4),
(5, 920.00, '2026-04-07', 'Pix', 4),
(6, 920.00, '2026-04-08', 'Pix', 4);