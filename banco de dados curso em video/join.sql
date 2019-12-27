use cadastro;
desc gafanhotos;
-- adicionar uma coluna na tabela
alter table gafanhotos add column cursopreferido int;

-- adicionar a chave secundaria na tabela gafanhotos com referencia a tabela curso
alter table gafanhotos
add foreign key (cursopreferido)
references cursos (idcurso);

select nome, cursopreferido from gafanhotos;
select * from cursos;

update gafanhotos set cursopreferido = '6' where id = '1';

-- juncao de tabela com o join
select gafanhotos.nome, gafanhotos.cursopreferido, cursos.nome, cursos.ano 
from gafanhotos join cursos on (cursos.idcurso = gafanhotos.cursopreferido)
order by gafanhotos.nome;


create table gafanhoto_assiste_curso(
id int not null auto_increment,
data date,
idgafanhoto int,
idcurso int,
primary key(id),
foreign key (idgafanhoto)  references gafanhotos(id),
foreign key (idcurso) references cursos(idcurso)

) default charset = utf8;

select * from gafanhoto_assiste_curso;
insert into gafanhoto_assiste_curso values
(default,'2019-11-28','2','1');