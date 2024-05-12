--1
select Nome, Ano
from Filmes

--2 
SELECT nome, ano
FROM filmes
ORDER BY ano ASC;

--3
SELECT nome, ano, duracao
FROM filmes
WHERE nome = 'De Volta para o Futuro';

--4
SELECT nome
FROM filmes
WHERE ano = 1997;

--5
SELECT nome
FROM filmes
WHERE ano > 2000;

--6
SELECT nome, duracao
FROM filmes
WHERE duracao > 100 AND duracao < 150
ORDER BY duracao ASC;

--7
SELECT ano, COUNT(*) AS quantidade_filmes
FROM filmes
GROUP BY ano
ORDER BY quantidade_filmes DESC;

--8
SELECT PrimeiroNome, ultimonome
FROM atores
WHERE genero = 'M';

--9
SELECT primeironome, ultimonome
FROM atores
WHERE genero = 'F'
ORDER BY primeironome;

--10
SELECT filmes.nome, generos.genero
FROM filmes
JOIN generos ON filmes.Id = generos.Id;

--11
SELECT filmes.nome, generos.genero
FROM filmes
JOIN generos ON filmes.id = generos.id
WHERE generos.genero = 'Mistério';

--12
SELECT filmes.nome, atores.primeironome, atores.ultimonome, ElencoFilme.Papel
FROM filmes
join ElencoFilme on Filmes.Nome = ElencoFilme.IdFilme
join Atores on ElencoFilme.IdAtor = Filmes.Id;
