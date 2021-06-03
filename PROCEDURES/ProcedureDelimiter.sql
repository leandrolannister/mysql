DROP DATABASE IF EXISTS estudos;
CREATE DATABASE estudos;

USE estudos;

-- PROCEDURE --
DELIMITER $$ 
  CREATE PROCEDURE pr_contagem(total int)  
   BEGIN
     SET @indice = 0;
     REPEAT SET @indice = @indice + 1; 
       UNTIL @indice >= total 
     END REPEAT;
   END $$  
DELIMITER ;

CALL pr_contagem(10);
select @indice;