module Aula1 where
--Para fazer uma função haskell
-- nome x1 x2 x4 ... xn = Expr

--Tipificando função HAS TYPE int entrada e int saida
dobro :: Int -> Int
dobro x = 2*x
somaUm :: Int -> Int
somaUm x = x+1
somar :: Int -> Int -> Int
somar x y = x+y

v:: [Int]
v = [1..10]

a:: [Int]
a = [6,5..1]

w::[Char]
w = ['a'..'z']

s::String
s = "Santos"

--[Expr | Lista de iteração. filtro,filtro,filtro ...
todosPares:: Int -> [Int]
todosPares n = [x | x <- [0..n], mod x 2 == 0]

multCinco:: Int -> [Int]
multCinco n = [x | x <- [0..n], mod x 5 == 0]
-- ex3 | Ex1 , Ex2
todosMenosUm  n = [(-1)*x | x <- [0..n],x>3]

dobroN n = [x*2 | x<-[0..n],x>12,x<142]

muda n = [x | x <-['a'.. n], y<-['b','r','u','n','o'] ,x == y]




