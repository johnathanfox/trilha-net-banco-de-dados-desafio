SELECT Nome, Ano FROM Filmes --> 1 

SELECT Nome, Ano FROM Filmes ORDER BY   --> 2

SELECT NOME, Ano, Duracao FROM Filmes WHERE Nome = 'De volta para o Futuro'  --> 3

SELECT Nome , Ano, Duracao FROM Filmes WHERE Ano = 1997  --> 4 

SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano > 1999 AND Ano < 2001  --> 5 

SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao  --> 6

SELECT Ano, COUNT(*) AS Quantidade FROM Filmes GROUP BY Ano ORDER BY Quantidade DESC  --> 7

SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'M'  --> 8 

SELECT PrimeiroNome, UltimoNome FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome  --> 9 

SELECT f.Nome, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme  --> 10
INNER JOIN Generos g ON fg.IdGenero = g.Id;

SELECT f.Nome, g.Genero
FROM Filmes f
INNER JOIN FilmesGenero fg ON f.Id = fg.IdFilme  --> 11
INNER JOIN Generos g ON fg.IdGenero = g.Id
WHERE g.Genero = 'Mistério';

SELECT f.Nome, a.PrimeiroNome, a.UltimoNome, ef.Papel
FROM Filmes f                                                  --> 12
INNER JOIN ElencoFilme ef ON f.Id = ef.IdFilme
INNER JOIN Atores a ON ef.IdAtor = a.Id;
