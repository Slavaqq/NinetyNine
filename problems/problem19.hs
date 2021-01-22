-- Rotate a list N places to the left.

rotate :: [a] -> Int -> [a]
rotate xs n 
    | n >= 0 = drop n xs ++ take n xs 
    | otherwise = rotate xs $ (length xs) + n
