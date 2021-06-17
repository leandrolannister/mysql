DROP DATABASE IF EXISTS estudos;

CREATE DATABASE IF NOT EXISTS estudos;

use estudos;

CREATE TABLE produtos(id int auto_increment, 
nome varchar(10) NOT NULL, /* <-- não aceita valores duplicados */
estado varchar(10) DEFAULT "SP",
primary key(id));

insert into produtos(nome) VALUES('Leandro'); 
insert into produtos(nome, estado) VALUES('Soares', 'RJ'); 

select * from produtos;

