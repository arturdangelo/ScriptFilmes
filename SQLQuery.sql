SELECT t.name AS NomeDaTabela, c.name AS NomeDaColuna
FROM sys.tables t
INNER JOIN sys.columns c ON t.object_id = c.object_id
ORDER BY t.name, c.column_id;

-- 1 - Buscar o nome e ano dos filmes
Select Nome, Ano From Filmes 


-- 2 - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano

select Nome, Ano, Duracao From Filmes order by Ano ASC;

-- 3 - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração

select Nome, ano, duracao from Filmes where Nome = 'De Volta para o Futuro';

-- 4 - Buscar os filmes lançados em 1997

select Nome, Ano, Duracao From Filmes where Ano = '1997';

-- 5 - Buscar os filmes lançados APÓS o ano 2000

select Nome, Ano, Duracao From Filmes where Ano > 2000;

-- 6 - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente

select Nome, Ano, Duracao From Filmes where Duracao > 100 and Duracao < 150 order by Duracao ASC;

-- 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente

select Ano, Count(Ano) As Quantidade From Filmes group by Ano Order by sum(Duracao) DESC;

-- 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome

select PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'M';

-- 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome

select PrimeiroNome, UltimoNome, Genero from Atores where Genero = 'F' order by PrimeiroNome;

-- 10 - Buscar o nome do filme e o gênero

select F.Nome As Nome, G.Genero as Genero
From Filmes F
Inner Join FilmesGenero FG on F.Id = FG.IdFilme
Inner Join Generos G on FG.IdGenero = G.Id;

-- 11 - Buscar o nome do filme e o gênero do tipo "Mistério"

select F.Nome As Nome, G.Genero as Genero
From Filmes F
Inner Join FilmesGenero FG on F.Id = FG.IdFilme
Inner Join Generos G on FG.IdGenero = G.Id
where G.Genero = 'Mistério';

-- 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel

select F.Nome as Nome, A.PrimeiroNome as PrimeiroNome, A.UltimoNome as UltimoNome, EF.Papel
from Filmes F
Inner Join ElencoFilme EF on F.Id = EF.IdFilme
Inner Join Atores A on EF.IdAtor = A.Id;



