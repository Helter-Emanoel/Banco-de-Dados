USE musimundos;
-- Exercício 1
SELECT
artistas.nome,
albuns.titulo
FROM artistas
INNER JOIN albuns ON artistas.id = albuns.id_artista
ORDER BY artistas.id;

-- Exercício 2
SELECT
clientes.nome,
faturas.valor_total
FROM clientes
INNER JOIN faturas ON clientes.id = id_cliente
ORDER BY faturas.valor_total DESC
LIMIT 5;

SELECT
cancoes.nome,
tipos_de_arquivo.nome
FROM cancoes
INNER JOIN tipos_de_arquivo ON cancoes.id = tipos_de_arquivo.id
ORDER BY cancoes.id;