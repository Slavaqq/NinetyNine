-- Find out whether a list is a palindrome. A palindrome can be read forward or backward; e.g. (x a m a x).

isPalindrome :: Eq a => [a] -> Bool
isPalindrome list = list == (go list [])
    where
        go [] acc = acc
        go (x : xs) acc = go xs (x : acc)

isPalindrome' :: Eq a => [a] -> Bool
isPalindrome' [] = True
isPalindrome' [_] = True
isPalindrome' (x : xs) = x == (last xs) && (isPalindrome' $ init xs)
