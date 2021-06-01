drop  database if exists estudos;
create database estudos;

use estudos;

create table departamentos(id int auto_increment primary key,
nome varchar(50));

create table funcionarios(id int auto_increment, 
nome varchar(50),
salario decimal(12,2), 
id_depto integer,
primary key(id));

alter table funcionarios add foreign key(id_depto) references departamentos(id);

insert into departamentos(nome) values('TI');
insert into departamentos(nome) values('Compras');
insert into departamentos(nome) values('Finaneiro');

insert into funcionarios(nome, salario, id_depto) values('Leandro', '100', 1);
insert into funcionarios(nome, salario, id_depto) values('Soares', '200', 2);
insert into funcionarios(nome, salario, id_depto) values('Ribeiro', '30', 3);
insert into funcionarios(nome, salario, id_depto) values('João', '50', 1);
insert into funcionarios(nome, salario) values('Carla', '80');


