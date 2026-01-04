{- List comprehension: sintaxe consisa, inspirada na Notação de Construtor de Conjuntos da Matemática, para gerar 
novas listas a partir de lista existente.

Forma declarativa e expressiva de realizar operações de mapeamento (cria novos valores com base em uma lista) e
filtragem (filtra novos valores com base em uma lista).

Estrutura: [*expressão* | *gerador(es)* , *filtro(s)*]
expressão: expressão de saída por elemento
geradores: x <- lista (percorre a lista)
filtros: condições booleanas 

 -}

 -- Exemplo 1: crie uma função que retorne o quadrado de cada elemento de uma lista 
quadrados l = [x*x| x <- l]

{- Exemplo 2: Utilizando compreensão de listas, crie uma função, que tem como entrada uma lista e retorna 
apenas os números pares.
-}
pares l = [x | x <- l, mod x 2 == 0]

{- Exemplo 3: Crie um função que retorne o quadrado dos elementos pares de uma lista.
Ex: paresAoQuadrado -> [4,16,36,64,100].
-}
paresAoQuadrado l = [x*x| x <- l, mod x 2 == 0]

{- Exemplo 4: Crie uma função que, dada uma lista de tuplas, retorne uma lista com os valores quadrados de cada elemento da
tupla.
-}
tuplasAoQuadrado l = [(a*a,b*b)| (a,b) <- l]

-- Exemplo 5: Crie uma função que, dada uma lista de entrada, retorne números maiores que 10 e ímpares;
filtrarLista l = [x| x <- l, x > 10 && mod x 2 /= 0]

-- Exemplo 6: Gere todas combinações possíveis entre os jogadores e o número das camisas;
jogadoresCamisas = [(a,b)| a <- [10,11], b <- ["Romario","Rivaldo"]]

{- Como seria reproduzido em Haskell a seguinte notação de conjunto: {2x | x e N, x < 5}

[x*2| x < [1..4]]

-}

{- Crie uma função triangulosEquilateros, que dado 3 listas com intervalo [1..10], retorna todos triangulos
equilateros.
Ex: triangulosEquilateros -> [(1,1,1),(2,2,2)...(10,10,10)]
-}
triangulosEquilateros = [(x,y,z)| x <- [1..10], y <- [1..10], z <- [1..10], x == y && y == z]

{- Crie uma função trianguloRetangulo, que dado 3 listas com intervalo [1..10], retorna todos os 
triângulos retangulos.
Ex: trianguloRetangulo-> [(3,4,5),(4,3,5), (6, 8, 10), (8, 6, 10)]
-}
trianguloRetangulo = [(x,y,z)| x <- [1..10], y <- [1..10], z <- [1..10], (x*x) + (y*y) == z*z]

{- Triângulos retângulo sem repetição: Crie uma função trianguloRetangulo, que dado 3 listas com 
intervalo [1..10], retorna todos os triângulos retângulos, mas sem valores repetidos;

Ex: trianguloRetangulo-> [(3,4,5), (6, 8, 10)]
-}
trianguloRetanguloSemReticao = [(x,y,z)| z <- [1..10], y <- [1..10], x <- [1..y], (x*x) + (y*y) == z*z]







