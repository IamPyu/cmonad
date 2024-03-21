module Main where

import Ffi
import Foreign.C.String


main :: IO ()
main = do
  putStrLn "Hello, world! From Haskell!"
  c_hello
  let h = c_myRead
  str <- peekCString h
  putStrLn ("You said: " ++ str)
