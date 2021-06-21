-- FILTRO POR DATA. YEAR --
DROP DATABASE IF EXISTS estudos;
CREATE DATABASE IF NOT EXISTS estudos;

use estudos;
DROP TABLE IF EXISTS pessoas;

CREATE TABLE IF NOT EXISTS 
  pessoas (
    id int auto_increment primary key, 
    dt_nasc date   
);

INSERT INTO pessoas(dt_nasc) VALUES('1983-01-01');
INSERT INTO pessoas(dt_nasc) VALUES('2000-03-01');
INSERT INTO pessoas(dt_nasc) VALUES('2001-04-01');

SELECT * FROM pessoas WHERE year(dt_nasc) = 1983;	
