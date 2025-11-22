-- Faça uma função que calcule o fatorial de um dado número n.
fatorial::Int->Int 
fatorial 0 = 1
fatorial n = n * fatorial (n-1)

-- Defina a função fibonacci em Haskell, que dado um valor n, retorne o elemento correspondente da sequência
fibonacci::Int->Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n-1) + fibonacci (n-2)

-- Implemente a função inverte :: [a] -> [a] que inverta os elementos de uma lista sem usar reverse.
inverte::[a]->[a]
inverte [] = []
inverte (h:t) = inverte t ++ [h]

-- Crie a função maximo :: Ord a => [a] -> a que encontre o maior elemento de uma lista usando recursão
maximo::Ord a => [a] -> a
maximo [a] = a 
maximo (h:t)
    | h >= maximo t = h 
    | otherwise = maximo t 

-- Defina a função nrepetidos que dada uma lista retorna uma lista de tuplas com os elementos repetidos e o número de ocorrencias desses elementos.
nrepetidos::String->[(Char,Int)]
nrepetidos [] = []
nrepetidos (h:t)
    | conta (h:t) h > 1 = (h, conta (h:t) h) : nrepetidos (filter (/= h) t)
    | otherwise = nrepetidos t 

-- Defina a função contaQuantosDiferentes::[Int]->Int->Int que retorna o número de elementos diferentes do inteiro na lista
contaQuantosDiferentes::[Int]->Int->Int
contaQuantosDiferentes [] _ = 0
contaQuantosDiferentes (h:t) e 
    | h == e = 1 + contaQuantosDiferentes t e 
    | otherwise = contaQuantosDiferentes t e 

{- Faça uma solução para, dada uma lista de inteiros, retornar uma dupla de listas de inteiros onde a primeira conterá os elementos 
ímpares e a segunda os elementos pares passados como parâmetro.
-}
separa::[Int]->([Int],[Int])
separa l = (impar l, par l)

par::[Int]->[Int]
par [] = []
par (h:t)
    | h `mod` 2 == 0 = h : par t 
    | otherwise = par t

impar::[Int]->[Int]
impar [] = []
impar (h:t)
    | h `mod` 2 /= 0 = h : impar t 
    | otherwise = impar t

-- Dada uma String e um caractere a, retorne quantos caracteres da lista são iguais a a.
conta::String->Char->Int 
conta [] _ = 0
conta (h:t) c
    | h == c = 1 + conta t c 
    | otherwise = conta t c 

-- Para uma lista de elementos inteiros ordenada qualquer, faça uma função que retorne uma lista de inteiros ordenada sem elementos repetidos.
purifica::[Int]->[Int]
purifica [] = []
purifica [a] = [a]
purifica (h:t)
    | h == head t = purifica t 
    | otherwise = h : purifica t 


