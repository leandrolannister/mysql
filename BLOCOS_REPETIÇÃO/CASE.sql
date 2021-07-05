DROP DATABASE IF EXISTS estudos;
CREATE DATABASE estudos;

USE estudos;

CREATE TABLE Pessoas(id int auto_increment,
nome varchar(50),
tipo int,
primary key(id));

INSERT INTO Pessoas(nome, tipo) VALUES('Leandro', 1);
INSERT INTO Pessoas(nome, tipo) VALUES('Soares', 2);
INSERT INTO Pessoas(nome, tipo) VALUES('Ribeiro', 3);
INSERT INTO Pessoas(nome, tipo) VALUES('Pimenta', 33);

SELECT 
   nome 
   , tipo
   , CASE 
       WHEN tipo = 1 THEN 'Categoria C' 
       WHEN tipo = 2 THEN 'Categoria B'
       WHEN tipo = 3 THEN 'Categoria A'
       ELSE 'Sem Clássificação'
     END AS 'Class'
 FROM Pessoas;

