SELECT album_nome AS album,
 COUNT(Md.musica_id) AS favoritadas
FROM SpotifyClone.album
INNER JOIN SpotifyClone.musicas AS Md ON Md.album_id = album.album_id
INNER JOIN SpotifyClone.favoritar_musica_das_pessoas AS F ON F.musica_id = Md.musica_id
GROUP BY album_nome
ORDER BY favoritadas DESC, album_nome ASC
LIMIT 3;

