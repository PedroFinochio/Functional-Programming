{-

Utilizando a função da soma, faça uma função que calcule a multiplicação entre 2 números quaisquer, considerando números positivos 
e negativos 
 
-}

multSoma::Int->Int->Int
multSoma x y
    | y == 0 = 0
    | otherwise = x + multSoma x (y - 1)

