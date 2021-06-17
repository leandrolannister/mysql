use audit;

create trigger tr_log_produto_DELETE after DELETE on produto
  
for each row 
    insert into log(tabela, acao, idRegistro, dt, usuario, antes, depois) 
    values('Produto', 'DELETE', old.idProduto, now(), CURRENT_USER(), concat(old.nome, ' | ', old.preco), NULL); 

    delete from produto where idProduto = 5;