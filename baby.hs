import Data.Text.Lazy.Read (double)
doubleMe :: Int -> Int
doubleMe  b = b + b
doubleUs x y = doubleMe x + doubleMe y     

doubleSmallNumber x = if x > 100  
                        then x  
                        else x*2 

lostNumbers = [4,8,15,16,23,42] 

foo = doubleMe 4 


-- Like a switch
lucky :: (Integral a) => a -> String  
lucky 7 = "LUCKY NUMBER SEVEN!"  
lucky z = "Sorry, you're out of luck, pal!" 

-- recursion
factorial :: (Integral a) => a -> a  
factorial 0 = 1  
factorial n = n * factorial (n - 1)  


third :: (a, b, c) -> c  
third (_, _, z) = z  

-- pattern matching
head' :: [a] -> a  
head' [] = error "Can't call head on an empty list, dummy!"  
head' (x:_) = x

max' :: (Ord a) => a -> a -> a  
max' a b  
    | a > b     = a  
    | otherwise = b  