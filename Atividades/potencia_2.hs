--Escrever uma função potencia_2 que retorne o quadrado de um número (x²)

potencia_2::Int->Int
potencia_2 x = x*x

--Reutilizando a função potencia_2, construir uma função potencia_4 que retorne o seu argumento elevado a quarta potencia

potencia_4::Int->Int
potencia_4 x = (potencia_2 x) * (potencia_2 x)