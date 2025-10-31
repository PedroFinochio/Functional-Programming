-- Crie uma função que inverta os elementos de uma tupla
troca::(Int, Int)->(Int, Int)
troca (x, y) = (y, x)

{- 
Crie uma função que recebe duas tuplas, cada uma contendo o nome de uma disciplina e a nota do aluno nessa disciplina. 
A função deve retornar:
a. "Materias diferentes" se os nomes das disciplinas não forem iguais;
b. "Aprovado" se as matérias forem iguais e a média aritmética das duas notas for maior ou igual a 6;
c. "Reprovado" caso contrário.
-}
mediaNotas::(String, Float) ->(String, Float)->String
mediaNotas (m1, n1) (m2, n2)
  | m1 /= m2 = "Materias diferentes"
  | media >= 6 = "Aprovado"
  | otherwise = "Reprovado"
  where
    media = (n1 + n2) / 2

{- 
Dada uma lista de tuplas [(Nome, Idade)], defina a função maioresDeIdade 
que retorna uma lista com os nomes (somente as strings) das pessoas com 18 anos ou mais.
-}
maioresDeIdade::[(String, Int)]->[String]
maioresDeIdade [] = []
maioresDeIdade ((a, b):x)
  | b >= 18 = a : maioresDeIdade x
  | otherwise = maioresDeIdade x
    
{- 
Defina a função primos n que retorna todos os números primos até n 
utilizando a lógica da Compreensão de Listas, onde um número é primo se não possui divisores no intervalo.
-}
primos::Int->[Int]
primos n = [x | x <- [2..n], [d | d <- [2..x-1], x `mod` d == 0] == []]

-- Dada uma lista de (cidade, temperatura), filtre as que estão acima de 30°C.
temperaturasAltas::[(String, Int)]->[(String, Int)]
temperaturasAltas [] = []
temperaturasAltas ((a, b):x)
  | b > 30 = (a, b) : temperaturasAltas x
  | otherwise = temperaturasAltas x

{- 
Utilizando listas em compreensão, defina a função terminaEm que recebe um número n e devolve 
a lista com os números entre 0 e 100 que terminam com o número n.
-}
terminaEm::Int->[Int]
terminaEm n = [x | x <- [0..100], x `mod` 10 == n]

-- Defina a função divisivelPor que dado um inteiro (de 0 a 9) retorna uma lista 
-- com todos os números entre 1 e 100 que são divisíveis pelo número.
divisivelPor::Int->[Int]
divisivelPor i = [x | x <- [1..100], x `mod` i == 0]

-- Sem usar a função length, defina a função comprimento que dada uma lista retorna o número de elementos da lista.
comprimento::[a]->Int
comprimento [] = 0
comprimento (_:t) = 1 + comprimento t

-- Defina a função quantos que dada uma lista e um elemento devolve o número de vezes que o elemento está na lista.
quantos::[Int]->Int->Int
quantos [] _ = 0
quantos (h:t) e 
  | h == e = 1 + quantos t e 
  | otherwise = quantos t e 

-- Defina a função repetidos que dada uma lista retorna uma lista com os elementos que estão repetidos.
quantos2::Int->[Int]->Int 
quantos2 _ [] = 0 
quantos2 e (h:t)
  | e == h = 1 + quantos2 e t 
  | otherwise = quantos2 e t

removeRepetidos::Int->[Int]->[Int]
removeRepetidos _ [] = []
removeRepetidos e (h:t)
  | e == h = removeRepetidos e t 
  | otherwise = h : removeRepetidos e t

repetidos::[Int]->[Int]
repetidos [] = []
repetidos (h:t)
  | quantos2 h (h:t) > 1 = h : repetidos (removeRepetidos h t) 
  | otherwise = repetidos t

-- ​Defina a função contaQuantosDiferentes que retornam o número de elementos diferentes do inteiro na lista.
contaQuantosDiferentes::[Int]->Int->Int
contaQuantosDiferentes [] _ = 0
contaQuantosDiferentes (h:t) e 
  | h == e = 1 + contaQuantosDiferentes t e 
  | otherwise = contaQuantosDiferentes t e 



