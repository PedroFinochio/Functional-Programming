{- Um programador especificou a função allDifferent para identificar se três números inteiros são todos diferentes entre si, da seguinte forma:
allDifferent::Int->Int->Int->Bool
allDifferent m n p = (m/=n) && (n/=p)
-}

-- a) O que esta errado nessa definição ? 
-- R: O programador não especificou todos os casos possíveis de comparação.

--b) Especifique corretamente uma função allDifferent para o propósito necessário.
allDifferent::Int->Int->Int->Bool
allDifferent m n p = (m/=n) && (n/=p) && (m/=p) 