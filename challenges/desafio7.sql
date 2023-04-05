SELECT Ar.artista_nome AS artista,
      Al.album_nome AS album,
      COUNT(Se.artista_id) AS pessoas_seguidoras
FROM SpotifyClone.artistas AS Ar
JOIN SpotifyClone.album AS Al ON Ar.artista_id = Al.artista_id
JOIN SpotifyClone.seguidores As Se ON Se.artista_id = Ar.artista_id

GROUP BY Al.album_nome, Ar.artista_nome
ORDER BY pessoas_seguidoras DESC, artista, album;
