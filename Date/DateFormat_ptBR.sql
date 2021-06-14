use estudos;
drop table if exists pessoas;

create table pessoas(id int auto_increment,
  nome varchar(50),
  criadoEm datetime,
  primary key(id));
  
insert into pessoas(nome, criadoEm) values('Leandro', '2021-06-05 04:12:30'); 

select 
  date_format(criadoEm, '%d-%m-%Y %H:%i:%s') AS 'Criado em',
  date_format(date_add(criadoEm, interval 12 hour), '%d-%m-%Y %H:%i:%s') AS 'Criado em PTBR'
  
from pessoas;  