-- Duplicate the elements of a list.

dupli :: [a] -> [a]
dupli xs = reverse $ go xs []
    where
        go []       acc = acc
        go (x : xs) acc = go xs (x : x : acc)

-- Pretty solution without accumulator

dupli' :: [a] -> [a]
dupli' [] = []
dupli' (x : xs) = x : x : dupli xs
