use sql2;

SELECT * FROM aluno a   
   WHERE EXISTS ( SELECT * FROM matricula m			      
				  WHERE m.aluno_id = a.id 
                  and   m.data < now() - interval 6 month); 
