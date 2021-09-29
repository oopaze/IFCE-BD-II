DROP TABLE IF EXISTS aluno;
DROP TABLE IF EXISTS disciplina;
DROP TABLE IF EXISTS professor;
DROP TABLE IF EXISTS pessoa;
DROP TABLE IF EXISTS curso;

CREATE TABLE curso (
	codigo_curso INT,
	nome varchar(30) NOT NULL,
	CONSTRAINT curso_pk PRIMARY KEY (codigo_curso)
);

CREATE TABLE pessoa (
	matricula_pessoa INT,
	nome varchar(50) NOT NULL,
	sexo CHAR(1) NOT NULL,
	CONSTRAINT pessoa_pk PRIMARY KEY (matricula_pessoa)
);

CREATE TABLE professor (
	matricula_professor INT,
	data_admissao DATE NOT NULL,
	matricula_lider INT,
	CONSTRAINT professor_pk PRIMARY KEY (matricula_professor),
	CONSTRAINT professor_matricula_prof_fk FOREIGN KEY (matricula_professor) REFERENCES pessoa (matricula_pessoa),
	CONSTRAINT professor_matricula_lider_fk FOREIGN KEY (matricula_lider) REFERENCES professor (matricula_professor)
);

CREATE TABLE disciplina (
	codigo_disciplina INT,
	ementa varchar(50) NOT NULL,
	conteudo_programatico varchar(100) NOT NULL,
	matricula_professor INT NOT NULL,
	CONSTRAINT disciplina_pk PRIMARY KEY (codigo_disciplina),
	CONSTRAINT disciplina_matricula_prof_fk FOREIGN KEY (matricula_professor) REFERENCES professor (matricula_professor)
);

CREATE TABLE aluno (
	matricula_aluno INT,
	nota_vestibular DECIMAL(5,3) NOT NULL,
	codigo_curso INT NOT NULL,
	CONSTRAINT aluno_pk PRIMARY KEY (matricula_aluno),
	CONSTRAINT aluno_matricula_aluno_fk FOREIGN KEY (matricula_aluno) REFERENCES pessoa (matricula_pessoa),
	CONSTRAINT aluno_codigo_curso_fk FOREIGN KEY (codigo_curso) REFERENCES curso (codigo_curso)
);