CREATE DATABASE IF NOT EXISTS estudos;

use estudos;

CREATE TABLE IF NOT EXISTS usuarios(
id SMALLINT AUTO_INCREMENT,
nome VARCHAR(50),
PRIMARY KEY(id)) AUTO_INCREMENT = 5;

insert INTO usuarios(nome) values('Leandro');
insert INTO usuarios(nome) values('Soares');
insert INTO usuarios(nome) values('Ribeiro');

ALTER TABLE usuarios AUTO_INCREMENT = 90;

insert INTO usuarios(nome) values('Carlos');

SELECT * FROM usuarios;