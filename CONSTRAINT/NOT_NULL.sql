DROP DATABASE IF EXISTS estudos;

CREATE DATABASE IF NOT EXISTS estudos;

use estudos;

CREATE TABLE produtos(id int auto_increment, 
nome varchar(10) NOT NULL, /* <-- não aceita valores nulls */
primary key(id));

insert into produtos(nome, email) VALUES(NULL); 

select * from produtos;
