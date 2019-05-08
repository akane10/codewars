module Isogram where
import           Data.List
import           Data.Char

isIsogram :: String -> Bool
isIsogram xs =
  let x =
          length . filter (\x -> length x > 1) . group . sort . map toLower $ xs
  in  x == 0
