INSERT INTO 
    funcionario(pnome, minicial, unome, cpf, datanasc, endereco, sexo, salario, cpf_supervisor, dnr)
VALUES
    ('João', 'B', 'Silva', '12345678966', '1965-01-09', 'Rua das Flores, 751, São Paulo,SP', 'M', 30.000, '33344555587',5),
    ('Fernando','T','Wong','33344555587', '1955-08-12', 'Rua da Lapa, 34, São Paulo, SP','M', 30.000,'88866555576',5),
    ('Alice','J','Zelaya','99988777767', '1968-01-19', 'Rua Souza Lima, 35, Curitiba, PR','F',40.000,'98765432168',4),
    ('Jennifer','S','Souza','98765432168', '1941-06-20', 'Av. Arthur de Lima, 54. Santo André, SP','F',25.000,'88866555576',4),
    ('Ronaldo','K','Lima','60688444476', '1962-09-15', 'Rua Rebouças, 65, Piracicaba, SP','M',43.000,'33344555587',5),
    ('Joice','A','Leite','45345345376', '1972-07-31', 'Av. Lucas Obes, 74, São Paulo, SP','F',38.000,'33344555587',5),
    ('André','V','Pereira','98798798733', '1969-03-29', 'Rua Timbira, 35, São Paulo, SP','M',25.000,'98765432168',4),
    ('Jorge','E','Brito','88866555576', '1937-11-10','Rua do Horto, 35. São Paulo, SP','M',55.000,NULL,1);

INSERT INTO 
    departamento
VALUES
    ('Pesquisa',5,'1988-05-22','33344555587'),
    ('Administração',4,'1996-01-01','98765432168'),
    ('Matriz',1,'1981-02-18','88866555576');

INSERT INTO
    localizacao_dep(dlocal, dnumero)
VALUES
    ('São Paulo',1),
    ('Mauá',4),
    ('Santo André',5),
    ('Itu',5),
    ('São Paulo',5);

INSERT INTO 
    projeto
VALUES
    ('Produto Y',1,'Santo André',5),
    ('Produto Y',2,'Itu',5),
    ('ProdutoZ',3,'São Paulo',5),
    (' Informatização',10,'Mauá',4),
    ('Reorganização',20,'São Paulo',1),
    ('Novosbeneficios',30,'Mauá',4);

INSERT INTO
    trabalha_em(horas, fcpf, pnr)
VALUES
    (32.5,'12345678966',1),
    (7.5,'12345678966',2),
    (40.5,'60688444476',3),
    (20.0,'4534606884444765345376',1),
    (20.0,'45345345376',2),
    (10.0,'33344555587',2),
    (10.0,'33344555587',3),
    (10.0,'33344555587',10),
    (10.0,'33344555587',20),
    (30.0,'99988777767',30),
    (10.0,'99988777767',10),
    (35.0,'98798798733',10),
    (5.0,'98798798733',30),
    (20.0,'98765432168',30),
    (15.0,'98765432168',20),
    (NULL,'88866555576',20);

INSERT INTO
    dependente(parentesco, datanasc, sexo, nome_dependente, fcpf)
VALUES
    ('Filha','1986-04-05','F','Alice','33344555587'),
    ('Filho','1983-10-25','M','Tiago','33344555587'),
    ('Esposa','1958-05-03','F','Janaina','33344555587'),
    ('Marido','1942-02-28','M','Antonio','98765432168'),
    ('Filho','1988-01-04','M','Michael','12345678966'),
    ('Filha ','1988-12-30','F','Alicia','12345678966'),
    ('Esposa','1967-05-05','F','Elizabeth','12345678966');


INSERT INTO
    produto
VALUES
    ('123', 'Arroz', 'Arroz', 10.50),
    ('124', 'Feijao', 'Feijao', 30.50),
    ('125', 'Batata', 'Batata', 20.50);


INSERT INTO 
    estoque
VALUES 
    ('123', 20, 0),
    ('124', 10, 0),
    ('125', 5, 0);
