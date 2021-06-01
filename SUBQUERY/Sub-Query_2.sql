use sql2;

SELECT A.nome, AVG(nota) AS media,   
   AVG(nota) - (SELECT AVG(nota) FROM nota) AS diferença                                      
FROM nota n JOIN         
   resposta  r ON r.id = n.resposta_id  JOIN
   exercicio e ON e.id = r.exercicio_id JOIN
   secao     s ON s.id = e.secao_id     JOIN 
   aluno     a ON a.id = r.aluno_id   
   
   WHERE A.id in (SELECT aluno_id from matricula 
                  where data < now() - interval 2 month)					 
   GROUP BY a.nome;
   
   
   
   

   
