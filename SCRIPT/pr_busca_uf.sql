use cep;

DROP PROCEDURE IF EXISTS pr_busca_uf;
DELIMITER //
CREATE PROCEDURE pr_busca_uf(cep varchar(9))
  BEGIN 
  set @newCep =  substring(cep,1,5);
  set @complemento = 'igsis_cep_';
  set @uf := (SELECT uf FROM igsis_cep_uf WHERE cep1 <= @newCep AND cep2 >= @newCep);   
  
  select @uf;
  
  END//
DELIMITER ;








