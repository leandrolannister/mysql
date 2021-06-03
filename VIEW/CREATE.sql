DROP DATABASE IF EXISTS estudos;
CREATE DATABASE estudos;

use estudos;

CREATE table autores(id int auto_increment,
nome varchar(50),
primary key(id));

CREATE table livros(id int auto_increment,
nome varchar(50),
autor_id integer, 
primary key(id));

ALTER TABLE livros add foreign key(autor_id) references autores(id);

INSERT INTO AUTORES(NOME) valueS('Leandro');
INSERT INTO AUTORES(NOME) valueS('Soares');

INSERT INTO livros(nome, autor_id) valueS('Got',1);
INSERT INTO livros(nome, autor_id) valueS('Family guy',1);
INSERT INTO livros(nome, autor_id) valueS('Breaking Bad',2);

/*VIEW*/
DROP VIEW IF EXISTS vw_LivrosAutores;

CREATE VIEW vw_LivrosAutores AS 
  SELECT l.nome AS Livro, a.nome AS Autor
  FROM livros AS l INNER JOIN autores AS a
  ON a.id = l.autor_id;  

SELECT Livro, Autor 
FROM vw_LivrosAutores
ORDER BY autor;



