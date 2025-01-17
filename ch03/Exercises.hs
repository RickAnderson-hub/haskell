import Data.List (sortBy)

-- Write a function that computes the number of elements in a list. To test it, ensure that it gives the same answers as the standard length function.
computeNumOfElements :: [a] -> Int
computeNumOfElements [] = 0
computeNumOfElements (_:xs) = 1 + computeNumOfElements xs

{-
Write a function that computes the mean of a list, 
i.e. the sum of all elements in the list divided by its length. (You may need to use the fromIntegral function to convert the length 
of the list from an integer into a floating point number.) 
-}
calculateMean :: [Int] -> Float
calculateMean xs = fromIntegral (sum xs) / fromIntegral (length xs)

{-
Turn a list into a palindrome, i.e. it should read the same both backwards and forwards. 
For example, given the list [1,2,3], your function should return [1,2,3,3,2,1]
-}
convertToPalindrome :: [a] -> [a]
convertToPalindrome xs = xs ++ reverse xs

--Write a function that determines whether its input list is a palindrome.
isPalindrome :: Eq a => [a] -> Bool
isPalindrome xs = xs == reverse xs

{-
Create a function that sorts a list of lists based on the length of each sublist. 
(You may want to look at the sortBy function from the Data.List module.)
-}
sortListOfLists :: [[a]] -> [[a]]
sortListOfLists = sortBy (\x y -> compare (length x) (length y))
--solves sortListOfLists [[2,4,1,1,1,1],[1,2,4,5]]

--Define a function that joins a list of lists together using a separator value.
intersperse :: a -> [[a]] -> [a]
intersperse _ [] = []
intersperse _ [x] = x
intersperse sep (x:xs) = x ++ [sep] ++ intersperse sep xs
--solves intersperse 0 [[2,4,1],[1,2,4,5]]



