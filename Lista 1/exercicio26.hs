{- Faça em Haskell uma solução para o seguinte problema: Dada uma lista de caracteres [Char], e um caractere a, retornar quantos caracteres
da lista são iguais a a
-}

f::[Char]->Char->Int
f [] _ = 0
f (h:t) x 
    | h == x = 1 + f t x 
    | otherwise = f t x 