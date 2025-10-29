import Data.Char (digitToInt, isDigit)

-- Gere os primeiros n números impares a partir de 1 
primeirosImpares::Int->[Int]
primeirosImpares n = take n [1,3..]

-- Crie uma sequência infinita de um caractere c e devolva os primeiros n caracteres.
repeteChar::Int->Char->String
repeteChar 0 _ = []
repeteChar i c = c : repeteChar (i-1) c

-- Defina a função oDoMeio3 que, dados 3 inteiros, devolve o inteiro do meio (ou seja, a mediana).
oDoMeio3::Int->Int->Int->Int
oDoMeio3 a b c
    | (a >= b && a <= c) || (a <= b && a >= c) = a  
    | (b >= a && b <= c) || (b <= a && b >= c) = b  
    | otherwise = c                               

-- Defina a função quantosAcimaDaMedia que, dados 3 inteiros, retorna o número de inteiros acima da média.
quantosAcimaDaMedia::Int->Int->Int->Int
quantosAcimaDaMedia a b c 
    | a > media && b > media && c > media = 3
    | a > media && b > media && c <= media 
    || a > media && b <= media && c > media 
    || a <= media && b > media && c > media = 2
    | a > media && b <= media && c <= media 
    || a <= media && b > media && c <= media
    || a <= media && b <= media && c > media = 1
    | otherwise = 0  
    where media = (a+b+c) `div` 3 

{- Defina a função numero2 que, dados dois caracteres, retorna um inteiro em que o algarismo das dezenas é 
o primeiro caractere e o das unidades é o segundo, ou retorna zero se algum dos caracteres não for um dígito.
-}
numero2::Char->Char->Int
numero2 a b 
    | isDigit a && isDigit b = (digitToInt a * 10) + digitToInt b 
    | otherwise = 0

-- Defina a função anoBissexto que, dado um ano (um inteiro), devolve True se o ano é bissexto, False se não. 
anoBissexto::Int->Bool
anoBissexto a = a `mod` 400 == 0 || a `mod` 4 == 0 && a `mod` 100 /= 0 

{- Crie uma função que divida uma lista ao meio e devolva as duas partes (como duas listas dentro de uma lista).
Caso o número de elementos seja ímpar, a primeira parte deve ter um a mais.
-}
metade::[Int]->[[Int]]
metade l = [take x l, drop x l]
    where x = (length l `div` 2) + 1

{- Crie uma função que elimine o primeiro e o último elemento de uma lista. Se tiver menos de dois elementos, 
devolva uma lista vazia.
-}
semExtremos::[a]->[a]
semExtremos l =  reverse(drop 1 (reverse (drop 1 l))) 

-- Dadas duas extremidades, produza a lista com todos os valores entre elas, incluindo as extremidades.
intervalo::Int->Int->[Int]
intervalo a b
    | a > b = a : intervalo (a-1) b
    | a < b = a : intervalo (a+1) b
    | otherwise = [a]

{- Dada uma lista, divida-a ao meio e inverta a ordem das duas metades. Se o número de elementos for ímpar, 
o elemento central fica na segunda metade.
-}
inverteMetades::[Int]->[Int]
inverteMetades l = reverse (reverse (take x l) ++ reverse (drop x l))
    where x = length l `div` 2

{- Defina uma função que insere um elemento em uma posição dada, deslocando os demais à direita. 
Se a posição for maior que o tamanho, insira no final.
-}
inserePos::Int->Int->[Int]->[Int]
inserePos _ e [] = [e]
inserePos 0 e l =  e : l 
inserePos p e (h:t) = h : inserePos (p-1) e t 

-- Defina uma função que dado um inteiro troca o algarismo das unidades com o das dezenas.
unidades::Int->Int
unidades x = x `mod` 10

dezenas::Int->Int
dezenas x = x `mod` 100 `div` 10

trocaPos::Int->Int
trocaPos x = (x `div` 100) * 100 + unidades x * 10 + dezenas x 

-- Escreva, em Haskell, a função invertInt::Int->Int que inverta os dígitos de um número inteiro.
invertInt::Int->Int
invertInt x = unidades x * 100 + dezenas x * 10 + x `div` 100 

-- Crie uma função que determine se um número é palíndromo (igual quando invertido).
palindromo::Int->Bool 
palindromo x = x == invertInt x 














