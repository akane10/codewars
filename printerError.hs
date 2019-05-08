module Codewars.G964.Printer where

printerError :: [Char] -> [Char]
printerError s =
  let x = show $ length $ filter (> 'm') s
      l = show $ length s
  in  x ++ "/" ++ l
