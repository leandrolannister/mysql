drop database if exists estudos;
create database estudos;

use estudos;

CREATE TABLE autores(id int auto_increment primary key,
nome varchar(50)); 

CREATE TABLE livros(id int auto_increment primary key,
nome varchar(50),
autor_id int);

CREATE TABLE editoras(id int auto_increment primary key,
nome varchar(50),
livro_id int);

ALTER TABLE livros ADD FOREIGN KEY(autor_id) REFERENCES autores(id);
ALTER TABLE editoras ADD FOREIGN KEY(livro_id) REFERENCES livros(id);

INSERT INTO autores(nome) values('leandro');
INSERT INTO autores(nome) values('soares');

INSERT INTO livros(nome, autor_id) values('got',1);
INSERT INTO livros(nome, autor_id) values('family guy',2);

INSERT INTO livros(nome) values('the office');

INSERT INTO editoras(nome, livro_id) values('A',1);
INSERT INTO editoras(nome, livro_id) values('B',2);


/* INNER JOIN */
SELECT l.nome AS Livro, 
       a.nome AS Autor, 
       e.nome AS Editora 
FROM livros AS l 

INNER JOIN autores AS a
ON a.id = l.autor_id

INNER JOIN editoras AS e
ON e.livro_id = l.id;


