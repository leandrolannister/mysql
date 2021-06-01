use sucos_vendas;

select EMBALAGEM,
  case 
    when PRECO_DE_LISTA < 5 then 'Barato'
    when PRECO_DE_LISTA BETWEEN 7 AND 10 then 'Ok'
    else 'Caro' 
  end as status
  from tabela_de_produtos
  GROUP by EMBALAGEM, status
  order by EMBALAGEM;
