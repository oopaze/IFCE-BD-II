-- 1. Crie as views abaixo:
--    a) View com o nome do departamento, 
--       nome do gerente e salário do gerente 
--       para todos os departamentos
CREATE VIEW 
    salario_gerente
AS SELECT 
    departamento.dnome,
    funcionario.pnome,
    funcionario.unome,
    funcionario.salario
FROM 
    departamento, 
    funcionario
WHERE 
    departamento.cpf_gerente = funcionario.cpf;


--   b) View com o nome do funcionário, nome do 
--      supervisor e salário de cada funcionário 
--      que trabalha no departamento ‘Pesquisa’
CREATE VIEW 
    funcionario_pesquisa
AS SELECT
    funcionario.pnome,
    funcionario.unome,
    funcionario.salario
    gerente.pnome AS gerente_pnome,
    gerente.unome AS gerente_unome,
    departamento.dnome,
FROM 
    departamento,
    funcionario
INNER JOIN 
    funcionario AS gerente ON gerente.cpf = funcionario.cpf_gerente
WHERE
    departamento.dnome = 'Pesquisa' 
        AND
    departamento.cpf_gerente = gerente.cpf; 


--   c) View que tenha o nome do projeto, 
--      nome do departamento que o controla, 
--      número de funcionários e total de horas 
--      trabalhadas por semana em cada projeto
CREATE VIEW
    projeto_detalhe
AS SELECT
    projeto.projnome,
    COUNT(funcionario.cpf) AS numero_funcionarios,
    SUM(trabalha_em.horas) AS total_horas,
    departamento.dnome
FROM
    projeto, 
    funcionario, 
    trabalha_em, 
    departamento
WHERE
    projeto.dnum = departamento.dnumero AND
    trabalha_em.pnr = projeto.PRojnumero AND
    trabalha_em.fcpf = funcionario.cpf
GROUP BY
    departamento.dnome, projeto.projnome;


--   d) view que tenha o nome do projeto, 
--      nome do departamento que o controla, 
--      número de funcionários e total de horas 
--      trabalhadas por semana em cada projeto 
--      com mais de um funcionário trabalhando nele.
CREATE VIEW 
    projeto_horas_por_semana
AS SELECT
    projeto.projnome,
    COUNT(funcionario.cpf) AS numero_funcionarios,
    SUM(trabalha_em.horas) / 7 AS total_horas_por_semana,
    departamento.dnome
FROM
    projeto, 
    funcionario, 
    trabalha_em, 
    departamento
WHERE
    projeto.dnum = departamento.dnumero AND
    trabalha_em.pnr = projeto.PRojnumero AND
    trabalha_em.fcpf = funcionario.cpf
GROUP BY
    departamento.dnome, projeto.projnome
HAVING COUNT(funcionario.cpf) > 1;

-- 3. Crie um View para mostrar os produtos que estão 
--    com estoque igual ou abaixo do estoque mínimo
CREATE VIEW
    produto_com_estoque_baixo
AS SELECT 
    produto.*
FROM
    produto,
    estoque
WHERE
    produto.codigo = estoque.codigo_produto AND
    estoque.qtd_estoque <= estoque.estoque_minimo;