module Codewars.Exercise.SevenAte9 where

ate :: String -> String
ate []                     = []
ate ('7' : '9' : '7' : xs) = "7" ++ ate ('7' : xs)
ate (x               : xs) = [x] ++ ate xs

sevenAte9 :: String -> String
sevenAte9 = ate
