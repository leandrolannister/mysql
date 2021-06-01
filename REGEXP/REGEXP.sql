DROP DATABASE IF EXISTS estudos;
CREATE DATABASE IF NOT EXISTS estudos;

use estudos;

CREATE TABLE livros(id int auto_increment,
nome varchar(50),
preco decimal(12,2),
primary key(id));

INSERT INTO livros(nome, preco) VALUES('PHP', 30);
INSERT INTO livros(nome, preco) VALUES('Python', 15);
INSERT INTO livros(nome, preco) VALUES('Java', 150);
INSERT INTO livros(nome, preco) VALUES('Ruby', 15);
INSERT INTO livros(nome, preco) VALUES('Basic Pascal', 1);
INSERT INTO livros(nome, preco) VALUES('Pascal', 2);
INSERT INTO livros(nome, preco) VALUES('XML', 25);
INSERT INTO livros(nome, preco) VALUES('TXT', 85);

/* bUSCA Nomes que começam com P e R */
SELECT * FROM livros WHERE nome REGEXP '^[PR]'; 

/*Busca nomes que NÃO inicia com P E R  ^[^] = NEGAÇÃO*/
SELECT * FROM livros WHERE nome REGEXP '^[^PR]';

/* Busca livros que terminam com a e l */
SELECT * FROM livros WHERE nome REGEXP '[al]$'; 

/* Busca livros que começam om J, X ou T*/
SELECT * FROM livros WHERE nome REGEXP '^[JX]|T' ORDER BY nome;