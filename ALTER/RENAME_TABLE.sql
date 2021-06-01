DROP DATABASE IF EXISTS estudos;
CREATE DATABASE estudos;

use estudos;

CREATE TABLE series (id int auto_increment primary key,
nome varchar(50),
id_autor int);

RENAME TABLE series TO filmes;

INSERT INTO filmes(nome, id_autor) VALUES('Matriz', 1);

SELECT * FROM filmes;