-- Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações dos produtos deste ecommerce. 
-- Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
-- Popule esta tabela com até 8 dados;
-- Faça um select que retorne os produtos com o valor maior do que 500.
-- Faça um select que retorne os produtos com o valor menor do que 500.
-- Ao término atualize um dado desta tabela através de uma query de atualização.
-- Salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.


-- Criando Banco de Dados E Commerce
create database bd_E_Commece;

-- Usando o Banco de Dados
use bd_E_Commece;

-- Criando Tabelas
create table Tb_Produtos (
ID int(5) auto_increment primary key,
Nome varchar(50) not null,
Valor bigint not null,
Marca varchar(20) not null,
Quantidade int (5) not null,
Lote varchar (10) not null
);

-- Vendo Tabelas
select * from Tb_Produtos;

-- Populando a Tabela Produtos 
insert into Tb_Produtos(Nome,Valor,Marca,Quantidade,Lote) value ("Galaxy Note 10",3099,"Samsung",15,"SGGN10BR");

-- Selec  Produtos maiores que R$: 500,00
select * from Tb_Produtos where Valor >=500;

-- Selec Produtos Menores que R$: 500,00
select * from Tb_Produtos where Valor <=500;

-- Aulizando dados da tabela
update Tb_Produtos set Marca = "Samsung" where ID = 5;

-- Apagar dados;
drop table Tb_Produtos;
