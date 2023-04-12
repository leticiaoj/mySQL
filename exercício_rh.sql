CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_colaboradores(
	id bigint auto_increment,
    nome varchar(255) not null,
    cpf varchar(255) not null,
    anocontratacao int,
    cargo varchar(255) not null,
    salario decimal not null,
    primary key(id)
    );
 
INSERT INTO tb_colaboradores(nome, cpf, anocontratacao, cargo, salario)
values ("Rubi", "123.456.789-12", 2022, "CEO", 4001.00);
INSERT INTO tb_colaboradores(nome, cpf, anocontratacao, cargo, salario)
values ("Jasmine", "456.789.123-45", 2022, "Gerente", 3000.00);
INSERT INTO tb_colaboradores(nome, cpf, anocontratacao, cargo, salario)
values("Leonardo", "789.123.456-78", 2023, "Gestor de vendas", 1999.00);
INSERT INTO tb_colaboradores(nome, cpf, anocontratacao, cargo, salario)
values("Vitor", "111.222.333-44", 2023, "Analista de TI", 1999.00);

SELECT * FROM tb_colaboradores;

SELECT * FROM tb_colaboradores WHERE salario > 2000.00;

SELECT * FROM tb_colaboradores WHERE salario < 2000.00;

UPDATE tb_colaboradores SET salario = 1998.00 WHERE id = 7;

SET SQL_SAFE_UPDATES = 0;



