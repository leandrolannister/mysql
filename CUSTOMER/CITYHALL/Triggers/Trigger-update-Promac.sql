use promac;

DROP TRIGGER if exists tr_log_incentivador_pj;
CREATE TRIGGER tr_log_incentivador_pj AFTER  UPDATE ON incentivador_pessoa_juridica
  FOR EACH ROW
    
    INSERT INTO  weblogs(tabela, acao, idRegistro, documento, dataOcorrencia,  antes, depois)     
    
    VALUES('incentivador_pessoa_juridica', 'UPDATE', new.idPj, new.cnpj, now(),        
      concat('NOME:',old.razaoSocial,
			'|','CNPJ:', old.cnpj,
            '|','LOGRADOURO:', old.logradouro,
            '|','BAIRRO:', old.bairro,
            '|','CIDADE:', old.cidade,
            '|','ESTADO:', old.estado,
            '|','CEP:', old.cep,
            '|','NUMERO:', old.numero,
            '|','COMPLE:', old.complemento,
            '|','TELEFONE:', old.telefone,
            '|','CELULAR:', old.celular,
            '|','EMAIL:', old.email,
            '|','ID-REPRESENT:', old.idRepresentanteLegal,
            '|','LIBERADO:', old.liberado,
            '|','SENHA:', old.senha,
            '|','ID-NIV-ACESS:', old.idNivelAcesso,
            '|','FRASE-SEGUR:', old.idFraseSeguranca,
            '|','RESP-FRASE:', old.respostaFrase,
            '|','DT-INSCRICAO:', old.dataInscricao
         ),
         
     concat('NOME:',new.razaoSocial,
            '|','CNPJ:', new.cnpj,
            '|','LOGRADOURO:', new.logradouro,
            '|','BAIRRO:', new.bairro,
            '|','CIDADE:', new.cidade,
            '|','ESTADO:', new.estado,
            '|','CEP:', new.cep,
            '|','NUMERO:', new.numero,
            '|','COMPLE:', new.complemento,
            '|','TELEFONE:', new.telefone,
            '|','CELULAR:', new.celular,
            '|','EMAIL:', new.email,
            '|','ID-REPRESENT:', new.idRepresentanteLegal,
            '|','LIBERADO:', new.liberado,
            '|','SENHA:', new.senha,
            '|','ID-NIV-ACESS:', new.idNivelAcesso,
            '|','FRASE-SEGUR:', new.idFraseSeguranca,
            '|','RESP-FRASE:', new.respostaFrase,
            '|','DT-INSCRICAO:', new.dataInscricao     
    ));