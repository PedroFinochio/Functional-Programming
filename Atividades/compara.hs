{-

Fornecidos 3 valores a,b,c escreva uma função que retorne quantos dos 3 são iguais. A resposta pode ser: todos iguais (3), dois iguais (2) ou
nenhum igual (0).

-}

compara :: Int -> Int -> Int -> Int
compara x y z
    | x == y && y == z = 3
    | x == y || y == z || x == z = 2
    | otherwise = 0
