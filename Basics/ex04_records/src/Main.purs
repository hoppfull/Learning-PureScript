module Main where

import Prelude
import Control.Monad.Eff (Eff)
import Control.Monad.Eff.Console (CONSOLE, log, logShow)

main :: Eff (console :: CONSOLE) Unit
main = do
  let myRecord :: MyRecord
      myRecord = { myField1: 5, myField2: "hello", myField3: true }
  log myRecord.myField2 -- hello
  logShow myRecord.myField1 -- 5
  logShow myRecord.myField3 -- true

type MyRecord = { myField1 :: Int
                , myField2 :: String
                , myField3 :: Boolean
                }
