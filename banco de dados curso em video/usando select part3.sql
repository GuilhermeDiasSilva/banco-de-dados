-- o group servira para pegar os msm registros e formar grupoos com ele, posso fazer aparecer quantos curso que deu 
-- em cada grupo usando o count
select totaulas, nome, count(nome) from cursos
group by totaulas order by totaulas;

SELECT * FROM cursos WHERE totaulas = 30;

-- selecionar quantas horas tem o curso selecionada por total de aulas = 30 e agrupada por carga
select carga,nome, count(nome) from cursos where totaulas = 30
group by carga order by carga;

-- selecionar os anos que fiz mais cursos
-- o having serve para saber a maior incidencia no caso aki de cursos
select ano, count(*) from cursos group by ano
having count(ano) >= 5	
order by count(*) desc;

-- media de cursos
select avg(carga) from cursos;

-- select usado para  selecionar, agrupar e ainda mostrar somente a carga acima da media usando um select dentro de outro select
SELECT carga, count(*) FROM cursos WHERE ano > 2018 GROUP BY carga
having carga > (select avg(carga) from cursos);

-- exercicio 1
-- uma lista com as profissao dos gafanhotos  e seus respectivos quantitativos
select profissao, count(*) from gafanhotos group by profissao;

-- exercicio 2
-- qunatos gafanhotos homens e mulheres nasceram apos 01/jan/2005
select count(sexo) from gafanhotos where nascimento > '2005/01/01' group by sexo;

-- exercicio 3
-- uma lista com os gafanhotos que nasceram fora do brasil, mostrando o pais de origem e o total de pessoas nascidas la
-- so nos interessa os paises que tiverem mais de 3  gafanhotos com essa nacioalidade
select nacionalidade, count(*) from gafanhotos where nacionalidade <> 'brasil'
group by nacionalidade
having count(nacionalidade) > 3 ; 

-- exercicio 4
-- uma lista grupada por altura  dos gafanhotos, mostrando qunatas pessoas pesam mais de 100kg e que estao acima da media de altura
select avg(altura) from gafanhotos;
select altura, nome, count(*) from gafanhotos where peso > '100'
 group by altura having altura > (select avg(altura) from gafanhotos);
 
 