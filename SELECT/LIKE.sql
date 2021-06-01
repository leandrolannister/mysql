DROP DATABASE IF EXISTS estudos;
CREATE DATABASE IF NOT EXISTS estudos;

USE estudos;

CREATE TABLE pessoas(id int auto_increment,
nome varchar(20),
idade int,
PRIMARY KEY(id));

INSERT INTO pessoas(nome, idade) VALUES('Amanda', 30);
INSERT INTO pessoas(nome, idade) VALUES('Ana', 40);
INSERT INTO pessoas(nome, idade) VALUES('Alice', 25);
INSERT INTO pessoas(nome, idade) VALUES('Bruna', 22);
INSERT INTO pessoas(nome, idade) VALUES('Beatriz', 28);

INSERT INTO pessoas(nome, idade) VALUES('Maria', 32);
INSERT INTO pessoas(nome, idade) VALUES('Maria Eduarda', 60);
INSERT INTO pessoas(nome, idade) VALUES('Carla', 50);

INSERT INTO pessoas(nome, idade) VALUES('Fernanda', 10);
INSERT INTO pessoas(nome, idade) VALUES('Filomena', 8);
INSERT INTO pessoas(nome, idade) VALUES('Fabiana', 12);
INSERT INTO pessoas(nome, idade) VALUES('Ingrid', 25);

/* Todos os nomes  que inicia com a letra A*/
SELECT * FROM pessoas 
WHERE NOME LIKE 'A%'
ORDER BY NOME;

/* Todos os nomes que não inicia com a letra  a*/
SELECT * FROM pessoas 
WHERE NOME NOT LIKE 'A%'
ORDER BY NOME;

/* O segundo caracter deve ser igual a n*/
SELECT * FROM pessoas 
WHERE NOME LIKE '_n%'
ORDER BY NOME;



