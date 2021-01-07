-- Find the K'th element of a list. The first element in the list is number 1.

elementAt :: [a] -> Integer -> Maybe a
elementAt [] _ = Nothing
elementAt (x : xs) position
    | position < 1 = Nothing
    | position == 1 = Just x
    | otherwise = elementAt xs $ position - 1
