SELECT 
	CONCAT(MIN(p.valor_plano), '.00') faturamento_minimo,
    CONVERT(MAX(p.valor_plano), CHAR) faturamento_maximo,
    CONVERT(ROUND (AVG(p.valor_plano), 2), CHAR) faturamento_medio,
    CONVERT(ROUND (SUM(p.valor_plano), 2), CHAR) faturamento_total
FROM SpotifyClone.Usuarios u
JOIN SpotifyClone.Planos p
ON u.plano_id = p.id;