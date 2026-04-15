CREATE TABLE planos(
idplano INTEGER,
valorplano NUMERIC(6,2) NOT NULL,
duracao INTEGER NOT NULL,
PRIMARY KEY (idplano)
);	

CREATE TABLE funcionarios(
cpffuncionario VARCHAR(11) NOT NULL,
idfuncionario VARCHAR(4) NOT NULL,
nomefuncionario VARCHAR(50) NOT NULL,
salario NUMERIC(10,2) NOT NULL,	
PRIMARY KEY (idfuncionario),	
UNIQUE (cpffuncionario)
);	
	
CREATE TABLE alunos(
cpfcliente VARCHAR(11) NOT NULL,
nomecliente VARCHAR(50) NOT NULL,
idpersonal VARCHAR(4),
idplano INTEGER NOT NULL,
matricula VARCHAR(4) UNIQUE NOT NULL,
PRIMARY KEY (cpfcliente),
FOREIGN KEY (idplano) REFERENCES planos (idplano),
FOREIGN KEY (idpersonal) REFERENCES funcionarios (idfuncionario)
);	
	
CREATE TABLE pagamento(
idpagamento VARCHAR(6) NOT NULL,
preco NUMERIC(6,2) NOT NULL,
datapagamento DATE NOT NULL, 
formadepagamento VARCHAR(25) NOT NULL,
funcionariopago VARCHAR(4) NOT NULL,
cpfcliente VARCHAR(11) NOT NULL,
PRIMARY KEY (idpagamento),
FOREIGN KEY (cpfcliente) REFERENCES alunos (cpfcliente),
FOREIGN KEY (funcionariopago) REFERENCES funcionarios(idfuncionario)
);

INSERT INTO planos (idplano, valorplano, duracao)
VALUES 
(1, 90.00, 1),  -- PLANO MENSAL	
(2, 250.00, 3), -- PLANO TRIMESTRAL
(3, 460.00, 6), -- PLANO SEMESTRAL
(4, 920.00, 12); -- PLANO ANUAL

INSERT INTO funcionarios (cpffuncionario, idfuncionario, nomefuncionario, salario)
VALUES 
('63254825319', '0001', 'Thiago Klein', 10000.00),
('99251125362', '0002', 'Pedro Cheim', 7500.00),
('43654425332', '0003', 'Guilherme Muniz', 5000.00),
('12356325323', '0004', 'Lucas Xavier', 2000.00);

INSERT INTO alunos(cpfcliente, nomecliente, idpersonal, idplano, matricula)
VALUES
('17654716052', 'Silas Hildebrandt', '0001', 4, '0001'),
('26662255009', 'Alexandre Costa', '0001', 1, '0002'),
('78820052075', 'Pedro Brandt', '0002', 2, '0003'),
('01063677068', 'Arthur Moreira', '0003', 3, '0004'),
('55910432087', 'Davi Lopes', '0004', 4, '0005'),
('48433296060', 'Alexis Costa', NULL, 4, '0006'); -- ALUNO NAO POSSUI PERSONAL

INSERT INTO pagamento(idpagamento, preco, datapagamento, formadepagamento, funcionariopago, cpfcliente)
VALUES
('000001', 920.00, '2026-04-03', 'Cartão de crédito', '0001', '17654716052'),
('000002', 90.00, '2026-04-04', 'Cartão de crédito', '0001', '26662255009'),
('000003', 250.00, '2026-04-05', 'Pix', '0001', '78820052075'),
('000004', 460.00, '2026-04-06', 'Dinheiro', '0001', '01063677068'),
('000005', 920.00, '2026-04-07', 'Pix', '0001', '55910432087'),
('000006', 920.00, '2026-04-08', 'Pix', '0001', '48433296060');

