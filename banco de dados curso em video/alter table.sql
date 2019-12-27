desc pessoas;

alter table pessoas
rename to gafanhotos;

alter table gafanhotos
add column profissao varchar(10) after nome;

alter table gafanhotos
modify column profissao varchar(20) not null default '';

alter table gafanhotos
change column profissao prof varchar(20) not null default '';

select * from gafanhotos;