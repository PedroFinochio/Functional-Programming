--Construa a função mmc entre 2 números inteiros

mdc::Int->Int->Int
mdc x 0 = x
mdc x y = mdc y (x `mod` y)

mmc::Int->Int->Int
mmc x y = (x * y) `div` mdc x y 