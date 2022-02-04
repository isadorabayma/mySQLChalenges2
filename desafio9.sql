SELECT COUNT(r.cancoes_id) quantidade_musicas_no_historico
FROM SpotifyClone.Reproducoes r
JOIN SpotifyClone.Usuarios u
ON r.usuario_id = u.id
GROUP BY u.usuario
HAVING u.usuario = "Bill";