{- Para uma lista de elementos inteiros qualquer, faça uma função que retorne uma lista de inteiros sem elementos repetidos.
-}

purifica::[Int]->[Int]
purifica[] = []
purifica(h:t)
    | searchList h t == True = purifica t
    | otherwise = h : purifica t

searchList::Int->[Int]->Bool
searchList _ [] = False
searchList x (h:t)
    | x == h = True
    | otherwise = searchList x t 

