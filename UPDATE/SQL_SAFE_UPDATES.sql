DROP DATABASE IF EXISTS estudos;
CREATE DATABASE IF NOT EXISTS estudos;

USE estudos;
CREATE TABLE livros(id int auto_increment primary key,
desc_livro varchar(20),
valor decimal(10,2),
dt date) auto_increment = 5;

INSERT INTO livros(desc_livro, valor, dt) values('Anderson', 500.02, "2019-06-27");
INSERT INTO livros(desc_livro, valor, dt) values('B', 400.02, "2018-08-01");
INSERT INTO livros(desc_livro, valor, dt) values('C', 600.02, "2019-10-27");
INSERT INTO livros(desc_livro, valor, dt) values('D', 700.02, "2017-03-4");
INSERT INTO livros(desc_livro, valor, dt) values('E', 1000.00, "1983-08-11");
INSERT INTO livros(desc_livro, valor, dt) values('Amanda', 50.02, "2019-06-27");
INSERT INTO livros(desc_livro, valor, dt) values('B', 40.02, "2018-08-01");
INSERT INTO livros(desc_livro, valor, dt) values('C', 60.02, "2019-02-27");
INSERT INTO livros(desc_livro, valor, dt) values('D', 70.02, "2017-03-4");
INSERT INTO livros(desc_livro, valor, dt) values('E', 2000.00, "1983-08-11");

SET SQL_SAFE_UPDATES = 0; /* Permite EXCLUIR/ALTERAR registros onde o where não chama a chave primarya */
DELETE FROM livros WHERE dt >= "2019-01-01";


SELECT * FROM livros ORDER BY ID;



