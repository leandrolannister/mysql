drop database if exists estudos;
create database estudos;

use estudos;

CREATE TABLE pessoas(id int auto_increment primary key,
nome varchar(12));

insert into pessoas(nome) values('Ana');
insert into pessoas(nome) values('Jessica');
insert into pessoas(nome) values('Elen');
insert into pessoas(nome) values('Bruna');
insert into pessoas(nome) values('Shirley');
insert into pessoas(nome) values('Wando');

select nome from pessoas
order by nome != "Wando", nome != "Shirley", nome;


