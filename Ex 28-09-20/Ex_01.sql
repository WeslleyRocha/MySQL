-- Crie um banco de dados para um serviço de um açougue, o nome do banco deverá ter o seguinte nome db_cidade_das_carnes, onde o sistema trabalhará com as informações dos produtos desta empresa.
-- O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.siga exatamente esse passo a passo:
-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço desse açougue.
-- Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço desse açougue(não esqueça de criar a foreign key de tb_categoria nesta tabela).
-- Popule esta tabela Categoria com até 5 dados.
-- Popule esta tabela Produto com até 8 dados.
-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
-- Faça um select utilizando LIKE buscando os Produtos com as letras CO.
-- Faça um um select com Inner join entre tabela categoria e produto.
-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).

create database bd_cidade_das_carnes;

use bd_cidade_das_carnes;

create table tb_produto
( 
id bigint(5) auto_increment primary key,
nome varchar(20) not null,
marca varchar(20) not null,
validade date not null,
peso float not null,
preco float not null,
categoria_id bigint, 
foreign key (categoria_id) references tb_categoria (id)
);

create table tb_categoria
(
id bigint(5) auto_increment primary key,
produto varchar(20) not null,
tipo varchar(20) not null,
lote varchar(10)
);

select * from tb_produto;
select * from tb_categoria;
drop table tb_categoria;

insert into tb_produto (nome, marca, validade, peso, preco) values
("Carne","Seara", 20200930, 2, 29.99),
("Linguiças","Seara", 20200930, 4, 49.99),
("Carne","Pergigão", 20201005, 5, 69.99),
("Carne","Pergigão", 20201005, 10, 149.99);

insert into tb_categoria (produto,tipo,lote) values
("Carne","Coxão Mole", "CC000123"),
("Linguiças","Coxão Mole", "CC000123"),
("Carne","Medio", "CC000123"),
("Carne","Grande", "CC000123");

select * from tb_produto where preco > 50.00;

select * from tb_produto where preco > 3 and preco < 60.00;

select * from tb_produto where nome like "%c%";

select * from tb_produto
inner join tb_categoria on tb_produto.id = tb_categoria.id;

select tb_produto.nome, tb_produto.validade, tb_produto.preco, tb_categoria.lote from tb_produto
inner join tb_categoria on tb_produto.id = tb_categoria.id;
