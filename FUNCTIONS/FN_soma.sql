DROP DATABASE IF exists estudos;
CREATE DATABASE estudos;
USE estudos;

DROP FUNCTION IF exists fn_soma;
CREATE FUNCTION fn_soma(x decimal(10,2), y int)
  RETURNS INT
  RETURN x + y;
  
SELECT fn_soma(100.2, 3) as soma;  
  
