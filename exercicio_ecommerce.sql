CREATE DATABASE db_ecommerce;

USE db_ecommerce;

CREATE TABLE tb_produtoss(
	id bigint auto_increment,
    nome varchar(255) not null,
	preco decimal(5,2) not null,
    fabricante varchar(255) not null,
    garantia varchar(255),
    lote varchar(255) not null,
    primary key(id)
    );
    
    
INSERT INTO tb_produtoss(nome, preco, fabricante, garantia, lote)
values ("Monitor", 501.90, "LG", "1 ano", "753H485");
INSERT INTO tb_produtoss(nome, preco, fabricante, garantia, lote)
values ("Mouse", 79.90, "Multilaser", "5 meses", "85476G634");
INSERT INTO tb_produtoss(nome, preco, fabricante, garantia, lote)
values("Teclado", 90.90, "Logitech", "6 meses", "67676G");
INSERT INTO tb_produtoss(nome, preco, fabricante, garantia, lote)
values("CPU", 600.00, "Dell", "2 anos", "465688");
INSERT INTO tb_produtoss(nome, preco, fabricante, garantia, lote)
values ("Webcam", 129.90, "Logitech", "1 ano", "35467U87");
INSERT INTO tb_produtoss(nome, preco, fabricante, garantia, lote)
values ("Microfone", 200.00, "Blue", "1 ano", "655668");
INSERT INTO tb_produtoss(nome, preco, fabricante, garantia, lote)
values("Notebook", 3999.99, "Samsung", "2 anos", "G7655");
INSERT INTO tb_produtoss(nome, preco, fabricante, garantia, lote)
values("Fones de ouvido", 200.00 , "JBL", "6 meses", "56475D8");

ALTER TABLE tb_produtoss MODIFY preco decimal(6,2);

SELECT * FROM tb_produtoss;

SELECT * FROM tb_produtoss WHERE preco > 500.00;

SELECT * FROM tb_produtoss WHERE preco < 500.00;

UPDATE tb_produtoss SET preco = 3500.00 WHERE id = 8;