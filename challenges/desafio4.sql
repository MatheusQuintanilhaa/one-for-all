SELECT Us.usuario_nome AS pessoa_usuaria,
      IF(MAX(YEAR(data_reproducao)) >= 2021, "Ativa", "Inativa") as status_pessoa_usuaria
FROM SpotifyClone.usuarios AS Us
JOIN SpotifyClone.historico AS Hi ON Hi.usuario_id = Us.usuario_id

GROUP BY Us.usuario_nome
ORDER BY Us.usuario_nome;
