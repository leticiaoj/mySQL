CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id bigint auto_increment,
medicamento boolean,
cosmético boolean,
primary key(id)
);


INSERT INTO tb_categorias(medicamento, cosmético)
values (true, false);
INSERT INTO tb_categorias(medicamento, cosmético)
values (true, false);
INSERT INTO tb_categorias(medicamento, cosmético)
values (false, true);
INSERT INTO tb_categorias(medicamento, cosmético)
values (true, false);
INSERT INTO tb_categorias(medicamento, cosmético)
values (false, true);

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int,
    preco decimal(6,2) not null,
    dtvalidade date,
    primary key(id)
    );
    
INSERT INTO tb_produtos(nome, quantidade, preco, dtvalidade)
values ("Dipirona", 60, 14.99, "2024-04-04");
INSERT INTO tb_produtos(nome, quantidade, preco, dtvalidade)
values ("Ibuprofeno", 50, 12.99, "2023-09-07");
INSERT INTO tb_produtos(nome, quantidade, preco, dtvalidade)
values ("Sabonete Asepxia", 20, 8.99, "2023-12-31");
INSERT INTO tb_produtos(nome, quantidade, preco, dtvalidade)
values ("Paracetamol", 40, 11.99, "2024-06-03");
INSERT INTO tb_produtos(nome, quantidade, preco, dtvalidade)
values ("Sabonete Actine", 15, 69.99, "2024-10-18");
INSERT INTO tb_produtos(nome, quantidade, preco, dtvalidade)
values ("Ácido mefenâmico", 30, 29.99, "2023-06-09");
INSERT INTO tb_produtos(nome, quantidade, preco, dtvalidade)
values ("Loratadina", 50, 8.80, "2024-05-06");
INSERT INTO tb_produtos(nome, quantidade, preco, dtvalidade)
values ("Shampoo Jonhsons", 10, 20.80, "2025-05-05");

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.0;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT p.*, c.medicamento, c.cosmético FROM tb_produtos p INNER JOIN tb_categorias c ON p.id = c.id;

SELECT p.* FROM tb_produtos p INNER JOIN tb_categorias c ON p.id = c.id WHERE c.cosmetico = true;
