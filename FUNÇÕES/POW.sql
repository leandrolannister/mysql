DROP DATABASE IF EXISTS estudos;
CREATE DATABASE estudos;

use estudos;

CREATE TABLE produtos (id int auto_increment primary key,
nome varchar(50),
quantidade decimal(10,2),
preco decimal(10,2));

INSERT INTO produtos(nome, quantidade, preco) values('Caneta',1, 2.00);

SELECT POW(preco, 3) AS 'Elevado a potência' FROM produtos;





