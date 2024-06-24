create database filmes
use filmes;

create table usuario(id int primary key auto_increment, nome varchar(50), senha varchar(50), email varchar(100));
desc usuario;
select * from usuario;
ALTER TABLE usuario ADD tipo_user VARCHAR(100);
ALTER TABLE usuario DROP COLUMN tipo_user;

-- Criar a função de gatilho
DELIMITER $$
CREATE FUNCTION set_tipo_user_default()
BEGIN
    /* Verifica se o ID do novo registro é igual a 1 */
    IF NEW.id = 1 THEN
        /* Define o tipo de usuário como 'admin' */
        SET NEW.tipo_user = 'admin';
    ELSE
        /* Define o tipo de usuário como 'user' */
        SET NEW.tipo_user = 'user';
    END IF;
END 
DELIMITER ;

-- Criar o gatilho
CREATE TRIGGER set_tipo_user_trigger
BEFORE INSERT ON usuario
FOR EACH ROW
CALL set_tipo_user_default();

delete from usuario where id =3;
select *from usuario;

UPDATE usuario
SET tipo_user = 'admin'
WHERE id = 1;

INSERT INTO usuario (nome, senha, email, tipo_user)
VALUES ('Leticia', 'leticia', 'leticia@ifsp.edu.br', 'user');

DROP TRIGGER set_tipo_user_trigger;