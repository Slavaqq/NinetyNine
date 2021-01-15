-- Modified run-length encoding.
-- Modify the result of problem 10 in such a way that if an element has no duplicates it is simply copied into the result list. Only elements with duplicates are transferred as (N E) lists.

import Data.List

data Element a = Multiple Int a | Single a deriving Show

encodeModified :: Eq a => [a] -> [Element a]
encodeModified xs = map encoding  $ group xs
    where
        encoding a = if length a == 1
            then Single (head a)
            else Multiple (length a) (head a)
