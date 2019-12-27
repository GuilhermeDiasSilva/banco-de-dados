insert into cursos values
('1', 'HTML4','Curso de HTML5','40','37','2014'),
('2', 'Algoritmos','Logica de Programacao', '20', '15', '2014'),
('3', 'Photoshp', 'Dicas de Photoshopot CC', '10', '8', '2014'),
('4', 'PGP','Curso de PHP para iniciantes', '40', '20', '2010' ),
('5', 'JARVA', 'introducao á Linguagem Java', '10','29','2000'),
('6', 'MYSQL','Banco de dados MYSQL','30','15','2016'),
('7', 'WORD','curso completo de Word','40','30','2018');



update cursos
set nome = 'JAVA', ano = '2015' , carga = '40'
where idcurso = '5';
select * from cursos;
