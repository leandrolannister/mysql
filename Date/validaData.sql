drop database if exists estudos;
create database estudos;

use estudos;

CREATE TABLE pessoas(id int auto_increment primary key,
nome varchar(12),
dataCad date,
createdAt datetime default now());

insert into pessoas(nome, dataCad) values('Nadia', '2021-06-05');
insert into pessoas(nome, dataCad) values('Ellen', '0000-00-00');

SELECT 
   p.nome
   , str_to_date(P.dataCad, '%Y-%m-%d') AS Data_Cadastro
   , str_to_date(P.createdAt, '%Y-%m-%d') AS CreatedAt
   , to_days(str_to_date(P.dataCad, '%Y-%m-%d')) AS Data_Cadastro_2  
   
FROM pessoas AS P;



