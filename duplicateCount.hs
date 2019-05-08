module Codwars.Kata.Duplicates where
import           Data.List
import           Data.Char

duplicateCount :: String -> Int
duplicateCount xs =
  let fil = filter (\x -> length x > 1)
      g   = group . sort . map (toLower) $ xs
  in  length $ fil g
