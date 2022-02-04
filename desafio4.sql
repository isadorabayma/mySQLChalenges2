SELECT 
	u.usuario, 
	IF(
		MAX(IF(r.data_reproducao LIKE '2021%', 1, 0)),
        'Usuário ativo',
        'Usuário inativo'
        ) condicao_usuario
FROM SpotifyClone.Reproducoes r
JOIN SpotifyClone.Usuarios u
ON r.usuario_id = u.id
GROUP BY r.usuario_id
ORDER BY u.usuario;