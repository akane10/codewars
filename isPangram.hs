module Pangram where
import           Data.List
import           Data.Char

isPangram :: String -> Bool
isPangram xs =
  let x = map head . group . filter isLower . sort . map toLower $ xs
  in  x == ['a' .. 'z']
