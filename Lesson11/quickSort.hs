quickSort :: (Ord a) => [a] -> [a]

quickSort [] = []
quickSort (x:xs) = quickSort less ++ [x] ++ quickSort more
  where less = [a | a <- xs , a <= x]
        more = [a | a <- xs , a > x]