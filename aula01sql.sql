CREATE DATABASE db_quitanda;

-- começar a usar o banco
USE db_quitanda;

-- criar tabela
CREATE TABLE tb_produtos(
	id bigint auto_increment,
    nome varchar(255) not null,
    quantidade int,
    preco decimal not null,
    primary key(id)
    );
 
 -- visualizar tabela
SELECT * FROM tb_produtos;

-- popular tabela
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("tomate", 50, 8.80);
INSERT INTO tb_produtos(nome, quantidade, preco)
values ("banana", 200, 12.00);
INSERT INTO tb_produtos(nome, quantidade, preco)
values("uva", 1200, 30.00);
INSERT INTO tb_produtos(nome, quantidade, preco)
values("pêra", 500, 2.99);

-- buscas especificas
SELECT nome, quantidade FROM tb_produtos;

SELECT * FROM tb_produtos WHERE id = 2;

SELECT * FROM tb_produtos WHERE preco > 5.0 AND quantidade < 100;

-- desabilitar nossa segurança do sql
SET SQL_SAFE_UPDATES = 0;

-- atualizar colunas da tabela
UPDATE tb_produtos SET preco = 5.90 WHERE id = 2;

-- deletar item da tabela
DELETE FROM tb_produtos WHERE id = 6 OR id = 7;

-- atualizar coluna
ALTER TABLE tb_produtos MODIFY preco decimal(6,2);

-- adicionar coluna
ALTER TABLE tb_produtos ADD descricao varchar(255);

-- deletar coluna
ALTER TABLE tb_produtos DROP descricao;

-- delete esta relacionado aos itens, enquanto o drop esta relacionado a grande escala, maiores coisas, como colunas, tabela
-- drop apaga estrutura, delete apaga dados

-- alterar nome da coluna
ALTER TABLE tb_produtos CHANGE nome nomedoproduto varchar(255);
