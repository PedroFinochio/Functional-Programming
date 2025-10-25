{- Casamento de padrões: Operação envolvendo um padrão e uma expressão que faz a correspondencia (casamento) entre
o padrão e o valor da expressão. Um casamento de padrão pode suceder ou falhar, dependendo da forma do padrão e da
expressão envolvidos. 

Em haskell, um padrão é uma construção da linguagem de programação que permite analisar a estrutura de um valor
e associar variáveis aos seus componentes. 
-}

{- Padrão variável: é simplesmente um identificador de variável de valor (e como tal deve começar com letra 
minúscula). O casamento sucede sempre. A variável é associada ao valor. 
-}

{- Padrão constante: é simplesmente uma constante. O casamento sucede se e somente se o padrão for identico 
ao valor. Nenhuma associação de variável é produzida. 

Ex: Ao chamar avaliarNota 7, por exemplo, ela deve retornar “Boa”.

avaliarNota :: Int -> String
avaliarNota 10 = "Excelente!"
avaliarNota 7 = "Boa!"
avaliarNota 5 = "Regular."
avaliarNota x = "Insuficiente."

-}

{- Padrão curinga: é escrito como um sublinhado (_). O casamento sucede sempre. Nenhuma associação de variável
é produzida. _ é também chamado de variável anonima, pois, assim como a variável, casa com qualquer valor. 
-}

{- Padrão tupla: o casamento sucede se e somente se cada um dos padrões casar com o componente correspondente do
valor. Se os tamanhos do padrão tupla e do valor tupla forem diferentes então ocorre um erro de tipo. 
-}

{- Guardas: linguagens funcionais modernas usam casamento de padrão para selecionar componentes de estruturas
de dados e também selecionar alterantivas em expressões, como guardas. 
-}

{- Cláusula where: uma função pode ser definida localmente ou globalmente. A cláusula where permite definir 
uma função localmente

Ex: saudacao :: String -> String
saudacao nome
    |nome == "Padwan" = saudacaoLegal ++ " " ++ nome
    |nome == "Darth Vader" = saudacaoInfeliz ++ " " ++ nome
    |otherwise = saudacaoLegal ++ " " ++ nome
where
    saudacaoLegal = "Olah! Que bom encontrar voce, "
    saudacaoInfeliz = "Afff! Pfft. Eh voce, "

-}

{- Implemente uma função cabeca que devolve o primeiro elemento de uma lista, e uma função cauda que devolve todos
os elementos, menos o primeiro.
-}
cabeca::[a]->a
cabeca (h:t) = h

cauda::[a]->[a]
cauda (h:t) = t 

-- Crie somaDoisPrimeiros que recebe uma lista e soma os dois primeiros elementos
somaDoisPrimeiros::[Float]->Float
somaDoisPrimeiros [] = 0
somaDoisPrimeiros [a] = 0
somaDoisPrimeiros [a,b] = a + b
somaDoisPrimeiros (a:b:_) = a + b 

-- Implemente distancia, que recebe duas coordenadas (x1, y1) e (x2, y2) e retorna a distância entre os pontos.
distanciaEntrePontos::(Float,Float)->(Float,Float)->Float
distanciaEntrePontos (x1,y1) (x2,y2) =  sqrt ((x2-x1)*(x2-x1) + (y2-y1)*(y2-y1))




 
