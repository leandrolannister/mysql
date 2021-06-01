DROP DATABASE IF EXISTS estudos;
CREATE DATABASE IF NOT EXISTS estudos;

USE estudos;

CREATE TABLE livros(id int auto_increment,
nome varchar(20),
data date,
valor double(10,2),
PRIMARY KEY(id));

INSERT INTO livros(nome, data, valor) VALUES('got', now(), 100);
INSERT INTO livros(nome, data, valor) VALUES('family guy', '2019-01-07', 200);
INSERT INTO livros(nome, data, valor) VALUES('the office', '2018-01-01', 100);
INSERT INTO livros(nome, data, valor) VALUES('breaking bad', '2007-12-12', 10);

SELECT * FROM livros
WHERE valor NOT BETWEEN 10 AND 100;



