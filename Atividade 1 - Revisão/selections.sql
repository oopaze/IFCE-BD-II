
-- Selecione a matrícula e o nome de todas as mulheres.
SELECT matricula_pessoa, nome FROM pessoa WHERE sexo = 'M';

-- Selecione a matrícula e o nome de todas as professoras.
SELECT professor.matricula_professor, pessoa.nome FROM professor
INNER JOIN pessoa ON pessoa.matricula_pessoa = professor.matricula_professor
WHERE pessoa.sexo = 'M';

-- Recupere o nome dos professores juntamente com o nome das disciplinas 
-- que eles ministram.
SELECT pessoa.nome, curso.nome FROM professor
INNER JOIN pessoa ON pessoa.matricula_pessoa = professor.matricula_professor
INNER JOIN disciplina ON disciplina.matricula_professor = professor.matricula_professor
INNER JOIN curso ON disciplina.codigo_disciplina = curso.codigo_curso;

-- Recupere o nome dos professores que nunca ministraram disciplinas.
SELECT pessoa.nome FROM professor
INNER JOIN pessoa on professor.matricula_professor = pessoa.matricula_pessoa
WHERE professor.matricula_professor not in (
    SELECT disciplina.matricula_professor FROM disciplina
);

-- Apresente todas as informações da disciplina da professora ‘Alexandra Almeida’?
-- (a) Faça 2 versões: com e sem o comando JOIN

-- Com JOIN
SELECT 
    pessoa.nome as Professor, 
    curso.nome as Curso, 
    disciplina.ementa, 
    disciplina.conteudo_programatico
FROM professor
INNER JOIN pessoa on pessoa.matricula_pessoa = professor.matricula_professor
INNER JOIN disciplina on disciplina.matricula_professor = professor.matricula_professor
INNER JOIN curso on disciplina.codigo_disciplina = curso.codigo_curso
WHERE pessoa.nome = 'Alexandra Almeida';

-- Sem JOIN
SELECT 
    pessoa.nome as Professor, 
    curso.nome as Curso, 
    disciplina.ementa, 
    disciplina.conteudo_programatico
FROM 
    professor, pessoa, disciplina, curso
WHERE 
    professor.matricula_professor = pessoa.matricula_pessoa
        AND
    disciplina.matricula_professor = professor.matricula_professor
        AND
    disciplina.codigo_disciplina = curso.codigo_curso
        AND
    pessoa.nome = 'Alexandra Almeida';

-- Apresente o nome de todos os professores e seus líderes
SELECT 
    pessoa.nome as Professor,
    pessoa_lider.nome as Lider 
FROM professor
INNER JOIN pessoa on pessoa.matricula_pessoa = professor.matricula_professor
INNER JOIN professor professor_lider on professor_lider.matricula_professor = professor.matricula_lider
INNER JOIN pessoa pessoa_lider on pessoa_lider.matricula_pessoa = professor_lider.matricula_professor;

-- Exiba somente os professores que não tem líderes
SELECT pessoa.nome FROM professor, pessoa
WHERE 
    professor.matricula_lider is null 
        AND 
    pessoa.matricula_pessoa = professor.matricula_professor;

-- Mostre todos os professores que entraram entre 1995 e 2005
SELECT pessoa.nome FROM professor
INNER JOIN pessoa ON pessoa.matricula_pessoa = professor.matricula_professor
WHERE 
    professor.data_admissao >= '1995-01-01' 
        AND
    professor.data_admissao <= '2005-01-01';

-- Mostre o nome do professor que não tem nenhuma disciplina
SELECT pessoa.nome FROM professor
INNER JOIN pessoa on professor.matricula_professor = pessoa.matricula_pessoa
WHERE professor.matricula_professor not in (
    SELECT disciplina.matricula_professor FROM disciplina
);


