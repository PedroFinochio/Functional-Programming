--Função para adicionar um elemento a lista

adiciona::Int->[Int]->[Int]
adiciona a [] = [a]
adiciona y (a:x) 
    | y == a = a:x
    | otherwise = a: adiciona y x 
