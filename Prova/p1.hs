{- Faça, em Haskell, uma solução que receba um Int a e uma [Int] b. Como saída, teremos um Bool que informa se a ∈ b.-}

f_in::Int->[Int]->Bool
f_in _ [] = False
f_in x (h:t)
    | x == h = True
    | otherwise = f_in x t 

{- Considerando f _in, faça, em Haskell, uma solução que receba um Int x e uma [[Int]] l. Como saída, teremos uma [(Bool, [Int])] s que 
informa, para cada sublista li de l, se o elemento x pertence ou não à li.-}

f2::Int->[[Int]]->[(Bool,[Int])]
f2 _ [] = []
f2 x (h:t) -- h é a primeira lista, t são as listas restantes 
    | f_in x h = (True, h) : f2 x t
    | otherwise = (False, h) : f2 x t

{- Considerando f2, faça, em Haskell, uma solução que receba um Int x e uma [[Int]] l.
Como saída, teremos uma (Int, [(Bool, [Int])]) s que informa o Int x e, para cada sublista li de l, se o elemento x pertence ou não à li.
-}

f3::Int->[[Int]]->(Int,[(Bool,[Int])])
f3 x y = (x, f2 x y)

{- Faça, em Haskell, uma solução que receba uma (Int,[(Bool,[Int])]) e gere uma [[Int]]
com apenas as listas [Int] cujo Bool da dupla é False.
-}

f4::(Int,[(Bool,[Int])])->[[Int]]
f4 (_,[]) = []
f4 (y,(a,b):x) -- a == Bool, b == [Int] e x restante das outras listas 
    | a == False = b : f4 (y, x) 
    | otherwise = f4 (y, x) 

{-Faça, em Haskell, uma solução que receba duas strings S e R, cuja menor tem tamanho
n. Sua solução deverá retornar uma lista de Bool B de tamanho n, de modo que cada Bi será
a informação se Si é igual ou diferente de Ri, para 0 ≤ i < n.
-}

f5::String->String->[Bool]
f5 [a] [] = [False]
f5 [] [b] = [False]
f5 x y 
    | lenght x == lenght y = [True]
    | otherwise = [False]


lenght::[Char]->Int
lenght [] = 0
lenght (h:t) = 1 + lenght t





