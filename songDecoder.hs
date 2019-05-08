module Codewars.Kata.Dubstep where

decoding :: String -> String
decoding [] = []
decoding xs =
  let f     = head xs
      s     = head (tail xs)
      t     = head $ tail $ tail xs
      isWub = f == 'W' && s == 'U' && t == 'B'
  in  if (length xs < 3)
        then head xs : decoding (tail xs)
        else if (isWub)
          then ' ' : decoding (drop 3 xs)
          else head xs : decoding (tail xs)

songDecoder :: String -> String
songDecoder = unwords . words . decoding
