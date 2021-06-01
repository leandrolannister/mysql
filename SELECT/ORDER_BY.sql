DROP DATABASE IF EXISTS estudos;
CREATE DATABASE IF NOT EXISTS estudos;

USE estudos;

CREATE TABLE produtos(id smallint auto_increment,
nome varchar(20),
preco decimal(10,2),
primary key(id)
) auto_increment = 100;

INSERT INTO produtos(nome, preco) VALUES('W', 100.02);
INSERT INTO produtos(nome, preco) VALUES('Z', 100.02);
INSERT INTO produtos(nome, preco) VALUES('X', 100.02);
INSERT INTO produtos(nome, preco) VALUES('Y', 100.02);
INSERT INTO produtos(nome, preco) VALUES('A', 100.02);
INSERT INTO produtos(nome, preco) VALUES('B', 100.02);

/* Order decresente */
SELECT * FROM produtos ORDER BY NOME DESC;

/* Order ascendente */
SELECT * FROM produtos ORDER BY NOME ASC;
