{- Faça em Haskell uma solução para, dada uma lista de inteiros, retornar uma dupla de listas de inteiros onde a primeira conterá os 
elementos ímpares e a segunda os elementos pares passados como parâmetro.
{-exemplo-}
Main> separa [1,4,3,4,6,7,9,10] = ([1,3,7,9],[4,4,6,10])
-}

impar::[Int]->[Int]
impar [] = []
impar (h:t) 
    | (h `mod` 2 /= 0) = h : impar t
    | otherwise = impar t

par::[Int]->[Int]
par [] = []
par (h:t) 
    | (h `mod` 2 == 0) = h : par t
    | otherwise = par t

separa::[Int]->([Int],[Int])
separa xs = (impar xs, par xs)

 

 