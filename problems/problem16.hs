-- Drop every N'th element from a list.

dropEvery :: [a] -> Int -> [a]
dropEvery [] _ = []
dropEvery xs  0 = xs
dropEvery _  n 
    | n < 0 = []
dropEvery xs n = take (n - 1)  xs ++ dropEvery (drop n xs) n
