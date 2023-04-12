INSERT INTO tb_produtos(nome, quantidade, preco)
VALUES("Sacola verde", 20, 5.60);

alter table tb_produtos convert to character set utf8mb4 collate utf8mb4_0900_as_ci;

SELECT * FROM tb_produtos;

SHOW FULL COLUMNS FROM tb_produtos;

SELECT * FROM tb_produtos ORDER by nome;

SELECT * FROM tb_produtos ORDER BY nome, preco DESC;

SELECT * FROM tb_produtos WHERE NOT categoria_id = 1;

SELECT * FROM tb_produtos WHERE preco IN (5, 10, 15);

SELECT * FROM tb_produtos WHERE preco BETWEEN 5 AND 15;

SELECT * FROM tb_produtos WHERE nome LIKE "ra%";

SELECT * FROM tb_produtos WHERE nome LIKE "%ra%";

SELECT COUNT(*) FROM tb_produtos;

SELECT  COUNT(categoria_id) FROM tb_produtos;

SELECT SUM(preco) AS Soma_Preço FROM tb_produtos;

SELECT AVG(preco) AS Média_Preço FROM tb_produtos;

SELECT categoria_id, AVG(preco) AS Média_Preço FROM tb_produtos GROUP BY categoria_id;

SELECT MAX(preco) FROM tb_produtos;

SELECT MIN(preco) FROM tb_produtos;

-- inner pega apenas a intersecção, ou seja, aoenas produtos que tenham uma categoria associada
SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;
-- selecione todos os produtos em uniao das 2 tabelas pegando apenas os produtos que possuam uma chave estrangeira onde a chave primaria é igual a da tabela de categorias

SELECT * FROM tb_produtos LEFT JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;
-- left join pega a intersecção e os produtos da esquerda que não tenham uma categoria associada

SELECT * FROM tb_produtos RIGHT JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id;
-- inverso do left: mostra todos os dados da tabela da direita + intersecção

SELECT * FROM tb_produtos INNER JOIN tb_categorias ON tb_produtos.categoria_id = tb_categorias.id WHERE tb_categorias.descricao = "frutas" ORDER BY nome;



