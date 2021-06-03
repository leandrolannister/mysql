DROP DATABASE IF EXISTS estudos;
CREATE DATABASE estudos;
USE estudos;

CREATE TABLE editoras(id int auto_increment primary key,
  nome varchar(50));

CREATE TABLE livros(id int auto_increment primary key,
  nome varchar(50),
  editora_id int,
  preco decimal(10,2));

ALTER TABLE livros ADD foreign key(editora_id) references editoras(id);

INSERT INTO editoras(nome) VALUES('Moderna');
INSERT INTO editoras(nome) VALUES('Vale');

INSERT INTO livros(nome, editora_id, preco) VALUES('Got', 1, 100);
INSERT INTO livros(nome, editora_id, preco) VALUES('Family Guy',2, 200);


---- PROCEDURE COM PASSAGEM PARAMENTRO IN(passagem Valor) ----

DROP PROCEDURE IF EXISTS reajuste_preco;

DELIMITER $$
CREATE PROCEDURE reajuste_preco(in id_produto int, in taxa decimal(10,2))
  BEGIN 
    UPDATE livros AS l
      SET l.preco = l.preco + l.preco * taxa / 100
      WHERE l.id = id_produto;
  END $$
DELIMITER ;

SET @produto = 1;
SET @taxa = 10;
CALL reajuste_preco(@produto, @taxa);

SELECT * FROM livros;


