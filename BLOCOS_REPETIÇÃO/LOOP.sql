DROP DATABASE ESTUDOS;
CREATE DATABASE estudos;

USE ESTUDOS;

DELIMITER //
CREATE PROCEDURE acumula (limite int)
  BEGIN
    DECLARE contador INT DEFAULT 0;
    DECLARE soma int DEFAULT 0;

    bloco: loop
      SET contador = contador + 1;
      SET soma = soma + contador;

      IF contador > limite THEN 
        LEAVE bloco;
      END IF;
    END loop bloco;

    SELECT soma;
  END //
DELIMITER ;

SET @limite = 1;
CALL acumula(@limite);