module Ffi where

import Foreign
import Foreign.C.Types
import Foreign.C.String

foreign import ccall "hello" c_hello :: IO ()
foreign import ccall "myRead" c_myRead :: CString
