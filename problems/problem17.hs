--  Split a list into two parts; the length of the first part is given.
-- Do not use any predefined predicates.

split :: [a] -> Int -> ([a], [a])
split xs n = go xs n []
    where
        go [] _ acc = (acc, [])
        go xs 0 acc = (acc, xs)
        go (x : xs) n acc = go xs (n - 1) (acc ++ [x])
