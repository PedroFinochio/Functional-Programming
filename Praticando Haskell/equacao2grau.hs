--Escrever 2 funções, x_maior que retorne o maior e x_menor que retorne menor valor real, das raizes de uma equação do 2º grau

x_maior::Float->Float->Float->Float
x_maior a b c = (-b + sqrt(b*b - 4*a*c)) / (2*a)

x_menor::Float->Float->Float->Float
x_menor a b c = (-b - sqrt(b*b - 4*a*c)) / (2*a)

