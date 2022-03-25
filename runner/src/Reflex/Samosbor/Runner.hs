module Reflex.Samosbor.Runner(
    runSamosborIO
) where

import Reflex.Dom
import Clay (render)
import Data.Text.Lazy.Encoding (encodeUtf8)
import Data.ByteString.Lazy (toStrict)
import Data.Default

import Reflex.Samosbor
import Reflex.Samosbor.Runner.Style
import Reflex.Samosbor.Runner.Sample
import Reflex.Dom (DomBuilder)

runSamosborIO :: IO ()
runSamosborIO = do
  let css = toStrict . encodeUtf8 . render $ runnerCss
  mainWidgetWithCss css $ buildSamosbor guiSample
