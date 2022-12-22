{-
   We define a Main module exporting a main function. For unit testing
   purposes, we import the HUnit unit testing library.

   On Debian or Ubuntu, you may want to install libghc-hunit-dev:

      sudo apt install libghc-hunit-dev

   On other operating systems, details depend on your ghc installation.
-}

module Main (main) where

import Test.HUnit

{-
   Below is our playground where we define functions to be tested.
   As an example, we define function to square a number.
-}

-- | The 'square' function returns the square of a number.
square :: Num a => a -> a
square x = x * x

{-
   Below we define test cases for our square function. The ~?=
   operator compares the result produced by the expression on the left
   side against the expected value on the right side. Note that test
   lists can be constructed from tests or other test lists.
-}

squareIntTests =
  TestList [ square 0 ~?= 0
           , square 1 ~?= 1
           , square 2 ~?= 4
           ]
  
squareFltTests =
  TestList [ square 0.0 ~?= 0.0
           , square 1.0 ~?= 1.0
           , square 2.0 ~?= 4.0
           ]

{-
   Finally, we define a main function running our tests in a terminal,
   for example by running runghc on this file on the command line.
-}

main = runTestTT $ TestList [ squareIntTests, squareFltTests ]
