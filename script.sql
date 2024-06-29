create database filmes
use filmes

create table usuario(id int primary key auto_increment, nome varchar(50), senha varchar(50), email varchar(100), tipo_user varchar(100));
desc usuario;
select * from usuario;

create table cad_peli(id int primary key auto_increment, titulo varchar(100), diretor varchar(100), genero varchar(100), foto varchar(100), media double, TotalAval int);
ALTER TABLE cad_peli ADD CONSTRAINT unique_titulo UNIQUE (titulo);
ALTER TABLE cad_peli ADD media DOUBLE;
ALTER TABLE cad_peli ADD TotalAval INT;
desc cad_peli;
select *from cad_peli;

