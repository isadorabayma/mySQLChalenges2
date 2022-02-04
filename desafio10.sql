SELECT 
    c.cancao nome, 
    COUNT(r.data_reproducao) reproducoes
FROM SpotifyClone.Reproducoes r
JOIN SpotifyClone.Cancoes c
ON r.cancoes_id = c.id
JOIN SpotifyClone.Usuarios u
ON r.usuario_id = u.id
JOIN SpotifyClone.Planos p
ON u.plano_id = p.id
WHERE p.plano = 'pessoal' OR p.plano = 'gratuito'
GROUP BY c.cancao
ORDER BY c.cancao; 