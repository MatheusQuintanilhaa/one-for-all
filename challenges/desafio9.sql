SELECT COUNT(Hi.data_reproducao) AS musicas_no_historico
FROM SpotifyClone.historico AS Hi
JOIN SpotifyClone.usuarios As Us ON Hi.usuario_id = Us.usuario_id
WHERE Us.usuario_nome = "Barbara Liskov";
