use cep;

DROP PROCEDURE IF EXISTS pr_busca_cep;
DELIMITER //
CREATE PROCEDURE pr_busca_cep(cep varchar(9))
  BEGIN 
  set @newCep =  substring(cep,1,5);
  set @complemento = 'igsis_cep_';
  set @uf := (SELECT uf FROM igsis_cep_uf WHERE cep1 <= @newCep AND cep2 >= @newCep);   
  set @tabela = concat(@complemento, lower(@uf));  
  set @aspas = '''';

  set @myQuery =  concat('SELECT * FROM ', @tabela, ' WHERE cep = ', @aspas,cep,@aspas); 
  PREPARE stmt FROM @myQuery;
  EXECUTE stmt;    
  
  END//
DELIMITER ;

call pr_busca_cep('03664-010');







