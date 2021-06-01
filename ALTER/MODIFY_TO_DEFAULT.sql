DROP DATABASE IF EXISTS estudos;
CREATE DATABASE IF NOT EXISTS estudos;

use estudos;

CREATE TABLE livros(id int auto_increment,
nome varchar(50),
estado varchar(5), 
primary key(id));

ALTER TABLE livros MODIFY COLUMN estado varchar(5) DEFAULT 'SP';

INSERT INTO livros(nome) VALUE('GOT');
INSERT INTO livros(nome) VALUE('FAMILY GUY');
INSERT INTO livros(nome, estado) VALUE('THE OFFICE', "RE");


SELECT * FROM livros;