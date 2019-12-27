create database aula2410;

use aula2410;
 create table websites(
	website_id int(11) primary key,
    website_name varchar(25) not null,
    server_name varchar(20),
    creation_date date,
    constraint websites_unique unique (website_name)
    );
    
     ALTER TABLE websites add constraint website_server_unique unique (website_name, server_name);
     
      create table ti(a int default 1,
      b int default 2 );
      create table t1 ( a int check (a>2),
      b int check (b>2), constraint a_greater check (a>b));
      
       ALTER TABLE t1 drop  CONSTRAINT a_greater;
       
        create table t2(name VARCHAR(30) CHECK (CHECK_LENGTH(name)>2),
        start_date DATE,
        end_date DATE CHECK (start_date IS NULL OR end_date IS NULL OR start_date<end_date));
        
         create table animals ( id int NOT NULL AUTO_INCREMENT, name char(30) not null, PRIMARY KEY (id));
         
         insert into person (first_name, last_name) Values ('John', 'Doe');	
         
         insert into websites (website_id, website_name, server_name, creation_date) values (1, 'Google', 'google','2019/10/24');
         
         insert into websites values (2,'Youtube','yt','2015/02/02'),
         (3,'insta','istagram','2013/01/05');
         
         insert into ti (a) values (5);
         insert into ti (b) values (4);
         
         insert into t1 (a, b) values (2, 1);
         
         insert into t2 (name, start_date, end_date) values ('Guilherme', '2001/02/04', '2019/10/24');
         
         insert into animals (name) values ('Leao'),
         ('Rato'), ('Sogra');
         
         update animals set name = 'Lince' where id=8;
         update ti set b = 15 where a = 2;
         
         update t1 set a = '1000',	 b = '2000';
         update t1 set a=(a+b), b=2100;
         
         