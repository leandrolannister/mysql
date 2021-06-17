DROP DATABASE IF EXISTS estudos; 
CREATE DATABASE IF NOT EXISTS estudos;

USE estudos;

CREATE TABLE produtos(id int auto_increment,
  nome varchar(50),
  primary key(id));

  START TRANSACTION;
    INSERT INTO produtos(nome) VALUES('Casa');
    INSERT INTO produtos(nome) VALUES('Carro');
    INSERT INTO produtos(nome) VALUES('Relegio');
  COMMIT; //<-Completa a Executa a Transação
  /*ROLLBACK;*/ //<-Não completa Executa a Transação

   select * from produtos;


