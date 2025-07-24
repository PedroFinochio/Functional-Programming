{-Defina a função dec2int :: [Int] -> Int que converta uma lista de inteiros para um inteiro.-}

dec2int::[Int]->Int
dec2int l = dec2int_aux l (tamanho l-1)

tamanho::[Int]->Int
tamanho [] = 0
tamanho (h:t) = 1 + tamanho t 

dec2int_aux::[Int]->Int->Int
dec2int_aux [] _ = 0
dec2int_aux (h:t) n = h*10^n + dec2int_aux t (n-1)

{- [2,3,4] = 234 = 200 + 30 + 4 = 2*10^2 + 3*10^1 + 4*10^0
   l = [2,3,4] -> dec2int_aux [2,3,4] tamanho-1
                  2 * 10 ^ 2 = 200 + dec2int_aux [3,4] 1
                               200 + 3 * 10 ^ 1 + dec2int_aux [4] 0
                               200 + 30 + 4 * 10 ^ 0 + dec2int_aux [] -1
                               200 + 30 + 4 + 0 = 234
 -}



