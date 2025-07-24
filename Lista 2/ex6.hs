{- Defina a função find utilizada na função positions.
-}

import Data.Char()

positions :: Eq a => a -> [a] -> [Int]
positions x xs = find x (zip xs [0..n])
    where n = (length xs) - 1

find::



