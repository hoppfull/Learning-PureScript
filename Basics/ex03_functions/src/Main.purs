module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, logShow)

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  logShow $ f 7.0 -- 21.0
  logShow $ g 7.0 -- 17.0
  logShow $ h 7.0 -- 31.0
  logShow $ myLambda 10 -- 9

f :: Number -> Number
f x = x * 3.0

g :: Number -> Number
g x = x + 10.0

h :: Number -> Number
h = f >>> g

myLambda :: Int -> Int
myLambda = \x -> x - 1
