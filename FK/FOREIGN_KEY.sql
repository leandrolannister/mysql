DROP DATABASE IF EXISTS estudos;
CREATE DATABASE IF NOT EXISTS estudos;

use estudos;

DROP TABLE if exists livros;
DROP TABLE if exists autores;

CREATE TABLE livros
(id tinyint auto_increment,
nome varchar(50),
id_autor_fk smallint,
PRIMARY KEY(id)) auto_increment = 5;

CREATE TABLE autores
(id_autor smallint auto_increment,
nome varchar(50),
PRIMARY KEY(id_autor)) auto_increment = 5;

insert into autores(nome) values('George R. R. Martin');
insert into autores(nome) values('Mario puzzle');

/*ADD CHAVE ESTRAGEIRA*/
ALTER TABLE livros ADD FOREIGN KEY(id_autor_fk) REFERENCES autores(id_autor);

insert into livros(nome, id_autor_fk) values('Game Of Thrones', 5);
insert into livros(nome, id_autor_fk) values('Omerta', 6);

SELECT * FROM LIVROS as l
inner join AUTORES AS a
on a.id_autor = l.id_autor_fk;







