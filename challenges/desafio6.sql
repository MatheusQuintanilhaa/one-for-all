SELECT
FORMAT(MIN(Pl.plano_valor), 2) AS faturamento_minimo,
CONVERT(ROUND(MAX(Pl.plano_valor), 2), CHAR) AS faturamento_maximo,
CONVERT(ROUND(AVG(Pl.plano_valor), 2), CHAR) AS faturamento_medio,
CONVERT(ROUND(SUM(Pl.plano_valor), 2), CHAR) AS faturamento_total
FROM SpotifyClone.plano AS Pl
INNER JOIN SpotifyClone.usuarios AS Us ON  Pl.plano_id = Us.plano_id;

