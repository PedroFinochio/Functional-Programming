-- Currying: todas as funções em Haskell recebem apenas 1 argumento
-- Quando escrevemos uma função com vários parametros, Haskell, na verdade, está aplicando outra 

{- Função de alta ordem: função que tem uma função como argumento ou resulta em uma função 

Exemplos:
    . map: aplica uma função a cada elemento de uma lista, retornando uma nova lista com os resultados
    . filter: seleciona os elementos de uma lista que satisfazem um predicado
    . fold: usada para combinar os elementos de uma lista em um único valor
    . zipWith: recebe uma função binária e duas listas e retorna a lista formada pelos resultados da aplicação 
    da função aos elementos correspondentes das listas dadas 
-}

-- Usando funções de alta ordem

-- 1. Crie a função quadrados :: [Int] -> [Int] que retorna o quadrado de cada número em uma lista
quadrados = map (\x -> x*x)

-- 2. Crie a função multiplosDe5 :: [Int] -> [Int] que retorna apenas os números que são múltiplos de 5
multiploDe5 = filter (\x -> x `mod` 5 == 0)

-- 3. Crie a função quadradoDosPares :: [Int] -> [Int] que retorna o quadrado apenas dos números pares de uma lista.
quadradoDosPares lista = map (\x -> x*x) (filter even lista)
