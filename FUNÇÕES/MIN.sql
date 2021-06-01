DROP DATABASE IF EXISTS estudos;
CREATE DATABASE estudos;

use estudos;

CREATE TABLE series (id int auto_increment primary key,
nome varchar(50),
id_autor int);

INSERT INTO series(nome, id_autor) values('Chaves',1);
INSERT INTO series(nome, id_autor) values('Chaves',1);
INSERT INTO series(nome, id_autor) values('Chaves',1);
INSERT INTO series(nome, id_autor) values('Family Guy',2);
INSERT INTO series(nome, id_autor) values('Family Guy',2);
INSERT INTO series(nome, id_autor) values('GOT',3);
INSERT INTO series(nome, id_autor) values('GOT',3);

/* Encontra o menor registro */
SELECT MIN(id) as menor_registro FROM series;






