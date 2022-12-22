{-
s:: Integral a =>a->a
s 0= 1
s n=s(n-1)+ sum[s k*s(n-k-1)|k <-[0..(n-1)]]

module S (s) where
import Test.HUnit
s:: Integral a =>a->a
sn =case n of 0->1
                 otherwise ->s(n-1)+ sum[s k*s(n-k-1)|k <-[0..(n-1)]]

sTest= TestList  [ s 0 ~?=1
                  ,s 1 ~?=2
                  ,s 2 ~?=6
                  ,s 3 ~?=22
                  ,s 4 ~?=90
                  ,s 5 ~?=394
                  
]
s = runTestTT $ TestList[sTest]
-}
module Main (main) where
import Test.HUnit
s:: Integral a =>a->a
s 0= 1
s n=s(n-1)+ sum[s k*s(n-k-1)|k <-[0..(n-1)]]

sTest= TestList [ s 0 ~?=1
            ,s 1 ~?=2
            ,s 2 ~?=6
            ,s 3 ~?=22
            ,s 4 ~?=90
            ,s 5 ~?=394
            ]
main = runTestTT $ TestList[sTest]
