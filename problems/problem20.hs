-- Remove the K'th element from a list.

removeAt :: Int -> [a] -> Maybe (a, [a])
removeAt _ []  = Nothing
removeAt 0 _ = Nothing
removeAt n xs 
    | n > (length xs) = Nothing 
    | otherwise = Just (go n xs [])
    where
        go 1 (x:xs) acc = (x, acc ++ xs)
        go n (x:xs) acc = go (n - 1) xs (acc ++ [x])
