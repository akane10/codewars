module Codewars.Triangles where

import           Data.List                      ( sort )

isTriangle :: Int -> Int -> Int -> Bool
isTriangle a b c =
  let x = a + b > c
      y = b + c > a
      z = a + c > b
  in  x && y && z
