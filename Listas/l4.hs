-- Crie uma função cabeca :: [a] -> a que retorne o primeiro elemento de uma lista
cabeca::[a]->a
cabeca (h:t) = h 

-- Crie uma função cauda :: [a] -> [a] que retorne todos os elementos de uma lista, exceto o primeiro.
cauda::[a]->[a] 
cauda (h:t) = t 

{- Crie uma função situacaoAluno :: (Float, Float) -> String que receba duas
notas e retorne a situação do aluno:
● “Aprovado” se média ≥ 6
● “Recuperação” se média ≥ 4
● “Reprovado” caso contrário
-}
situacaoAluno::(Float,Float)->String 
situacaoAluno (x,y)
    | media >= 6 = "Aprovado"
    | media >= 4 = "Recuperacao"
    | otherwise = "Reprovado"
     where media = (x + y) / 2

-- Implemente a função tamanho :: [a] -> Int que conte o número de elementos de uma lista. (Sem usar length)
tamanho::[a]->Int 
tamanho [] = 0 
tamanho (h:t) = 1 + tamanho t 

-- Crie uma função somaPares :: [Int] -> Int que some apenas os números pares de uma lista.
somaPares::[Int]->Int 
somaPares [] = 0
somaPares (h:t)
    | h `mod` 2 == 0 = h + somaPares t 
    | otherwise = somaPares t 

{- Crie uma função descricaoLista :: [a] -> String que descreva uma lista:
● “Lista vazia” se não tiver elementos
● “Um elemento” se tiver só um item
● “Vários elementos” caso contrário
-}
descricaoLista::[a]->String
descricaoLista [] = "Lista vazia"
descricaoLista [a] = "Um elemento" 
descricaoLista (h:t) = "Varios elementos"

{- Crie uma função tipoTriangulo :: (Eq a, Num a) => (a, a, a) -> String que
determine o tipo de um triângulo, dados três lados em uma tupla:
● “Equilátero” se todos os lados forem iguais
● “Isósceles” se dois lados forem iguais
● “Escaleno” se todos forem diferentes
-}
tipoTriangulo::(Eq a, Num a)=>(a,a,a)->String
tipoTriangulo (a,b,c)
    | a == b && b == c = "Equilatero"
    | a /= b && a /= c && b /= c = "Escaleno"
    | otherwise = "Isosceles"

{- Crie uma função contaVogais :: String -> Int que conte quantas vogais existem em uma palavra.
Considere apenas as letras minúsculas ‘a’, ‘e’, ‘i’, ‘o’, ‘u’.
-}
contaVogais::String->Int 
contaVogais [] = 0
contaVogais (h:t)
    | h == 'a' || h == 'e' || h == 'i' || h == 'o' || h == 'u' = 1 + contaVogais t 
    | otherwise = contaVogais t 

-- Crie uma função produtoEscalar :: [Int] -> [Int] -> Int que calcule o produto escalar entre dois vetores (listas de inteiros).
produtoEscalar::[Int]->[Int]->Int 
produtoEscalar [] [] = 0
produtoEscalar (h:t) (c:k) = (h * c) + produtoEscalar t k 

-- Crie uma função maiorElemento :: (Ord a) => [a] -> a que retorne o maior elemento de uma lista.
maiorElemento::(Ord a)=>[a]->a 
maiorElemento [a] = a 
maiorElemento (h:t)
    | h >= maiorElemento t = h 
    | otherwise = maiorElemento t 





