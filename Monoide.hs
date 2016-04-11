module Monoide where
import Data.Monoid

data Bolsa a = Vazio | Bolso a | Necessaire a a deriving Show

data Item = Batom | Espelho | Celular | Chave deriving (Eq,Show)

instance (Monoid a)=> Monoid (Bolsa a) where
    {-mempty = Vazio
    mappend  x Vazio = x
    mappend Vazio x = x
    mappend (Bolso x) (Bolso y) = Necessaire x y
    mappend (Necessaire x y) (Bolso w) = Necessaire (x <> w) y -- o <> faz o append do item do bolso com o da necessaire
    mappend (Bolso w) (Necessaire x y) = Necessaire (x <> w) y
    mappend (Necessaire x y) (Necessaire a b) = Necessaire (a <> x) (b <> y) 
    mappend _ = _ = Vazio
    -}
    mempty = Vazio
    mappend x Vazio = x
    mappend Vazio x = x
    mappend (Bolso a) (Bolso b) = Bolso (a <> b)
    mappend (Bolso a) (Necessaire b c) = Bolso (a <> b <> c)
    mappend (Necessaire b c) (Bolso a) = Bolso (a <> b <> c)
    mappend (Necessaire a b) (Necessaire c d) = Necessaire (a <> c) (b <> d)
    -- TESTE
    -- Bolso "Lapis" <> Bolso "Caneta"
    -- IMPORTANTE CAI NA PROVA mconcat concatena todos os itens do vetor.
    -- TESTE
    -- let v = [Bolso "Lapis", Bolso "Caneta", Bolso "Borracha"]
    -- mconcat v
    -- Retorno = Bolso Lapis Caneta Borracha
    
    