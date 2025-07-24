{- Faça em Haskell uma solução para, dada uma lista de inteiros, retornar uma dupla de listas de inteiros onde a primeira conterá os 
elementos ímpares e a segunda os elementos pares passados como parâmetro. Utilize obrigatoriamente list comprehension.

exemplo:
Main> separa [1,4,3,4,6,7,9,10] = ([1,3,7,9],[4,4,6,10])

-}
separa::[Int]->([Int],[Int])
separa l = ([x | x <- l, (mod) x 2 /= 0],[y | y <- l, (mod) y 2 == 0])


