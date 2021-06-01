DROP DATABASE if exists estudos;
CREATE DATABASE estudos;
USE estudos;

CREATE TABLE departamentos(id int auto_increment primary key,
nome varchar(50));

CREATE TABLE funcionarios(id int auto_increment primary key,
nome varchar(50),
salario double(10,2),
depto_id int);
ALTER TABLE funcionarios add foreign key(depto_id) references departamentos(id);

INSERT INTO departamentos(nome) values('Compras');
INSERT INTO departamentos(nome) values('TI');
INSERT INTO funcionarios(nome, salario, depto_id) values('Leandro', 100,1);
INSERT INTO funcionarios(nome, salario, depto_id) values('Soares', 80,1);
INSERT INTO funcionarios(nome, salario, depto_id) values('Ribeiro', 30,2);
INSERT INTO funcionarios(nome, salario, depto_id) values('Carla', 100,2);

/*Sub Query*/
SELECT * 
FROM funcionarios 
WHERE salario > (select avg(salario) from funcionarios);

SELECT nome 
FROM funcionarios 
WHERE depto_id in (select id from departamentos where nome = 'Compras')

