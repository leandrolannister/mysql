DROP DATABASE IF EXISTS estudos;
  CREATE DATABASE estudos;

  use estudos;

  CREATE TABLE paises (id int auto_increment primary key,
    nome varchar(50),
    codigo varchar(3));
    
   insert into paises(nome, codigo) values('Brasil', 'BRL');
   insert into paises(nome, codigo) values('Estados Unidos', 'USA');
   insert into paises(nome, codigo) values('Portugual', 'POR');
   insert into paises(nome, codigo) values('Canada', 'CAN');
   insert into paises(nome, codigo) values('Russia', 'RUa');
   insert into paises(nome, codigo) values('p', 'p');
   
   SELECT 
     id, 
     nome,
     right(nome, 3) lastChar,
     substr(nome, -3,3) lastChar1
   FROM paises;
   
   
    
  
    