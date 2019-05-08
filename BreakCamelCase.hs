module Codewars.Kata.BreakCamelCase where
import           Data.Char

solution :: String -> String
solution = dropWhile (== ' ') . concat . map
  (\x -> if isLower x then x : [] else ' ' : x : [])
