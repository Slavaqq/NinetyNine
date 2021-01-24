-- Insert an element at a given position into a list.

insertAt :: a -> [a] -> Int -> Maybe [a]
insertAt x xs n
    | n < 1 = Nothing
    | n > ((length xs) + 1) = Nothing
    | otherwise = Just (start ++ (x : end))
    where 
        (start, end) = splitAt (n - 1) xs


