USE capac;
DROP TABLE IF EXISTS ttLog;

CREATE TABLE ttLog(
  id INT AUTO_INCREMENT,
  descricao LONGTEXT,
  idInicial INT,
  PRIMARY KEY(id));
  
DROP FUNCTION IF EXISTS fn_cria_temp_table;
DELIMITER //
CREATE FUNCTION fn_cria_temp_table(dinsert longtext, id int) RETURNS longtext
  BEGIN        
    INSERT INTO ttLog(descricao, idInicial) values(dinsert, id);    
    RETURN "ok";
END //
DELIMITER ;

DROP PROCEDURE IF EXISTS pr_add_registro;
DELIMITER //
CREATE PROCEDURE pr_add_registro()
  BEGIN    
    DECLARE inicio int;
    DECLARE fim int;
    
    SET inicio = (SELECT id FROM ttLog LIMIT 1);
    SET fim = (SELECT id FROM ttLog ORDER BY id DESC LIMIT 1);
    
     WHILE inicio <= fim DO           
       SET @myQuery =(
         SELECT             
          descricao
        FROM ttLog         
        WHERE id = inicio);       
         
        PREPARE stmt FROM @myQuery;
	    EXECUTE stmt;        
        
       SET inicio = inicio + 1;               
      END WHILE;
  END//
DELIMITER ;   

/*INSERT*/
SELECT
  fn_cria_temp_table(descricao, id)  
FROM log 
WHERE dataLog >= '2018-07-17 22:00:00' 
AND  dataLog <= '2018-07-24 16:20:00'
AND  SUBSTRING(descricao, 1, 6) = "INSERT"
AND  SUBSTRING(descricao, 14, 6) = 'evento'; 

/*UPDATE*/
SELECT             
  fn_cria_temp_table(descricao, id)
FROM log 
WHERE dataLog >= '2018-07-17 22:00:00' 
AND  dataLog <= '2018-07-24 16:20:00'
AND  SUBSTRING(descricao, 1, 6) = "update"
AND  SUBSTRING(descricao, 8, 6) = 'evento'; 

/*select * from ttLog;*/
CALL pr_add_registro();