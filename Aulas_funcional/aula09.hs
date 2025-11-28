{- Funções anonimas: nos permitem criar funções "em tempo real", sem a necessidade de um nome
    . Principal uso: argumento para funçoẽs como map e filter, tornando o código mais conciso
-}

-- 1. Use map e uma expressão lambda para converter uma lista de strings em uma lista com os seus respectivos tamanhos.
tamanhoString lista = map (\x -> length x) lista

-- 2. Use filter e uma lambda para encontrar todos os números em uma lista [1..50] que são múltiplos de 3 e 5 ao mesmo tempo.
multiplosDe3e5 = filter (\x -> x `mod` 3 == 0 && x `mod` 5 == 0) [1..50]

-- 3. Crie uma função que recebe uma lista de tuplas [(String, Int)] e usa filter com uma lambda para reter apenas os pares cuja string tem mais de 5 caracteres
stringMais5char lista = filter (\(x,y) -> length x > 5) lista




    