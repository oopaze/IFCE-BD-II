#INSERINDO CURSOS

INSERT INTO curso (codigo_curso, nome) VALUES (1,'Engeharia da Computacao');
INSERT INTO curso (codigo_curso, nome) VALUES (2,'Ciencia da Computacao');
INSERT INTO curso (codigo_curso, nome) VALUES (3,'Sistemas de Informacao');
INSERT INTO curso (codigo_curso, nome) VALUES (4,'Estatistica');
INSERT INTO curso (codigo_curso, nome) VALUES (5,'Matematica');
 
#INSERINDO PESSOAS

INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (1111,'Jose Alcantara','H');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (2222,'Ricardo Nassau','H');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (3333,'Maria das Dores','M');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (4444,'Sirenio Arruda','H');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (5555,'Alexandra Almeida','M');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (6666,'Lindalva Silva','M');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (7777,'Rosa Pereira','M');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (8888,'Joao Custodia','H');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (9999,'Fabiana Murer','M');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (1010,'Olavo Ferreira','H');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (1212,'Augustus Kilter','H');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (1313,'Mery dos Santos','M');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (1414,'Kildery Ramos','H');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (1515,'Valentina Oliveira','M');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (1616,'Ofeliana Araujo','M');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (1717,'Dezembrina Carneiro','M');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (1818,'Oristides Melo','H');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (1919,'Carlos Chagas','H');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (2020,'Gusmao Alencar','H');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (2121,'Luis Mario Moraes','H');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (2323,'Glenda Amorin','M');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (2424,'Pompeu de Toledo','H');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (2525,'Hortencia Maria','M');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (2626,'Amelia Lima','M');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (2727,'Kelly Desarlinas','M');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (2828,'Raphael Queiroga','H');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (2929,'Carmelita Santos','M');
INSERT INTO pessoa (matricula_pessoa,nome,sexo) VALUES (3030,'Helena Nunes','M');




#INSERINDO PROFESSORES

INSERT INTO professor (matricula_professor,data_admissao,matricula_lider) VALUES (1111,STR_TO_DATE('02/11/2000', '%d/%m/%Y'),NULL);
INSERT INTO professor (matricula_professor,data_admissao,matricula_lider) VALUES (3333,STR_TO_DATE('15/07/1972', '%d/%m/%Y'),NULL);
INSERT INTO professor (matricula_professor,data_admissao,matricula_lider) VALUES (2222,STR_TO_DATE('27/02/1984', '%d/%m/%Y'),1111);
INSERT INTO professor (matricula_professor,data_admissao,matricula_lider) VALUES (4444,STR_TO_DATE('06/01/2001', '%d/%m/%Y'),1111);
INSERT INTO professor (matricula_professor,data_admissao,matricula_lider) VALUES (5555,STR_TO_DATE('29/12/2006', '%d/%m/%Y'),4444);
INSERT INTO professor (matricula_professor,data_admissao,matricula_lider) VALUES (6666,STR_TO_DATE('16/03/2006', '%d/%m/%Y'),3333);
INSERT INTO professor (matricula_professor,data_admissao,matricula_lider) VALUES (7777,STR_TO_DATE('11/07/1999', '%d/%m/%Y'),3333);



#INSERINDO DISCIPLINAS

INSERT INTO disciplina (codigo_disciplina,ementa,conteudo_programatico,matricula_professor) VALUES (1,'E1', 'C1',1111);
INSERT INTO disciplina (codigo_disciplina,ementa,conteudo_programatico,matricula_professor) VALUES (2,'E2', 'C2',2222);
INSERT INTO disciplina (codigo_disciplina,ementa,conteudo_programatico,matricula_professor) VALUES (3,'E3', 'C3',3333);
INSERT INTO disciplina (codigo_disciplina,ementa,conteudo_programatico,matricula_professor) VALUES (4,'E4', 'C4',4444);
INSERT INTO disciplina (codigo_disciplina,ementa,conteudo_programatico,matricula_professor) VALUES (5,'E5', 'C5',5555);
INSERT INTO disciplina (codigo_disciplina,ementa,conteudo_programatico,matricula_professor) VALUES (6,'E6', 'C6',6666);


#INSERINDO ALUNOS

INSERT INTO aluno (matricula_aluno,nota_vestibular,codigo_curso) VALUES (8888,5.392,1);
INSERT INTO aluno (matricula_aluno,nota_vestibular,codigo_curso) VALUES (9999,7.652,1);
INSERT INTO aluno (matricula_aluno,nota_vestibular,codigo_curso) VALUES (1010,8.206,1);
INSERT INTO aluno (matricula_aluno,nota_vestibular,codigo_curso) VALUES (1212,6.653,1);
INSERT INTO aluno (matricula_aluno,nota_vestibular,codigo_curso) VALUES (1313,4.932,1);
INSERT INTO aluno (matricula_aluno,nota_vestibular,codigo_curso) VALUES (1414,9.803,1);
INSERT INTO aluno (matricula_aluno,nota_vestibular,codigo_curso) VALUES (1515,6.480,1);
INSERT INTO aluno (matricula_aluno,nota_vestibular,codigo_curso) VALUES (1616,9.304,2);
INSERT INTO aluno (matricula_aluno,nota_vestibular,codigo_curso) VALUES (1717,8.630,2);
INSERT INTO aluno (matricula_aluno,nota_vestibular,codigo_curso) VALUES (1818,7.620,2);
INSERT INTO aluno (matricula_aluno,nota_vestibular,codigo_curso) VALUES (1919,6.305,2);
INSERT INTO aluno (matricula_aluno,nota_vestibular,codigo_curso) VALUES (2020,5.034,2);
INSERT INTO aluno (matricula_aluno,nota_vestibular,codigo_curso) VALUES (2121,4.320,3);
INSERT INTO aluno (matricula_aluno,nota_vestibular,codigo_curso) VALUES (2323,3.204,3);
INSERT INTO aluno (matricula_aluno,nota_vestibular,codigo_curso) VALUES (2424,8.205,3);
INSERT INTO aluno (matricula_aluno,nota_vestibular,codigo_curso) VALUES (2525,7.205,5);
INSERT INTO aluno (matricula_aluno,nota_vestibular,codigo_curso) VALUES (2626,7.320,4);
INSERT INTO aluno (matricula_aluno,nota_vestibular,codigo_curso) VALUES (2727,6.046,4);
INSERT INTO aluno (matricula_aluno,nota_vestibular,codigo_curso) VALUES (2828,5.024,5);
INSERT INTO aluno (matricula_aluno,nota_vestibular,codigo_curso) VALUES (2929,6.320,1);
INSERT INTO aluno (matricula_aluno,nota_vestibular,codigo_curso) VALUES (3030,4.300,4);