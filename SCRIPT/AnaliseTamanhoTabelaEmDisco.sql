drop database if exists teste;
create database teste;

use teste;
create table testeNull(
  id int auto_increment, 
  nome varchar(50) null,
  idade int,
  primary key(id));
  
create table testeDefault(
  id int auto_increment primary key,  
  nome varchar(50),
  idade int);
alter table testeDefault change nome nome varchar(50) default '';

drop procedure if exists teste;
delimiter //
create procedure teste()
  begin 
    declare i int default 1;
    
    while i <= 1000 do
      insert into testeDefault(nome, idade) values('', 33);
      insert into testeNull(idade) values(34);
      SET i = i + 1;
    end while;
  end //
delimiter ;

use teste;
call teste;
select * from testeDefault;
select * from testeNull;
 

SELECT 
  table_name "testeDefault",   
  data_length / 1024 / 1024 "Tamanho da tabela em MB", 
  index_length / 1024 / 1024 "Tamanho do indice em MB", 
engine FROM information_schema.TABLES 
WHERE table_name like 'testeDefault';


