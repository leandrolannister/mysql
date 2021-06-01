DROP DATABASE IF EXISTS estudos;
CREATE DATABASE IF NOT EXISTS estudos;

use estudos;
DROP TABLE IF EXISTS compras;

CREATE TABLE IF NOT EXISTS 
  COMPRAS (
    id int auto_increment primary key, 
    valor double, 
    data date, 
    observacoes varchar(255), 
    recebido boolean
);

DESC compras;