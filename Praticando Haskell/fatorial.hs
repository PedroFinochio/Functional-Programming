--Implemente a função fatorial em Haskell

fatorial::Int->Int
fatorial 0 = 1
fatorial n = fatorial(n - 1) * n