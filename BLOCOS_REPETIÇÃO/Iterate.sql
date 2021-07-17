  DROP DATABASE ESTUDOS;
  CREATE DATABASE estudos;

  USE ESTUDOS;

  DELIMITER //
  CREATE PROCEDURE pr_iterate (limite tinyint unsigned)
    BEGIN
      DECLARE contador tinyint unsigned DEFAULT 0;
      DECLARE soma int unsigned DEFAULT 0;

      bloco: loop
        SET contador = contador + 1;
        SET soma = soma + contador;

        IF contador < limite THEN 
          iterate bloco;
        END IF;
        leave bloco;
      END loop bloco;
      SELECT soma;
    END //
  DELIMITER ;


  CALL pr_iterate(10);