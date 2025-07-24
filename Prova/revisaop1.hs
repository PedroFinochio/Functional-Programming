{- Faça, em Haskell, uma solução que receba um Int a e uma [Int] b. Como saída, teremos um Bool que informa se a ∈ b.-}
f_in::Int->[Int]->Bool
f_in a [] = False
f_in a (h:t) = a == h || f_in a t

{- Considerando f_in, faça, em Haskell, uma solução que receba um Int x e uma [[Int]] l. Como saída, teremos uma [(Bool, [Int])] s que 
informa, para cada sublista li de l, se o elemento x pertence ou não à li.-}
f2::Int->[[Int]]->[(Bool,[Int])]
f2 _ [] = []
f2 x (h:t)
    | f_in x h = (True, h) : f2 x t
    | otherwise = (False, h) : f2 x t
 
 --3 [[2,3],[1,2],[4,7]] -> [(True, [2,3], False,[1,2], False,[4,7])] 

{- Considerando f2, faça, em Haskell, uma solução que receba um Int x e uma [[Int]] l.
Como saída, teremos uma (Int, [(Bool, [Int])]) s que informa o Int x e, para cada sublista li de l, se o elemento x pertence ou não à li.
-}
f3::Int->[[Int]]->(Int,[(Bool,[Int])])
f3 x l = (x, f2 x l) 


{- Faça, em Haskell, uma solução que receba uma (Int,[(Bool,[Int])]) e gere uma [[Int]]
com apenas as listas [Int] cujo Bool da dupla é False.
-}
f4::(Int,[(Bool,[Int])])->[[Int]]
f4 (_,[]) = []
f4 (y,(a,b):x)
    | not a = b : f4 (y, x)
    | otherwise = f4 (y, x) 
 

{-Faça, em Haskell, uma solução que receba duas strings S e R, cuja menor tem tamanho
n. Sua solução deverá retornar uma lista de Bool B de tamanho n, de modo que cada Bi será
a informação se Si é igual ou diferente de Ri, para 0 ≤ i < n.
-}
f5::String->String->[Bool]
f5 [] _ = []
f5 _ [] = []
f5 (hs:ts) (hr:tr) 
    | hs == hr = True : f5 ts tr 
    | otherwise = False : f5 ts tr 

{-
 s = "abc" 
 r = "fbc"
 [False, True, True]
-}












