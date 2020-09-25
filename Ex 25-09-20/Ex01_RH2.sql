
-- Criando banco de dados
create database bd_RH2;

-- Usar colocar o banco em uso
use bd_RH2;

-- Criando Tabelas tb_cargo.
create table tb_cargo
(
id bigint(5) auto_increment,
cargo varchar(20) not null,
obs varchar(100),
departamento varchar(20) not null,
primary key (id)
);

-- Criando Tabelas tb_funcionário
create table tb_funcionario
(
id bigint (5) auto_increment ,
nome varchar(20) not null,
sobrenome varchar(20) not null, 
idade int(2) not null,
cpf bigint (11) not null,
rg int (9) not null,
salario float not null,
cargo_id bigint,
primary key (id),
foreign key (cargo_id) references tb_cargo(id)
);

-- Inserindo valores
insert into tb_funcionario (nome, sobrenome, idade, cpf, rg, salario) value 
("Weslley","Rocha",20,89344603693,679484068,2000.00),
("Francco","LaFemina",26,77715586404,274620222,1500.00),
("Matheus","Bello",25,26639235080,617979989,2000.00),
("Stan","Spence",60,00741069105,768363457,1500.00),
("Kristen","Wiig",30,93376962235,488688324,2000.00),
("Ginnifer","Goodwin",25,61875248536,334230459,1500.00),
("Chloe","Bennet",28,43821181311,201709341,800.00);

-- Inserindo valores
insert into tb_cargo (cargo, obs, departamento) value
("Suporte Tecnico", " Bom Funcionario ", "T.I"),
("Suporte Tecnico", " Bom Funcionario " , "T.I"),
("Suporte Tecnico", " Bom Funcionario " , "T.I"),
("Suporte Tecnico", " Bom Funcionario " , "T.I"),
("Suporte Tecnico", " Bom Funcionario " , "T.I"),
("Suporte Tecnico", " Bom Funcionario " , "T.I"),
("Suporte Tecnico", " Bom Funcionario " , "T.I");

-- Selecionando valores acima de R$: 2.000,00
select * from tb_funcionario where salario >=2000;

-- Selecionando valores acima de R$: 1.000,00 e abaixo de R$: 2.000,00
select * from tb_funcionario where salario >1000 and salario <2000;

-- Selecionar valores com a letra C
select * from tb_funcionario where nome like '%c%';

-- Mostrar as informações na tabelas 
select * from tb_cargo;

-- Apagar Tabelas
drop table tb_cargo;
