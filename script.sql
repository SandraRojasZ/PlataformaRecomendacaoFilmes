create database filmes
use filmes

create table usuario(id int primary key auto_increment, nome varchar(50), senha varchar(50), email varchar(100), tipo_user varchar(100));
desc usuario;
select * from usuario;

create table cad_peli(id int primary key auto_increment, titulo varchar(100), diretor varchar(100), genero varchar(100), foto varchar(100));
ALTER TABLE cad_peli ADD CONSTRAINT unique_titulo UNIQUE (titulo);
ALTER TABLE cad_peli ADD media DOUBLE;
desc cad_peli;
select *from cad_peli;

