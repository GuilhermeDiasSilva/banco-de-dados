create database  cadastro
default character set utf8
default collate utf8_general_ci;

create table pessoas(
id int not null auto_increment,
nome varchar(30) not null,
nascimento date,
sexo enum('M','F'),
peso decimal(5,2),
altura decimal(3,2),
nascionalidade varchar(20) default 'Brasil',
primary key(id)
) default charset utf8;
select * from pessoas;
describe pessoas;
use cadastro;

use cadastro;
create table pessoas (
nome varchar(30),
idade tinyint,
sexo char(1),
peso float,
altura float,
nascionalidade varchar(20)
);
describe pessoas;

create table if not exists cursos(
nome varchar(30) not null unique,
descricao text,
carga int unsigned,
totalAulas int unsigned,
ano year default '2019'
) default charset=utf8;

alter table cursos
add column idcurso int first;	

alter table cursos
add primary key (idcurso);

describe cursos;


insert into cursos values
('1', 'HTML4','Curso de HTML5','40','37','2014'),
('2', 'Algoritmos','Logica de Programacao', '20', '15', '2014'),
('3', 'Photoshp', 'Dicas de Photoshopot CC', '10', '8', '2014'),
('4', 'PGP','Curso de PHP para iniciantes', '40', '20', '2010' ),
('5', 'JARVA', 'introducao á Linguagem Java', '10','29','2000'),
('6', 'MYSQL','Banco de dados MYSQL','30','15','2016'),
('7', 'WORD','curso completo de Word','40','30','2018');


use cadastro;
update cursos
set nome = 'JAVA', ano = '2015' , carga = '40'
where idcurso = '5';
select * from cursos;
describe cursos;


insert into pessoas values

(DEFAULT,'maria','1970-02-04', 'F','50.8','1.62','Russia'),
(default,'marcio','1985-03-08','M','90.9','1.90','Noroega'),
(default,'Araucy','1750-01-09','F','61.8','1.65','Brasil');

select * from pessoas;
use cadastro;
describe pessoas;