DROP DATABASE IF EXISTS estudos;
CREATE DATABASE IF NOT EXISTS estudos;

use estudos;

CREATE TABLE livros(id int auto_increment,
nome varchar(50),
estado varchar(5) DEFAULT 'RJ', 
primary key(id));

INSERT INTO livros(nome) VALUE('GOT');
INSERT INTO livros(nome) VALUE('FAMILY GUY');
INSERT INTO livros(nome, estado) VALUE('THE OFFICE', "RE");


SELECT * FROM livros;