DROP DATABASE IF exists estudos;
CREATE DATABASE estudos;
USE estudos;

DROP FUNCTION IF exists fn_soma;

DELIMITER $$
CREATE FUNCTION fn_aumenta_preco(preco decimal(10,2), taxa int)  RETURNS decimal
  BEGIN
    RETURN preco + preco * taxa / 100;
  END$$
  
SELECT fn_aumenta_preco(100, 10) AS preco;  
  
