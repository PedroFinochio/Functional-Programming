{- 01 função que soma os elementos de uma lista -}
sumList::[Int]->Int
sumList [] = 0
sumList (h:t) = h + sumList t

{- 02-localiza elemento em lista -}
searchList::Int->[Int]->Bool
searchList _ [] = False
searchList x (h:t)
    | x == h = True
    | otherwise = searchList x t

{-03 remove todas ocorrências de y em uma lista -}
deleteList::Int->[Int]->[Int]
deleteList _ [] = []
deleteList y (h:t)
    | y == h = deleteList y t
    | otherwise = h : deleteList y t 

{-04 informa o tamanho de uma lista -}
lenghtList::[Int]->Int
lenghtList [] = 0
lenghtList (h:t) = 1 + lenghtList t

{-05 conta a ocorrência de um Int em [Int] -}
contList::Int->[Int]->Int
contList _ [] = 0
contList y (h:t)
    | y == h = 1 + contList y t
    | otherwise = contList y t

{- 06 inverte a lista -}
reverseList:: [Int]->[Int]
reverseList [] = []
reverseList (h:t) = reverseList t ++ [h]

{- Exercícios
     Implementar as funções: 
       myHead que recebe uma lista x e retorna a cabeça de x
       myTail que recebe uma lista x e retorna a lista x sem a cabeça
       myLast que recebe uma lista x e retorna o último elemento de x
       myInit que recebe uma lista x e retorna a lista x sem o último elemento
-}

myHead::[Int]->Int
myHead (h:t) = h

myTail::[Int]->[Int]
myTail [] = []
myTail (h:t) = t

myLast::[Int]->Int
myLast [h] = h
myLast (h:t) = myLast t

myInit::[Int]->[Int]
myInit [a,c] = [a]
myInit (h:t) = h : myInit t
