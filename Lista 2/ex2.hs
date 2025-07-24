{- De maneira similar à função length, mostre como a função replicate :: Int -> a -> [a], que retorna uma lista de elementos idênticos, 
pode ser definida utilizando list comprehension.

exemplo:
Main> replicate 3 True = [True, True, True]
-}
replicate2 n v = [v | _ <- [1..n]]
