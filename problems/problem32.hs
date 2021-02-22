-- Determine the greatest common divisor of two positive integer numbers. Use Euclid's algorithm.
myGCD :: Integer -> Integer -> Integer
myGCD a 0 = a
myGCD a b = myGCD b (a `mod` b)
