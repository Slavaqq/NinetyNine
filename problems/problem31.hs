-- Determine whether a given integer number is prime.

isPrime :: Integer -> Bool
isPrime 1 = False
isPrime n = go n 2 where
    go n divisor
        | n == divisor = True
        | n `mod` divisor == 0 = False
        | otherwise = go n (divisor + 1)
