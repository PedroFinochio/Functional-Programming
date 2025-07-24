{- Considere a função em Haskell soma::Int->Int->Int que retorna a soma entre os dois parâmetros. Assim, faça uma função em Haskell 
que resulte a multiplicação de dois parâmetros fazendo uso da função soma.

-}

mult::Int->Int->Int
mult x 0 = 0
mult x y = x + mult x (y-1)