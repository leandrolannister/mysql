use controle_compras;
alter table compras add column forma_pgto enum('CARTAO', 'BOLETO', 'DINHEIRO');
