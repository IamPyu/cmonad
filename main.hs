module Main where

import Ffi
import Foreign.C.String


main :: IO ()
main = do
  putStrLn "Hello, world! From Haskell!"
  c_hello
  d_hello

  putStr "69 * 2: "
  print (c_doubleIt 69)

  cstr <- newCString "Haskell"
  c_greet (cstr)

  let h = c_myRead
  str <- peekCString h
  putStrLn ("You said: " ++ str)
