{-

min (max 2 3) 5
succ (min (max 2 3 ) 5)
let dobro x = x + x in dobro 3 

-}

positivo::Int->Bool
positivo x 
    | x >= 0 = True
    | otherwise = False

verificaIdade x  = if x >= 18
    then "Voce é maior de idade e pode ser responsável por seus atos"
    else "Ta tudo certo"


-- 1. Crie funções que retornem o dobro e o triplo de um número
dobro2::Int->Int
dobro2 x = x + x 

-- 2. Faça uma função que calcule a média entre 2 números
media::Int->Int->Int
media x y = (x + y) `div` 2

-- 3. Escreva uma função que receba um número e diga se ele é par ou ímpar 
parOuImpar x = if x `mod` 2 == 0
    then "O numero e par"
    else "O numero e impar"

-- 4. Escreva uma função que diga se uma pessoa pode votar
podeVotar x  = if x >= 16
    then "Vote"
    else "Nao vote"
