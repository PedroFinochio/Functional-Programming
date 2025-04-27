--Escreva em Haskell, uma função que retorna o último dígito de um número inteiro

ultimo_digito::Int->Int
ultimo_digito x = x `mod` 10 