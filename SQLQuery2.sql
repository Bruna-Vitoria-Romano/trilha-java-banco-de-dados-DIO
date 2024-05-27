-- 1
SELECT
	Nome, Ano
FROM Filmes

-- 2
SELECT
	Nome, Ano
FROM Filmes
ORDER BY Ano
-- O order by coloca em ordem crescente por padrão

-- 3
SELECT
	Nome, Ano, Duracao
FROM Filmes
WHERE Nome='de volta para o futuro'

-- 4
SELECT
	Nome, Ano, Duracao
FROM Filmes
WHERE Ano=1997

-- 5
SELECT
	Nome, Ano, Duracao
FROM Filmes
WHERE Ano>2000

-- 6
SELECT
	Nome, Ano, Duracao
FROM Filmes
WHERE Duracao>110 AND Duracao<150
ORDER BY Duracao

-- 7
SELECT
	Ano, COUNT(*) Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC

-- 8
SELECT
	PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero='M'

-- 9
SELECT
	PrimeiroNome, UltimoNome, Genero
FROM Atores
WHERE Genero='F'
ORDER BY PrimeiroNome

-- 10
SELECT
	Nome, Genero
FROM Filmes
INNER JOIN Generos ON Filmes.Id = Generos.Id

-- 11
SELECT
	Nome, Genero
FROM Filmes, Generos
WHERE Genero='Mistério'

-- 12
SELECT
	Nome, PrimeiroNome, UltimoNome, Papel
FROM Filmes, Atores
INNER JOIN ElencoFilme ON Atores.Id = ElencoFilme.IdAtor
WHERE Filmes.Id = ElencoFilme.IdFilme
