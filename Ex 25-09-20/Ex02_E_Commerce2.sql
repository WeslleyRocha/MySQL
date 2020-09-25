-- Criando Banco de Dados E Commerce
create database bd_e_commece2;

-- Usando o Banco de Dados
use bd_e_commece2;

-- Criando Tabelas
create table tb_categoria (
id bigint(5) auto_increment primary key,
marca varchar(50) not null,
departamento varchar(50) not null,
lote varchar(20) not null
);

-- Criando Tabelas
create table tb_produto (
id bigint(5) auto_increment primary key,
nome varchar(50) not null,
modelo varchar(50) not null,
cor varchar(10) not null,
valor decimal(7.2) not null,
categoria_id bigint not null,
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_categoria (marca,departamento,lote) values
("Samsung","Eletronico","SG123XXH1"),
("LG","Eletronico","LG123XXH2"),
("SONY","Eletronico","SY123XXH3"),
("Microsoft","Eletronico","MS123XXH3");

insert into tb_produto (nome,modelo,cor,valor,categoria_id) values
("Celular","Galaxy 10 Lite","Preto", 4000.00, 1),
("TV","LG Smart 4K 70PL ","Preto", 9000.00, 2),
("PlayStation","PlayStation 5","Preto", 4500.00 , 3),
("XBox","XBOX SERIES X ","Preto", 4000.00, 4),
("XBox","XBOX SERIES S ","Branco", 2500.00, 4),
("Celular","Galaxy 5 Lite","Preto", 1100.00, 1);

-- Vendo Tabelas
select * from tb_categoria;


-- Valores acima de R$:2.000,00
select * from tb_produto where valor > 2000.00;

-- Valores acima de R$:1.000,00 até R$:2.000,00
select * from tb_produto where valor >1000.00 and  valor <2000.00;

-- Selecionar valores com a letra C
select * from tb_produto where nome like 'x%';

