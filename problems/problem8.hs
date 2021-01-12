-- Eliminate consecutive duplicates of list elements.

compress :: Eq a => [a] -> [a]
compress [] = []
compress (x : []) = [x]
compress (x : xs) = skipOrNot ++ compress xs
    where
        skipOrNot = if x == (head xs) then [] else [x] 
