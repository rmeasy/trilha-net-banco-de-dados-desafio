-- 1
select nome, ano from filmes

-- 2
select nome, ano from filmes
order by ano

-- 3
select nome, ano, duracao from filmes
where nome = 'De Volta para o Futuro'

-- 4
select * from filmes
where ano = 1997

-- 5
select * from filmes
where ano > 2000

-- 6
select * from filmes
where duracao > 100 and duracao < 150
order by duracao asc 

-- 7
select ano, count(*) as quant from filmes
group by ano 
order by quant desc 

-- 8
select primeironome, ultimonome, genero from atores
where genero = 'M'

-- 9
select primeironome, ultimonome, genero from atores
where genero = 'F'
order by primeironome 

-- 10
select f.nome, g.genero 
from filmes f
join filmesgenero fg on f.id = fg.idfilme 
join generos g on fg.idgenero = g.id 

-- 11
select f.nome, g.genero 
from filmes f
join filmesgenero fg on f.id = fg.idfilme 
join generos g on fg.idgenero = g.id 
where g.genero = 'Mistério'

-- 12
select f.nome, a.primeironome, a.ultimonome, e.papel 
from filmes f
join elencofilme e on f.id = e.idfilme 
join atores a on e.idator = a.id 

