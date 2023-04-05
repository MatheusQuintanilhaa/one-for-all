
SELECT
    COUNT(DISTINCT c.musica_id) AS cancoes,
    COUNT(DISTINCT Ar.artista_id) AS artistas,
    COUNT(DISTINCT Al.album_id) AS albuns
FROM SpotifyClone.album Al
JOIN SpotifyClone.artistas Ar ON Al.artista_id = Ar.artista_id
JOIN SpotifyClone.musicas C ON Al.album_id = c.album_id
