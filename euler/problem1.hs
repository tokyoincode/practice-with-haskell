-- Mutliples of 3 and 5
-- If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
-- The sum of these multiples is 23.
-- Find the sum of all the multiples of 3 or 5 below 1000.

-- What I learned: you compose sum and the list comprehension e.g.
-- multiples = sum [x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0]

multiples = [x | x <- [1..999], x `mod` 3 == 0 || x `mod` 5 == 0]
totalSum = sum multiples

main = do
  print $ "The first function returns: " ++ show totalSum
