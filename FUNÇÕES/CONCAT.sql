DROP DATABASE IF EXISTS estudos;
CREATE DATABASE estudos;

USE estudos;

CREATE TABLE pessoas(id int auto_increment primary key,
  nome varchar(20),
  sobrenome varchar(20));

INSERT INTO pessoas(nome,sobrenome) VALUES('Leandro', 'Soares');
INSERT INTO pessoas(nome,sobrenome) VALUES('Carla', 'Pachecco');

SELECT CONCAT(nome, ' ', sobrenome) AS fullName
  FROM pessoas;
  