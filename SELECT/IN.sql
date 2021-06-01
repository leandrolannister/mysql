use controle_compras;
update compras set observacoes = 'datas festivas'
   where data in ('2010-12-25', '2010-10-12', '2010-06-12'); 