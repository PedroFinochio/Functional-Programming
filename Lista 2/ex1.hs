{- Utilizando list comprehension, gere uma expressão que calcule 1² + 2² + ... 100² -}

f1 = soma [(y^2)| y <- [1..100]]

soma::[Int]->Int
soma [] = 0
soma (h:t) = h + soma t 




