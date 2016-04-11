module Interacao8 where
import Control.Monad

    
-- As >> sempre vem depois de algo IO ()
main :: IO ()
main = putStrLn "Digite um nome: " >>
       getLine >>= \x -> putStrLn ("Ola " ++ x)

-- na notacao do nao ha setas "bind"       
main' :: IO ()
main' = do
    putStrLn "Digite um nome: " 
    x <- getLine 
    putStrLn ("Ola " ++ x)
    
main2 :: IO ()
main2 = do
      putStrLn "Digite um numero: "
      x <- readLn
      putStrLn ("O numero eh: " ++ show(x+1))
       
      
main2' :: IO ()
main2' = putStrLn "Digite um numero: " >>
       readLn >>= \x -> putStrLn ("O numero eh: " ++ show(x+1))
       
-- faca um programa e mostre em modo reverso

-- faca um programa para multilpicar dois numeros
      
main3' :: IO ()
main3' = putStrLn "Digite um numero: " >>
            readLn >>= \x -> putStrLn "Digite um segundo numero: " >>
                readLn >>= \y -> putStrLn ("A multiplicão eh: " ++ show(x*y))

main4' :: IO ()
main4' = putStrLn "Digite uma frase: " >>
            getLine >>= \x -> putStrLn ("Frase reversa: " ++ show(reverse(x)))
