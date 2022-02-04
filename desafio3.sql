SELECT 
	U.usuario usuario, 
    COUNT(R.cancoes_id) qtde_musicas_ouvidas, 
    ROUND(SUM(C.duracao_segundos/60),2) total_minutos
FROM SpotifyClone.Usuarios U
JOIN SpotifyClone.Reproducoes R
ON U.id = R.usuario_id
JOIN SpotifyClone.Cancoes C
ON C.id = R.cancoes_id
GROUP BY U.usuario
ORDER BY U.usuario;