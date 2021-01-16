-- Decode a run-length encoded list.
-- Given a run-length code list generated as specified in problem 11. Construct its uncompressed version.

data Element a = Multiple Int a | Single a deriving Show

decodeModified :: Eq a => [Element a] -> [a]
decodeModified xs = concatMap decoding xs
    where
        decoding (Single     x) = replicate 1 x
        decoding (Multiple i x) = replicate i x
