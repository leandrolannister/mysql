use audit;

create trigger tr_log_produto_UPDATE after UPDATE on produto
  for each row 
    
    insert into log(tabela, acao, idRegistro, dt, usuario, antes, depois) 
    
    values('Produto', 'UPDATE', new.idProduto, now(), CURRENT_USER(), concat(old.nome, ' | ', old.preco), concat(new.nome, ' | ', new.preco)); 

    update produto set nome = 'Papel Chamex',
                       preco = 50.00
                    where idProduto = 5;

