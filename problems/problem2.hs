-- Find the last but one element of a list.

myButLast :: [a] -> Maybe a
myButLast (x : [_]) = Just x
myButLast (_ : xs) = myButLast xs
myButLast _ = Nothing

