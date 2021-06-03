use sql2;

SELECT * FROM aluno a 
         WHERE EXISTS (SELECT * FROM matricula m  
					    WHERE m.aluno_id = a.id 
                        AND   m.data < now() - interval 4 day);