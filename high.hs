module High.JorgeVS.Kata where

high :: String -> String
high myStr =
  let z        = zip ['a' .. 'z'] [1 ..]
      getScore = concat . map (\f -> filter (\x -> f == fst x) z)
      summing  = sum . map snd . getScore
  in  foldr (\x y -> if (summing x) < (summing y) then y else x) []
        $ words myStr
