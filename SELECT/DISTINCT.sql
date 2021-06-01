DROP DATABASE IF EXISTS estudos;
CREATE DATABASE estudos;

use estudos;

CREATE TABLE series (id int auto_increment primary key,
nome varchar(50));

INSERT INTO series(nome) VALUES('Chaves');
INSERT INTO series(nome) VALUES('Chaves');
INSERT INTO series(nome) VALUES('Family Guy');
INSERT INTO series(nome) VALUES('Family Guy');
INSERT INTO series(nome) VALUES('GOT');
INSERT INTO series(nome) VALUES('GOT');

SELECT DISTINCT nome FROM series;

