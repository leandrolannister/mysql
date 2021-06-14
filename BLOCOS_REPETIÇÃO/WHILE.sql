DROP DATABASE IF EXISTS estudos;
CREATE DATABASE estudos;
USE estudos;

DELIMITER $$
CREATE PROCEDURE pr_acumular (limite tinyint unsigned)
BEGIN
    DECLARE contador tinyint unsigned default 0;
    declare soma int default 0;

    WHILE contador < limite DO
      SET contador = contador + 1;
      SET soma = contador + soma;
    END WHILE;

    IF soma < 1 THEN  
      SELECT "O while não foi executado" AS Erro;
    END IF;
      
    SELECT soma;    
   
  END $$
DELIMITER ;

SET @limite = 0;
CALL pr_acumular(@limite);