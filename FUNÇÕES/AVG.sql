DROP DATABASE IF EXISTS estudos;
CREATE DATABASE estudos;

use estudos;

CREATE TABLE series (id int auto_increment primary key,
nome varchar(50),
preco decimal(10,2));

INSERT INTO series(nome, preco) VALUES('Chaves',10);
INSERT INTO series(nome, preco) VALUES('Chaves',100);
INSERT INTO series(nome, preco) VALUES('Family Guy',200);
INSERT INTO series(nome, preco) VALUES('Family Guy',200);
INSERT INTO series(nome, preco) VALUES('GOT',300);
INSERT INTO series(nome, preco) VALUES('GOT',500);

SELECT AVG(preco) FROM series;

