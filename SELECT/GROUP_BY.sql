/*DROP DATABASE IF EXISTS estudos;
CREATE DATABASE estudos;*/

use estudos;

/*CREATE TABLE vendas(id smallint primary key,
vendedor varchar(20),
quantidade int,
produto varchar(20),
cidade varchar(20));

INSERT INTO Vendas (id, vendedor, Quantidade, produto, cidade)
  VALUES
(10,'Jorge',1400,'Mouse','São Paulo'),
(12,'Tatiana',1220,'Teclado','São Paulo'),
(14,'Ana',1700,'Teclado','Rio de Janeiro'),
(15,'Rita',2120,'Webcam','Recife'),
(18,'Marcos',980,'Mouse','São Paulo'),
(19,'Carla',1120,'Webcam','Recife'),
(22,'Roberto',3145,'Mouse','São Paulo');*/


/* Soma apenas dos mouses*/
SELECT cidade, sum(quantidade) 
FROM vendas 
WHERE produto = 'Mouse';

/* Soma de todos os produtos por cidade */
SELECT cidade, sum(quantidade) 
FROM vendas 
GROUP BY cidade;

/* NUmero de vendas por cidade */
SELECT cidade, count(*) 
FROM vendas
GROUP BY cidade;





