{-Escreva, em Haskell, uma função que informa de quantas maneiras é possível escolher n objetos em uma coleção original de m objetos, 
para m ≥ n.

m! / n!(m - n)!

-}

fatorial::Int->Int
fatorial 0 = 1
fatorial x = x * fatorial (x-1)

escolherNobjetos::Int->Int->Int
escolherNobjetos m n = fatorial m `div` (fatorial n * fatorial (m-n))

