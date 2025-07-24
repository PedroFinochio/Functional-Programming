{- Uma tupla (x, y, z) de número inteiros é pitagórica se x² + y² = z². Utilizando list comprehension, defina a função 
pyths :: Int -> [(Int, Int, Int)] que, dado um limite, retorne todas as tuplas de (x, y, z) que são pitagóricas até o limite fornecido.

exemplo:
Main> pyths 10 = [(3,4,5), (4,3,5),(6,8,10),(8,6,10)]

-}

pyths i = [(x,y,z) | x <- [1..i], y <- [1..i], z <- [1..i], z^2 == x^2 + y^2]


