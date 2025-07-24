{- Questão 9 - Lista 1 (Nova proposta): Escreva, em Haskell, uma função que retorna quantos
múltiplos de um determinado inteiro tem em um intervalo fornecido utilizando list comprehen-
sion e funções de alta ordem. Por exemplo, o número 4 tem 2 múltiplos no intervalo de 1 a
10.
howManyMultiples 4 1 10 = 2
-}

howManyMultiples::Int->Int->Int->Int
howManyMultiples n i1 i2 = length[ x | x <- [i1..i2], (mod) x n == 0]