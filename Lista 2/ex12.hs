{- Defina a função evenCubes :: Int -> [Int] que, dado um limite, retorne a lista do cubo dos números pares até o limite fornecido.
-}

evenCubes::Int->[Int]
evenCubes l = [x^3|x <- [1..l], x `mod` 2 == 0]