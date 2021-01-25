-- Create a list containing all integers within a given range.

range :: Integer -> Integer -> [Integer]
range start end = [start .. end]


range' :: Integer -> Integer -> [Integer]
range' start end = takeWhile (<= end) [start ..] 

