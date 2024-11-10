create database myfinance;

use myfinance;

create table PLANOCONTA(
	id int not null identity (1,1),
	nome varchar (50) not null,
	tipo char(1) not null,
	primary key (id)
);

create table TRANSACAO (
	id int not null identity (1,1),
	data datetime not null,
	valor decimal(9,2),
	historico varchar(100),
	tipo char(1) not null,
	planocontaid int not null,
	primary key (id),
	foreign key (planocontaid) references PLANOCONTA(id)
);



select * from PLANOCONTA

select * from TRANSACAO

insert into PLANOCONTA (nome, tipo) values ('Combustível','D')
insert into PLANOCONTA (nome, tipo) values ('Alimentação','D')
insert into PLANOCONTA (nome, tipo) values ('Aluguel','D')
insert into PLANOCONTA (nome, tipo) values ('Água','D')
insert into PLANOCONTA (nome, tipo) values ('Luz','D')
insert into PLANOCONTA (nome, tipo) values ('Internet','D')
insert into PLANOCONTA (nome, tipo) values ('Salário','R')
insert into PLANOCONTA (nome, tipo) values ('Crédito de Dividendos','R')

insert into TRANSACAO (data, valor, historico, tipo, planocontaid)
values (getdate(), 458, 'Gasolina da Blazer', 'D', 1)

insert into TRANSACAO (data, valor, historico, tipo, planocontaid)
values ('2024-11-03 13:05', 120.58, 'Almoço de Domingo', 'D', 2)

insert into TRANSACAO (data, valor, historico, tipo, planocontaid)
values ('2024-10-01', 25, 'Padaria', 'D', 2)


insert into TRANSACAO (data, valor, historico, tipo, planocontaid)
values ('2024-31-10', 868.32, 'Dividendos Itaú', 'R', 8)

insert into TRANSACAO values ('2024-05-12', 57.89, 'Dividendos Itaú', 'R', 8)

-- pesquisa tudo
select * from TRANSACAO where tipo = 'D'
select * from TRANSACAO where tipo = 'R'

-- conta quantidades
select count(*) from TRANSACAO where tipo = 'D'
select count(*)  from TRANSACAO where tipo = 'R'

-- soma o valor
select sum(valor) from TRANSACAO where tipo = 'D'
select sum(valor)  from TRANSACAO where tipo = 'R'

-- media dos valores
select avg(valor) from TRANSACAO where tipo = 'D'
select avg(valor)  from TRANSACAO where tipo = 'R'

-- valor maximo
select max(valor) from TRANSACAO where tipo = 'D'
select max(valor)  from TRANSACAO where tipo = 'R'

-- valor minimo
select min(valor) from TRANSACAO where tipo = 'D'
select min(valor)  from TRANSACAO where tipo = 'R'

select * from TRANSACAO where data >= '20240101 00:00:00' and data <= '20240331 23:59:59'
select * from TRANSACAO where data between '20240101 00:00:00' and '20240331 23:59:59' 


select tipo, sum (valor) from TRANSACAO
where data >= '20240101 00:00:00' and data <= '20240331 23:59:59'
group by tipo


-- junção das duas tabelas
select T.*, P.nome as Categoria
from TRANSACAO as T inner join PLANOCONTA as P
ON t.planocontaid = P.id
where data >= '20240101 00:00:00' and data <= '20241231 23:59:59'

-- Como descobrir quais categorias de plano de contas ainda não possui trasanções vinculadas?
-- traz tudo da tabela PLANOCONTA, mesmo que não tenha vinculo com a tabela TRANSACAO
select * from PLANOCONTA AS P 
left join TRANSACAO as T 
on (P.id = T.planocontaid)

select p.id, p.nome, t.id as codigotransacao from PLANOCONTA AS P 
left join TRANSACAO as T 
on (P.id = T.planocontaid)
where T.id is null