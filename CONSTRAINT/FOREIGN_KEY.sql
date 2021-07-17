DROP DATABASE estudos;
CREATE DATABASE estudos;

USE estudos;

CREATE TABLE autores(id int auto_increment primary key,
nome varchar(10));

CREATE TABLE livros(id int auto_increment,
nome varchar(20) NOT NULL,
autor_id int,
foreign key(autor_id) REFERENCES autores(id),
primary key(id));

INSERT INTO autores(nome) VALUES('Leandro');
INSERT INTO autores(nome) VALUES('Soarees');

INSERT INTO livros(nome, autor_id) VALUES('Got', 1);
INSERT INTO livros(nome, autor_id) VALUES('God Father', 2);


select * from livros;
