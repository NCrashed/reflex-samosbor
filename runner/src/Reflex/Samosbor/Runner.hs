module Reflex.Samosbor.Runner(
    runSamosborIO
) where

import Reflex.Dom
import Clay (render)
import Data.Text.Lazy.Encoding (encodeUtf8)
import Data.ByteString.Lazy (toStrict)

runSamosborIO :: IO ()
runSamosborIO = do
  let css = toStrict . encodeUtf8 . render $ pure ()
  mainWidgetWithCss css samosborUI

samosborUI :: Monad m => m ()
samosborUI = pure ()