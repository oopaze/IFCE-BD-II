/*
Em todas essas tabelas que se relacionam com 
o produto foram especificados os codigo para 
que não houvessem erros no momento de 
inserção do item no que diz respeito a 
construção da relação entre produto e a tabela relacionada
*/


-- Inserindo categorias ao banco
INSERT INTO 
    categoria
VALUES
    (1, 'Frios'),
    (2, 'Bebidas'),
    (3, 'Enlatados'),
    (4, 'Higiene'),
    (5, 'Frutas'),
    (6, 'Doces');


-- Inserindo marcas ao banco
INSERT INTO
    marca
VALUES
    (1, 'Gillette'),
    (2, 'Durex'),
    (3, 'Havaianas'),
    (4, 'Band-aid'),
    (5, 'OMO'),
    (6, 'Maizena'),
    (7, 'Dona Laura'),
    (8, 'Aurora'),
    (9, 'Brilux');


-- Inserindo unidades ao banco
INSERT INTO 
    unidade
VALUES 
    (1, 'kg'),
    (2, 'g'),
    (3, 'l'),
    (4, 'fardo'),
    (5, 'unidade');


-- Inserindo produtos ao banco
INSERT INTO
    produto (
        descricao, 
        preco_custo, 
        preco_venda, 
        quantidade, 
        quantidade_minima, 
        categoria_fk, 
        marca_fk, 
        unidade_fk
    )
VALUES 
    ('Arroz', 2.20, 109.99, 18, 0, 3, 7, 1),
    ('Feijão', 21.20, 19.99, 50, 0, 3, 7, 1),
    ('Mortadela', 0.20, 85.99, 70, 0, 1, 8, 2),
    ('Agua Sanitaria', 1.20, 5.99, 30, 0, 4, 9, 3),
    ('Chinelo', 10.20, 49.99, 3, 0, 4, 3, 1),
    ('Natação', 51.20, 55.99, 15, 0, 4, 3, 1),
    ('Goiabada', 55.50, 6.99, 30, 0, 6, 4, 2);