divisors :: Int -> [Int]
divisors n = [x | x <- [1..n], mod n x == 0]

sigma :: Int -> Int -> Int
sigma z n = sum [x ^ z | x <- [1..n], mod n x == 0]  
{-divisors 1 = [1]
divisors n = firstHalf ++ secondHalf
    where firstHalf = filter (divides n) (candidates n)
          secondHalf = filter (\d -> n `div` d /= d) (map (n `div`) (reverse firstHalf))
          candidates n = takeWhile (\d -> d * d <= n) [1..n] -}