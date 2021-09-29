CREATE TABLE IF NOT EXISTS conferencia (
    cod_conf SERIAL UNIQUE,
    nome VARCHAR(40) NOT NULL,
    _local VARCHAR(40) NOT NULL,
    ano DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS participante (
    cpf INT UNIQUE PRIMARY KEY NOT NULL, 
    nome VARCHAR(40) NOT NULL, 
    email VARCHAR(40) NOT NULL, 
    instituicao VARCHAR(40) NOT NULL
);

CREATE TABLE IF NOT EXISTS inscricao (
    participante_fk INT NOT NULL,
    conferencia_fk INT NOT NULL,

    CONSTRAINT inscricao_participante_fk FOREIGN KEY (participante_fk) REFERENCES participante (cpf),
    CONSTRAINT inscricao_conferencia_fk FOREIGN KEY (conferencia_fk) REFERENCES conferencia (cod_conf)
);

CREATE TABLE IF NOT EXISTS area (
    cod_area SERIAL UNIQUE, 
    nm_area INT NOT NULL
);

CREATE TABLE IF NOT EXISTS artigo (
    cod_artigo SERIAL UNIQUE,
    titulo VARCHAR(40) NOT NULL,
    area_fk INT NOT NULL,

    CONSTRAINT artigo_area_fk FOREIGN KEY (area_fk) REFERENCES area (cod_area)
);

CREATE TABLE IF NOT EXISTS autoria (
    participante_fk INT NOT NULL,
    artigo_fk INT NOT NULL,
    conferencia_fk INT NOT NULL,

    CONSTRAINT autoria_participante_fk FOREIGN KEY (participante_fk) REFERENCES participante (cpf),
    CONSTRAINT autoria_artigo_fk FOREIGN KEY (artigo_fk) REFERENCES artigo (cod_artigo),
    CONSTRAINT artigo_conferencia_fk FOREIGN KEY (conferencia_fk) REFERENCES conferencia (cod_conf)
);