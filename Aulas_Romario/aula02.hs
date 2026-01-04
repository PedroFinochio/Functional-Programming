-- Listas são estruturas homogeneas em Haskell (sempre possuem elementos do mesmo tipo)
-- Strings são listas de caracteres 

---------------------------------------------------------------------------------------------------------------------

{- Concatenação de listas 

ghci> "Hello" ++ " " ++ ['h','a','s','k','e','l','l']
ghci> "Hello Haskell"

ghci> 1:[2,3,4]
ghci> [1,2,3,4]

---------------------------------------------------------------------------------------------------------------------

-}

{- Comparação de listas (compara o primeiro elemento da lista)

ghci> [3,2,1] > [2,1,0] 
True

ghci> [3,2,1] > [2,10,100]
True

ghci> [3,4,2] == [3,4,2]
True

-}

---------------------------------------------------------------------------------------------------------------------

{- Funções básicas com listas 

ghci> head [5,4,3,2,1]
5

ghci> tail [5,4,3,2,1]
[4,3,2,1]

ghci> init [5,4,3,2,1]
[5,4,3,2]

ghci> last [5,4,3,2,1]
1

-}

---------------------------------------------------------------------------------------------------------------------

-- outras funções com listas: lenght, null, reverse, take, drop, maximum, minimum, sum, product, elem (x elem [a,x,y]), zip

---------------------------------------------------------------------------------------------------------------------

{- Intervalos

São uma forma de fazer listas que são sequencias aritméticas de elementos que podem ser enumerados

ghci> [1..10]
[1,2,3,4,5,6,7,8,9,10]

ghci> ['a'..'g']
"abcdefg"

-}

---------------------------------------------------------------------------------------------------------------------

{- Listas infinitas 

Há funções que podem criar listas infinitas 

ghci> take 10 (cycle [1,2,3])
[1,2,3,1,2,3,1,2,3,1]

-}

-- Crie uma função minhaIdade, que dado uma lista com o ano do seu nascimento até 2025, retorna sua idade
minhaIdade::[Int]->Int
minhaIdade l = 2025 - sum l

--Crie uma lista com os números de 1 a 50 e depois pegue apenas os 10 elementos centrais
centrais::[Int]->[Int]
centrais l = take 10 (drop 20 l)

--Crie uma função que receba uma palavra e devolva a palavra seguida de sua versão invertida
inversa::String->String
inversa p = p ++ reverse p 

-- Crie uma lista com 5 notas (de 0 a 10), calcule a média e mostre se o aluno foi aprovado (>=6) ou reprovado
aprovado::[Int]->String
aprovado l = if sum l `div` length l >= 6
    then "Aprovado"
    else "Reprovado"  

-- Crie duas listas, uma com nomes de jogadores e outra com seus números de camisa. Use zip para associar cada
-- jogador ao número correspondente 
jogadores::[String]->[Int]->[(String,Int)]
jogadores x y = zip x y 

{- DESAFIO: Crie uma função chamada dobreCadaOutro. A função deve dobrar todos os números alternados, começando
da direita para a esquerda. 

Ex: 
dobreCadaOutro [8,7,6,5] == [16,7,12,5]
dobreCadaOutro [1,2,3] == [1,4,3]

-}

dobreCadaOutro::[Int]->[Int]
dobreCadaOutro l = reverse (zipWith (*) (take (length l) (cycle[1,2])) (reverse l))

{- Exemplo de funcionamento :

[8,7,6,5] -> aplica a função de (*) a [1,2,1,2] e [5,6,7,8]
-> [5,12,7,16]
invertendo a lista -> [16,7,12,5]

-}











