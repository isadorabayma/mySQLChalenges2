SELECT ar.artista, a.album, 
	COUNT(s.usuario_id) seguidores
FROM SpotifyClone.Albuns a
JOIN SpotifyClone.Artistas ar
ON a.artista_id = ar.id
JOIN SpotifyClone.Seguidores s
ON a.artista_id = s.artista_id
GROUP BY ar.artista, a.album
ORDER BY seguidores desc, ar.artista, a.album;