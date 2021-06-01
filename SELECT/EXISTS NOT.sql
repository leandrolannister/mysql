use sql2;

SELECT * FROM aluno  
   WHERE NOT EXISTS ( SELECT * FROM matricula  
					   WHERE matricula.aluno_id = aluno.id );