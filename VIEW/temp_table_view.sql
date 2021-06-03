USE estoque;

DROP VIEW IF exists vw_produtos;
CREATE VIEW vw_produtos 
  AS SELECT produtos.id, 
            produtos.nome, 
            produtos.quantidade, 
            produtos.preco 
  FROM produtos;

SELECT * FROM vw_produtos;


  
