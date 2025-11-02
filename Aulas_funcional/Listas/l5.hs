-- classificaLista :: [Int] -> String. Retorna "Lista vazia", "Lista unitária" ou "Lista longa" conforme o tamanho.
classificaLista::[Int]->String 
classificaLista [] = "Lista vazia"
classificaLista [a] = "Lista unitária"
classificaLista (h:t) = "Lista longa"

-- media3 :: (Float, Float, Float) -> Float. Retorna a média aritmética de três valores.
media3::(Float, Float, Float)->Float 
media3 (x, y, z) = (x + y + z) / 3 

-- acimaDaMedia :: [(String,Float)] -> [String]. Dada uma lista de alunos e notas, retorna os nomes com nota > média geral.
tamanho::[(String, Float)]->Float 
tamanho l = fromIntegral (length l)

soma::[(String, Float)]->Float 
soma [] = 0 
soma ((_,b):x) = b + soma x  

media::[(String, Float)]->Float 
media [] = 0
media l = soma l / tamanho l 

acimaDaMedia::[(String, Float)]->[String] 
acimaDaMedia l = [nome | (nome, valor) <- l, valor > media l]

-- diferencas :: [Int] -> [Int]. Dada uma lista, retorna as diferenças entre elementos consecutivos.
diferencas::[Int]->[Int]
diferencas [] = []
diferencas [a] = []
diferencas (a:b:x) = (a-b) : diferencas x 

-- Escreva uma função que retorna o dígito de um número inteiro de acordo com a posição informada.
anyDigit::Int->Int->Int 
anyDigit p n = n `div` (10^p) `mod` 10 

{- Escreva em haskell, a seguinte função:

f1(x) = (x+4) / (x+2), se x >= 0
       2 / x, se x < 0
-}
f1::Float->Float 
f1 x 
    | x >= 0 = (x+4) / (x+2)
    | otherwise = 2 / x 

-- Faça uma solução para inverter os elementos de uma lista de inteiros.
inverte::[Int]->[Int]
inverte [] = []
inverte (h:t) = inverte t ++ [h]

{- 
Implemente a função pushRight :: String -> Int -> String 
que recebe uma string s e um número inteiro n e retorna uma nova string t 
com k caracteres '>' inseridos no início de s. 
O valor de k deve ser tal que o comprimento de t seja igual a n. 
Obs: se n é menor que o comprimento de s, a função retorna a própria string s.
-}
pushRight::String->Int->String 
pushRight s 0 = s
pushRight s n 
    | n <= length s = s 
    | otherwise = '>' : pushRight s (n - 1)

-- Dada uma lista de caracteres [Char], e um caractere c, retornar quantos caracteres da lista são iguais a c.
conta::[Char]->Char->Int 
conta [] _ = 0
conta (h:t) c
    | h == c = 1 + conta t c 
    | otherwise = conta t c 

{-
Seja o cadastro de pessoas dado pela função a seguir:

pessoa rg
  | rg == 1 = ("João Silva", 12, 'm')
  | rg == 2 = ("Jonas Souza", 51, 'm')
  ...
  | rg == 321 = ("Jocileide Strauss", 21, 'f')
  | otherwise = ("Não há ninguém mais", 9999, 'x')

Construa funções que retornem os seguintes dados:
(a) O nome da pessoa de menor idade até um determinado registro.
(b) A idade média de todas as pessoas até um dado registro.
(c) O número de pessoas do sexo masculino.
(d) O número do registro da pessoa de maior idade.
-}
pessoa::(Eq a, Num a, Num b)=>a->(String, b, Char)
pessoa rg 
    | rg == 1 = ("Joao Silva", 12, 'm')
    | rg == 2 = ("Jonas Souza", 51, 'm')
    | rg == 3 = ("Jocileide Strauss", 51, 'm')
lista = [pessoa i| i <- [1..3]]

nomeDaPessoaDeMenorIdade::Int->String
nomeDaPessoaDeMenorIdade rg = head [nome | (nome, idade, _) <- [pessoa i | i <- [1..rg]], idade == minimum [idade | (_, idade, _) <- [pessoa i | i <- [1..rg]]]]

idadeMedia::Int->Float
idadeMedia rg = fromIntegral (sum [idade | (_, idade, _) <- [pessoa i | i <- [1..rg]]]) / fromIntegral (length [pessoa i | i <- [1..rg]])

numMasculino::Int->Int
numMasculino rg = length [() | (_, _, sexo) <- [pessoa i | i <- [1..rg]], sexo == 'm']
    
registroMaiorIdade::Int->Int
registroMaiorIdade rg = head [i | i <- [1..rg], let (_, idade, _) = pessoa i, idade == maximum [idade | j <- [1..rg], let (_, idade, _) = pessoa j]]


    







