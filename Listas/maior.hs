--Função que retorna o maior valor de uma lista

maior::[Int]->Int
maior [a] = a
maior (a:x)
    | a > (maior x) = a
    | otherwise = maior x 