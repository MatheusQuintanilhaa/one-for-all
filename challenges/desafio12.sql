
SELECT
artista_nome As artista,
  CASE
    WHEN COUNT(F.musica_id) >= 5 THEN 'A'
    WHEN COUNT(F.musica_id) >= 3 THEN 'B'
    WHEN COUNT(F.musica_id) >= 1 THEN 'C'
    ELSE '-'
  END AS ranking

FROM
  artistas
  INNER JOIN SpotifyClone.album ON album.artista_id = artistas.artista_id
  INNER JOIN SpotifyClone.musicas ON musicas.album_id = album.album_id
  LEFT JOIN SpotifyClone.favoritar_musica_das_pessoas AS F ON F.musica_id = musicas.musica_id

GROUP BY artista
ORDER BY
CASE
  ranking
  WHEN 'A' THEN 1
  WHEN 'B' THEN 2
  WHEN 'C' THEN 3
  ELSE 4
END ASC,
artista;
