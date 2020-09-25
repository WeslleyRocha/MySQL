-- Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as informações dos alunos deste registro dessa escola. 
-- Crie uma tabela alunos/a e utilizando a habilidade de abstração e determine 5 atributos relevantes dos alunos/a para se trabalhar com o serviço dessa escola.
-- Popule esta tabela com até 8 dados;
-- Faça um select que retorne o/as alunos/a com a nota maior do que 7.
-- Faça um select que retorne o/as alunos/a com a nota menor do que 7.
-- Ao término atualize um dado desta tabela através de uma query de atualização.
-- Salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e coloque no seu GitHuB pessoal e compartilhe esta atividade.


-- Criando Banco de Dados Escola
create database Bd_Escola;

-- Usando o Banco de Dados
use Bd_Escola;

-- Criando Tabelas
create table Tb_Alunos (
Ra int(5) auto_increment primary key,
Nome varchar(50) not null,
Sobrenome varchar(50) not null,
Serie varchar(3) not null,
Nota int (1) not null,
Faltas int (2) not null
);

-- Visualizando TabelaS
select * from Tb_Alunos;

-- Populando a Tabela Alunos 
insert into Tb_Alunos(Nome,Sobrenome,Serie,Nota,Faltas) value ("Weslley","Rocha","3",10,2);
insert into Tb_Alunos(Nome,Sobrenome,Serie,Nota,Faltas) value ("Humberto","Teixeira","3",5,30);
insert into Tb_Alunos(Nome,Sobrenome,Serie,Nota,Faltas) value ("Smith","Gates","3",6,20);
insert into Tb_Alunos(Nome,Sobrenome,Serie,Nota,Faltas) value ("Andre","Almeida","3",8,5);
insert into Tb_Alunos(Nome,Sobrenome,Serie,Nota,Faltas) value ("Jonathas","Gomes","3",7,20);
insert into Tb_Alunos(Nome,Sobrenome,Serie,Nota,Faltas) value ("Filipe","Buzys","3",10,3);
insert into Tb_Alunos(Nome,Sobrenome,Serie,Nota,Faltas) value ("Jeef","Gomes","3",8,33);


-- Selec Notas Maiores que 7
select * from Tb_Alunos where Nota >=7;

-- Selec Notas Menores que 7
select * from Tb_Alunos where Nota <=7;

-- Aulizando dados da tabela
update Tb_Alunos set Faltas = 30 where RA = 1;

-- Apagar dados;
drop table Tb_Produtos;
