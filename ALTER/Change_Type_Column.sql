use estudos;

DROP TABLE IF EXISTS produtos;

CREATE TABLE produtos(id int auto_increment primary key,
valor decimal(12,0),
ativo bool
);

insert into produtos(valor, ativo) value(0123456789.12, 1);

/* Altera o tipo de dado */
ALTER TABLE produtos CHANGE COLUMN ativo ativo varchar(5);

desc produtos;
