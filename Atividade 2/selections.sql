-- Apresentar todas as Marcas que possuem Produtos cadastrados
SELECT 
    marca.nome 
FROM 
    marca, produto
WHERE 
    produto.marca_fk = marca.codigo
GROUP BY 
	marca.nome;


-- Apresentar todas as Categorias que possuem Produtos cadastrados
SELECT 
    categoria.descricao 
FROM 
    categoria, produto
WHERE 
    produto.categoria_fk = categoria.codigo
GROUP BY 
	categoria.descricao;


-- Apresentar todas as Unidades que possuem Produtos cadastrados
-- ordenando pela descrição da unidade de forma descendente.
SELECT 
    unidade.descricao 
FROM 
    unidade, produto
WHERE 
    produto.unidade_fk = unidade.codigo
GROUP BY 
	unidade.descricao
ORDER BY
    unidade.descricao DESC;


-- Apresentar todos os produtos que possuem o valor de venda abaixo de
-- R$ 50,00 ordenados pela descrição do produto.
SELECT 
    produto.descricao,
    m.nome AS marca,
    c.descricao AS categoria,
    preco_custo,
    preco_venda,
    quantidade,
    u.descricao As unidade,
    quantidade_minima
FROM 
    produto
INNER JOIN 
    marca m ON m.codigo = produto.marca_fk
INNER JOIN 
    categoria c ON c.codigo = produto.categoria_fk
INNER JOIN 
    unidade u ON u.codigo = produto.unidade_fk 
WHERE 
    preco_venda < 50
ORDER BY
    produto.descricao;


-- Apresentar todos os produtos que possuem o valor de custo acima de
-- R$ 80,00 ordenados pelo valor de custo.
SELECT 
    produto.descricao,
    m.nome AS marca,
    c.descricao AS categoria,
    preco_custo,
    preco_venda,
    quantidade,
    u.descricao As unidade,
    quantidade_minima
FROM 
    produto
INNER JOIN 
    marca m ON m.codigo = produto.marca_fk
INNER JOIN 
    categoria c ON c.codigo = produto.categoria_fk
INNER JOIN 
    unidade u ON u.codigo = produto.unidade_fk 
WHERE 
    preco_venda > 80
ORDER BY
    produto.preco_custo;


-- Apresentar a descrição e os preços de custo e de venda dos produtos
-- que tenham o preço de venda acima de R$ 50,00 e abaixo de R$ 100,00
SELECT 
    descricao,
    preco_custo,
    preco_venda
FROM 
    produto
WHERE 
    preco_venda > 50
        AND
    preco_venda < 100
ORDER BY
    preco_venda, descricao;


-- Apresentar a descrição e a quantidade de produtos em estoque que
-- possuam a quantidade em estoque entre 8 e 20 itens. Ordenar os
-- produtos pela descrição
SELECT 
    descricao,
    quantidade
FROM 
    produto
WHERE 
    quantidade > 8
        AND
    quantidade < 20
ORDER BY
    descricao;


-- Apresentar a descrição dos produtos que possuam o preço de custo
-- entre R$ 20,00 e R$ 70,00. Ordenar os produtos pelo preço de custo e
-- pela descrição.
SELECT 
    descricao,
    preco_custo
FROM 
    produto
WHERE 
    preco_custo > 20
        AND
    preco_custo < 70
ORDER BY
    preco_custo, descricao;


-- Apresentar a descrição dos produtos que possuam a palavra Natação
-- ordenados pela descrição do produto.
SELECT 
    produto.descricao,
    m.nome AS marca,
    c.descricao AS categoria,
    preco_custo,
    preco_venda,
    quantidade,
    u.descricao As unidade,
    quantidade_minima
FROM 
    produto
INNER JOIN 
    marca m ON m.codigo = produto.marca_fk
INNER JOIN 
    categoria c ON c.codigo = produto.categoria_fk
INNER JOIN 
    unidade u ON u.codigo = produto.unidade_fk 
WHERE 
    'Natação' LIKE '%' || produto.descricao || '%'
ORDER BY
    produto.descricao;


-- Apresentar os dados de todos os Produtos (descrição do produto, preço
-- de custo, preço de venda, quantidade em estoque, quantidade mínima,
-- nome da marca), ordenados pelo nome da marca.
SELECT 
    produto.descricao,
    m.nome AS marca,
    preco_custo,
    preco_venda,
    quantidade,
    quantidade_minima
FROM 
    produto
INNER JOIN 
    marca m ON m.codigo = produto.marca_fk
ORDER BY
    m.nome;


-- Apresentar o total de itens por Marca.
SELECT 
    marca.nome,
    SUM(COALESCE(produto.quantidade, 0)) AS quantidade_produtos
FROM
    marca
LEFT JOIN
    produto ON produto.marca_fk = marca.codigo
GROUP BY 
    marca.nome;


-- Apresentar o total de itens por Categoria.
SELECT 
    categoria.descricao,
    SUM(COALESCE(produto.quantidade, 0)) AS quantidade_produtos
FROM
    categoria
LEFT JOIN
    produto ON produto.categoria_fk = categoria.codigo
GROUP BY 
    categoria.descricao;


-- Apresentar o valor total de venda em estoque por Marca.
SELECT 
    marca.nome,
    SUM(COALESCE(produto.preco_venda, 0)) AS total_venda
FROM
    marca
LEFT JOIN
    produto ON produto.marca_fk = marca.codigo
GROUP BY 
    marca.nome;


-- Apresentar o valor total de venda em estoque por Categoria.
SELECT 
    categoria.descricao,
    SUM(COALESCE(produto.preco_venda, 0)) AS total_venda
FROM
    categoria
LEFT JOIN
    produto ON produto.categoria_fk = categoria.codigo
GROUP BY 
    categoria.descricao;


-- Apresentar as marcas que possuem um total de itens abaixo de 30
SELECT 
    marca.nome,
    SUM(COALESCE(produto.quantidade, 0)) AS quantidade_produtos
FROM
    marca
LEFT JOIN
    produto ON produto.marca_fk = marca.codigo
GROUP BY 
    marca.nome
HAVING 
    SUM(COALESCE(produto.quantidade, 0)) < 30;


-- Apresentar as marcas que possuem o valor total de venda acima de R$ 1000
SELECT 
    marca.nome,
    SUM(COALESCE(produto.preco_venda * produto.quantidade, 0)) AS quantidade_produtos
FROM
    marca
INNER JOIN
    produto ON produto.marca_fk = marca.codigo
GROUP BY 
    marca.nome
HAVING 
    SUM(COALESCE(produto.preco_venda * produto.quantidade, 0)) > 1000;