

SHOW DATABASES;

CREATE DATABASE gym;

USE gym;

DROP DATABASE gym;

-- Criando tabela aluno
CREATE TABLE aluno(
	idAluno INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
	email VARCHAR(30) UNIQUE NOT NULL,
	cpf VARCHAR(20) UNIQUE NOT NULL,
    altura FLOAT(8) NOT NULL,
    peso FLOAT(8) NOT NULL
);
DESC aluno; 
DROP TABLE aluno;
SHOW TABLES;

-- Criando tabela professor
CREATE TABLE professor(
	idProfessor INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50)  NOT NULL,
	dataNascimento DATE NOT NULL,
	idade INTEGER NOT NULL,
    telefone VARCHAR(20) NOT NULL,
    email VARCHAR(40) NOT NULL,
	formacao VARCHAR(50) NOT NULL,
    idAluno INTEGER NOT NULL,
   FOREIGN KEY (idAluno) REFERENCES aluno(idAluno)
);
DESC professor;
DROP TABLE professor;
SHOW TABLES; 

-- Criando tabela funcionarios
CREATE TABLE funcionarios(
	idFuncionarios INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
    telefone VARCHAR(20) NOT NULL,
	email VARCHAR(40) NOT NULL,
	dataNascimento DATE NOT NULL,
    idade INTEGER NOT NULL,
	setor VARCHAR(30) NOT NULL,
	salario DECIMAL(10,2)
);
DESC funcionarios;
DROP TABLE funcionarios;
SHOW TABLES; 

-- Criando tabela unidade
CREATE TABLE unidade(
	idUnidade INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50) NOT NULL,
	telefone VARCHAR(20) UNIQUE NOT NULL, 
	cidade VARCHAR(50) NOT NULL,
	uf VARCHAR(2) NOT NULL,
    cep VARCHAR(10) NOT NULL,
	bairro VARCHAR(30) NOT NULL,
	rua VARCHAR(30),
	numero VARCHAR(15) NOT NULL,
	complemento VARCHAR(30) NOT NULL,
    IdFuncionarios INTEGER NOT NULL,
    FOREIGN KEY(idFuncionarios) REFERENCES funcionarios(idFuncionarios)
);
DESC unidade;
DROP TABLE unidade;
SHOW TABLES; 

-- Inserções tabela ALUNO
INSERT INTO aluno VALUES (NULL, "Alindo Magalhaes", 8532377288, "arlinodmagalhaes@gmail.com", 073156685900, 52.56 , 1.52);
INSERT INTO aluno VALUES (NULL, "Mariana Silva", 8536544638  , "marisilva@gmail.com", 589156685900, 64.9 , 1.82  );
INSERT INTO aluno VALUES (NULL, "Kelvin Salt", 8534734136  , "kelvin@gmail.com", 458156685900, 66.95 , 1.74 );
INSERT INTO aluno VALUES (NULL, "Elisa Silveira", 8535546615 , "elisasilveira@bol", "222.222.222-00", 58.30  , 1.65  );
INSERT INTO aluno VALUES (NULL, "Maria Lima", 8532722185  , "marialima@bol",  "333.333.333-00", 72.0 ,  1.77 );
INSERT INTO aluno VALUES (NULL, "Hélio dos Santos", 8530485054   , "heliosantos@bol", "444.444.444-00", 55.73 , 1.52 ); 
INSERT INTO aluno VALUES (NULL, "Túlio Inácio", 8534700725   , "tulioinacio@bol", "555.555.555-00",  69.21 , 1.68 );
INSERT INTO aluno VALUES (NULL, "Sarah Vieira", 8538007413    , "sarahvieira@bol", "666.666.666-00", 77.36 , 1.84 );
INSERT INTO aluno VALUES (NULL, "Raquel Holanda", 8537355784   , "raquelholanda@bol", "777.777.777-00", 70.0  , 1.72 ); 
INSERT INTO aluno VALUES (NULL, "Telmo Alencar", 8535902663   , "telmoalencar@bol", "888.888.888-00", 64.20 , 1.87 );
INSERT INTO aluno VALUES (NULL, "Zélia Matos", 8530280855   , "zeliamatos@bol", "999.999.999-00", 53.0 , 1.59 );
INSERT INTO aluno VALUES (NULL, "Roberto Juvencio", 8533389569   , "robertojuvencio@bol", "123.321.141-00", 56.98 , 1.71  ); 
INSERT INTO aluno VALUES (NULL, "Nair Cavalcante", 8530853018   , "naircavalcante@bol", "181.115.123-00", 64.15 , 1.63  );
INSERT INTO aluno VALUES (NULL, "Vitória Pellizzari", 8537844185   , "vitoriapellizzari@bol", "125.261.271-00", 63.0 , 1.82  ); 
INSERT INTO aluno VALUES (NULL, "Jairo Almeida", 8532268061   , "jairoalmeida@bol", "111.111.111-00", 85.30 , 1.90 );

SELECT * FROM aluno;
DROP TABLE professor;
SHOW TABLES;


-- Inserções tabela PROFESSOR
INSERT INTO professor VALUES (NULL, "Anderson Barbosa", "1993-07-15", 29, 8532502687  , "andersonbarbosa@gmail.com", "Educação Física", 1);
INSERT INTO professor VALUES (NULL, "Pablo Viana", "1973-02-25", 49, 8536747748   , "pabloviana@gmail.com", "Educação Física", 2); 
INSERT INTO professor VALUES (NULL, "Val Teixeira", "1985-08-13", 37, 8537907431   , "valteixeira@gmail.com", "Educação Física", 3);
INSERT INTO professor VALUES (NULL, "Natan Arruda", "1996-11-04", 26, 8534153138  , "@natanarrudagmail.com", "Educação Física", 4);
INSERT INTO professor VALUES (NULL, "Adriano Portela", "1991-01-03", 31, 8532624195  , "adrianoportela@gmail.com", "Educação Física", 5); 
INSERT INTO professor VALUES (NULL, "Flavio Mardones", "1989-07-07", 33, 8537624894  , "flaviomardones@gmail.com", "Educação Física", 6);
INSERT INTO professor VALUES (NULL, "Alesson Ribeiro", "1989-11-15", 33, 8536311875  , "alessonrib@gmail.com", "Educação Física", 7);
INSERT INTO professor VALUES (NULL, "Celio Nascimento", "1995-04-19", 27, 8535477218   , "celio nascimento@gmail.com", "Educação Física", 8);
INSERT INTO professor VALUES (NULL, "Natalia Melo", "1996-11-07", 26, 8534166432  , "nataliamelo@gmail.com", "Educação Física", 9);
INSERT INTO professor VALUES (NULL, "Sandra Silva", "1989-10-14", 33, 8533971774  , "sandrasilva@gmail.com", "Educação Física", 10);
INSERT INTO professor VALUES (NULL, "Romero Freitas", "1997-07-24", 25, 8538618841  , "romerofreitas@gmail.com", "Educação Física", 11);
INSERT INTO professor VALUES (NULL, "Arcenio Dantas", "1989-01-12", 33, 8537159809   , "arceniodantas@gmail.com", "Educação Física", 12);
INSERT INTO professor VALUES (NULL, "Paula Lima", "1994-06-13", 27, 8532874281  , "paulalima@gmail.com", "Educação Física", 13);
INSERT INTO professor VALUES (NULL, "Julia Bezerra", "1987-05-05", 35, 8532265553 , "juliabezerra@gmail.com", "Educação Física", 14);
INSERT INTO professor VALUES (NULL, "Eliete Sales", "1999-03-29", 23, 8532532557  , "elietesales@gmail.com", "Educação Física", 15);


SELECT * FROM professor;
DROP TABLE professor;
SHOW TABLES;

DELETE  FROM professor WHERE idProfessor = 15;

-- Inserções FUNCIONARIOS
INSERT INTO  funcionarios (nome, telefone, email, dataNascimento, idade, setor, salario) VALUES ("Priscila Paiva", 8532837367   , "priscilapaiva@gmail.com", "2002-05-01", 20, "recepcao", 1950.00);
INSERT INTO  funcionarios (nome,  telefone, email, dataNascimento, idade, setor, salario) VALUES ("Carol nascimento", 8532887755  , "carolnascimento@gmail.com", "1998-12-14", 24, "recepcao", 1950.00);
INSERT INTO  funcionarios (nome,  telefone, email, dataNascimento, idade, setor, salario) VALUES ("Rosa Sales", 8530256169  , "rosasales@gmail.com", "1969-10-14", 53, "apoio", 2200.00);
INSERT INTO  funcionarios (nome,  telefone, email, dataNascimento, idade, setor, salario) VALUES ("Lucas Moura", 8530148231  , "lucasmoura@gmail.com", "2001-02-02", 21, "apoio", 2200.00);

SELECT * FROM funcionarios;
SHOW TABLES;
DROP TABLE funcionarios;


-- UPDATE NA TABELA FUNCIONARIOS
UPDATE funcionarios 
SET salario = 2200.00 
WHERE idFuncionarios = 1; 


UPDATE funcionarios 
SET salario = 2200.00 
WHERE idFuncionarios = 2; 


UPDATE funcionarios 
SET salario = 2500.00 
WHERE idFuncionarios = 3; 


UPDATE funcionarios 
SET salario = 2500.00 
WHERE idFuncionarios = 4; 


SELECT * FROM funcionarios;


INSERT INTO  unidade (nome, telefone, cidade, uf, cep, bairro, rua, numero, complemento, idFuncionarios) VALUES ("Presidente Kennedy", "8532658489", "Fortaleza", "CE", 60355000, "Ellery", "Av. Dr. Themberge", 299, "Prox ao Supermercado Guará", 1);

SELECT * FROM unidade;
SHOW TABLES;
DROP TABLE unidade;


-- UNIÃO TABELA UNIDADE E TABELA FUNCIONÁRIOS
SELECT * FROM unidade INNER JOIN funcionarios ON unidade.idFuncionarios <= funcionarios.idFuncionarios;

-- UNIÃO TABELA ALUNO E PROFESSOR
SELECT * FROM aluno INNER JOIN professor ON aluno.idAluno = professor.idAluno;


-- UNIÃO TABELA UNIDADE PROFESSOR
SELECT * FROM unidade INNER JOIN professor;




















