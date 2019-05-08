module SumOfMultiples where
import           Data.List

findSum :: Int -> Int
findSum n =
  let t = map (* 3) [1 .. n]
      f = map (* 5) [1 .. n]
      s = map head . group . sort $ t ++ f
  in  sum . filter (<= n) $ s
