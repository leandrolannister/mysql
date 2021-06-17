/*Busca um campo em todas as tabelas*/
use nomeBanco;

SELECT * FROM information_schema.COLUMNS 
  WHERE TABLE_SCHEMA = 'nomeDB'
 AND COLUMN_NAME = 'nomeCoumn'; 