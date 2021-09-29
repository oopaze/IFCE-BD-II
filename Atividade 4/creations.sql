CREATE TYPE sexo as ENUM ('M', 'F');

CREATE TABLE IF NOT EXISTS funcionario (
    pnome VARCHAR(50),
    unome VARCHAR(50),
    minicial VARCHAR(5),
    cpf VARCHAR(15) UNIQUE,
    datanasc DATE,
    endereco VARCHAR(200),
    sexo SEXO,
    salario NUMERIC(17, 2),
    dnr INT,

    cpf_supervisor VARCHAR(15),

    FOREIGN KEY (cpf_supervisor) REFERENCES funcionario(cpf)
);

CREATE TABLE IF NOT EXISTS departamento (
    dnome VARCHAR(50),
    dnumero INT,
    data_inicio_gerente DATE,
    
    cpf_gerente VARCHAR(30),
    FOREIGN KEY (cpf_gerente) REFERENCES funcionario(cpf)
);

CREATE TABLE IF NOT EXISTS localizacao_dep (
    dnumero INT,
    dlocal VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS trabalha_em (
    pnr INT,
    horas FLOAT,
    fcpf VARCHAR(30),

    FOREIGN KEY (fcpf) REFERENCES funcionario(cpf)
);

CREATE TABLE IF NOT EXISTS projeto (
    projnome VARCHAR(50),
    PRojnumero INT,
    Projlocal VARCHAR(50),
    dnum INT
);

CREATE TABLE IF NOT EXISTS dependente (
    nome_dependente VARCHAR(30),
    sexo SEXO,
    datanasc DATE,
    parentesco VARCHAR(30),
    fcpf VARCHAR(30) REFERENCES funcionario(cpf)
);

-- 2. Crie as tabelas abaixo:
--    a) Produto (codigo, nome, descricao, valor_unitario)
CREATE TABLE IF NOT EXISTS produto(
    codigo VARCHAR(30) UNIQUE,
    nome VARCHAR(50),
    descricao TEXT,
    valor_unitario NUMERIC(17, 2)
);

--    b) Estoque (codigo_produto, qtd_estoque, estoque_minimo)
CREATE TABLE IF NOT EXISTS estoque(
    codigo_produto VARCHAR(30) REFERENCES produto(codigo),
    qtd_estoque INT DEFAULT 0,
    estoque_minimo INT DEFAULT 0
);

--    c) Venda (nota_fiscal, codigo_produto, quantidade)
CREATE TABLE IF NOT EXISTS venda(
    nota_fiscal VARCHAR(30) UNIQUE,
    codigo_produto VARCHAR(30) REFERENCES produto(codigo),
    quantidade INT
);