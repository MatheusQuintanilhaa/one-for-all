SELECT Md.musica_nome AS cancao,
      COUNT(Hi.musica_id) AS reproducoes
FROM SpotifyClone.historico AS Hi
JOIN SpotifyClone.musicas AS Md ON Md.musica_id = Hi.musica_id

GROUP BY Md.musica_nome
ORDER BY reproducoes DESC, Md.musica_nome
LIMIT 2;
