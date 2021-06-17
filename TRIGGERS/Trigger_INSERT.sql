DROP DATABASE IF EXISTS estudos;
CREATE DATABASE estudos;

use estudos;

CREATE TABLE produtos(id int auto_increment, 
nome varchar(100) null,
preco double(10,2) null,
preco_desconto double(10,2) null,
primary key(id));

-- Criando a Trigger --
CREATE TRIGGER tr_desconto BEFORE INSERT on produtos
FOR EACH ROW
  SET NEW.preco_desconto = NEW.preco * 0.90;
  
INSERT INTO produtos(nome, preco) VALUES('Livro Mat', 100);

select * from produtos;  
  
  

