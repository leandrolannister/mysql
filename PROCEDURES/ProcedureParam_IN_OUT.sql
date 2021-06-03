DROP DATABASE IF EXISTS estudos;
CREATE DATABASE estudos;
USE estudos;

--- Passagem por valor e referencia(inout) ---
DROP PROCEDURE IF EXISTS reajuste;

DELIMITER //
CREATE PROCEDURE reajuste (inout preco decimal(10,2), in taxa decimal(10,2))
  BEGIN
    SET preco = preco + preco * taxa / 100;  
  END //
DELIMITER;

SET @preco = 100;
SELECT @preco;

CALL reajuste(@preco, 30);
SELECT @preco;