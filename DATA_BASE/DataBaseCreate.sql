DROP DATABASE IF EXISTS estudos;
CREATE DATABASE IF NOT EXISTS estudos;

USE estudos;
DROP TABLE IF EXISTS compras;

CREATE TABLE IF NOT EXISTS 
  COMPRAS (
    id INT auto_increment PRIMARY KEY, 
    valor DOUBLE, 
    data DATE, 
    observacoes VARCHAR(255), 
    recebido BOOLEAN
);
DESC compras;