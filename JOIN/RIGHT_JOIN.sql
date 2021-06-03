drop database if exists estudos;
create database estudos;

use estudos;

CREATE TABLE autores(id int auto_increment primary key,
nome varchar(50)); 

CREATE TABLE livros(id int auto_increment primary key,
nome varchar(50),
autor_id int); 

ALTER TABLE livros ADD FOREIGN KEY(autor_id) REFERENCES autores(id);

INSERT INTO autores(nome) values('leandro');
INSERT INTO autores(nome) values('soares');
INSERT INTO autores(nome) values('jonas');

INSERT INTO livros(nome, autor_id) values('got',1);
INSERT INTO livros(nome, autor_id) values('family guy',2);

INSERT INTO livros(nome) values('the office');

/* RIGHT JOIN */
SELECT esquerda.nome AS livro, direita.nome AS autor 
FROM livros AS esquerda 
RIGHT OUTER JOIN autores AS direita 
ON direita.id = esquerda.autor_id;

/* Autores sm livros */
SELECT esquerda.nome AS livro, direita.nome AS autor 
FROM livros AS esquerda 
RIGHT OUTER JOIN autores AS direita 
ON direita.id = esquerda.autor_id
WHERE esquerda.nome is null;





