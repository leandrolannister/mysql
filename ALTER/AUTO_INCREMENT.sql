DROP DATABASE IF EXISTS estudos;
CREATE DATABASE IF NOT EXISTS estudos;

use estudos;

create table usuarios(id int auto_increment,
nome varchar(50),
primary key(id));

ALTER TABLE usuarios AUTO_INCREMENT = 100;
INSERT INTO usuarios(nome) VALUES('Soares');
INSERT INTO usuarios(nome) VALUES('Ribeiro');

SELECT * FROM usuarios;
