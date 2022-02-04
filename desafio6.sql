SELECT 
	ROUND(MIN(p.valor_plano), 2) faturamento_minimo,
    MAX(p.valor_plano) faturamento_maximo,
    ROUND(AVG(p.valor_plano), 2) faturamento_medio,
    CONVERT(VARCHAR(10), ROUND(SUM(p.valor_plano), 2)) faturamento_total
FROM SpotifyClone.Usuarios u
JOIN SpotifyClone.Planos p
ON u.plano_id = p.id;