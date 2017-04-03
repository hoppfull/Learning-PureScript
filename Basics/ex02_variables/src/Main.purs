module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log)

main :: forall e. Eff (console :: CONSOLE | e) Unit
main = do
  log message -- value can be used before declared (fascinating!)

message :: String -- explicit type declaration is recommended
message = "yo"

x = 5 :: Int -- explicit type declaration

y = 3.14 -- implicit type inference is not recommended
