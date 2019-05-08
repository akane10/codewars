module Codewars.Kata.Next5 where
import           Data.List

roundToNext5 :: Int -> Int
roundToNext5 n = (+ 5) $ last $ takeWhile (< n) [-100, -95 ..]
