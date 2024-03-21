module Ffi where

import Foreign
import Foreign.C.Types
import Foreign.C.String

foreign import ccall "hello" c_hello :: IO ()
foreign import ccall "helloD" d_hello :: IO ()
foreign import ccall "myRead" c_myRead :: CString
foreign import ccall "doubleIt" c_doubleIt :: Float -> Float
foreign import ccall "greet" c_greet :: CString -> IO ()
