use estoque;

drop function if exists fn_calcula_preco;

DELIMITER //
  CREATE FUNCTION 
    fn_calcula_preco(id int) 
  RETURNS DECIMAL(10,2)

  BEGIN 
    DECLARE novo_preco decimal(10,2);
    SELECT       
      preco
    FROM produtos
    WHERE produtos.id = id into novo_preco;
    return novo_preco * 2;    
  END //
DELIMITER ;

select fn_calcula_preco(1);


