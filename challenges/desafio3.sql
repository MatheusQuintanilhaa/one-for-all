SELECT  Us.usuario_nome  AS pessoa_usuaria,
        COUNT(Hi.musica_id) AS musicas_ouvidas,
        ROUND(SUM(Md.musica_duracao / 60), 2) AS total_minutos
FROM SpotifyClone.usuarios as Us
JOIN SpotifyClone.historico as Hi ON Hi.usuario_id = Us.usuario_id
JOIN SpotifyClone.musicas as Md ON Md.musica_id = Hi.musica_id

GROUP BY Us.usuario_nome
ORDER BY Us.usuario_nome;
