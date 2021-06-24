DROP DATABASE IF EXISTS estudos;
CREATE DATABASE estudos;

use estudos;

CREATE TABLE produtos(id int auto_increment primary key,
descricao varchar(2));

ALTER TABLE produtos ADD COLUMN preco double(12,2);

INSERT INTO produtos(descricao, preco) VALUES('A', 12.30);

SELECT descricao, preco FROM produtos;
  