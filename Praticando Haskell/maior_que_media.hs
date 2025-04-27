-- Fornecidos 3 valores a,b,c elaborar uma função que retorne quantos desses 3 números são maiores que o valor médio entre eles

media :: Float -> Float -> Float -> Float
media x y z = (x + y + z) / 3

maior_que_media :: Float -> Float -> Float -> Float
maior_que_media x y z
    | (x > media x y z) && (y <= media x y z) && (z <= media x y z) = 1
    | (x > media x y z) && (y > media x y z) && (z <= media x y z) = 2
    | (x > media x y z) && (z > media x y z) && (y <= media x y z) = 2
    | (y > media x y z) && (z > media x y z) && (x <= media x y z) = 2
    | (x > media x y z) || (y > media x y z) || (z > media x y z) = 1
    | otherwise = 0

