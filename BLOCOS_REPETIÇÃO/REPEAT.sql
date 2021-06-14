DROP DATABASE IF EXISTS estudos;
CREATE DATABASE estudos;

USE estudos;

--  Quando deseja apenas usar valores positivos para int, tinyint e smallint usamos o tipo UNSIGNED --
DELIMITER //
CREATE PROCEDURE pr_acumular (limite TINYINT UNSIGNED)
main:  BEGIN
    DECLARE contador TINYINT UNSIGNED DEFAULT 0;
    DECLARE soma INT DEFAULT 0;

    IF limite < 1 THEN 
      SELECT "O valor deve ser maior que zero" AS Erro;
      LEAVE main;
    END IF;

    REPEAT 
      SET contador = contador + 1;
      SET soma= soma + contador;
    UNTIL contador >= limite
    END REPEAT;

    SELECT soma;
  END //
DELIMITER ;

set @limite = 0;
CALL pr_acumular(@limite);