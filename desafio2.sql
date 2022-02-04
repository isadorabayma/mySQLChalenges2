SELECT 
	COUNT(DISTINCT c.cancao) AS cancoes,
	COUNT(DISTINCT ar.artista) AS artistas,
	COUNT(DISTINCT al.album) AS albuns
FROM SpotifyClone.Cancoes AS c
JOIN SpotifyClone.Albuns AS al
ON c.album_id = al.id
JOIN SpotifyClone.Artistas AS ar
ON al.artista_id = ar.id;