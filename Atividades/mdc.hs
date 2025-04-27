{-

Considere a função escrita na linguagem C que calcula o máximo denominador comum entre dois números:

int mdc(int m, int n) {
while ((m \% n) != 0) {
int aux = m;
m = n;
n = aux \% n ;
}
return n ;
}

Escreva uma função, em Haskell, que calcule o MDC de maneira recursiva

-}

mdc::Int->Int->Int
mdc x 0 = x
mdc x y = mdc y (x `mod` y)

