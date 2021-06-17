DROP DATABASE IF EXISTS estudos;
  CREATE DATABASE estudos;

  use estudos;

  CREATE TABLE paises (id int auto_increment primary key,
    nome varchar(50),
    codigo varchar(3));
    
   insert into paises(nome, codigo) values('Brasil', 'BRL');
   insert into paises(nome, codigo) values('Estados Unidos', 'USA');
   insert into paises(nome, codigo) values('Portugual', 'POR');
   
   SELECT * FROM paises
   WHERE MOD(ID,2) > 0; /*Impar*/
   
   
    
  
    