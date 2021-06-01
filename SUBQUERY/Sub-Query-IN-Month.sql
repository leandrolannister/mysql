select a.nome, avg(n1.nota) as media, 
avg(n1.nota) - 
	
    (select avg(n2.nota) from nota n2) as diferenca

from nota n1
	join resposta r on r.id = n1.resposta_id
	join exercicio e on e.id = r.exercicio_id
	join secao s on s.id = e.secao_id
	join aluno a on a.id = r.aluno_id
where 
	a.id in (select aluno_id from matricula where data < now() - interval 3 month)

group by a.nome;