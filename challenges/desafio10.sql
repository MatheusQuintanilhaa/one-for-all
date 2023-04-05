-- Descomente e altere as linhas abaixo:

-- CREATE TABLE SpotifyClone.tabela(
--     coluna1 tipo restricoes,
--     coluna2 tipo restricoes,
--     colunaN tipo restricoes,
-- ) engine = InnoDB;

-- INSERT INTO SpotifyClone.tabela (coluna1, coluna2)
-- VALUES
--   ('exemplo de dados 1', 'exemplo de dados A'),
--   ('exemplo de dados 2', 'exemplo de dados B'),
--   ('exemplo de dados 3', 'exemplo de dados C');
USE SpotifyClone;

DROP TABLE IF EXISTS SpotifyClone;

CREATE TABLE favoritar_musica_das_pessoas(
  usuario_id INT,
  musica_id INT,
    CONSTRAINT PRIMARY KEY(usuario_id, musica_id),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(usuario_id),
  FOREIGN KEY (musica_id) REFERENCES musicas(musica_id)
) ENGINE = InnoDB;

INSERT INTO favoritar_musica_das_pessoas (usuario_id, musica_id)
VALUES
    (1, 3),
    (1, 6),
    (1, 10),
    (2, 4),
    (3, 1),
    (3, 3),
    (4, 7),
    (4, 4),
    (5, 10),
    (5, 2),
    (8, 4),
    (9, 7),
    (10, 3);
