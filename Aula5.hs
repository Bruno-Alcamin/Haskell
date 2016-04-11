module Aula5 where
--0 é um value constructors de  Integer
fat :: Integer -> Integer
fat 0 = 1
fat k = k * fat (k-1)

fat' :: Integer -> Integer
fat' k
     |k<=1 = 1
     |otherwise = k * fat' (k-1)
     
fib :: Integer -> Integer
fib n -- EXEMPLO DE GUARDS
    |n <= 2 = 1
    |otherwise = fib (n-1) + fib (n-2)
    
    
eliVog :: String -> String
eliVog [] = []
eliVog (x:xs)
        | elem x "AEIOUaeiou" = eliVog xs
        | otherwise = x: eliVog xs

--1) faca recursivamente  o que se pede
-- a) Eliminar todas as palavras de 4 letras  de uma uma lista de strings e faca o teste de mesa
-- b) elemine todos os pares 'AA' de uma string e faca o teste de mesa

eliL4 :: [String] -> [String]
eliL4 [] = []
eliL4 (x:xs) 
        | length x == 4 = eliL4   xs
        | otherwise = x: eliL4 xs
        
eliLAA :: String -> String
eliLAA [] = []
eliLAA (x:y:xs) 
        | [x]++[y] == "AA" = eliLAA  xs
        | otherwise = x: eliLAA (y:xs)
eliLAA (x:xs) = x:xs

foo::  String -> String
foo [] = []
foo (x:y:z:xs)
     | x == 'A' && y == 'B' && z == 'C' = foo xs
     | otherwise = x : foo (y:z:xs)
foo x = x

{-
foo "DABCD"
foo (D:A:B:CD) = otherwise D : foo (A:B:CD)
foo (A:B:C:D) = foo D
foo D = DD
-}
-- foldl (\x y -> expr envolvendo x e/ou y) / valor inicial  / lista
-- para ignora um elemento
-- (\_ y -> expr)
-- (\x _ -> expr) 
--foldl (+) 0 [1,2,3,5,10]

--foldl (\x y -> x + length y) 0 ["FATEC","SANTOS","AMA","JAVA"]

{-
Faca um foldl sempre usar uma funcao de dois parametros
A) Faca um foldl para contar letras de uma palavra
B) Faca um foldl oara reverter uma string
-}

-- a) foldl (\x y -> x+1) 0 "Fatec"

-- b) foldl (\x y ->  [y]++x) ""  "Fatec"