CREATE TABLE planos(
idplano SERIAL PRIMARY KEY,
nomeplano VARCHAR(25) NOT NULL,
valorplano NUMERIC(6,2) NOT NULL,
duracao INTEGER NOT NULL
);

CREATE TABLE funcionarios(
idfuncionario SERIAL PRIMARY KEY,
cpf VARCHAR(11) UNIQUE NOT NULL,
nomefuncionario VARCHAR(50) NOT NULL,
salario NUMERIC(10,2) NOT NULL,
cargo VARCHAR(30) NOT NULL
);

CREATE TABLE alunos(
idaluno SERIAL PRIMARY KEY,
cpf VARCHAR(11) UNIQUE NOT NULL,
nomecliente VARCHAR(50) NOT NULL
);

CREATE TABLE matriculas(
idmatricula SERIAL PRIMARY KEY,
idaluno INTEGER NOT NULL,
idplano INTEGER NOT NULL,
idpersonal INTEGER,
datainicio DATE NOT NULL,
datafim DATE,
FOREIGN KEY (idaluno) REFERENCES alunos(idaluno),
FOREIGN KEY (idplano) REFERENCES planos(idplano),
FOREIGN KEY (idpersonal) REFERENCES funcionarios(idfuncionario)
);

CREATE TABLE pagamento(
idpagamento SERIAL PRIMARY KEY,
idmatricula INTEGER NOT NULL,
valor NUMERIC(6,2) NOT NULL,
datapagamento DATE NOT NULL,
formadepagamento VARCHAR(25) NOT NULL,
funcionariopago INTEGER NOT NULL,
FOREIGN KEY (idmatricula) REFERENCES matriculas(idmatricula),
FOREIGN KEY (funcionariopago) REFERENCES funcionarios(idfuncionario)
);
