-- file: ch02/RoundToEven.hs
isOdd :: Integral a => a -> Bool
isOdd n = mod n 2 == 1