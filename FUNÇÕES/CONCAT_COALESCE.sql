DROP DATABASE IF EXISTS estudos;
CREATE DATABASE estudos;

USE estudos;

CREATE TABLE pessoas(id int auto_increment primary key,
  nome varchar(20) NULL,
  sobrenome varchar(20));

/*Qualquer valor concatenado com null, o resultado será null*/
INSERT INTO pessoas(nome,sobrenome) VALUES('Leandro', 'Soares');
INSERT INTO pessoas(nome,sobrenome) VALUES('Carla', 'Pachecco');
INSERT INTO pessoas(nome,sobrenome) VALUES(NULL, 'Ribeiro');

/* Coalesce retorna o primeiro valor não null*/
SELECT CONCAT(COALESCE(NULL, nome, NULL, 'SEM NOME'), ' ', sobrenome) AS fullName
  FROM pessoas;
  