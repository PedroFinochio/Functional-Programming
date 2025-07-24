{-Escreva, em Haskell, uma função que retorna o último dígito de um número inteiro.-}

lastDigit::Int->Int
lastDigit x = x `mod` 10