{- Questão 28 - Lista 1 (Nova proposta): Faça uma solução em Haskell utilizando list comprehension que, dada uma lista de inteiros, 
ela retorne uma lista com uma repetição de cada elemento de acordo com seu valor.

exemplo:
Main> proliferaInt [3,0,2,4,0,1] = [3,3,3,2,2,4,4,4,4,1]
 
-}

proliferaInt::[Int]->[Int]
proliferaInt l = concat[repete x x | x <- l]

repete::Int->Int->[Int]
repete _ 0 = []
repete x y = x : repete x (y-1)




