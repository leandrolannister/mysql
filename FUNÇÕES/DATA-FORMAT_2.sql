use xura;
select date_format(data, '%Y') as year, sum(valor) as total from compras
group by year;


