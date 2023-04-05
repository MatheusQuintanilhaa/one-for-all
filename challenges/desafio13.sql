SELECT
  CASE
    WHEN Us.usuario_idade <= 30 THEN 'Até 30 anos'
    WHEN Us.usuario_idade BETWEEN 31 AND 60 THEN 'Entre 31 e 60 anos'
    ELSE  'Maior de 60 anos'
  END AS faixa_etaria,
  COUNT(DISTINCT Us.usuario_id) AS total_pessoas_usuarias,
  COUNT(favoritar_musica_das_pessoas.usuario_id) AS total_favoritadas
FROM SpotifyClone.usuarios AS Us
LEFT JOIN favoritar_musica_das_pessoas ON favoritar_musica_das_pessoas.usuario_id = Us.usuario_id
GROUP BY faixa_etaria
ORDER BY faixa_etaria;
