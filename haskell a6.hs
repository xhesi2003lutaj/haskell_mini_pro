{-dinnering problem-}
module Main (main) where
import Test.HUnit


brandy :: Bool -> Bool -> Bool -> Bool
brandy l m n =(not l || m) && (not(m && n)) &&((not n || 1))

brandy' :: Bool -> Bool -> Bool -> Bool
brandy' l m n =(l && m && (not n))


truthTable :: (Bool -> Bool -> Bool -> Bool) -> [(Bool, Bool, Bool, Bool)]
truthTable f = [(x,y,z,a)]||[x<-[True, False]],[y<-[True,False]], [z<-[True,False], a<-[f x y z]]


brandyTests = TestList [ truthTable brandy ~?= truthTable brandy' ]
main = runTestTT brandyTests

