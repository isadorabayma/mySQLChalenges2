SELECT 
	c1.cancao AS nome_musica,
    CASE
		WHEN c2.cancao LIKE '%Streets'
			THEN REPLACE(c2.cancao, 'Streets', 'Code Review')
		WHEN c2.cancao LIKE '%Her Own'
			THEN REPLACE(c2.cancao, 'Her Own', 'Trybe')
		WHEN c2.cancao LIKE '%Inner Fire'
			THEN REPLACE(c2.cancao, 'Inner Fire', 'Project')
		WHEN c2.cancao LIKE '%Silly'
			THEN REPLACE(c2.cancao, 'Silly', 'Nice')
		WHEN c2.cancao LIKE '%Circus'
			THEN REPLACE(c2.cancao, 'Circus', 'Pull Request')
	END AS novo_nome
FROM SpotifyClone.Cancoes c1
JOIN SpotifyClone.Cancoes c2
ON c1.id = c2.id
WHERE 
	c1.id = 3 
	OR c1.id = 4
    OR c1.id = 6
    OR c1.id = 15
    OR c1.id = 18
ORDER BY c1.cancao;