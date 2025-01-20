
--1. Buscar o nome e ano dos filmes
SELECT 
	Nome,
	Ano	
FROM Filmes

--2. Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

SELECT 
	*
FROM Filmes
ORDER BY Ano 

--3. Buscar pelo fime 'De volta para o futuro', trazendo o nome ano e duração

SELECT 
	Nome,
	Ano,
	Duracao
FROM Filmes
WHERE Nome ='de volta para o futuro'

--4. buscar filmes lançados em 1997

SELECT * FROM Filmes
WHERE Ano = '1997'

--5. Buscar filmes lançados após o ano 2000

SELECT * FROM Filmes
WHERE Ano > 2000

--6. Buscar os filmes com a duração maior que 100 e menor que 150, ordenando pela duração em ordem crescente

SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao

--7. Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela Quantidade em ordem decrescente

SELECT Ano, 
COUNT(*)
Quantidade

FROM Filmes
WHERE Ano <>''
GROUP BY Ano ORDER BY Quantidade  DESC

--8.Buscar atores do genero masculino, retornando o PrimeiroNome, UltimoNome

SELECT
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'm'

--9.Buscar o Atores de gênero feminino, retornando o PimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT
	PrimeiroNome,
	UltimoNome,
	Genero
FROM Atores
WHERE Genero = 'f'
ORDER BY PrimeiroNome

--10. Buscar nome do filme e o gênero(2 inner join)
SELECT 
	Nome,
	Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
ORDER BY Generos.Genero, Filmes.Nome;


--11. Buscar o nome do filme e o genero do tipo 'misterio'

SELECT
	Nome,
	Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.Id
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'mistério'

--12.Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu papel

SELECT 
	Nome,
	PrimeiroNome,
	UltimoNome,
	Papel
FROM Filmes
INNER JOIN Atores ON Filmes.Id = Atores.Id
INNER JOIN ElencoFilme ON Atores.Id= ElencoFilme.Id





