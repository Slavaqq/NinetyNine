-- Reverse a list.

myReverse :: [a] -> [a]
myReverse list = go list []
    where
        go [] rlist = rlist
        go (x : xs) rlist = go xs (x : rlist)
