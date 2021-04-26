DROP DATABASE IF EXISTS estudos;
CREATE DATABASE IF NOT EXISTS estudos;

use estudos;

DROP TABLE IF EXISTS livros;
DROP TABLE IF EXISTS autores;

CREATE TABLE livros
(id smallint, 
nome varchar(50));

ALTER TABLE livros ADD PRIMARY KEY (id);
ALTER TABLE livros change column id id smallint auto_increment;


INSERT INTO livros(nome) VALUES('Breaking Bad');
INSERT INTO livros(nome) VALUES('Family Guy');

SELECT * from LIVROS;












