import Data.Char

--Questão 1
--Poderia usar isDigit do Data.Char
--Faça a função func1 que receba uma string e retorne a quantidade de caracteres numéricos presentes na string
--func1 :: String -> Int

isDigit1::Char -> Bool
isDigit1 x = ('0' <= x) && (x <= '9')

func1::String->Int
func1 [] = 0
func1 (h:t)
    | isDigit1 h = 1 + func1 t 
    | otherwise = func1 t 


--Questão 2
-- Faça a função func2 que receba duas strings e retorne a string com maior quantidade de carcateres numéricos. 
-- Caso a quantidade seja a mesma entre elas, qualquer uma poderá ser retornada. Use necessariamente, func1.
func2::String->String->String
func2 s1 s2 
    | func1 s1 >= func1 s2 = s1 
    | otherwise = s2


--Questão 3
-- Faça  a função func3 de alta ordem, necessariamente com uso de list comprehension, que receba, além da função
-- parâmetro, um [(String, String)] e retorne [String] com as strings  com maior quantidade de caracteres 
-- numérico de cada dupla. Adote, como tipo do parâmetro da função recebida por func3, o tipo da função da 
-- questão anterior, func2.


contaTamanho :: [a] -> Int
contaTamanho [] = 0
contaTamanho (_:xs) = 1+ contaTamanho xs

maiorString :: String->String->String
maiorString a b
    | contaTamanho a > contaTamanho b = a
    | otherwise = b

func3 :: (String->String->String)->[(String,String)]->[String]
func3 f xs = [(f x y) | (x,y) <- xs]


func3Esp :: (String -> String -> String) -> [(String,String)] -> [String]
func3Esp func2 xs = [func2 (fst x) (snd x)| x <- xs]

ehPar :: Int->Bool
ehPar x = x `mod` 2 == 0 

filter2::(a->Bool)->[a]->[a]
filter2 _ [] = []
filter2 faux (h:t)
    | faux h = h : filter2 faux t 
    | otherwise = filter2 faux t 

-- [x | x <- [1..10], x ]
-- [("1234", "56787"), ...]
-- --Questão 4
-- -- Considere o código Haskell a seguir e responda
-- -- funT _ _ _ [] = []
-- -- funT p h t (a:x)
-- --    | t a = h (p a) : funT p h t x
-- --    | otherwise = funT p h t x 

-- -- possui a = snd (a)

-- -- muda a = reverse (fst (a))

-- -- limite [] = (0, [])
-- -- limite x = (length x, x)


-- --a) Apresente um cabeçalho para a função possui. Caso algum tipo não seja rígido, use o tipo genérico.
-- possui::(a,Bool)->Bool

-- --b) Apresente um cabeçalho para a função limite. Caso algum tipo não seja rígido, use o tipo genérico.
-- limite::[a]->(Int,[a])

-- --c) Apresente um cabeçalho para a função muda. Caso algum tipo não seja rígido, use o tipo genérico.
-- muda::(a,Bool)->a

-- --d) Faça uma chamada para a função funT passando adequadamente parâmetros a ela. No caso, como ela é de alta ordem,
-- -- você deverá usar apenas as funções já definidas no código apresentado nesta questão. Já o último parâmetro, você
-- -- deverá propô-lo. Contudo, não pode ser lista vazia.
-- funt::-- muda a = reverse (fst (a))


-- --e) Para a chamada da função funT que você propôs no item anterior, informe qual será a saída que o programa apresentará.

