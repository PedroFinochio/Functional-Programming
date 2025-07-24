--Declare em Haskell, as funções abaixo, contemplando, também, os protótipos (cabeçalhos):

{- f1: R->R ; f1(x) = { x+4 / x+2 se x>=0
                        2/x se x < 0
                                        }
-}

f1::Int->Int
f1 x 
    | x >= 0 = (x+4) `div` (x+2)
    | otherwise = 2 `div` x

{- f2: R²->R ; f2(x,y) = { x+y se x>=y
                           x-y se x < y   
                                       }
-}

f2::Int->Int->Int
f2 x y 
    | x >=y = x+y
    | otherwise = x-y

{- f3: R³->R ; f3(x,y,z) = { x+y+z se (x+y) > z
                             x-y-z se (x+y) < z
                             0 se (x+y) = z 
                                               }
-}

f3::Int->Int->Int->Int
f3 x y z
    | (x+y) > z = x+y+z
    | (x+y) < z = x-y-z
    | otherwise = 0

