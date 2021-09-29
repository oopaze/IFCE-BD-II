INSERT INTO 
    conferencia (cod_conf, nome, _local, ano)
VALUES 
    (1, 'CONFERENCIA 1', 'Ceará', '2016-10-01'),
    (2, 'CONFERENCIA 2', 'Rio', '2015-9-01'),
    (3, 'CONFERENCIA 3', 'São Paulo', '2015-10-01'),
    (4, 'CONFERENCIA 4', 'Pernambuco', '2015-11-01');


INSERT INTO 
    participante (cpf, nome, email, instituicao)
VALUES
    (1, 'PARTICIPANTE 1', 'EMAIL 1', 'INSTITUIÇÃO 1'),
    (2, 'PARTICIPANTE 2', 'EMAIL 2', 'INSTITUIÇÃO 2'),
    (3, 'PARTICIPANTE 3', 'EMAIL 3', 'INSTITUIÇÃO 3'),
    (4, 'PARTICIPANTE 4', 'EMAIL 4', 'INSTITUIÇÃO 4'),
    (5, 'PARTICIPANTE 5', 'EMAIL 5', 'INSTITUIÇÃO 5'),
    (6, 'PARTICIPANTE 6', 'EMAIL 6', 'INSTITUIÇÃO 6'),
    (7, 'PARTICIPANTE 7', 'EMAIL 7', 'INSTITUIÇÃO 7'),
    (8, 'PARTICIPANTE 8', 'EMAIL 8', 'INSTITUIÇÃO 8');

INSERT INTO 
    inscricao (participante_fk, conferencia_fk)
VALUES
    (1, 1),
    (1, 2),
    (2, 2),
    (2, 4),
    (3, 1),
    (5, 1),
    (7, 4),
    (1, 4);

INSERT INTO
    area (cod_area, nm_area)
VALUES
    (1, 1),
    (2, 2);

INSERT INTO 
    artigo (cod_artigo, titulo, area_fk)
VALUES 
    (1, 'ARTIGO 1', 1),
    (2, 'ARTIGO 2', 1),
    (3, 'ARTIGO 3', 2),
    (4, 'ARTIGO 4', 2);

INSERT INTO 
    autoria (participante_fk, artigo_fk, conferencia_fk)
VALUES
    (1, 1, 2),
    (2, 2, 4),
    (5, 3, 1),
    (5, 2, 1);