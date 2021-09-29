CREATE TABLE IF NOT EXISTS marca (
    codigo SERIAL NOT NULL UNIQUE,
    nome VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS unidade (
    codigo SERIAL NOT NULL UNIQUE,
    descricao VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS categoria (
    codigo SERIAL NOT NULL UNIQUE,
    descricao VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS produto (
    codigo SERIAL PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    preco_custo DECIMAL(9, 2) NOT NULL,
    preco_venda DECIMAL(9, 2) NOT NULL,
    quantidade INT NOT NULL,
    quantidade_minima INT NOT NULL,

    categoria_fk INT,
    marca_fk INT,
    unidade_fk INT,
    
    CONSTRAINT produto_categoria_fk FOREIGN KEY (categoria_fk) REFERENCES categoria (codigo), 
    CONSTRAINT produto_marca_fk FOREIGN KEY (marca_fk) REFERENCES marca (codigo), 
    CONSTRAINT produto_unidade_fk FOREIGN KEY (unidade_fk) REFERENCES unidade (codigo) 

)