DROP DATABASE IF EXISTS estudos;
CREATE DATABASE estudos;

USE estudos;

CREATE TABLE series(id tinyint auto_increment,
nome char(20),
preco float(10,2),
produtora_id_fk tinyint,
primary key(id)); 

CREATE TABLE produtoras(id tinyint auto_increment,
nome char(20),
primary key(id)); 

ALTER TABLE series ADD FOREIGN KEY(produtora_id_fk) REFERENCES produtoras(id); 

INSERT INTO produtoras(nome) VALUES('Sony');
INSERT INTO produtoras(nome) VALUES('Amg');

INSERT INTO series(nome, preco, produtora_id_fk) VALUES('Family', 50.5, 1);
INSERT INTO series(nome, preco, produtora_id_fk) VALUES('GOT', 100.5, 1);
INSERT INTO series(nome, preco, produtora_id_fk) VALUES('The Office', 200.5, 2);

SET SQL_SAFE_UPDATES = 0; /* Permite ALTERAR registros onde o where não chama a chave primarya */
UPDATE series AS s
  INNER JOIN produtoras AS p ON p.id = s.produtora_id_fk
  SET s.preco = 150.29
  WHERE p.nome LIKE 'a%';
  
SELECT * FROM series;  


   
