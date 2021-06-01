use sql2;
select a.id, a.nome, avg(n1.nota) as media, 
avg(n1.nota) - 

  /*Calcula a media geral desprezando o aluno atual na busca */
  ( select avg(n2.nota) from nota n2 JOIN
        resposta r2 on n2.resposta_id = r2.id 
        WHERE r2.aluno_id <> a.id
  ) as diferenca

from 
nota n1

join resposta r on r.id = n1.resposta_id
join exercicio e on e.id = r.exercicio_id
join secao s on s.id = e.secao_id
join aluno a on a.id = r.aluno_id
group by a.nome, a.id