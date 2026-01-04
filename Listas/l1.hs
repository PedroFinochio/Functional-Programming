{- Implemente uma função meuAbs que devolve o valor absoluto sem usar abs. 

Ex: meuAbs (-5) -> 5

-}

meuAbs::Int->Int
meuAbs x 
    | x >= 0 = x 
    | otherwise = x * (-1)

----------------------------------------------------------------------------------------------------------------

{- Crie uma função que receba 2 números e devolva o maior deles.

Ex: maior2 10 7 -> 10 

-}

maior2::Int->Int->Int
maior2 x y 
    | x >= y = x 
    | otherwise = y

----------------------------------------------------------------------------------------------------------------

{- Escreva uma função que diga se um número é positivo, negativo ou zero.

Ex: classificaSinal (-8) → "Negativo"

-}

classificaSinal::Int->String
classificaSinal x 
    | x == 0 = "Zero"
    | x > 0 = "Positivo"
    | otherwise = "Negativo"

----------------------------------------------------------------------------------------------------------------

{- Crie uma função que classifique uma nota (0 a 10) em conceitos: Excelente, Bom, Regular, Insuficiente. 

Ex: conceito 9.5 → "Excelente"

-}

conceito::Float->String
conceito x 
    | x >= 0 && x <= 5 = "Insuficiente"
    | x > 5 && x <= 6 = "Regular"
    | x > 6 && x <= 8 = "Bom"
    | otherwise = "Excelente"

----------------------------------------------------------------------------------------------------------------

{- Escreva funções que retornem o maior e o menor de tres números.

Ex: maior3 4 9 2 -> 9
    menor3 4 9 2 -> 2

-}

maior3::Int->Int->Int->Int
maior3 x y z 
    | x >= y && x >= z = x
    | y >= x && y >= z = y
    | otherwise = z

menor3::Int->Int->Int->Int
menor3 x y z 
    | x <= y && x <= z = x
    | y <= x && y <= z = y
    | otherwise = z

----------------------------------------------------------------------------------------------------------------

{- Crie uma calculadora simples que receba dois números e uma operação ('+', '-', '*', '/'). 

Ex: calc 8 3 '+' -> 11

-}

calc::Float->Float->Char->Float
calc x y s
    | s == '+' = x + y
    | s == '-' = x - y
    | s == '*' = x * y
    | otherwise = x / y

----------------------------------------------------------------------------------------------------------------

{- Faça uma função que classifique um triângulo como Equilátero, Isósceles ou Escaleno.

Ex: tipoTriangulo 3 3 3 → "Equilátero"

-}

tipoTriangulo::Int->Int->Int->String
tipoTriangulo x y z 
    | x == y && x == z = "Equilatero"
    | x == y && x /= z || x /= y && x == z = "Isosceles"
    | otherwise = "Escaleno"

----------------------------------------------------------------------------------------------------------------

{- Crie uma função que calcule a diferença absoluta entre dois números.

Ex: difAbs 3 10 → 7

-}

difAbs::Int->Int->Int
difAbs x y 
    | x >= y = x - y
    | otherwise = (-1) * (x - y)

----------------------------------------------------------------------------------------------------------------

{- Escreva uma função que diga se um número é múltiplo de outro.

Ex: multiploDe 15 5 → True

-}

multiploDe::Int->Int->Bool
multiploDe x y 
    | x `mod` y == 0 = True
    | otherwise = False

----------------------------------------------------------------------------------------------------------------

{- Defina a função min3 que, dados 3 inteiros, retorna o menor deles.

Ex: min3 7 2 9 → 2

-}

min3::Int->Int->Int->Int
min3 x y z 
    | x <= y && x <= z = x
    | y <= x && y <= z = y
    | otherwise = z 

----------------------------------------------------------------------------------------------------------------

{- Defina a função dezenas que dado um inteiro toma o valor do dígito das dezenas.

Ex: dezenas 1234 é 3

-}

dezenas::Int->Int
dezenas x = (x `div` 10) `mod` 10

----------------------------------------------------------------------------------------------------------------

{-  Defina a função centenas que dado um inteiro toma o valor do dígito das centenas. 

Ex: centenas 1234 é 2

-}

centenas::Int->Int
centenas x = (x `div` 100) `mod` 10
    










