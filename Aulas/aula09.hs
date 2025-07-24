import Data.Char

{- 01 qual é o resultado da computação desta implementação? -}

f1 :: [(Int,Char)]   
f1 = [ (a,b) | a <-[1..26], b<-['a'..'z']]

--R: [(1,'a'),(2,'b')...,(26,'z')]

{- 02 Considere uma tupla (x, y) que aparece na lista gerada por f1. Faça uma função que remova toda ocorrência subsequentes de tuplas (x, _), mantendo apenas a primeira 
    exemplo: f2 [(1,'a'),(1,'b'),(1,'c'),(2,'d'),(2,'e'),(2,'f'),(2,'g')] retorna [(1,'a'),(2,'d')] 
    Observação: você não deve considerar o Char da tupla em sua computação-}

f2::[(Int, Char)]->[(Int, Char)]
f2 [] = []
f2 ((a,b):x) = (a,b) : f2 (removeInt a x)


removeInt::Int->[(Int, Char)]->[(Int, Char)]
removeInt _ [] = []
removeInt y ((a,b):x)
    | y == a = removeInt y x 
    | otherwise = (a,b) : removeInt y x 