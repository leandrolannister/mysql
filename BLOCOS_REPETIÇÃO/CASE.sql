﻿DROP DATABASE IF EXISTS estudos;
CREATE DATABASE estudos;
USE estudos;

DROP PROCEDURE IF EXISTS reajuste;

DELIMITER $$
CREATE FUNCTION reajuste(salario DEC(10,2)) RETURNS DECIMAL(10,2)
  BEGIN 
    DECLARE reajuste DECIMAL(10,2);
    
    CASE salario 
      WHEN salario < 100 THEN
      SET reajuste = 0.00;
   
      WHEN salario < 150 THEN 
        SET reajuste = salario * 0.15;

      ELSE 
        SET reajuste = salario * 0.30;
   END CASE;   
    
    RETURN reajuste;
  END $$
DELIMITER ;

SET @salario = 170;
SELECT reajuste(@salario);




