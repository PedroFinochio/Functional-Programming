import Data.Char

--Questão 1
--Poderia usar isDigit do Data.Char
--Faça a função func1 que receba uma string e retorne a quantidade de caracteres numéricos presentes na string
--func1 :: String -> Int

func1::String->Int
func1 [] = 0
func1 (h:t)
    | isDigit h = 1 + func1 t
    | otherwise = func1 t 

--Questão 2
-- Faça a função func2 que receba duas strings e retorne a string com maior quantidade de carcateres numéricos. 
-- Caso a quantidade seja a mesma entre elas, qualquer uma poderá ser retornada. Use necessariamente, func1.
func2::String->String->String
func2 s r 
    | func1 s >= func1 r = s 
    | otherwise = r 

--Questão 3
-- Faça  a função func3 de alta ordem, necessariamente com uso de list comprehension, que receba, além da função
-- parâmetro, um [(String, String)] e retorne [String] com as strings  com maior quantidade de caracteres 
-- numérico de cada dupla. Adote, como tipo do parâmetro da função recebida por func3, o tipo da função da 
-- questão anterior, func2.
func3::(String->String->String)->[(String,String)]->[String]
func3 func2 l = [func2 x y | (x,y) <- l]

