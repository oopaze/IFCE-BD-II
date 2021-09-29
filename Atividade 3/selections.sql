-- Recupere os nomes das conferências que já tiveram participantes 
-- com participação em mais de uma edição da conferência, ou seja, 
-- tiveram pelo menos um participante que participou da conferência 
-- em anos diferentes.
SELECT 
    conferencia.nome, participante.nome
FROM    
    conferencia, participante, inscricao
WHERE 
    inscricao.participante_fk = participante.cpf
        AND
    inscricao.conferencia_fk = conferencia.cod_conf
        AND
    conferencia.ano >= '2015-01-01 00:00:00' 
        AND  
    conferencia.ano <  '2016-01-01 00:00:00'
        AND
    participante.cpf in (
        SELECT 
            participante_fk
        FROM 
            inscricao, conferencia
        GROUP BY 
            participante_fk
        HAVING 
            COUNT (participante_fk) > 0
    )
GROUP BY conferencia.nome;


-- Dentre as conferências realizadas no ano de 2015, 
-- recupere aquela que teve o maior número de participantes. 
SELECT
	conferencia.*,
	conf.quantidade_participantes AS quantidade_participantes
FROM (
    SELECT 
        COUNT(conferencia_fk) AS quantidade_participantes,
        conferencia_fk
    FROM 
        inscricao
    GROUP BY
        conferencia_fk
	ORDER BY
		conferencia_fk DESC
	LIMIT 1
) as conf, conferencia
WHERE 
	conf.conferencia_fk = conferencia.cod_conf


-- Recupere os nomes dos autores que já publicaram artigos em todas áreas.
SELECT 
    *
FROM 
    participante
WHERE participante.cpf in (
    SELECT 
        participante_fk
    FROM 
        autoria
)

	
-- Recupere os nomes de todos os participantes da conferência 
-- de código SBBD2013 e para aqueles que são autores recupere 
-- também os títulos dos artigos publicados.
SELECT
	p.nome,
	p.email,
	conferencia.nome AS conferencia,
	conferencia._local AS local,
	conferencia.ano,
	CASE
		WHEN 
			artigo.cpf = p.cpf
		THEN
			STRING_AGG(artigo.titulo, ', ')
		ELSE
			''
	END
FROM 
    participante p, 
	conferencia, 
	inscricao,
	(
		SELECT 
			artigo.titulo,
			participante.cpf AS cpf
		FROM
			autoria
		INNER JOIN 
			participante ON participante.cpf = autoria.participante_fk
		INNER JOIN
			artigo ON artigo.cod_artigo = autoria.artigo_fk
		INNER JOIN
			conferencia ON conferencia.cod_conf = autoria.conferencia_fk
		WHERE 
			conferencia.cod_conf = 1
	) AS artigo
WHERE 
    inscricao.conferencia_fk = conferencia.cod_conf
        AND
    inscricao.participante_fk = p.cpf
        AND
    conferencia.cod_conf = 1
GROUP BY 
	p.nome, p.email, conferencia.nome, conferencia._local, conferencia.ano, artigo.cpf, p.cpf; 