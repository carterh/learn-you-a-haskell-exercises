merge :: (Ord a) => [a] -> [a] -> [a]
merge l [] = l
merge [] r = r
merge left@(l:ls) right@(r:rs) 
    | l < r     = l : merge ls right
    | otherwise = r : merge left rs 

mergeSort :: (Ord a) => [a] -> [a]
mergeSort [] = []
mergeSort [a] = [a]
mergeSort l = 
    let 
        len = (length l) `div` 2 
        firstHalf = take len l
        backHalf = drop len l
    in merge (mergeSort firstHalf) (mergeSort backHalf)
