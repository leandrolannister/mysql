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


---- VARIAVEIS LOCAIS ----

DROP PROCEDURE IF EXISTS procura_preco;

DELIMITER $$
CREATE  FUNCTION procura_preco(id_produto int) RETURNS DECIMAL(10,2)
  BEGIN 
    DECLARE preco DECIMAL(10,2);

    SELECT l.preco 
    FROM livros AS l 
    WHERE l.id = id_produto INTO preco;
    
    RETURN preco;
  END $$
DELIMITER ;

SET @produto = 2;
SELECT procura_preco(@produto);




