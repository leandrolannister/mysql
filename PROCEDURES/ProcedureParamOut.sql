DROP DATABASE IF EXISTS estudos;
CREATE DATABASE estudos;

USE estudos;

CREATE TABLE livros(id int auto_increment primary key,
  nome varchar(50),
  preco decimal(10,2));

INSERT into livros(nome, preco) VALUES('Got', 100);
INSERT into livros(nome, preco) VALUES('Family Guy', 200);
INSERT into livros(nome, preco) VALUES('The Walking Deaed', 300);

--- PROCEDURE OUT(Passagem referencia)---

DROP PROCEDURE IF EXISTS busca_livro;

DELIMITER //
CREATE PROCEDURE busca_livro(in id_livro int, out descLivro varchar(50))
 BEGIN
  SELECT nome INTO descLivro
  FROM livros AS l 
  WHERE l.id = id_livro;
 END //  
DELIMITER;

CALL busca_livro(2, @descLivro);
SELECT @descLivro;