-- Crie um banco de dados para um serviço de RH de uma empresa, onde o sistema trabalhará com as informações dos funcionários desta empresa.
-- Crie uma tabela de funcionários e utilizando a habilidade de abstração e determine 5 atributos relevantes dos funcionários para se trabalhar com o serviço deste RH.
-- Popule esta tabela com até 5 dados;
-- Faça um select que retorne os funcionários com o salário maior do que 2000.
-- Faça um select que retorne os funcionários com o salário menor do que 2000.
-- Ao término atualize um dado desta tabela através de uma query de atualização.
-- Salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.

-- Criando Banco de Dados Rh
create database bd_RH;

-- Usando o Banco de Dados
use bd_RH;

-- Criando Tabelas
create table tb_Funcionarios(
ID int(5) auto_increment primary key,
Nome varchar(50) not null,
CPF bigint (11) not null,
RG varchar(9) not null,
Idade int (2) not null,
Salario float not null
);

-- Vendo Tabelas
select * from tb_Funcionarios;

-- Populando a Tabela Funcionarios 
insert into tb_Funcionarios(Nome,CPF,RG,Idade,Salario) value ("Jonathas Gomes",41667601878,"485219054",18,1500);

-- Selec Salarios Maiores que 2,000,00
select * from tb_Funcionarios where Salario >=2000;

-- Selec Salarios Menores que 2,000,00
select * from tb_Funcionarios where Salario <=2000;

-- Aulizando dados da tabela
update tb_Funcionarios set Idade = 32 where Id = 8;

