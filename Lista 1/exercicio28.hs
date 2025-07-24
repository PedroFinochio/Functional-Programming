{- Faça uma solução em Haskell que, dada uma lista de inteiros, ela retorne uma lista com uma repetição de cada elemento de acordo com seu 
valor.
-}

proliferaInt::[Int]->[Int]
proliferaInt [] = []
proliferaInt (h:t) = repete h h ++ proliferaInt t 


repete::Int->Int->[Int]
repete _ 0 = []
repete x y 
    | y > 0 = x : repete x (y-1)
