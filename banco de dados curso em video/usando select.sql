select  ano, nome, carga from cursos
order by ano, nome;

-- seleciona os curso q vai ter em 2016, e só vai aparecer oq eu colocar no select
-- ordem by é para aparecer na ordem que desejar

select nome, descricao, ano from cursos
where ano <= '2016'
order by nome, ano;

-- operador between posso especificar faixar de valores

select nome, ano from cursos
where ano between 2014 and 2015
order by ano desc,nome asc;

-- operador in é para valor especificos e so vai mostrar o que colocar
select nome, descricao, ano from cursos
where ano in (2014, 2016,2020)
order by ano;


select  nome, carga, totaulas from cursos
where carga > 35 or totaulas = 30;
desc cursos;



-- parte dois de select 'operador like' se colocar depois da letra ele seleciona com a letra inicial %a
-- e se colocar no final de %a vai escolher os dados cadastrais pelo final
-- selecionar qualquer coisa ou nada %
-- ele vai selecionar qual coisa que tenha %a% A
-- se colocar 'PH%P ele vai pegar as 2 primeiras letras e a ultima letra 
-- para que ele pega algum caractere tipo numero coloca '_'
-- pegar qualquer palavra que comece com 'p' tenha qualquer letra no meio'_' e termine com 't%' 'p_t%'

select * from cursos
where nome like 'p_t%';

select * from gafanhotos
where nome like 'silva';

-- distinguindo
select distinct nacionalidade from gafanhotos
order by nacionalidade;

-- count (*) conta oq vc colocar entre ()
select count(*) from cursos where carga > 40;

-- para ver somente o maior numero de carga usando o max(carga)
select max(carga) from cursos;
select max(totaulas) from cursos where ano = '2016';

-- min para pegar o menor valor 
select nome, min(totaulas) from cursos where ano = '2016';

-- 'sum' somatorio do total de aulas de todos os cursos
select sum(totaulas) from cursos where ano = '2016';

-- avg tirar a media do total de aulas do curso
select avg(totaulas) from cursos where ano = '2016';

-- exercicio 1
select nome, sexo from gafanhotos
where sexo = 'F'
order by nome;

-- exercicio2
select * from gafanhotos
where nascimento between '2000/01/01' and '2015/12/31'
order by nome;

-- exercicio3
select nome, profissao, sexo from gafanhotos
where sexo = 'm' and profissao = 'programador'
order by nome ;

-- exercicio 4 
select nome, sexo, nacionalidade from gafanhotos
where sexo = 'F' and nacionalidade = 'brasil'
order by nome;

-- exercicio 5
select nome, nacionalidade, peso, sexo from gafanhotos
where sexo = 'm' and nacionalidade != 'brasil' and nome like '%silva%' and peso < '100'
order by peso;

-- exercicio 6
select max(altura) from gafanhotos where nacionalidade = 'brasil' order by altura;

-- exerxcicio 7
-- qual é a media de peso dos gafanhotos cadastrados
select avg(peso) from gafanhotos;

-- exercicio 8
-- qual é o menor peso das mulheres q nasceram fora do brasil entre 01/01/1990 a 31/12/2000
select min(peso)  from gafanhotos where sexo = 'f' and nacionalidade <> 'brasil' and nascimento between '1990/01/01' and '2000/12/31';

-- exercicio 9
-- quantas gafonhotas mulher tem mais de 1.90 de alura
select count(altura) from gafanhotos where sexo = 'F' and altura > '1.90';

desc gafanhotos;