use sql2;

SELECT * from aluno A 
   where exists ( select * from matricula M
                   where M.aluno_id = A.id )