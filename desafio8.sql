SELECT ar.artista, a.album
FROM SpotifyClone.Albuns a
JOIN SpotifyClone.Artistas ar
ON a.artista_id = ar.id
HAVING ar.artista = "Walter Phoenix"
ORDER BY a.album;