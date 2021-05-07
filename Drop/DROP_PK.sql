DROP DATABASE IF EXISTS estudos;
CREATE DATABASE IF NOT EXISTS estudos;

use estudos;

drop table if exists livros;

create table livros(
id smallint auto_increment,
nome varchar(10),
primary key(id));

ALTER TABLE livros CHANGE id id smallint not null;
ALTER TABLE livros DROP PRIMARY KEY;

desc livros;