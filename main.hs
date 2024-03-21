module Main where

import Ffi
import Foreign.C.String


main :: IO ()
main = do
  putStrLn "Hello, world! From Haskell!"
  c_hello
  d_hello
  rs_hello

  cstr <- newCString "Haskell"
  c_greet (cstr)
