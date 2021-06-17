DROP DATABASE IF EXISTS estudos;

CREATE DATABASE IF NOT EXISTS estudos;

use estudos;

CREATE TABLE produtos(id int auto_increment, 
CPF varchar(10) UNIQUE, /* <-- não aceita valores duplicados */
primary key(id));

insert into produtos(CPF) VALUES(123); 
insert into produtos(CPF) VALUES(123); 

select * from produtos;

