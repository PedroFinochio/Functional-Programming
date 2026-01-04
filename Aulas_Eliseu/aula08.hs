import Data.Char

{- List comprehension:

[ expressão | variável <- lista, condição1, condição2, ... ]

expressão: o que você quer colocar na nova lista.

variável <- lista: pega elementos da lista, um por um.

condição: (opcional) filtra quais elementos vão entrar na nova lista.

-}

{- função que multiplica por x cada elemento de uma lista -}
f1 x l = [y*x | y <- l]

{- função que filtra os pares e os multiplica por x-}
f2 x l = [y*x | y <- l, y `mod` 2 == 0]

{- função que multiplica por x apenas os números pares de uma lista -}
f3 x l = [y*x | y <- l, y `mod` 2 == 0] ++ [y | y <- l, y `mod` 2 /= 0 ]

{- função que filtra os pares maiores que 5 e os multiplica por x -}
f4 x l = [y*x | y <- l, y `mod` 2 == 0 && y > 5]

{- função que filtra os pares ou maiores que 5 e os multiplica por x- -}
f5 x l = [y *x | y <- l, y `mod` 2 == 0 || y > 5]

{- função que faz um produto cartesiano entre duas listas
   sendo uma dada como parâmetro e outra gerada dentro da função-}
 












