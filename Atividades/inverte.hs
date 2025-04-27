--Escreva, em Haskell, a função inverte que inverta os dígitos de um número inteiro.

inverte::Int->Int
inverte 0 = 0
inverte x = inverte(x `mod` 10) + (x `div` 10) * 10