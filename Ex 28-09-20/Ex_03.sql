

create database bd_cursoDaMinhaVida;
use bd_cursoDaMinhaVida;

create table tb_categoria
(
id bigint(5) auto_increment primary key,
categoria varchar(20),
tipo_Modulo varchar(20), 
turno varchar(20)
);

create table tb_curso
(
id bigint(5) auto_increment primary key,
curso varchar(20),
tipo varchar(20),
alunos varchar (15),
horario varchar (15),
sala varchar(15),
valor float,
id_categoria bigint(5),
foreign key (id_categoria) references tb_categoria (id)
);

insert into tb_categoria (categoria, tipo_Modulo, turno) values 
("Informatica", "5 Modulos", "Manhã"),
("Ingles", "12 Modulos", "Manhã / Tarde"),
("Computador", "3 Modulos", "Noite"),
("Espanhol", "5 Modulos", "Tarde"),
("Outros", "5 Modulos", "Tarde");

insert into tb_curso (curso, tipo, alunos, horario, sala, valor, id_categoria) values
("Informatica", "EAD", "10", "10hs", "3", 50.00, 1),
("Libras", "Video", "30", "12hs", "Online 1", 150.00 , 5),
("Java", "EAD", "50", "13hs", "1", 20.00, 2 ),
("Office", "EAD", "15", "15hs", "Online 1", 80.00, 3),
("PhotoShopp", "Video", "32", "15hs", "Online 3", 120.00, 3),
("Idiomas", "EAD", "15", "15", "Online 1", 59.99, 3);

select * from tb_curso;

select * from tb_curso where valor > 50.00;

Select* from tb_curso where valor >3.00 and valor <60.00;

select * from tb_curso where curso like "%Jav%";

select * from tb_curso
inner join tb_categoria on tb_curso.id = tb_categoria.id;

select tb_curso.curso, tb_curso.tipo, tb_categoria.tipo_Modulo from tb_curso
inner join tb_categoria on tb_curso.id = tb_categoria.id;




