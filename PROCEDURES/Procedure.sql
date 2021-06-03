DROP DATABASE IF EXISTS estudos;
CREATE DATABASE ESTUDOS;

USE ESTUDOS;

CREATE TABLE livros(id int auto_increment,
  nome varchar(50),
  preco decimal(12,2),
  primary key(id)
);

INSERT INTO livros(nome, preco) values('GOT', 12.2);
INSERT INTO livros(nome, preco) values('FAMILY GUY', 120.3);
INSERT INTO livros(nome, preco) values('THE WALKING DEAD', 100.2);
INSERT INTO livros(nome, preco) values('FEAR THE WALKING DEAD', 50.2);
INSERT INTO livros(nome, preco) values('BREAKING BAD', 25.2);

-- INICIO PROCEDURE --
DROP PROCEDURE IF EXISTS pr_buscaPreco;

CREATE PROCEDURE pr_buscaPreco(livroId int)
  SELECT preco, nome 
  FROM livros
  WHERE id = livroId;
  
  CALL pr_buscaPreco(1);

