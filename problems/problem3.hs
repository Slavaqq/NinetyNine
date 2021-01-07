-- Find the K'th element of a list. The first element in the list is number 1.

elementAt :: [a] -> Integer -> Maybe a
elementAt list position
    | position < 1 = Nothing
    | otherwise = go list position 1 
    where
         go [] _ _ = Nothing
         go (x : xs) at i = if at == i then Just x else go xs at (i + 1)
