SELECT 
	c.cancao, 
    COUNT(r.usuario_id) reproducoes
FROM SpotifyClone.Reproducoes r
JOIN SpotifyClone.Cancoes c
ON r.cancoes_id = c.id
GROUP BY r.cancoes_id
ORDER BY reproducoes desc, c.cancao
LIMIT 2;