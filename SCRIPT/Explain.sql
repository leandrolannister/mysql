use livraria;
explain select *, (select count(l2.data_de_lancamento) from livros as l2
		   where l2.data_de_lancamento = l.data_de_lancamento) 
           from livros as l
           order by data_de_lancamento;           
           