DROP DATABASE IF EXISTS estudos;
CREATE DATABASE IF NOT EXISTS estudos;

use estudos;

CREATE TABLE livros
(id tinyint auto_increment,
nome varchar(50),
PRIMARY KEY(id)) auto_increment = 5;

INSERT INTO livros(nome) VALUES('Game of Thrones');
INSERT INTO livros(nome) VALUES('Breaking Bad');

ALTER TABLE livros ADD COLUMN id_autor_fk int;

SELECT nome, id_autor_fk FROM livros;



