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

/* Conta o numero de registros */
SELECT COUNT(id) FROM series;

/* Conta o numero de cada registro */
SELECT nome, COUNT(id_autor) AS Contagem 
FROM series GROUP BY nome;




