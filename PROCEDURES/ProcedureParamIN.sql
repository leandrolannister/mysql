DROP DATABASE IF EXISTS estudos;
CREATE DATABASE estudos;
USE estudos;

CREATE TABLE editoras(id int auto_increment primary key,
  nome varchar(50));

CREATE TABLE livros(id int auto_increment primary key,
  nome varchar(50),
  editora_id int);

ALTER TABLE livros ADD foreign key(editora_id) references editoras(id);

INSERT INTO editoras(nome) VALUES('Moderna');
INSERT INTO editoras(nome) VALUES('Vale');

INSERT INTO livros(nome, editora_id) VALUES('Got', 1);
INSERT INTO livros(nome, editora_id) VALUES('Family Guy',2);

---- PROCEDURE COM PASSAGEM PARAMENTRO IN(passagem Valor) ----
DROP PROCEDURE IF EXISTS busca_editora;
DELIMITER //
CREATE PROCEDURE busca_editora( in nomeLivro varchar(50))
  BEGIN
    SELECT e.nome as editora  
    FROM livros AS L INNER JOIN editoras AS E
    ON L.editora_id = E.id
    WHERE L.nome = nomeLivro; 
  END //
DELIMITER;  

SET @nomeLivro = 'Got';
CALL busca_editora(@nomeLivro);
