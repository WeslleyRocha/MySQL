-- Crie um banco de dados para um serviço de uma loja de produtos de construção, o nome do banco deverá ter o seguinte nome db_construindo_a_nossa_vida, onde o sistema trabalhará com as informações dos produtos desta empresa.
-- O sistema trabalhará com 2 tabelas tb_produto e tb_categoria, siga exatamente esse passo a passo:
-- Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço deste ecommerce.
-- Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine  atributos relevantes dos tb_produto para se trabalhar com o serviço de uma loja de produtos (não esqueça de criar a foreign key de tb_categoria nesta tabela).
-- Popule esta tabela Categoria com até 5 dados.
-- Popule esta tabela Produto com até 8 dados.
-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
-- Faça um select utilizando LIKE buscando os Produtos com as letras CI.
-- Faça um um select com Inner join entre tabela categoria e produto.
-- Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são da categoria hidráulica).


create database bd_construindo_a_nossa_vida;
use bd_construindo_a_nossa_vida;

create table tb_categoria
(
id bigint(5) auto_increment primary key,
categoria varchar(20),
departamento varchar(20), 
marca varchar(20)
);

create table tb_produto
(
id bigint(5) auto_increment primary key,
nome_prod varchar(20),
tipo varchar(20),
cor varchar (10),
valor float,
tamanho varchar(10),
id_categoria bigint(5),
foreign key (id_categoria) references tb_categoria (id)
);

insert into tb_categoria (categoria, departamento, marca) values
("Manual", "Jardinagem", "Tramontina"),
("Eletrico", "Cozinha", "Philco"),
("Conbustivel", "Jardinagem", "Cortar Grama");

insert into tb_produto (nome_prod, tipo, cor, valor, tamanho) values
("Cortador de Grama", "Eletrico","Verde",599.99,1.90),
("Cortar Madeira", "Manual", " Preto", 29.99, 90),
("Tesoura de grama", "Manual", "Preto", 40.00, 20),
("Privada", "Cerâmica", "Branca", 150.99, 90),
("Argamassa", "Construção", "Branca", 49.99, 10);

select * from tb_produto where valor > 50.00;

Select* from tb_produto where valor >3.00 and valor <60.00;

select * from tb_produto where nome_prod like "%c%";

-- Selecionando as tabelas Produtos / Categoria pelo ID
select * from tb_produto
inner join tb_categoria on tb_produto.id = tb_categoria.id;

-- Trazendo as informaçoes de Nome_Prod, Tipo e Valor com o mesmo ID. 
select tb_produto.nome_prod, tb_produto.tipo, tb_produto.valor from tb_produto
inner join tb_categoria on tb_produto.id = tb_categoria.id;

