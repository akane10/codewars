module Codewars.G964.Longest where
import           Data.List

longest :: [Char] -> [Char] -> [Char]
longest s1 s2 = map head . group . sort $ s1 ++ s2
