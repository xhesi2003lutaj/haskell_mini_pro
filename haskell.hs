collatz :: Integral a => a -> [a]
collatz 1= [1]
collatz n | even n = n : collatz (n `div` 2)
          | odd n = n : collatz (3 * n +1)  


-- collatz :: Int ->[Int]
-- collatz 1=[1]
-- collatz n | even n=n:collatz (n `div` 2)
--           | odd n=n :collatz (3* n +1)

-- module Main (main) where

-- import Test.HUnit

-- -- | Convert a non-negative integer number into a String providing a
-- --

-- dtob :: Int -> String
-- dtob [] = error "no input"
-- dtob 0  ="0"
-- dtob n | n 'mod' 2==1  =dtob (n 'div' 2)++  [1]
--        | n 'mod' 2==0  =dtob (n 'div' 2)++  [0]

-- -- | Convert a String representing a non-negative integer number as a

-- btod :: String -> Int
-- btod " "=error "NO input" 
-- btod "0"  = 0
-- btod  n |  last < 2 = fmap (\x -> 2*x + last) (bintodec (div i 10))
--         |  otherwise = Nothing
--     where last = mod i 10


-- dtobTests = TestList [ dtob 0 ~?= "0"
--                         , dtob 1 ~?= "1"
--                         , dtob 2 ~?= "10"
--                         , dtob 127 ~?= "1111111"
--                         , dtob 12345 ~?= "11000000111001"
--                          ]

-- btodTests = TestList [ btod "0" ~?= 0
--                         , btod "1" ~?= 1
--                         , btod "10" ~?= 2
--                         , btod "1111111" ~?= 127
--                         , btod "11000000111001" ~?= 12345
--                             ]

-- main = runTestTT $ TestList [ dtobTests, btodTests ]
-- powLin :: Int -> Int -> Int
-- powLin x n
--  | n == 0 = 1
--  | otherwise = x * powLin x (n-1)


--     module Main (main) where

--     import Test.HUnit

--  powLin :: Int -> Int -> Int
--  powLin x n
--     | n == 0 = 1
--     | otherwise = x * powLin x (n-1)


--  powLog :: Int -> Int -> Int
--  powLog x n
--     | n == 0   = 1
--     | n `mod` 2 == 0   = powLog(x,n`div`2)* powLog(x,n`div`2)
--     | otherwise = powLog x (x,(n-1)`div`2)
 


--  powTail :: Int -> Int -> Int
--  powTail x n l=1
--     |n==0  = l
--     |otherwise = powTail(x,n-1,x*l)   --Rcursion is the last action,it does't have to use the previously used stack,
-- --                        -- but can use only the actual one optimizing the algorithm

--  powLinTests = TestList [ map (powLin 0) [0,1,2,3,10] ~?= [1,0,0,0,0]
--         , map (powLin 2) [0,1,2,3,10] ~?= [1,2,4,8,1024]
--         , map (powLin 5) [0,1,2,3,10] ~?= [1,5,25,125,9765625]
--             ]

--  powLogTests = TestList [ map (powLog 0) [0,1,2,3,10] ~?= [1,0,0,0,0]
--         , map (powLog 2) [0,1,2,3,10] ~?= [1,2,4,8,1024]
--         , map (powLog 5) [0,1,2,3,10] ~?= [1,5,25,125,9765625]
--              ]

--  powTailTests = TestList [ map (powLog 0) [0,1,2,3,10] ~?= [1,0,0,0,0]
--             , map (powLog 2) [0,1,2,3,10] ~?= [1,2,4,8,1024]
--             , map (powLog 5) [0,1,2,3,10] ~?= [1,5,25,125,9765625]
--              ]

-- main = runTestTT $ TestList [powLinTests, powLogTests, powTailTests]

-- module Main (main) where

--  import Test.HUnit

--  data Exp = C Int -- a constant integer
--  | V String -- a variable with a name
--  | S Exp Exp -- a sum of two expressions
--  | P Exp Exp -- a product of two expressions
--  deriving (Show, Eq)

--  simplify :: Exp -> Exp
--  simplify _ = undefined0 0 1 1 10 0 1 1 1 0 1 00 0 0 0 0 01 0 01

--  tI0 = TestList
--  [ simplify (C 3) ~?= C 3 -- 3 = 3
--  , simplify (V "y") ~?= V "y" -- y = y
--  ]

--  tS1 = TestList
--  [ simplify (S (C 3) (C 5)) ~?= C 8 -- 3 + 5 = 8
--  ]

--  tS2 = TestList
--  [ simplify (S (C 0) (V "y")) ~?= V "y" -- 0 + y = y
--  , simplify (S (V "y") (C 0)) ~?= V "y" -- y + 0 = y
--  ]

--  tS3 = TestList
--  [ simplify (S (S (C 3) (V "y")) (C 5)) ~?= S (C 8) (V "y") -- (3 + y) + 5) = 8 + y
--  , simplify (S (S (V "y") (C 3) ) (C 5)) ~?= S (C 8) (V "y") -- (y + 3) + 5) = 8 + y
--  , simplify (S (C 3) (S (C 5) (V "y"))) ~?= S (C 8) (V "y") -- 3 + (5 + y) = 8 + y
--  , simplify (S (C 3) (S (V "y") (C 5))) ~?= S (C 8) (V "y") -- 3 + (y + 5) = 8 + y
--  ]

--  tS4 = TestList
--  [ simplify (S (S (C 3) (C 5)) (C 8)) ~?= C 16 -- (3 + 5) + 8 = 16
--  , simplify (S (C 3) (S (C 5) (C 8))) ~?= C 16 -- 3 + (5 + 8) = 16
--  , simplify (S (C 5) (V "y")) ~?= S (C 5) (V "y") -- 5 + y = 5 + y
--  , simplify (S (V "y") (C 5)) ~?= S (V "y") (C 5) -- y + 5 = y + 5
--  , simplify (S (V "x") (V "y")) ~?= S (V "x") (V "y") -- x + y = x + y
--  ]

--  tP1 = TestList
--  [ simplify (P (C 3) (C 5)) ~?= C 15 -- 3 * 5 = 15
--  ]

--  tP2 = TestList
--  [ simplify (P (C 1) (V "y")) ~?= V "y" -- 1 * y = y
--  , simplify (P (V "y") (C 1)) ~?= V "y" -- y * 1 = y
--  ]

--  tP3 = TestList
--  [ simplify (P (C 0) (V "y")) ~?= C 0 -- 0 * y = 0
--  , simplify (P (V "y") (C 0)) ~?= C 0 -- y * 0 = 0
--  ]

--  tP4 = TestList
--  [ simplify (P (P (C 3) (V "y")) (C 2)) ~?= P (C 6) (V "y") -- (3 * y) * 2) = 6 * y
--  , simplify (P (P (V "y") (C 3) ) (C 2)) ~?= P (C 6) (V "y") -- (y * 3) * 2) = 6 * y
--  , simplify (P (C 3) (P (C 2) (V "y"))) ~?= P (C 6) (V "y") -- 3 * (2 * y) = 6 * y
--  , simplify (P (C 3) (P (V "y") (C 2))) ~?= P (C 6) (V "y") -- 3 * (y * 2) = 6 * y
--  ]

--  tP5 = TestList
--  [ simplify (P (P (C 3) (C 5)) (C 8)) ~?= C 120 -- (3 * 5) * 8 = 120
--  , simplify (P (C 3) (P (C 5) (C 8))) ~?= C 120 -- 3 * (5 * 8) = 120
--  , simplify (P (C 5) (V "y")) ~?= P (C 5) (V "y") -- 5 * y = 5 * y
--  , simplify (P (V "y") (C 5)) ~?= P (V "y") (C 5) -- y * 5 = y * 5
--  , simplify (P (V "x") (V "y")) ~?= P (V "x") (V "y") -- x * y = x * y
--  ]

--  tM0 = TestList [
--  -- (2 * y) * (3 + (2 * 2)) = 14 * y
--  simplify (P (P (C 2) (V "y")) (S (C 3) (P (C 2) (C 2)))) ~?= P (C 14) (V "y")
--  -- x + (1 + -1) = x
--  , simplify (S (V "x") (S (C 1) (C (-1)))) ~?= V "x"
--  -- (1 + -1) * x = 0
--  , simplify (P (S (C 1) (C (-1))) (V "x")) ~?= C 0
--  -- (2 + -1) * x = x
--  , simplify (P (S (C 2) (C (-1))) (V "x")) ~?= V "x"
--  -- (2 * 2) * (3 + 4) = 28
--  , simplify (P (P (C 2) (C 2)) (S (C 3) (C 4))) ~?= C 28
--  ]

--  main = runTestTT $ TestList [tI0, tS1, tS2, tS3, tS4, tP1, tP2, tP3, tP4, tP5, tM0 ]