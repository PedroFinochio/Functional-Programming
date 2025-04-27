{-

Implementar a fórmula que indica de quantas maneiras é possível escolher n objetos de uma coleção original de m objetos, onde m >= n

m! / n!(m - n)!

-}

fatorial::Int->Int
fatorial 0 = 1
fatorial n = n * fatorial(n - 1)

n_objetos::Int->Int->Int
n_objetos n m = fatorial m `div` (fatorial n * fatorial (m - n))
